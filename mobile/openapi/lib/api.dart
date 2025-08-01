//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:immich_mobile/utils/openapi_patching.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/api_keys_api.dart';
part 'api/activities_api.dart';
part 'api/albums_api.dart';
part 'api/assets_api.dart';
part 'api/authentication_api.dart';
part 'api/deprecated_api.dart';
part 'api/download_api.dart';
part 'api/duplicates_api.dart';
part 'api/faces_api.dart';
part 'api/jobs_api.dart';
part 'api/libraries_api.dart';
part 'api/map_api.dart';
part 'api/memories_api.dart';
part 'api/notifications_api.dart';
part 'api/notifications_admin_api.dart';
part 'api/o_auth_api.dart';
part 'api/partners_api.dart';
part 'api/people_api.dart';
part 'api/search_api.dart';
part 'api/server_api.dart';
part 'api/sessions_api.dart';
part 'api/shared_links_api.dart';
part 'api/stacks_api.dart';
part 'api/sync_api.dart';
part 'api/system_config_api.dart';
part 'api/system_metadata_api.dart';
part 'api/tags_api.dart';
part 'api/timeline_api.dart';
part 'api/trash_api.dart';
part 'api/users_api.dart';
part 'api/users_admin_api.dart';
part 'api/view_api.dart';

part 'model/api_key_create_dto.dart';
part 'model/api_key_create_response_dto.dart';
part 'model/api_key_response_dto.dart';
part 'model/api_key_update_dto.dart';
part 'model/activity_create_dto.dart';
part 'model/activity_response_dto.dart';
part 'model/activity_statistics_response_dto.dart';
part 'model/add_users_dto.dart';
part 'model/admin_onboarding_update_dto.dart';
part 'model/album_response_dto.dart';
part 'model/album_statistics_response_dto.dart';
part 'model/album_user_add_dto.dart';
part 'model/album_user_create_dto.dart';
part 'model/album_user_response_dto.dart';
part 'model/album_user_role.dart';
part 'model/albums_response.dart';
part 'model/albums_update.dart';
part 'model/all_job_status_response_dto.dart';
part 'model/asset_bulk_delete_dto.dart';
part 'model/asset_bulk_update_dto.dart';
part 'model/asset_bulk_upload_check_dto.dart';
part 'model/asset_bulk_upload_check_item.dart';
part 'model/asset_bulk_upload_check_response_dto.dart';
part 'model/asset_bulk_upload_check_result.dart';
part 'model/asset_delta_sync_dto.dart';
part 'model/asset_delta_sync_response_dto.dart';
part 'model/asset_face_create_dto.dart';
part 'model/asset_face_delete_dto.dart';
part 'model/asset_face_response_dto.dart';
part 'model/asset_face_update_dto.dart';
part 'model/asset_face_update_item.dart';
part 'model/asset_face_without_person_response_dto.dart';
part 'model/asset_full_sync_dto.dart';
part 'model/asset_ids_dto.dart';
part 'model/asset_ids_response_dto.dart';
part 'model/asset_job_name.dart';
part 'model/asset_jobs_dto.dart';
part 'model/asset_media_response_dto.dart';
part 'model/asset_media_size.dart';
part 'model/asset_media_status.dart';
part 'model/asset_order.dart';
part 'model/asset_response_dto.dart';
part 'model/asset_stack_response_dto.dart';
part 'model/asset_stats_response_dto.dart';
part 'model/asset_type_enum.dart';
part 'model/asset_visibility.dart';
part 'model/audio_codec.dart';
part 'model/auth_status_response_dto.dart';
part 'model/avatar_update.dart';
part 'model/bulk_id_response_dto.dart';
part 'model/bulk_ids_dto.dart';
part 'model/clip_config.dart';
part 'model/cq_mode.dart';
part 'model/cast_response.dart';
part 'model/cast_update.dart';
part 'model/change_password_dto.dart';
part 'model/check_existing_assets_dto.dart';
part 'model/check_existing_assets_response_dto.dart';
part 'model/colorspace.dart';
part 'model/create_album_dto.dart';
part 'model/create_library_dto.dart';
part 'model/create_profile_image_response_dto.dart';
part 'model/database_backup_config.dart';
part 'model/download_archive_info.dart';
part 'model/download_info_dto.dart';
part 'model/download_response.dart';
part 'model/download_response_dto.dart';
part 'model/download_update.dart';
part 'model/duplicate_detection_config.dart';
part 'model/duplicate_response_dto.dart';
part 'model/email_notifications_response.dart';
part 'model/email_notifications_update.dart';
part 'model/exif_response_dto.dart';
part 'model/face_dto.dart';
part 'model/facial_recognition_config.dart';
part 'model/folders_response.dart';
part 'model/folders_update.dart';
part 'model/image_format.dart';
part 'model/job_command.dart';
part 'model/job_command_dto.dart';
part 'model/job_counts_dto.dart';
part 'model/job_create_dto.dart';
part 'model/job_name.dart';
part 'model/job_settings_dto.dart';
part 'model/job_status_dto.dart';
part 'model/library_response_dto.dart';
part 'model/library_stats_response_dto.dart';
part 'model/license_key_dto.dart';
part 'model/license_response_dto.dart';
part 'model/log_level.dart';
part 'model/login_credential_dto.dart';
part 'model/login_response_dto.dart';
part 'model/logout_response_dto.dart';
part 'model/manual_job_name.dart';
part 'model/map_marker_response_dto.dart';
part 'model/map_reverse_geocode_response_dto.dart';
part 'model/memories_response.dart';
part 'model/memories_update.dart';
part 'model/memory_create_dto.dart';
part 'model/memory_response_dto.dart';
part 'model/memory_statistics_response_dto.dart';
part 'model/memory_type.dart';
part 'model/memory_update_dto.dart';
part 'model/merge_person_dto.dart';
part 'model/metadata_search_dto.dart';
part 'model/notification_create_dto.dart';
part 'model/notification_delete_all_dto.dart';
part 'model/notification_dto.dart';
part 'model/notification_level.dart';
part 'model/notification_type.dart';
part 'model/notification_update_all_dto.dart';
part 'model/notification_update_dto.dart';
part 'model/o_auth_authorize_response_dto.dart';
part 'model/o_auth_callback_dto.dart';
part 'model/o_auth_config_dto.dart';
part 'model/o_auth_token_endpoint_auth_method.dart';
part 'model/on_this_day_dto.dart';
part 'model/onboarding_dto.dart';
part 'model/onboarding_response_dto.dart';
part 'model/partner_direction.dart';
part 'model/partner_response_dto.dart';
part 'model/people_response.dart';
part 'model/people_response_dto.dart';
part 'model/people_update.dart';
part 'model/people_update_dto.dart';
part 'model/people_update_item.dart';
part 'model/permission.dart';
part 'model/person_create_dto.dart';
part 'model/person_response_dto.dart';
part 'model/person_statistics_response_dto.dart';
part 'model/person_update_dto.dart';
part 'model/person_with_faces_response_dto.dart';
part 'model/pin_code_change_dto.dart';
part 'model/pin_code_reset_dto.dart';
part 'model/pin_code_setup_dto.dart';
part 'model/places_response_dto.dart';
part 'model/purchase_response.dart';
part 'model/purchase_update.dart';
part 'model/queue_status_dto.dart';
part 'model/random_search_dto.dart';
part 'model/ratings_response.dart';
part 'model/ratings_update.dart';
part 'model/reaction_level.dart';
part 'model/reaction_type.dart';
part 'model/reverse_geocoding_state_response_dto.dart';
part 'model/search_album_response_dto.dart';
part 'model/search_asset_response_dto.dart';
part 'model/search_explore_item.dart';
part 'model/search_explore_response_dto.dart';
part 'model/search_facet_count_response_dto.dart';
part 'model/search_facet_response_dto.dart';
part 'model/search_response_dto.dart';
part 'model/search_statistics_response_dto.dart';
part 'model/search_suggestion_type.dart';
part 'model/server_about_response_dto.dart';
part 'model/server_apk_links_dto.dart';
part 'model/server_config_dto.dart';
part 'model/server_features_dto.dart';
part 'model/server_media_types_response_dto.dart';
part 'model/server_ping_response.dart';
part 'model/server_stats_response_dto.dart';
part 'model/server_storage_response_dto.dart';
part 'model/server_theme_dto.dart';
part 'model/server_version_history_response_dto.dart';
part 'model/server_version_response_dto.dart';
part 'model/session_create_dto.dart';
part 'model/session_create_response_dto.dart';
part 'model/session_response_dto.dart';
part 'model/session_unlock_dto.dart';
part 'model/shared_link_create_dto.dart';
part 'model/shared_link_edit_dto.dart';
part 'model/shared_link_response_dto.dart';
part 'model/shared_link_type.dart';
part 'model/shared_links_response.dart';
part 'model/shared_links_update.dart';
part 'model/sign_up_dto.dart';
part 'model/smart_search_dto.dart';
part 'model/source_type.dart';
part 'model/stack_create_dto.dart';
part 'model/stack_response_dto.dart';
part 'model/stack_update_dto.dart';
part 'model/statistics_search_dto.dart';
part 'model/sync_ack_delete_dto.dart';
part 'model/sync_ack_dto.dart';
part 'model/sync_ack_set_dto.dart';
part 'model/sync_album_delete_v1.dart';
part 'model/sync_album_to_asset_delete_v1.dart';
part 'model/sync_album_to_asset_v1.dart';
part 'model/sync_album_user_delete_v1.dart';
part 'model/sync_album_user_v1.dart';
part 'model/sync_album_v1.dart';
part 'model/sync_asset_delete_v1.dart';
part 'model/sync_asset_exif_v1.dart';
part 'model/sync_asset_v1.dart';
part 'model/sync_entity_type.dart';
part 'model/sync_memory_asset_delete_v1.dart';
part 'model/sync_memory_asset_v1.dart';
part 'model/sync_memory_delete_v1.dart';
part 'model/sync_memory_v1.dart';
part 'model/sync_partner_delete_v1.dart';
part 'model/sync_partner_v1.dart';
part 'model/sync_request_type.dart';
part 'model/sync_stream_dto.dart';
part 'model/sync_user_delete_v1.dart';
part 'model/sync_user_v1.dart';
part 'model/system_config_backups_dto.dart';
part 'model/system_config_dto.dart';
part 'model/system_config_f_fmpeg_dto.dart';
part 'model/system_config_faces_dto.dart';
part 'model/system_config_generated_fullsize_image_dto.dart';
part 'model/system_config_generated_image_dto.dart';
part 'model/system_config_image_dto.dart';
part 'model/system_config_job_dto.dart';
part 'model/system_config_library_dto.dart';
part 'model/system_config_library_scan_dto.dart';
part 'model/system_config_library_watch_dto.dart';
part 'model/system_config_logging_dto.dart';
part 'model/system_config_machine_learning_dto.dart';
part 'model/system_config_map_dto.dart';
part 'model/system_config_metadata_dto.dart';
part 'model/system_config_new_version_check_dto.dart';
part 'model/system_config_notifications_dto.dart';
part 'model/system_config_o_auth_dto.dart';
part 'model/system_config_password_login_dto.dart';
part 'model/system_config_reverse_geocoding_dto.dart';
part 'model/system_config_server_dto.dart';
part 'model/system_config_smtp_dto.dart';
part 'model/system_config_smtp_transport_dto.dart';
part 'model/system_config_storage_template_dto.dart';
part 'model/system_config_template_emails_dto.dart';
part 'model/system_config_template_storage_option_dto.dart';
part 'model/system_config_templates_dto.dart';
part 'model/system_config_theme_dto.dart';
part 'model/system_config_trash_dto.dart';
part 'model/system_config_user_dto.dart';
part 'model/tag_bulk_assets_dto.dart';
part 'model/tag_bulk_assets_response_dto.dart';
part 'model/tag_create_dto.dart';
part 'model/tag_response_dto.dart';
part 'model/tag_update_dto.dart';
part 'model/tag_upsert_dto.dart';
part 'model/tags_response.dart';
part 'model/tags_update.dart';
part 'model/template_dto.dart';
part 'model/template_response_dto.dart';
part 'model/test_email_response_dto.dart';
part 'model/time_bucket_asset_response_dto.dart';
part 'model/time_buckets_response_dto.dart';
part 'model/tone_mapping.dart';
part 'model/transcode_hw_accel.dart';
part 'model/transcode_policy.dart';
part 'model/trash_response_dto.dart';
part 'model/update_album_dto.dart';
part 'model/update_album_user_dto.dart';
part 'model/update_asset_dto.dart';
part 'model/update_library_dto.dart';
part 'model/update_partner_dto.dart';
part 'model/usage_by_user_dto.dart';
part 'model/user_admin_create_dto.dart';
part 'model/user_admin_delete_dto.dart';
part 'model/user_admin_response_dto.dart';
part 'model/user_admin_update_dto.dart';
part 'model/user_avatar_color.dart';
part 'model/user_license.dart';
part 'model/user_preferences_response_dto.dart';
part 'model/user_preferences_update_dto.dart';
part 'model/user_response_dto.dart';
part 'model/user_status.dart';
part 'model/user_update_me_dto.dart';
part 'model/validate_access_token_response_dto.dart';
part 'model/validate_library_dto.dart';
part 'model/validate_library_import_path_response_dto.dart';
part 'model/validate_library_response_dto.dart';
part 'model/version_check_state_response_dto.dart';
part 'model/video_codec.dart';
part 'model/video_container.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
