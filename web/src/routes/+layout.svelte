<script lang="ts">
  import { afterNavigate, beforeNavigate } from '$app/navigation';
  import { page } from '$app/state';
  import { shortcut } from '$lib/actions/shortcut';
  import DownloadPanel from '$lib/components/asset-viewer/download-panel.svelte';
  import ErrorLayout from '$lib/components/layouts/ErrorLayout.svelte';
  import AppleHeader from '$lib/components/shared-components/apple-header.svelte';
  import NavigationLoadingBar from '$lib/components/shared-components/navigation-loading-bar.svelte';
  import NotificationList from '$lib/components/shared-components/notification/notification-list.svelte';
  import UploadPanel from '$lib/components/shared-components/upload-panel.svelte';
  import { eventManager } from '$lib/managers/event-manager.svelte';
  import { modalManager } from '$lib/managers/modal-manager.svelte';
  import VersionAnnouncementModal from '$lib/modals/VersionAnnouncementModal.svelte';
  import { serverConfig } from '$lib/stores/server-config.store';
  import { user } from '$lib/stores/user.store';
  import {
    closeWebsocketConnection,
    openWebsocketConnection,
    websocketStore,
    type ReleaseEvent,
  } from '$lib/stores/websocket';
  import { copyToClipboard } from '$lib/utils';
  import { isAssetViewerRoute } from '$lib/utils/navigation';
  import type { ServerVersionResponseDto } from '@immich/sdk';
  import { setTranslations } from '@immich/ui';
  import { onMount, type Snippet } from 'svelte';
  import { t } from 'svelte-i18n';
  import { run } from 'svelte/legacy';
  import '../app.css';

  interface Props {
    children?: Snippet;
  }

  $effect(() => {
    setTranslations({
      close: $t('close'),
      showPassword: $t('show_password'),
      hidePassword: $t('hide_password'),
    });
  });

  let { children }: Props = $props();

  let showNavigationLoadingBar = $state(false);

  const getMyImmichLink = () => {
    return new URL(page.url.pathname + page.url.search, 'https://my.immich.app');
  };

  onMount(() => {
    const element = document.querySelector('#stencil');
    element?.remove();
    // if the browser theme changes, changes the Immich theme too
  });

  eventManager.emit('app.init');

  beforeNavigate(({ from, to }) => {
    if (isAssetViewerRoute(from) && isAssetViewerRoute(to)) {
      return;
    }
    showNavigationLoadingBar = true;
  });

  afterNavigate(() => {
    showNavigationLoadingBar = false;
  });
  run(() => {
    if ($user) {
      openWebsocketConnection();
    } else {
      closeWebsocketConnection();
    }
  });

  const semverToName = ({ major, minor, patch }: ServerVersionResponseDto) => `v${major}.${minor}.${patch}`;
  const { release } = websocketStore;

  const handleRelease = async (release?: ReleaseEvent) => {
    if (!release?.isAvailable || !$user.isAdmin) {
      return;
    }

    const releaseVersion = semverToName(release.releaseVersion);
    const serverVersion = semverToName(release.serverVersion);

    if (localStorage.getItem('appVersion') === releaseVersion) {
      return;
    }

    try {
      await modalManager.show(VersionAnnouncementModal, { serverVersion, releaseVersion });

      localStorage.setItem('appVersion', releaseVersion);
    } catch (error) {
      console.error('Error [VersionAnnouncementBox]:', error);
    }
  };

  $effect(() => void handleRelease($release));
</script>

<svelte:head>
  <title>{page.data.meta?.title || 'Web'} - Immich</title>
  <link rel="manifest" href="/manifest.json" crossorigin="use-credentials" />
  <meta name="theme-color" content="currentColor" />
  <AppleHeader />

  {#if page.data.meta}
    <meta name="description" content={page.data.meta.description} />

    <!-- Facebook Meta Tags -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content={page.data.meta.title} />
    <meta property="og:description" content={page.data.meta.description} />
    {#if page.data.meta.imageUrl}
      <meta
        property="og:image"
        content={new URL(page.data.meta.imageUrl, $serverConfig.externalDomain || globalThis.location.origin).href}
      />
    {/if}

    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={page.data.meta.title} />
    <meta name="twitter:description" content={page.data.meta.description} />
    {#if page.data.meta.imageUrl}
      <meta
        name="twitter:image"
        content={new URL(page.data.meta.imageUrl, $serverConfig.externalDomain || globalThis.location.origin).href}
      />
    {/if}
  {/if}
</svelte:head>

<svelte:document
  use:shortcut={{
    shortcut: { ctrl: true, shift: true, key: 'm' },
    onShortcut: () => copyToClipboard(getMyImmichLink().toString()),
  }}
/>

{#if page.data.error}
  <ErrorLayout error={page.data.error}></ErrorLayout>
{:else}
  {@render children?.()}
{/if}

{#if showNavigationLoadingBar}
  <NavigationLoadingBar />
{/if}

<DownloadPanel />
<UploadPanel />
<NotificationList />
