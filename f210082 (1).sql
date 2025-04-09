prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>22266293756156937417
,p_default_application_id=>210082
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PUGLIAFORM'
);
end;
/
 
prompt APPLICATION 210082 - TASK MANAGER
--
-- Application Export:
--   Application:     210082
--   Name:            TASK MANAGER
--   Date and Time:   19:03 Wednesday April 9, 2025
--   Exported By:     LUCIANOLOGLISCI86@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     42
--       Items:                   89
--       Validations:              2
--       Processes:               44
--       Regions:                 97
--       Buttons:                 92
--       Dynamic Actions:         30
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:              9
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_PUGLIAFORM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'TASK MANAGER')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TASK_MANAGER')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D49650EE3DC039F76EC5CB58B20855A0BE9AB2A6271233ED06513AC68FF5F02F'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'it'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(26045831015708057325)
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'#APP_FILES#logo/Green Modern Marketing Logo.png'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(26045838259652057340)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Project_Cs'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>8
,p_version_scn=>15616893302943
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(26046356078309072714)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(210082)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(26045831888860057326)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(26045833045728057329)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_210082_push_notifications_credentials_2
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(26046356078309072714)
,p_name=>'App 210082 Push Notifications Credentials (2)'
,p_static_id=>'App_210082_Push_Notifications_Credentials_2_'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26045831888860057326)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15616863066951
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26045905525995066776)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26045907059980066778)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Progetti'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26045929186706066972)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26045945247302067622)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Task'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046318101984072067)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(26045838104446057340)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26045833045728057329)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15616531181446
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046313934612072061)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046314612072072062)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046314963969072063)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(26045836195424057336)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046315409262072063)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(26046314963969072063)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(26045836195424057336)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046315843722072063)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(26046314963969072063)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046316386546072064)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(26046314963969072063)
,p_required_patch=>wwv_flow_imp.id(26045836195424057336)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046316625656072064)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046355716095072714)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(26046316625656072064)
,p_required_patch=>wwv_flow_imp.id(26046349391857072708)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046317211299072065)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(26046316625656072064)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046317654709072065)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(26046316625656072064)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046119572288070841)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15616863102677
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046119988462070842)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Progetti'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046120347506070842)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046120755041070842)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Task'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046319252599072068)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26045835877559057336)
,p_version_scn=>15616833985783
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046319615558072068)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(26045835877559057336)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26045966341448068278)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Favorite Project'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26045986573371068846)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Comments'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046006316735069488)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Task Checklist'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046022213334070113)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Project Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046319940778072068)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26045836215781057336)
,p_version_scn=>15616318230587
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046320305464072069)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(26045836215781057336)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046320615401072069)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_version_scn=>15616318230631
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046321075991072069)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046321409242072069)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046321851013072070)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046322338031072070)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046322795682072070)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046323129990072070)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046323418095072071)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_version_scn=>15616318230649
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046323856755072071)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046324273545072071)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046324596888072071)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_version_scn=>15616318230662
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046324909739072071)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26046352922303072711)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26046349391857072708)
,p_version_scn=>15616318244824
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26046353335156072711)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(26046349057920072707)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/lista_task
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26604829104728972261)
,p_name=>'Lista Task'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as level_value ',
'       , "TITLE" as label_value ',
'       , "TASK_ID" as target_value',
'       , ''YES'' as is_current ',
'       , null as image_value ',
'       , null as image_attr_value ',
'       , null as image_alt_value ',
'from "TASK_CHECKLIST"',
'order by 1'))
,p_list_status=>'PUBLIC'
,p_version_scn=>15616639885115
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000062749444154584795578B521B4710EC7DDE43020CD8712A1F927C40FEFF33F232C6801092EE6E1FA99EB95381230886DA5A4975';
wwv_flow_imp.g_varchar2_table(2) := '7BD33BD3D333637EFBF5F78A1FFD33CF0E1C4F3F7B0D3F9AE70FF13B801396CC8F0058DEC95D5EBFEC272E506763DC96CFFAD84B14EF0640A3D6026EDEE5B335F29B9D11C925ABAE52815C2A52D65D4154182EA3206A35F85F003CC8F73B0B785F113D10';
wwv_flow_imp.g_varchar2_table(3) := '0310BC410C16D11B786F61AD512F8B61604A1587B1623F14D9732E302870B6C25A45998B3D0DE0182E3E07DE90C6813654740DD0B540D718F4AD43D73A34D1C2392B402B8DE78AC350B1792AB2B6BB8C712AB02623B80C6F8BBC37E537002CD1A2CBE8E6';
wwv_flow_imp.g_varchar2_table(4) := 'E069B462DD02AB0E58F716ABDE63DD79B4AD43A0178CBA7E9C2A768782FBC7826F9B8C876DC2386658938E00E4B9F40680254ED6543807445FD13640DF1080C1AA25008755E7D1B55EC3300310F70F7A7B1A7F7CA2071250339C49B0A6489886E90D008C';
wwv_flow_imp.g_varchar2_table(5) := '13E3457731F68120E6D837D1A009166DE3D0361E315AF8250433F972AE18271ACE72FB2965949291335705F1BC0E80B7B6245C41E30B822FF08E643430C60286A453A3CEEBFE3C13C0F3A6C2BB222E77B6A094223C2029F703701881617CCD0372B8A20D';
wwv_flow_imp.g_varchar2_table(6) := '195DCC680209C4F85AA46291B243A9C20E492CF9A726CC294AB06DAC587705675D41178BA4E07EA878DC7101BBC1BC0D20381ECCE89A0580A6CD98BC90478118E46224F568DC3B23646D22B95271DE579CAF1400E112C0E6A962B333D81DE885931EA89A';
wwv_flow_imp.g_varchar2_table(7) := '76AEA08D197D4C470FE46A31658731394CD9624A4662590AE09C01B9A10465C61004DFC13014D44A5D28D81D2A9EF6EA81C37852885428BCAD6842421732224360E9448B5C1C1257B618278371D2D4A33031353F9C599CAF084679502BE34FE2154C4979';
wwv_flow_imp.g_varchar2_table(8) := '308C15C304EC87131E60FA7191FDD1D3FD59C84825344401C6DF4938E8813189B8A209468C5F5F585CACAD640ED3717FC8D81D32A649815482290403EC4F8580C625F767000441002416996FAD83310ED53894628498CC0EAA21015C5D58AC7B95E5A73D';
wwv_flow_imp.g_varchar2_table(9) := 'C52863B34D18C6AC3A60330CB2F0E73F00B4C22D0098FB49BC40002417D5CE3B07E71D3C97E36E113CF5808675D11B94E3BB4DC6CD5DC2ED7DC2814A08BE2F09BFC89B570050FBD503CC611E20002D4206317A34D1A16B3CFADE8B12F69D431BB526900B';
wwv_flow_imp.g_varchar2_table(10) := 'E404A5F8CBB78C3F6F26017118129C9924B3C82966CEC92C905CFE0E00C5A80940A402464AAFC3BA0FB83CF7B8BC88385F7B01C08A988A9142F4B02DF8FB6BC21F5F267CB99BB03F4CF036A16FB264C6BB00444712AA070820D00341B5FF7CE5F1F12AE0';
wwv_flow_imp.g_varchar2_table(11) := 'A7AB88CBF320724C62EE0F9AEB8CFD3FB7097FDD4EB8BD9F30D00336CDC256A51A9E5442F2C0D88A4012868C3624B481E1A8B0945C4BEDF7385B797CBE8EF8F963C4F5072D46C3083C6C2BBE6D0A1E1E33EE3609F78F2C4609D3C422946759AFC281576B';
wwv_flow_imp.g_varchar2_table(12) := '014340F1A010759100B254C45A2D72F5B0CE63DD2B805F3ECD009CC17657F1F5A1E0EBBD5640A620D99F92EA00B02C20676078AD1C2F00548AD5039400CA2F951020F116000157175E8A11CB2F8977739FB0DB6BE5A35176422A4894736DD3160D39D992';
wwv_flow_imp.g_varchar2_table(13) := '11804871282F0030C65441EA0079F0E932E0F3B592915AF0F85470739771FB90E4F6AC80ACFD5CA596D9308D2FEB959E50B3602EC7815C988588E5D8B2E0682B46F25D5F049CAD9CA82409F8B06507540480F60045DC9F448AD92DB113623BC6F50A0012';
wwv_flow_imp.g_varchar2_table(14) := '71A90752D3D98C0696585D5D63D1771667AB205CA037A8927C2953901AC08E8812CC7518B214A2A37101608488274320992035413561A9EFAB8E251638EBD9905AE9059B1810028969A52F28B52251E7872244644BB6D912489102442F908F5CB5BCE181';
wwv_flow_imp.g_varchar2_table(15) := 'E3AC21E1D09BAFBB8A8B55C5D94ABB626A02259959410FB0244BE3C2141BA90759D29021510004A737A75A4A1F716A325A86AA65866106B029ED5B05C17A4FBD673BC6E2A445CACE830A1B14F683ACFB058F3B6DCB391B2CB727001960E8E9F78C66DAED';
wwv_flow_imp.g_varchar2_table(16) := '2808763B54457EE72C200389D18AC8CFCBF495326BBE76C7349E52455A0CCFB797DAF72E00A28E3A9639A721A1317A461B55ED09E789514733C979928D53513DBA7C19DD9610BF0BC0F1E179185D1A506D4217E33A772EC3E86288E1783EA0BE1C54DFE9';
wwv_flow_imp.g_varchar2_table(17) := '81EF87DFE3642C59A25E5826A9E30D67C3CBD9EF0D2FBFFF0B35C8F46FFD81B7360000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26045834047827057332)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000200049444154785EED7D597723E775EDAE09F30C70EC41ADC8C35AF7E655AD5EC94364CBAFC95FB0FD4B62FF123B7F2179B56CE5';
wwv_flow_imp.g_varchar2_table(2) := '2159ADD6F3F528A9C91E3883C43CD574BDCFA90241AABB0902209BA4402D08201B537DB5EB9C7DA6FD1958FE2C57608E1530E678EDF2A5CB15C012404B10CCB5024B00CDB57CCB172F01B4C4C05C2BB004D05CCBB77CF112404B0CCCB5024B00CDB57CCB';
wwv_flow_imp.g_varchar2_table(3) := '172F01B4C4C05C2BB004D05CCBB77CF112404B0CCCB5024B00CDB57CCB172F01B4C4C05C2BB004D05CCBB77CF18D03D0E3C79F5501F086300C6B56F4383A55F2F7EFC94FDD07EA3C56C3308EA263AE3F7BF6B9FCEDA6FCBC77003D79F2E92304F62FC230';
wwv_flow_imp.g_varchar2_table(4) := 'FC1718F8F4A62CCC0DFE1E5B7F5FA72F8CD0D886892F9E3EFDDD17EFF3BBBE17003D79F2B34FC330FC3942FCE27D1EFC1DF9EC2DB15261F8EBA75FFDFEB7D77D4CD70AA0278F7FF6AB10E1CF013CBAEE03FD9E7CDE9601E33F9E3EFBDDAFAEEB78AF0540';
wwv_flow_imp.g_varchar2_table(5) := '1170FEFDBA0E6AF939B836205D39803EF9F8B33F2CB9CDFB81B401E3D7576D8DAE0C4024C7A16FFD66099EF7039E894FDD324CFF274F9F7E215C69D13F57022021C941F887457FD9E5FBCDBC025B5745B2170E20B13C81F57CE6435DBEF0AA56E04A2CD1';
wwv_flow_imp.g_varchar2_table(6) := 'C201B4E43C5775FE17F2BE5B5F3EFBFCC385BC53F4260B05D0123C8B3C3557F45E067EFBE5979FFF7251EFBE30002D43F5459D92AB7F1F230C7FB9A8A4E3C200F4C9E3CFC87B6E558230E4B992FFCDF863E0460ED6F1902E38B10B73650B01D0938F7FFA';
wwv_flow_imp.g_varchar2_table(7) := '8BD0307E33E369B8F6974D039C495C5DB848370448E7AF85777DEF4559A10BD7669AB37B1BADCFDB8EEBA20599C7604DB396D7F89C8558A18BD6EBC2E3B94DD6C7888E9677F238B21C7C2CFFC47BC3F88EF98F4113866C3189BC9E3C0ED503C67F931614';
wwv_flow_imp.g_varchar2_table(8) := '5DB229DCC8856B3BED13F4FB87D1319C8578101A08C3379F66C3347E326F357F6E00DDB4C82B3E81938B1F03C71480E84D1E9B86DC9BA6FE6E46BF0B88C62BC3130004618820D07BF95D1EF35E7F2798F8FB19904D7091D3F79B1616EF7E5E0C13391684';
wwv_flow_imp.g_varchar2_table(9) := '30CD10A6A13782893F048F179872FF461085F8E2CBAF3EFFC93CDF687E003DFEECC65AF53150229058021403961581C634609B90DF2DCB806518302D824A6F6A494E01E40721023F841F00BE1FC2E3FDF86FFA77022A0697BCFEAA56472E8410166F266F';
wwv_flow_imp.g_varchar2_table(10) := '012C23806904F2770286E0197916BCC01210BDE164CFEDC6E602D04D735FB16BA2452128ECE8E6F0DE3610DFDB9601C7E6BF1BF2F7F8DE320D58A61959263555FC8F18105004044908CF0FE17A213C2FBE0FE477BDF131E012681EE0C96BF4F58B0213AD';
wwv_flow_imp.g_varchar2_table(11) := '0D41635B011C2B40C2F2E0D8BE0088DF562C8F6F62E85918B80E469E0D3F503F7DFE84CFEBC66E3D8078727962782074438E03249D10490748258174D2409AF70903493E4E9848F27174EF38261CDB141099A62937C3E08D5648C124D7AEA19F4320B87E';
wwv_flow_imp.g_varchar2_table(12) := '80D128C070146030F2F57E18A03F0CD01BF8E80F42F407017AC310BD4188E12884EBC7203C751897716B31F8788CB61D20E5F8C8243DA4132EB2891152899100C8F30D0C46367ABC0D93E88E1C0191E75B6A4FCF9DF1792BF67301E8934F3EFBCD4DE82A';
wwv_flow_imp.g_varchar2_table(13) := 'E4E2D2F7DB3601036453217219209F3690CFEA7D366D22933690499A48A7F4964A5A4808802C58560C1E2B224AA600E8F4EFCA8BF8599E4FF0F8180C0916BDF5FA1EBAFD00ED9E8F56D747BB1BA0D909D0EA04E8F442F409225AA408486FB2061771115A';
wwv_flow_imp.g_varchar2_table(14) := '175A9E74D2472EE5A29019219F1A229F1A20931C0A17EA8F2CB4FA49B47A49BD1FA4D01FC50052B777E6674E1E341F80DE73F29027543900E0D82152C910D93450CC02852CEF0DB9E5B20A9C5492D647EF13B4408E05DB26702CB13C307895F234F1B1FE';
wwv_flow_imp.g_varchar2_table(15) := '3DB64C04123F879F190401462E6FB43EBEDE4760EAF67D014DABEBA1D10E70D2522075FAB446C0C00DE1BAE44EA784FB22E0884BA6CB3203249D00D9948B626628370228931C21698D04DCED8183934E0A8D6E0ACD7E0AED7E12FDB1057A038080B978D0';
wwv_flow_imp.g_varchar2_table(16) := 'BC00BA2A8AF8C6359DE410021E535D553615A0900DE546F008807206F21903B98CBA2D0280C020B90C0D930E4FEEC350A39420301084D1BF8B79500B446009C126E18EF8123948C48CC4F2C524360C03B82EDD99AFD6A8EBA3D9F1D1E80468B4430154A3';
wwv_flow_imp.g_varchar2_table(17) := '0374FB21FA4360E4AA45E222D235C53F729CD1EFFCA6E43AE964805CCA433EE3A2901EA1901E229722705C18862FEF3310EB93C0492729E0E90C12188C1C0C630E14A72FCEAD6E08D4669DF69819408F1F7FF62303F8CB4557CF22FF3D0610CF3F4F5CC2';
wwv_flow_imp.g_varchar2_table(18) := 'A27B0A502DF9582B85A8160394F24021630A703229721D0B8669C2F54CF406063A7D13FDA181FEC8C0C00586230343373E990411A94214EB93FD306A23B92609B70D241C0349DE12CAAFB26943AC5D21A3EE93E00A031F9EA71C8916A9D90D506FF83838';
wwv_flow_imp.g_varchar2_table(19) := '0970781CA2DE024E3A213A3D7E7E94338A086E9C571AA71BCC1029274029EB62A5304435AF96279B1C2161BB62C97A030BCD9E8D66CF41B3ABAEAB337430746DB8BE46606FCB054539AB1F3F7BF6F95F6739573303E8E38F7FFA4FA661FCCF2C1F3AEB6B';
wwv_flow_imp.g_varchar2_table(20) := 'E8BF85445A211C8B5C2044291760BD1260A31A60A5442B046452EAAAEC88D7B881896EDF44B363E0B86DA0D535D0EE039D3E171FE80F49741544215DCBF80BEA5995D09FE0B1081C0329010E416AA29433512B19A8964C719774A3094BC369B1485E805E';
wwv_flow_imp.g_varchar2_table(21) := '3FC049DBC7FE7180FD7A88FDE3100727218E5B4077A05628FE89939A04A26D86483821B2290FD5FC08EBE501560A03E4530A9E30F4D11F9AA8B793386CA6E4BED94FA23B2071B6258C7F1770C6160FB89B001A5B1C9A78095D196585C82468CEE9B60254';
wwv_flow_imp.g_varchar2_table(22) := 'F20156CB016AA510C51C904AD06A58E2AEFCC0C2C833D01B9A627908A0660768F5F4C4092719F116AA3BF13487F39D9A9258A12815601B482548C269E14C14B2264A7903E582022897099149F27BD0BD6AA8CDF09F511ADD59BD49F004D8390CB15787B8';
wwv_flow_imp.g_varchar2_table(23) := '345A4371658172140603495BDD5636E5A39871512D8CB05A18A09C1D22617B0802F22F432CCF413385FD465A5C573BB23C23DF4410989AA1BEC04C0461F8CF5F7DF5FBFF9DE5C2BED116282E1BC4564709648062D647B5E063A518A09C0F50CA41C8335D';
wwv_flow_imp.g_varchar2_table(24) := '8C1F9AC205143416DA3D13AD1E5D97212EAC3754B73162AEC665484E0B10E56A223E12651027CCC269E69A89C7386F447796489063114CB47C8CFA629746021F4A14984E04C293C24043FDA346889707215EEE03870DA0D9A51534E0FB6A5D53BC40D23E';
wwv_flow_imp.g_varchar2_table(25) := '8A590F95BC874A6E845276846266849443F0305D60A0D1B570DC4EE0B099C4513B85662F8981CBC421391DADCF69B9E65DE0782F007AF2F14FFF35348CFF9C05B553BF265A002EAA82878B1AA05AF0B05626807C21CE742B24BBCCB82A1F30D1E8583869';
wwv_flow_imp.g_varchar2_table(26) := '9B38691B68760DF407868086573A4FD4F9B2C334493E4D54466E8D8FA31288107ABA3707C2BD8A3903E5BC814A01A8160D94B24C2B289761C9E3A41DE2D5418817FB210E8EC987086E8DCC789C044F29E7A39A77B15A1AA19C1B219BF49014B715C8B11C';
wwv_flow_imp.g_varchar2_table(27) := 'B76D1CB61CD45B091C77936874E9BA6C4920C6D9F369D7D908C37F7BFAD5EFFF6BDAE74F3E6F660B745559E8718D4722138D70E80A6451E58AF4512DAA052A6503B100416861E89A923C6B754DB9329BBC6F9B029E76CF501745F734E1A2BE73F0DF49B2';
wwv_flow_imp.g_varchar2_table(28) := 'E952BDADFD434AA951FD8B20629446224D6E447746425F291828E780628EC7A096A8DD03768F42BC3E04EAAD10DD3E2447C4E3CDCA71FA6279AA0557B84F3EEDC2B17C043E1397B458160E9A0E0E1A091C771268F51C740624CD96649C2F7259E78172B7';
wwv_flow_imp.g_varchar2_table(29) := '001421E8944492EFF8A8E43CAC941989786285982C6416990BD61ED868761981D065319435D01597658ACB1AB9CA3134C28A96EF7C5AFF829E9EF3209AFC9D0556FE68A80F89D032746B4C64A6092846699ADC4C581AC21F36431C35C8C3B408AB41818F';
wwv_flow_imp.g_varchar2_table(30) := '322D4FC14339EFA29471914B7BC279587BE331F1C2A8D3FA341C1CB668791CF487E47A96581F39C64BF627CDD31B74F32C10CB12518E47B8408A80F1B05270B15E71512B327DAF95742E5AA76FE3A86DE3A8C9049A85CEC0C460488B63C0F54FC9A92CEC';
wwv_flow_imp.g_varchar2_table(31) := '15FD4CB66EE877D75A9C84FD3609359066763C05241CB536ED5E2851601830011AA0906644A9E05929BA28665D715B362D4F10A04BB7D53271D8B4516F113C099CB413E80C2D4951681E6BB6D379A700C4734CEBC328249FF650CEB9A8E45DD40A2E564A';
wwv_flow_imp.g_varchar2_table(32) := '9E5CC90CABFBAE85769FA0B171D4D25BAB43F26CC882D25D31A27A1F3F31A034834CEB022408A2840288569085D798F31473016A850095025D972BC79C4DFAB02D25CCB458271D13FB2736F64FC87B1CB13CADBE8DE1885698E9C6D97FEE0C8026F33CBC';
wwv_flow_imp.g_varchar2_table(33) := 'FA2ACC7D94865829320AF1858832026295F9B8E3E0A8490E60A3D1B1D1EAD15D9918B95CD07365824B9AF4D94FC539BE14F51D318A148B2456496F126D399A8A5829311541D2ECA39071914EF8B04C1FBE4FF08492B7A2E5D9A93BD83F61A69985520B43';
wwv_flow_imp.g_varchar2_table(34) := 'CF844BD21C159367FDDEB71E40A757AC26CF52091F85B42B89B3FBD58100889C879116C1D3EC25B07792C0EE3117D341578043CB6368DBC24487E0AC8BBAC8D74DF625113C9964887C4693A0B52213A13ED6CA9EB83056D90D68269BFC8D79A27ACB12EB';
wwv_flow_imp.g_varchar2_table(35) := 'B3534F60BFE1487A8255F78B32CCD31EC39D01107B5B920E2BCD745D236C1040B58198755EBD6C4B60ADE7A895C0EE495240D4EC59925063DEE32A79CEB427E36DCFA33B630E89AEAC98D1B20B2DCF5A647DC8ED182CD0F248F67A100A788E9A160E1A16';
wwv_flow_imp.g_varchar2_table(36) := 'F68F6DEC3512A8B76C0C865ABFE37B2EE2E74E0088212C794F2E3D42253B92CCEB5A69283786BFEC6761AEE3B09D94DCC7613321D1487760C297DCC769C3D665C3D8459C8437BDC7642294643A9D624416A29A0FB1560925975525F7C9FB92A660639870';
wwv_flow_imp.g_varchar2_table(37) := '9E51887697919A89DDBA5A9FA3A68DE30E799F0DD7D5526EDCA23BEFF7BFF500D2103810DF5FC90F2465CFC261A5E04AEE87BCA73B74B0D74861EF242DD9575A1E82879C67D6E863DE85BFE8F571A8CFD03E9B028A79A05A08B15A0AA57EB75AD2AC7A26';
wwv_flow_imp.g_varchar2_table(38) := 'E94B9E874942B689B0F58335BBFD630BAF8F6CB13ECC6DA9AB36C57D89DB5F10B7BBD500227166F0C99A119BA4D68A7D6C947BA81586C8657C246DC00F2D9C7493D8394E63F73885468FB90FADB0CB6246A1FF4527F43AFF3DAEA6330A636764290BD4CA';
wwv_flow_imp.g_varchar2_table(39) := 'C05A3994A22FEB7724CD2CCD3826C1E36348F0F4187101470D03BBC71676EA368E1AB6A42746E3707DB147722B013426CEACB0478D52EC71D92CF770AFDA93FA0F09A7EBD9680F35E3CA8221EB3E9D813D26CCF114C44D735BE43B6CAFCD24B536562B41';
wwv_flow_imp.g_varchar2_table(40) := 'DCD6462544A5A0049A9C87A50BD3F0843477079A5CDC3D36C5FAEC9F98386A5968762C0C469A9A98A6BA7E5978DD4E008D13860112AC3C27E8AE86B857E90A8018CE2AEF619B421AC79DA480881967160C196D4D53BFBAEC62CEFB7C12795A54829F7531';
wwv_flow_imp.g_varchar2_table(41) := 'D6C36A458207D8A841FA9618BA3384A7DBD2B60F7635B28B91E50D135BFB16768F9871D63694C18849538D3025F2BA7874F9528771AB01C445647338BBEB2AB901362B3DAC97FA92D627EFD93DC962BF91C549272189C3DE4833AF37D56DF17BD16DB1DD';
wwv_flow_imp.g_varchar2_table(42) := 'A39227704CAC57818D2A790F6B63013249D6C4D8E6A1E1BAE7FB1275B13FE8C5BE89E7BB16F68EC9F1081AB698704487D6585DB686EF97C2C83B9F7CEB00A41113A71E98F3F1A43DB392EDA39A67CE6720213C5D0079CFABE33CF68E3368F412D230CE45';
wwv_flow_imp.g_varchar2_table(43) := 'F499B2BF41BC673C3121AD1EDA9354C81A582D1BB8B76260B306AC96D57531FF93B0B5F9C775D910C6CEC4403A140F1B065E1E98787DC84E028227B25436A73A58DBD336153E96ECF382F25DB71240BC8AD8109F4D8DB092EF61ADD8150BC4E629D686D8';
wwv_flow_imp.g_varchar2_table(44) := '0CC61E97574739EC35B2526D16122953A25AF399ADF2B3B82B377EA738FFC45C152D0F2BF16CE3D8AC1978B06660A30A94F23C56CE7091F3F9D21B347439C1C106334873D9DEB181FD13AD7971148856B89273A5B18CD11733EE275D66A1D51211448BB0';
wwv_flow_imp.g_varchar2_table(45) := '44B71240B4409C32A0F5D928B771AFDC41393790509EDD843D9709C3345ED7733868A6D11B3A63CBB340EBBD1034C539195A1EF602AD944CAC55D4FADC5F05564B9AFFE1F10291EB626BC62090768E9707065EEC1B02A093B63697911B3181BA5119A190';
wwv_flow_imp.g_varchar2_table(46) := 'F124D37EC8168E66423A0E48AA59C6102E38E7C574EB0014F754709AB29C19E27EA585FBD5969068CB00065E421AC30F5B19EC9E6470D44ECBB09C8CE79E9F6B5A08042EFF26936E4B071A0DE4D2745B26366B26366AB43C06562B4029A75D860602E13C';
wwv_flow_imp.g_varchar2_table(47) := 'E2BA982CEC05D250B6BD6F607B0F3838D136143F0C91767CAC964778B8324439EB8ADB2280580B6B746DB4FBD6D8A5CFCB076F1D8074A63B40C2F185FB3CAC3671BFDA9671159A650EC39D743362810E9A19E142AC81D16ADD1400C5D1168BA49CD2603B';
wwv_flow_imp.g_varchar2_table(48) := '2BFBA2EFAF9A78B8AE2062F4C58EC974427BA3196D71ECA73BD081C3E36688BD0840AF0EE9BAB4B19F4D670CF1697D3E58EDA35260861A3869B391CCC671DB8992A9B6B4EFCA779923A9782B0034D969C80884D11743F74AB68787B516EE55DA3230C739';
wwv_flow_imp.g_varchar2_table(49) := 'A67A278B7A271385EF69B47A09E9FDD1ECEBCD7060F1554FB7C5090DB6B0AE544C7CB061E1D13A232F12691266B69FA8F591467886EB9D00872781F09E1DDE0E0DEC9D705A246A6BB599A1F622000DA49585C7CDBEEEE39625B5C0FD062D7442DA5819A5';
wwv_flow_imp.g_varchar2_table(50) := '1932AB36DBCFED015074A5103C49DB13025DCDF5C47D6D943A483B1E3AC3140E5A39715FC7DDB4CC39714C85F34D370940BCE21D8B53181CEB21602C6CD44CDC5B35B1B962A25A54CB234A198192665FC2F54026335E1F06D2544F1009716E33CA52BD21';
wwv_flow_imp.g_varchar2_table(51) := 'B6F016331E36C502693702D78C3DDDEC4824805ED5539295673B2B7990C8BACC88A0DB0120311C7AA06CD1E4386E3E3D4035D7C746A98DD5424FAED6463F85BD461E87AD2C4EBA3A5DC9F0DD17009D5DA4F311C8A46D9A5CCB5917F6FCF51C5B1DEDEF61';
wwv_flow_imp.g_varchar2_table(52) := 'FFB3814AD1C2071B361E6DD8B8B76A49C69953226CD950B71520F0B5B78723D00CD9391BF67C973705104B179CB22040D874CF31ED42DAC77A99001A62B5C4F165FE230BAD8610E9170769BC3C4A4B6399EF6B1FF4ACC7794B00A4D10243F754C2452E35';
wwv_flow_imp.g_varchar2_table(53) := '4029D34725D71F87F024D0B43A3B27051CB4B22210D01B391845A32A02C119AFB2D98CFBE9ABC6336AB43CB60E1872266CA366E3471F38F8F1078E581FB6AD123886B82D2D907A9E2F6A1E14616876D4FA7CFD2AC4373B1012CDBE1F92E420EADBB62CE5';
wwv_flow_imp.g_varchar2_table(54) := '406B24D1B521D6CB43196966B59ECF3B6A39D8DACB60EB20237C88BDD032CE3FE341DE2E0099013209CE77F785FF54F27DD4F23D943223194721F7795D2780721289C99C5314AE4E368B9FAA8DA9559A9C2DE73ACA0C7CC842ECF42206D3AC3F49733AC9';
wwv_flow_imp.g_varchar2_table(55) := '81425A1BBA2C073F7EE4E0470F1DAC574C241CE53A7457745D4C068E463A2B2F8385321316E0F94E88AD3D0871E66835C7A979819110F35858A15F2DB9D20FB551D6D11E72465AA1A3B683E77B59B9D5DB9A1F9BE7CABA7500E25C7739DB452DC7E421AD';
wwv_flow_imp.g_varchar2_table(56) := 'D0402AF11437386C67F1AA5EC47E2B874E5FC9337DBC741A46164825E9985789D4C538B51AA9B2280874488F93183238E8E9CCFB19973743D442A0520EA694679EC7C6E6AA8D076B361E6DDA78B06AA15CA0881505A8581C6533BC0FDF53CB536F05D83B';
wwv_flow_imp.g_varchar2_table(57) := 'F2B17314E0F5A18EF4EC1F6B733D9382B1658DA33B260F499EEFD1029506E3F11E12F293B68DE7FB197CBB97C5513B29234DDA7B349B0DBA3D00629DC80A4492A49AEB60A5D091309EF91F5E71B434B43C2FEB257161E43F71E922CE3E0BFFE0CCB8F416';
wwv_flow_imp.g_varchar2_table(58) := 'B38331EE335610F1476A47BECE82718E6A188FF54831721A3B73D67589F28B7C2E47754CAC566C7CB0E1E0C37B745BB6D4BB38FFC59E1F9E605A1F0288F70CDBA9D2B15BA7D5F1B1BD1B60EF58EB5E8CBAF8FD18A24F0288170013AA1C2C6428BF561EA2';
wwv_flow_imp.g_varchar2_table(59) := '961F8A95E69446B36B8BFBFA768F39B2A484F2F3145A6F1D800AE90156F224CE6DB140C53415B6028C7C1BFBCD1C5E1EA905EA0E13E35927CD01A9E56194426105162579CFB119CE6289151237A0A97E8E30734A83995D3E1E7A06BC58E4E9BC457A03AE';
wwv_flow_imp.g_varchar2_table(60) := '2693851C63E64C7C316F6173C5C6470F92F8E89E83F5150BA5AC21633B0C022459480045DA41542A3B6EFA7875E0E3EB57BE90E7C3868EF4E83C7EA4B016190F05B821BDD19C0D23915E2D8EB0521CA2921B2269F9328DB17D98C6D67E4642F9FE902A1C';
wwv_flow_imp.g_varchar2_table(61) := '5156FAAECE8511005C1C12CC629AC4B98DB5624B2C10272FB9F8D4F2DB6BE6B17D54C241332B008A53F57104276D12291FA53C87F074DA93620604102743397A3C16981C9912B55048A1D3D30955AA72704C26560B9B24C7931892826FA4C04AD29CCB58';
wwv_flow_imp.g_varchar2_table(62) := '28176DAC576DDC5F53EBF370DD41B544F12AEA2C46029711802838D5E97922307550F7F1623FC0B73BBECCC473B479343A2B3275D685714C3A9274298DB01601885688010867E15E1CA5C50A7132A53BB48507C958F3DD061017DA4729DDC77AB185F592';
wwv_flow_imp.g_varchar2_table(63) := '0228C7D15D3B94A6F9DD4601DB474571656CE7A03B2278247BCDEEBE4420D39BAB259D8FAF4891124826E9CA2808256A89D2644F5917F203960738274F2183C3A6BA0ECEA293BCD202BC2DBA13C5D5901D85066A25070FD61278B891C08375755DCCFD50';
wwv_flow_imp.g_varchar2_table(64) := '4C81BC8796879966925CC9F7F43D1C357CEC1CFA787DA01688F3F0947561CBAA48BABCA19AAE1C883A4481E4826A45B540AB458E370D2400E90E2CBCAAA7B17D9891DEF04E9F63CDA7233E978D566F8D0B238F2180CA1902A8890D0228D7970C34DB20FA';
wwv_flow_imp.g_varchar2_table(65) := '2EA72DF2D826078A2C90645923D7C5F0369308652E7EB3E662B3EAA356F491CFA83206DD8C6D592292C9822C67E62973C21C0B2BDC2C1BEC1F1B22F0449917BA114ABB4C2AA89EAF2B91FFE4D21636561CFCF0610A1F3D48097898752EE5A80724709566';
wwv_flow_imp.g_varchar2_table(66) := '789266DEBBAE27BC87E0D9DAF1B0BDEB63F78802539CB4D0D1E6B7D5AF260154487B3A5029001A60B53490B5625BC7CE714ADC183B34D968CF5A21ADD0DB2CEABB98DFAD04D04689006A2A80929EF0170550015BB440CD9C54E0B5801A0B2DA805E214C3';
wwv_flow_imp.g_varchar2_table(67) := '46D5C366D593D1185A215A0226F61236C75D488608224BFAA959B9A6FB3A6AD20A19D2364A1EC24A38A71F86AE5A04466EF189D5D164537A7BCA055B2CCF8F1EA5F1C30749AC556D91D023FFA2F561AE2726CE24CFFDA18F93A68797FB1EFEF6D2C7F68E';
wwv_flow_imp.g_varchar2_table(68) := '279A409230ECABD8665CC13F7F62C700E2646E86C2520AA0B5222754D45A73A870A79E1437C6F9F876CF91BF49B9270A122E932FBB8500EA09784E01E42B80460971615B87EAC27AC384160AE30984884073926185B27694782951E6256ED652F5302B12';
wwv_flow_imp.g_varchar2_table(69) := 'CD340824502FC7C480EA1D431599A22BDB3952858CA326ABE294E525075310D1EAB0409A25EFC95B58AF3978B49914007DB89990EC7332715AE3A2EB924CF348C1D3EE7A383CF1F162D7C35F5F7A78B1AB613CC1239FC1AE8EB734C4C50062842900CA71';
wwv_flow_imp.g_varchar2_table(70) := 'AC5B23B1F5A2F2C5FEC8140B2400627B073B35C9835C2DAC7E0F5CD85B00F41D0B740A205D155EF12AAAA942047461AA50C64907CAA964C59545DACFB605936A6563C532D547ACB70CC9C390D0526EAEDE60928FAE452D117914D5C76879E8BA1EAC2704';
wwv_flow_imp.g_varchar2_table(71) := '40FFF02089FBAB0911EFE420004B147459318028AED9EA90FB78D8AB7BD8DE61E4E5E1F5A18F663B10F0C4EEF26D3D3CE72D101BCAD485311F7416402C65487FD0F71140EBA526364B4D94737DE49291058A004412CD709E650CE14013AA2CCC01513E4E';
wwv_flow_imp.g_varchar2_table(72) := '94593314D5D4F1E0D80A15F3AACE9AA54EA24385550B266F918C2FC35D5A21F2115AA1BD3AA5E602713174673CC9B4868CBAD6AB0E1EDD4BE2838D241EAE27706F2D8195B22DAE92A0F15C1D0494C73E05353D1C9D9034BB78B5EFE2C59E8F177B9E6823';
wwv_flow_imp.g_varchar2_table(73) := '9238C796E75D7CE4CD2E6C18016820722F1C69DA398E5CD8F71140AC818D01C4282CC5E1418E2ED3856918BFDFCC8E5D98683747A6792CB2495DE88486F1146FA25662B5A8DD7F2B65A09C532B426B648D85C469E235B4A7ECDD49CB1000B1B4C048E9B8';
wwv_flow_imp.g_varchar2_table(74) := 'A5629B2C941672B6581E12E70FEFA5C412558A3672695A375A12260B3DE13F8CBC98FB69B6C97B5C7CF3CAC5F68E8BD7870A9E462B1C93F58BB8C91912CD282CCF1C904EE99248537093007A1D71A0A31645C575D8802EEC7BC1810820E6801889B11696';
wwv_flow_imp.g_varchar2_table(75) := '4F793AFBCE3C50A3801762814EF340716D4B536CFA3F552F63FE870945D588E698301BD8EFAF70704F1BDB4554DCB134C49754359BF275488FD159BD096CEF05622DC8870643756185BC2396E7C78F1440D5922D8024D045CA97C4D98B2C90085E3261A8';
wwv_flow_imp.g_varchar2_table(76) := 'E0F9D3F3219E9338D755239A6D1A429CA718043813C653DA57DC972BE0E1B42EABF28CC25ED3021DA671D04AA2D3B3A563E17B43A2DF9A48F409A03C5ED449A2B3E80E129154EDD981BA78649858A24C0A3577A8DE41C14D36B013401CA5A915297A694A';
wwv_flow_imp.g_varchar2_table(77) := 'C3172D11437C1136A422BDC1C956AAB61AD8A987D83D0CC402D13A11A1B98C8D7B6B49FCE0610A0FD69328E6A86A1F37F3ABD5F17D2F1216F72469B85FF7F0F5CB11FEBC35C2F6AE877A53F7CD88C9F934E436061045264A394F734025E540D488D69E29';
wwv_flow_imp.g_varchar2_table(78) := '8E3CA7B07DA05118072D59748EC79DA6F99C49377A6BA2309999B2D848CF5246076B05E681062864863268E7B294D1CAE3C551414B190450340735B95DD1248054E092C20CDAB84E322D33585560BDC29E640A5E9A5241B7693EA22D0C982B0A403533EA';
wwv_flow_imp.g_varchar2_table(79) := '28028D36F3422C7B304A5281F25A3981FB6B49AC561D6452E451111BA3DB92FE660FBDBE8F46DBC5E1B127DCE79B57237CFBCAC5CE9187569739A1785FB1E90AE692383570A69441F7B552E0DCDC1049DB977E68126866A29907EA4A08FF3DC8444B3F90';
wwv_flow_imp.g_varchar2_table(80) := '19209F6471B08B5ABE834AAE372EA6B269ECA0CD62AAF6037506495998B850387661E758A8E49E39CC475796036A051DE2BBB70A3C5C5310E5D30A20D9916782549313B1C7C6F528D4C99A994E81F279B9AC836AD14131EF887039C1CA862F5A1FEDF3E1';
wwv_flow_imp.g_varchar2_table(81) := '7E181E760F4778B13BC28B3D17DBBB2E5E1D68169AD6E7B2633771D1981A49CC016D568612C2D37D51EA9773F454A4A7F5D93AC84A182FF37213131A6F5BA7B791F7DB63812200E59243C946B3224F0E543DD7CEF1FA445D18B580A499EC0DFD4067EA56';
wwv_flow_imp.g_varchar2_table(82) := '514CCCAD0F322955ABA725E24CD6A30D6073C51045F97452B9500C2423CA5A335F6448D291DCC880EB6AF93D997490CF5848A76CD99445B998EA3D33FA1A0C5DD44F5C7CFB7A84AF5F0EB1BD3312CBC31C1077EB61B154F9DAF41D0067DA398A23DCAB6A';
wwv_flow_imp.g_varchar2_table(83) := '4319D55A0BA9915C8014D5A2F5614B07DB5BBF3FD578E948D486B2A27423F6A4A96CA5D097FD1F78D2D850261D894F3F0F4A000014C7494441544D6D28EB4729FAC97EA0F3A723BECA75D71E15B42CE7817B35088008A45A519BC0D88E4152CDCD57081C';
wwv_flow_imp.g_varchar2_table(84) := 'DD4CC5967BCD5CAB60251FF37974654EFC7CD9A987B9221DCDE9F65CB13E7FDD1EE24FCF07627DB82706DB5659226152F2B2ADA63C165A5369282BBAB8BF32908A7C393744960D65A0F48B23E0791EB573483FD044A43A3D5CA3A4E31CFBC85FE2DA38FB';
wwv_flow_imp.g_varchar2_table(85) := 'B52EAB132D1D82132DADDCE38A45555A204EA5D20A99568846372DD968D6C29ABD54B469884ABA5D440EE38CB50A1B00EB65E0E13A707FD5C07AD594813F3683A552DCC6895D691180782FD62822D95070318774762F31DDEA92BDCD2C96365A2E5EEE8F';
wwv_flow_imp.g_varchar2_table(86) := 'F0A76F07F8E3B703BCDC73C5F2C4029AD3445D67C86C743618E5494B6BC9C50301103758719174283841C9BB18405919EF61BD6F9E9F5BE2C2D4334B53BDE322E3B0AD75205668B3DCC14AB12F0491DB14ED374F9BEAE9C6B4DFE5CD3BEEBDC91AF1AAA7';
wwv_flow_imp.g_varchar2_table(87) := 'E077B50009EBE9C2EEAD98725B297393145A95532EA4FB85296048AEF5F12988F46F7A92B82D028973B3EDE2A04EEEA3D6E7CF5B03EC1CBA92CDD623BDFCB5195B2BD6D7A858C656D687AB7DE98DCE255D695663039AF4441F64B0BD9F91A67AF29F8BF2';
wwv_flow_imp.g_varchar2_table(88) := '4BEF02D8ED009010086DCB188FF52427C67ACA5DA4131EBA43CAD865652A830DF68D0EB590B5B5958CF4A2853A23AF92A61A06153238626CE2D18682A85CB0243FC40423B98D64AB2310A94B8BC9B62D7B8669E4A600A20C0B1386FBF5115EED29EFF9FA';
wwv_flow_imp.g_varchar2_table(89) := 'E500CF5F8F7078E24961565B6E2F0FA0B8DB921BCA709CF95E85001A60AD3412ED484EB5B6FBD48A4EE0E5615A467B48A8652AE3AE37D50B7EA24420AF24D944CDE146223D3C5C69E241A52DFA8843D7C131870A3B3AD24C6DA0663F2132FED328728CF9';
wwv_flow_imp.g_varchar2_table(90) := '5024A9CB6633F22102E807F74D3CDAB4C65628196D79791E40B105324DE5463C3BDAA806D975874079B133C0B7AFC87B8678B5E762B7EEA2D9A6406638DE4E7C5AB7321E1732B5BACF2DA328ED4702FD6875205B1E903B76A42DC59611678A8CEE3752A2';
wwv_flow_imp.g_varchar2_table(91) := 'D82ADB1B7C1F00142FA87215BA324F1ACA3EA835F1A0D612221D0416DA32DA9CC2613B837D8E3677D838FED6ADABDF789EE28C35533FEC17E2A8F147F74DFCC3A60E01968B26F2591B29C92E9FB540F1169831B996D69050B57ABABD00BB4723FC6D7B80';
wwv_flow_imp.g_varchar2_table(92) := 'BF6DF7F1626F848363178DB64E5ECC4A9C69B0745319755FE59C270DF5F16C3CDFB7DE56C14DB6B1D20A5133896D1CB166C0E56DDE2D22D16F3ACBB4422C6B3CA8AAB802F7C2E2091FF98EECF579D04A8BC0D4612B2D3CE8B2629AF1CC3815E249A01FAE';
wwv_flow_imp.g_varchar2_table(93) := '1BF88073EBAB9C22A525B265B2D471D4D2C4C03903A068AB4C9EC0911BCA68CEAB3D12E71EFEB2D597A269A3C5F202C376ED60BC88EC9F5F8BF8356CEB656D8FE0E196079B552AB6716B4B4F5A51768F1DBC3AA26A892AD53303AD22A3974B159CFFFC5B';
wwv_flow_imp.g_varchar2_table(94) := 'C181BE4B760DCD4AA798E76863B3C49CD04024FE99F1657B2B81F3B29EC7FE49069DA13D96F39DD6358C4F8C436D6603B5B22A66DC5FB3F0E1A68DFBEB362A0586EA0AA031F789A233DBD6BF33D9381A71B313B67EB8D8DA1DE28FDFF4F1E7AD3EF60E47';
wwv_flow_imp.g_varchar2_table(95) := 'E8F4594CD5B07D9662A66CC9C0EC732214F0B05D97336124CFAB05EE4EE88B4AEBD67E0ADBFB9439A646902D4AF5B1D4DF0C946BBC8CB70E40930A6594B6AB5260AAD0158532665B396DC19356EF707C3727122FED01938A67B3D21701293E99A21A26DB';
wwv_flow_imp.g_varchar2_table(96) := '3019A81628FA64E1870F6D7C74DFC16AC5923205938BE2CA649B4C25D10410F75BA50E35DD13BB0CF78E3C3CDF19E02FCFFBF8DBCB81B82F8A415D36E33CF9DD25F7C361C214A57F3D6C545D09E1A9954D322DC3844D07DFECA6F07C2F255B1DC4EDAB97';
wwv_flow_imp.g_varchar2_table(97) := 'B5CA6F5AB35B0D20EEC057CC309CE7ADAFE32BD991F4E4B4FB6CEFA042998A2C74066C4FE55EA0D349FB4E8EE5A8F41CF7ED5201040288D3A41C4DCE67199569E2905119F341629168810C36E6B3F5C3C7CE812B61FBD6CE10CF5F0FF1626F28EECBF519';
wwv_flow_imp.g_varchar2_table(98) := '1D5E2E708FC7D364C2564439297F1760B3CA6954B67078D27D4837CF16136EB2F2ED5E0A2F0E92B2CD659C58BDE8229AE6DF6F1D8024228B437ADB4726C1C51A4AB675A3D8C35A69804C8A6A1454674F45D15812C76DF6BEB0F2ACA4F622B31D175DA5A7';
wwv_flow_imp.g_varchar2_table(99) := '3AD22FA4081455343EBA6FE3070F1CE143D5A22D59EAB864410BC4DC0F49340934DB31760F3D7CFD6280AF5F0CF1726F88DD2317474D5736D4657291DB4F5D86C48EF585A23DEFD3A900955C807B35170F5746A209649B7EB4C11C77EA71F0F23029FB83';
wwv_flow_imp.g_varchar2_table(100) := '70FF57EA445EA64472EBF3406F4BF8B1C350B5823C29AA52279A4AAD7465741FFD91237B81720273FF84ED0BD4C4B1744FD0692EAFE83971928E847AB56CE1E186850FEF59B8BFC6F11C07B5121BE56D4D30462DB06CFBA0E015B7ED7EB133C2FFFBA68F';
wwv_flow_imp.g_varchar2_table(101) := 'BF3C67C270244554126786ED9393A5D37EA53874E7AECCDACFC451660FF76B1C671E219FE1546B242AD53071D070646F104662DC606E5EE23CF93D6FA5058A0F809969CD4E73E4991BAC2880A4F725C9995F4AB93137C41D7AD2D83FD10E3C5A21BAB271';
wwv_flow_imp.g_varchar2_table(102) := '8D6CCA33C791682A89ADD74C01CF43DE366CDC5F65C7A123AE8CD687C0911D9F07909EE96F7746F8E3D73DFC757B80C3638ED69038B3F543F9CF45D6F03B910FCB3A52FC65D4A56DB9DC7065BDCC267AEE52C8A4213B2639C213ED95D1B6A33DC24EF7CA';
wwv_flow_imp.g_varchar2_table(103) := '98F2B0DFF9B45B0D200D79558092ED9ADC177DBDA45B1D50A58BD575CE78B171FCA091C6DE4952F21F1CEFE55E19D24435C5BE1193843A9B5639BAD50A437B72A1047EF020818D9A834C46BB16C97B388078D4E016DD9E649AFFF66280173B43E143CC48';
wwv_flow_imp.g_varchar2_table(104) := 'ABA0C1743F933D4C743D1C1861CE87FBBEAE577D997123EFE131732E9EE0E42CDBCB0307AFEB94B5E3462BB1B8E662658E6F3D80780A44333AE9A19C19A156A0ACDB50C6593803C659B021F9503B898306DD19B73D4A8C256FC3A809EB5D1CE44CC53EDA';
wwv_flow_imp.g_varchar2_table(105) := '828085555AA17FFC2881FFFB5152264FF3392DA8D2F250868EA339ACB26FEF8EF0726F84FDBA2BD57686ED97B13A937C8C849EAE2B9BE4B64F213E58F3F060953B33EAD607ACF673CF8CBD631B2F0E1CD92F83FBC18AD5A586D0029459EF8C0B53421D65';
wwv_flow_imp.g_varchar2_table(106) := 'A6B9DD538A5C88C0D1AD9E58072A6438076CCAA833AD4FBD9D901D8BB9EDB56C7F14CBB7440BFB269B3079025988E7496483FCE68A85FFF35102FFF851120F371C1473B684F20410A749D9A2FAFCB58BD7FB2EF699716EF952CE60EAE6B22456BB27D96D';
wwv_flow_imp.g_varchar2_table(107) := 'C8DD99219B0773AEEDE1AA8F7B354F780FDB4568F9EA4D4ED25A7879E860BF61A1DB67CBAA4AB8CC9332B81361FCDB0835772B647983C9446E3A4B006D54A88DE38A78421872DF084776EB2180F61B2A79CB26F341B463E1997D52CF6900C5B53821D4D4';
wwv_flow_imp.g_varchar2_table(108) := '228C0835DD1755C6289A400185A4C3F723803CFC6D7B84E73BB43C6CDFF04561951967B59AEF765F93273ADEF6924300850CEB733ACB260392255FF64B65C84ECB73D0E0D811232F6E36678B3A2BF7CB509D80E9DDE674CE95E376E12F9F7EF5FBDF4EFB';
wwv_flow_imp.g_varchar2_table(109) := 'FC33D66B9617F13597ED079AE67384508BF68F5A220A0B70D7424E26F06A95DD9AE95E86915229F74C6D47DB7D931F70C35DF60D4DC34DA8146253CFD0C4BD358EF0D8D8A8DAA8961C64D2EC3F8280E69B97236CEFB9386E7A9289A6DE8F08234C29B717';
wwv_flow_imp.g_varchar2_table(110) := '2709653BF0A8F99F5B1EAC5703AC553896CDF9368A8E6A4477D434F0EA907B6598A2C8DAE8D21A6ADBEDA22D4F7C4EEE0C80E203D2E14116145D119864437935CF3D4515445EC8597746667469BADD7743B6FCD6BE662A6EB0C54154C92676328CDF5FA5';
wwv_flow_imp.g_varchar2_table(111) := '5B343744425D2B5958A958A81555C285620A3C59EC6B26FF61CEA7D9894276FFB4DEF5AE8B224E1BC4BB36D3DAD16D71D769F21E0268B5C49D0A358020EF6977B9C91C01A4D6A745F08C180D02C1C42673D35C8C9779CE9D02501C1273369C13AB456EFB';
wwv_flow_imp.g_varchar2_table(112) := '2DF3E1B448CC5AFB227229A2092E77F1B3640B2802884493FD329CF7E2788E6C9124A433AA514DB8B4388F42B1CC6C86FB5BB03ACF9B854C92BD3F065A1D2A6AE8780EB725E08E3931678BDDE1647415FF1BEFC97564CFF8A4EE56C83E6D6E3A5792BDC2';
wwv_flow_imp.g_varchar2_table(113) := '7410929C87A2A354AD6F75749742755DA6C8D16894A97B83C4F5B2CB242BA705D1FB02D0BF8686F19FD37EC9699F179F184930DA8144601C3C2CE73D097309245EC5DC7F945B61325F4397C6F4BE6C46D236658F756E951DEFE6ACF99A37AB98C64AF389';
wwv_flow_imp.g_varchar2_table(114) := '04459DA2414411AA52E917465CCC364BC27022661F3F9C8CE3A3A91FD9FA80DB5CD2E2E40C947340A50819BFE6FC7E2E45693E557265072367F5A9D6CA5D0A09A26697F927EE501D455CD3E60AA65DE473CFBB53001AFB65DA008A678A2CB0F2845A9193';
wwv_flow_imp.g_varchar2_table(115) := '9A6C75A0FC1BFF469091F7701B24DD3F82F9124630746B9474A198020936DD1AAFE237B935A94751B0D3A4BE90EE86CCC2049384040E43F649723EB602D103E96F8A5E1F83872DB59C8C65472447AED95E4BD7C5EF4CB2CCF2476F18A2D10EB15B0776EB';
wwv_flow_imp.g_varchar2_table(116) := '949F5115357E67DDC2FCB4096F466C4CF532230CFFEDE957BFFFAFA99E7C1E7CB3BC88AFF9F8E39FFE936918FF33EBEBA779DDD89D51582AE50B882A795A219575E1D6D99C48E5A80E23B4916F499D885B44927CB6C4A519D1C0A02175258EDA50B99580';
wwv_flow_imp.g_varchar2_table(117) := '901314CB0047DD927167DF58722E767F135F386E563BADB11942C8538E6A14E56879B286581B764352789CC0C9A6B5E39049484ACA509F885A45DCEEE9A041D12BAA87B0EF3A02CF0CBD45D3ACEBF9E70461F8CF5F7DF5FBFF9DE5B533BBD46B0190900A';
wwv_flow_imp.g_varchar2_table(118) := 'DD0150DC9913202B0D5794B8D39B58A2AC2A9471D2822E4DB8D180449BE4DA40A3CB11669D40A52AD9A446A258A5E84A1F2FE004573A3F052BD1D784DC302D165D1FF709A3C815D55AAB45532C8E0027AB038F24CA9C29E30C3D55CA282BB35B0F65369F';
wwv_flow_imp.g_varchar2_table(119) := '5B3C712A96B9A738DA127719F9F3994FD29488782F007AFCF8B31F19C05FA6FC8E733D4D5D046B66CCE072343A1037462B2435A40205A6C83998472201D6494D1594A235528D449E28028A278A791EEEBF4E923D16238F003B09A449974A622456277259';
wwv_flow_imp.g_varchar2_table(120) := '9C3514F5D624375C89F60A2BEB964F04105B69D924A6CAAD947F61437E88FD13EA44535E26C4494B95EA49F8C9D5628B38D7825DF2C521F0E367CF3EFFEB255F264F9F19DCD709A0F8C074B65E751259BD2EE739FEAB8548F28B6256892BC790D9CF23D6';
wwv_flow_imp.g_varchar2_table(121) := '68A4D6880DE9E4177471B4404CCCC521BFB834EE84281C295E12354366248FCF298B582B9AC49B996C12650A3B50068F9C47B2CB390249232F875B1E405D1689F8896CF1C4A67C962928F7AB829F1A69696A21AEEBCD7232677DCDFB0250D5008E66FDD2';
wwv_flow_imp.g_varchar2_table(122) := '977DDD64ABA84C2E50D62515209FA65A192751191EB33C00E4E9D29286B46670BE2B9674A1D41D8BAF32031FDDB813607CF56BA39ADEC4DA88A561DF0D89B5DE53A183E1399382CCED104472B32837A3AECAA0BB0A740091F3F19D1E655E686D021CB743';
wwv_flow_imp.g_varchar2_table(123) := 'B142B13B65B358EC42E3606BE6ABFAB28B1A3D3F046ACF9E7D5E9FE5E5737DD74F1E7F76C501E69B0F492C012BF8AC680B9034BAA1552288485CB96F2995CA38CA9CA6D054C28423EDAADAE34C17C7165982476FD04E47A9A7B12B91B687E332D45C54F9';
wwv_flow_imp.g_varchar2_table(124) := '60A9A111406275D4FAA8C42F437CEA05B1018C7A401C7BA6DC9DEA031138276D054FAB0301556C752625EF6639818B78CD97CF3E9F190733BF905FFC938F3FFB030C7CBA8883B8CC7B8C0BA392B00BC512B0298B595D0A4DD10AF1C648887DD09CBCA038';
wwv_flow_imp.g_varchar2_table(125) := '148144D93B164B459C375437C7A8477A8B643768FDB778164CA635688D220BC497CA2DB238743A5468A5B56191B5DBA7B00237D3E5F4AA02A8D1E626736A75D8DDC848709A1694CBACC9CCCF35F0DB2FBFFCFC97B3BE7E2E003D79FCB35FFDBD9DEADF67';
wwv_flow_imp.g_varchar2_table(126) := 'FDF0595F37599E8825EF62B74261856C12C8A4092A8DCE182191E452688A4062F6990553466DE2E218BB0BD751F088F5317598501E4B4CAF35B680D6C68F04163C1656A9D2E1815B1AD0F2B0D18C8FBB038A2CE82407F90F89329386048F682546C5D8CB';
wwv_flow_imp.g_varchar2_table(127) := 'B484CCBA5EEF7ADD3C49C4B948345FFCE4C9CF3E0D83F00F57716097794F69D012CBA06E8D3919E5251A25D142313F4305D76C8604D7920D72398D912457B22C5832E21C8386EAAE068CE877828A04374E2C8A9BEA739090AECA93CD73F998C0E19696AC';
wwv_flow_imp.g_varchar2_table(128) := 'D6D345115C927792DA9C8A6C0A518F0E6EAEABF7320BF48EE71AA6FFE1D3A75F6CCDFA76731DC393279F3E0A03EBF9AC1FBEE8D7C56D1A71822F6EA12098487A69896891081E51724D53489CD31824C704906A4C8BE589B6E889AD8F241E7D56E399410E';
wwv_flow_imp.g_varchar2_table(129) := '84E3B4E5E6C9B42A4374024BC0C22D1222C0C579A6451FEBA2DE6F1EFE33B7057A9F3C687201CF1734E38DE954E15E390BAD1249AFD4BB129ABBE1BD6E8FC0214725CA1AAE4751581489C54D5C6CF662C8AF6E4B5D1541C3C7145590C9D4687F8D71863B';
wwv_flow_imp.g_varchar2_table(130) := 'EA08182707E6BA6417059BB1099C8BFF2C044037C58DBD6969637E115BA498001328E2EA58F712F737B9E76804A06875F47C6B2F0E33C971BE482751B54E76EA9E4E0BAE57D5BBB3480819A6F193A74F7FF7C53CEFB990EBE17D4563973DF0B88635F9BA';
wwv_flow_imp.g_varchar2_table(131) := '881EEB9FCEAFC6F9DFE3F242546598CC61DC06C09C5BAFAD2F9F7DFEE165D7F0FCF31702A0ABE84E9CF7C0DEE6E2627777E65E9E7C2EA5F5A60CD7C46AC57C4BA3B709ECCDB095E6228F75DAF79A37FA8A3F6731005232CD68ECD1B40770DDCFFB0E4F8A';
wwv_flow_imp.g_varchar2_table(132) := 'BEC0199CBCED49E74DD6DB14C86E09787838F392E78502886F76D3ADD07503F6267FDEDF59DEAF9F3EFBDDAF16F11D176281E22FF2C9279FFD06217EB1882FB67C8F2B5A81105F7CF9D5E73F59D4BB2F14409217F2ADDFBC8FF2C6A216E48EBFCF4288F3';
wwv_flow_imp.g_varchar2_table(133) := '1B3CFAE296EDA62517177764B7FF9D1611B65F491476FE4D977CE8E681ED2AC0C3A35CA80B9B5CB6C812DDE8C8ECE69DE62BF9465B8669FC72DE84E1DBBED995014822B3279F3E4260FFE27D54ECAFE454DCB6375D30617ED3E15F2980E20F8CDA3E7E7E';
wwv_flow_imp.g_varchar2_table(134) := '93F344B70D1B177CDF2D03C67F2C2A547FD7675D0B80C6D6C8373F0D61FC7C19A55D195CAF0D38F1115C1B80CEF0A38F7FFA8B2590160AA22D230C7F3DABC2C63CDFE4BD0068ECDAC891603F821F3C0A4DE35F9649C8A94EE5D6DFD769CB308CFF86892F';
wwv_flow_imp.g_varchar2_table(135) := 'AE8A1C4FF54DAE320A9BF60B9C7FDEE3C79F5501F0C6F6891AEF2DFD5DFEF63DF9194F48708703C33064FA65D6D9ADAB5CB3F76A81AEF2C096EF7D3D2BB004D0F5ACF39DFD942580EEECA9BD9E035B02E87AD6F9CE7ECA124077F6D45ECF812D01743DEB';
wwv_flow_imp.g_varchar2_table(136) := '7C673F6509A03B7B6AAFE7C09600BA9E75BEB39FB204D09D3DB5D773604B005DCF3ADFD94F5902E8CE9EDAEB39B02580AE679DEFECA72C0174674FEDF51CD81240D7B3CE77F653FE3F5AEBAA5321D951C20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26045834337287057333)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000200049444154785EEDBD077A23D9B2A4792049829A292AABAE6831B386EE05F4FE9730FDDE7DB7640A4A105ACCF79B1D8F082099';
wwv_flow_imp.g_varchar2_table(2) := '49098A24585F1490244820225C989BABDAFFFE5FFF679ED65FEB2BF04AAF406DAD00AFF4CEAF4F5B5760AD006B4178D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00';
wwv_flow_imp.g_varchar2_table(3) := 'AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF4F7EAD006B1978D55760AD00AFFAF6AF';
wwv_flow_imp.g_varchar2_table(4) := '4F7EAD006B1978D55760AD0037B8FD9A1B73CBE131357E47FFBBF957F116B77C2FDEE7966F75F30FF583BF72AD00D7DCE08710FEDA35D2597D8F5209FC6C7E85687FEBCF5DF73E2F4296E302544ED24FE7D2F27971811E46E5D70A700FA958BE0521808B';
wwv_flow_imp.g_varchar2_table(5) := '8F7ED5F78433EEA96FEEBCB8C9C5CD9EDFDA01DDE3AC9EF657ABD7B456F39589475F9EDA82339ECFEFA7086B05B8E27E077C5978AC087121E019E6D4524D025EBC9EE7C5BFF969450196B051587F3FCE757325F808BD04DF0A11CAF0F563788AAF5FF3B4';
wwv_flow_imp.g_varchar2_table(6) := 'A27CF377F725B1AFF3759B571E6DF9753D524A3314208EFC16F7518257AD00CBF0A66AB98B9B514BA91E02CDF37A16F6E5EFD796BF1FFFAE2A879FC757D5F2178A20619FA75916FAD9CC0A309B2D7E5FDF43618AD72DFE3C0466410C9F69AC8085E7BAD4';
wwv_flow_imp.g_varchar2_table(7) := '6BF3AF8E5A7D5680C0E9AC96A6F37A9ACD6A6936ABFB1A09172D7A859BABDE2B9E0C7715B697F5C907425FAFA7D4C88F087EA3EEEFF9A8557EEEE7FE1D3FAFD56A59719614A1D08002D9664B9F2D3E423D43B811FA799ACEE612FE789C4DCBEFE9FB284B';
wwv_flow_imp.g_varchar2_table(8) := 'FC7C9A5F17DEE3AA60FA89956019E25785BF519FA7467D969AF559AAD7677ADEA8CD0481B0F293593D8DA78D34993692946156CFDEE0EA58E9268AF0AA3D40F5027D25F8087F3DA56623A546A3969AFC3B9EE7477ECECFE2510A2305B0F0FBB1AA00E101';
wwv_flow_imp.g_varchar2_table(9) := '4ABCB460F971F1D9D24F510214603A4F1384BE784C5FFF3B5E37C93FCB4A83125DE9096E22192B7E4D15EA1482DF40F8A7A9D598A5467E8E1260DF813EE349230D274D1D93695D0AC0F70316DDE523BF3A05F81ABFDBEA1716BF910A616F35526A356BA9';
wwv_flow_imp.g_varchar2_table(10) := 'D54411F263B3969ACD945A2805CF797DB396150165C80A104A2005C887E05304C50259454067575EC2182C7E08FD64324F3AA6B3341ECFD378E283EF8DA7E5BFAB3F9BE20D2ADEC4F1C4D3C70955C1AFCBE2DBEA23F4ADC634B59B1C13790194014FC027';
wwv_flow_imp.g_varchar2_table(11) := '47D887E366EA8F5AA93F6E4919E409D60AF07DBD8FA07101DF57F03B826F0B6E6B8FB0C7D16ED5D2462B251EDBCDFCC8F37CB45A28850F290130A951B71220F459E0ED05B2F0579F2B788EA0A0028932A441E025E493998ED1689E46E3591A8ECBE7A3F1';
wwv_flow_imp.g_varchar2_table(12) := '3C0D3946B3341CF1E87F4B41E439804501A7EC6122BEC8E4627101EFC7A75C6F7F43F825F8B5796A34E6167C09FD346D362769A3E5A3559FA6060A509B09228EA6F5D41FB65377D84E97C30D290370A8EA05AEFF045FBFE287F60025675C627B6E42E07A';
wwv_flow_imp.g_varchar2_table(13) := '6E00D0C6828F6023E44942BFD14E69B35D2B0EFEBD91FFDD6EA31875FDBBDDAE4B219ACD7A6A22F88DBA843FE00FEEA556AB23EA5288E2DF55CF10CF73B807F3230F90851FA197E08FA669309CA501C2BEF0384FFDE1CCC760EE9F4B595084949521D98B';
wwv_flow_imp.g_varchar2_table(14) := 'A05CD3520916926F0F1C1F54F1BE21A683DC667D9E9AB2F8B3B4D19AE66392B6DAE3D4698DD3466B2C6FD0A84DB3F54F12F8EEA09DCEFA5BE962B0214FA078001894A110EF775B25FEA1156019E31BA3E372B3D0678BBF28F4296D6E20F8296DE9B1563C';
wwv_flow_imp.g_varchar2_table(15) := 'F27D2B81857F03E1AF2A00C22F0864254859F025F44AD7D62B7088D7D4A5146696E2306E07FFDB0364E11F4F2DF4C3A9045D8A909580C7FE60967A95A33FCCDE202BC2689CA4102314227B86C213AC38CF50303C087E16FE76C382BFD99EA6CD5616FE8D';
wwv_flow_imp.g_varchar2_table(16) := '71EAB44769A3394ECDC634D5D24C84C0785A93C09FF737D2696F2B9DF737536FD44E2360D05A01AE767C55AC8FE55980398DB9AD7DD3961E8B2F6BBF81D067C1DF283D4008FB069008AB2F08540A7FAB554F4D411F0B74587C739E75D925439DFC33C1A3';
wwv_flow_imp.g_varchar2_table(17) := '8AB2648509F6C82901BC8015401048D0C74A802730E4290F94A05751043C014A6025E111CF80250522D92BC81304E314B986075286127262F56D78C2EA037736803CED69DA6A23FC5680ADD6386DB647A9DD9864E88311A8A5E1B8917AA3A604BF548056';
wwv_flow_imp.g_varchar2_table(18) := '1A4D9A8640D0A2990A5D7B802299925D6EC1E6CC85ED056F5AF30C7142E02DF41D847FD3D61F8540D08DF3EBC6F945E0CBF3BA604F43DF4798B375CF963EA77332479DB9D554BEA6AA000B8173CE3328052636676645C8DE0065402922288EE7A3899541';
wwv_flow_imp.g_varchar2_table(19) := 'DE2043A1D223CC536FE003A5B07740094A45204E50ACB04CA1DE011695399408722DFCEDA621CFA62CFF247510FC8D49DA12EE1FA78DE624B52AC28FE51F8E1AA93F6AA6CB614BD0072FD01D6CA40181708509BA6B32EC87844072B90175EAE0FB796A37';
wwv_flow_imp.g_varchar2_table(20) := '2DF45BED79B6F229753653DADEF26367332B00B0672307B68D60742AD0652198B51507DA187D2A8769A197450ACBE4EFE93515EC8FD284F0EB51946AE411FCD7941B56C28B0348002528AE3457E8F9E7F6160E923950825E7F96BA3AE6E9B2971F79DE47';
wwv_flow_imp.g_varchar2_table(21) := '09923C038A10B1C22407CC28C272FC749B00D371D65CF7A049A08BE01716BFB4FA1D411EAC3E82EFA017D883571A4F6AA98FE51FB45277D8CA8F04C06DC121C19F69A3B0FCAF5E01CA3284EC72C1F7BAF8F3B421A8334F9D8DB9857E739EB6B3F06F6FD5';
wwv_flow_imp.g_varchar2_table(22) := 'A404F200B2FEB6FCF0FB015B826B9E451632536FC13F571F0D29AC004A665552F7A12481F71D2F94D4E9424E2112706449EB3EA76AA6D4900E0133BC90B2A00850A5D91BE0012EFBB3749185BFDBE339CA304F977884654590472097606F709BA0B25A36';
wwv_flow_imp.g_varchar2_table(23) := 'C2E734C393853F5B7DACFDF6C624757420FC863ED09E24BC5076DE7B34A9A5C1A891BA8356BAE8B715FCE201FA1CE3A6A00FD69FE0F7AAFAA05B29EB8FB024AF64189CA555A085D0CBEACFD3A6ACFE3C6D6F60F14BE1AF5AFE0870C5E848F89D6524E338';
wwv_flow_imp.g_varchar2_table(24) := 'E198FAC02DC773C3865A9A4EFD3A67642DF88613A522385D9F7300392650B63832CAA250834AAD26D8023F4762CE420F9C8BE09DE728018247D448008D12C006050CC2EAA30CDDDEDC1EA172181AE1118811F008568205BAF43B25DA05BD19D9F3BAE9CD';
wwv_flow_imp.g_varchar2_table(25) := '760BC8332BB07E55F885FB5B93D46EC1F99BEDE13D87E37AEA8FB0FCCD743170E0DBEDB715030C24FCB6FCDC93A809BA8DC02FBFF6C543A0107EA84D5B44E08E713E826FABEF63A722FC04BB587B6011016D60FC606410DEE9B42E6BC4814B8641F173BB';
wwv_flow_imp.g_varchar2_table(26) := '682B03B4623C5AF043312C40DCA8FC98AFBE19212CBABD4C945604FC41019D97C889B62CF04EC059F05154C72A0EE43967CE1DE841611950096F30CAB088F800ECEF5800CF60459042C823A4D4E350E0CC79429B960A8D7247DE60A16233C75C91D412E4';
wwv_flow_imp.g_varchar2_table(27) := '69CC2B823FCD169FC7B19E23FCC6FB017B4AE1EF0D1BE972D014ECE9F6C1FDB6FE8351087FDDCC4F362EF7117ED5E0BD340F5075CB55CB6FC187DD99A7CD56B6F812FA99ACFECE5669FD0976111A845E942581A74044C5EA4F2DF8833181184C444D9651';
wwv_flow_imp.g_varchar2_table(28) := '8F52042B01428212540F279EAA0165CEF8CA8A5AF88BF4572E95084FC0A3CB2E9C5C7336BACC4813941BD219B629684799730E43B0A3E118481E012A71EEA458C408607F1401C1071E9D5FA6FC1CA54852063C82D922CECDDE2D4A2B161936BF97BD2EF7';
wwv_flow_imp.g_varchar2_table(29) := '60963665F567823BDB9BD3B4BD69A1B7F013EC4E4B9A539FCD961FE197D0F7C1FDCD743968A51EB06744F90396BF2C7F7066FBB69CCF0F94085BE4961DE8E26E813A58FDEDCD992CFE6EC787703F01AF84DFC285F53556AF57204E3D8D24EC16FEC1103C';
wwv_flow_imp.g_varchar2_table(30) := 'CAF32CFC7A0C06250B88B2AE59091014952144715B94352F6425F48FE2F61599E95C60A7DAA35C72914B3122E31C19E9A06D895B4AE6AA54043C20AFE5BAE0195553AF1821E09161D0C5E53C9D73F4E6E9ACCBF3A4380145E8EBDCB3A26748149F3B6AA7';
wwv_flow_imp.g_varchar2_table(31) := 'CA8C6E58FD59DA6A63EDA769676B9A76365102F0BE991F2C7F70FC2815862484FFA2DF4CE73DE37EBC80604F167E925E55BAF3AE41EF0F0181C43260E1B2E531C3334F5B581D05B8B6FABB5901782E8AB362F9117E041F18339E58E8B911587809FCC291';
wwv_flow_imp.g_varchar2_table(32) := 'B217F00DB3F5CF19D6081A510065595D9DE900B8C2A654F8F510FC22539ABFE1F20917D43959572A41D4223963ED120DE21625EBF46848E747D82ECE171898521B6F073CAA9B39825A250F00242A94A0374FA717F374DA4511508294BAFD9A6011D784F3';
wwv_flow_imp.g_varchar2_table(33) := '0D66C875530ECCCDF2D8F273FDB736B0F8D3B48D0220FC5B0E7C497685E5A7BC8138050F8B9205EC39EFB74A05185AF847935C019AB9FEFB943E5F05975E14048AC689C50B0FE4E1C223FCD9EA17B0C796BF2AF8081754A4847F62A1B7B0137CF9865485';
wwv_flow_imp.g_varchar2_table(34) := '1F9A30608F85BE843B2492AA42BF087D72AD7E06CEDF89210B6F60AB9A9580D8408579653C1071816051AE4772D94699BB70222F582D182F2B82E304C74840237A0950024A268043587D14E0F89C23C913081AF5B9268E7D5000973364C1573C42A08BA2';
wwv_flow_imp.g_varchar2_table(35) := 'CD64F50D7950002CBF851F8F40BD0FC1AE694EDE9BEC6E2D5D0E607B9A09EB0FF411FC1918F68CC6167EF701D85B3FF4D7B3578045CC5F661565F5B3E077B2F0EF76664987825DC70108433B576B22F8AA2BCFC1ED40B893839B5C4FBD4128008C886150';
wwv_flow_imp.g_varchar2_table(36) := '587B333F515856A9BB2F6AF76D21AF624ECA9EADEFDFBEA2B36CA901270AF6C832471D5304CA111F98112A4B384CF79AE20DE8B7993D42D51BE0B1C80EE3095080CF675680938B244F70DEB31720FE9102C833E5BC4A21F808FF2CED6C027B8CFB510668';
wwv_flow_imp.g_varchar2_table(37) := '4E600F995F2A3E9DAF707D1206A73BA8A78B1E19DEA6B03F8A20DC0FEC193772A28BF823F22A0F2DFE2F2808C66A05F429F13E173D1F5BD3B4B73D4B7B1D7B81B07A942D63F50998600F70A95C7C041CE1BF1CF840F8AD08167EE3FC92DD598635D5D6C4';
wwv_flow_imp.g_varchar2_table(38) := '85B6C64AC9F175B76BB93964B97649783B07CCCA4914CFCB2E35D73795C57C7883AD0C8522C721259042F84011823522484628FB8324F8F3E534490950805314E0122B9DD2180548869E100D587D43CE38A669776B22DC8F0210F492F10DE1278987C7C4';
wwv_flow_imp.g_varchar2_table(39) := 'A0C8D80CEBE91CE1D791857FD84CFD614374A7B3BC59F8754D1FDEFABF181628049F8B8FF5C2EDC6C5DFDD9AA6DD0E17DFD6DF54A75D3E7C79F0F9127E2C3E50A722F897036E30DF5B14FE051A3067460BA1BF4EB21FE1E755266651094CED120F8417E8';
wwv_flow_imp.g_varchar2_table(40) := '64058009E3E0FB2A07693940862522D82508FE7296D2F119B18015E0A2E7EB028BC47B8AE254BC05B58CC59FA55D3D82F9CDF860FD117E608F2C3F4A86F08FA1592DFC17FD8684FFEC12D843A527B5FE0D597E73FDCEA23F34E67F714170B03D76BB2457';
wwv_flow_imp.g_varchar2_table(41) := 'B8F8B858A00E567F9AF6B6107C07BE3040BEB119EBAB8D8EE0B62AF88D7449F085E5571066DC0FDD59409E0A075E6D4AFFA66CDFA166E63A3DB9AA6D732196C8F810DB5816FB95BD0BA64A17E38150007224A6821D18239C3042017F6086BA3D04D6AC17';
wwv_flow_imp.g_varchar2_table(42) := 'D7807B208A99BC0A9007E383E067E117EC41F8C1FC747515E5CCAE42C5F074FB167E333E3EBAFD66EA0D813D75D5FD9BEE5C0DE67F310A10A975A5D571BB19F347A005F491F063FD3B045DF3C2B54BF8813C21F82AA832D4E106803DB14211F05AF0CD74';
wwv_flow_imp.g_varchar2_table(43) := '18E797BC7731A1E17BD2BA02E18FB7BB4A09AE64338A2CAC59A46A734FC406CE7CFB7002CD5088C0967327317606F6BF74520C9608C520B887F541F89D500CBC8FD735DBC37D8188A0D8ADDD98B99A5396DF7F9B80B72BAB6FCB2F2540F885FBC9F2424A';
wwv_flow_imp.g_varchar2_table(44) := '58F8CB36C7EB4CC4FD7FFE6C83E0B0FC2EA375C02B6E79D356870B8FF0A304280316CD25014E6885D58765F061C147010C79EAE2F9B9C1C6FA8B42AFA4CF2DF0FCFD6FC5FDFE42590B55B678CA2B643A9520D93D0E251D0C83C43543B8812808BD6A85FA';
wwv_flow_imp.g_varchar2_table(45) := '91EBF0740A8C109E02EF0ACC749C555A7F303F567FA3497797851F97016CC2F29359BE04F6F41AE9F4B299CE2FCDFA20FCBD01C609D8E35C8C857F7598FF45788065E137C76C572BD823CC5F62FFCE2617DEA5055CC0C90C2C594F97CA2CE26E1BE9325B';
wwv_flow_imp.g_varchar2_table(46) := '7E1E0D795CE68075AA5AFCE7DA447E5BF52883E7AC04510AAE6E369785A31408362C13413EC93E7794B96B8CE2349403DA5531D796859F83982B181FB87FEE11B0473DBC99EDC1B8103F84E73D13E6F721E11F3614F48AEB9FB89EAAE88DBEED09DFF1F5';
wwv_flow_imp.g_varchar2_table(47) := 'CFCE0308BCE4666905BCA4D6DB4EAC20F4FBDB132980D906D36FDC480241B87D02A8C82C62F9B13A5200D89E02F610103BC5FF15DCB9668ADB1DAFF3A3FCDAB746BD048D4A2D91B3C33ED4D04FD984FBF117DA271145C55D2D3C06D7B9B4FE5C7F5D7BB1';
wwv_flow_imp.g_varchar2_table(48) := '3DEEECA2DE5F961FE0932D3F101392E1A267DC2FE107FEF4803D86A5167EEA7B6A692E0578DCAF67A5006636A265911A720B7F401F84FF202B802FFE3CB55AB670127EB13CB62C127E597F604F4398BFE4F6A9E1C916A798C0568E1F5C0DE1F638377659';
wwv_flow_imp.g_varchar2_table(49) := '090A4F90E150C0A27874179A8F18B6C5F9E3198095915C14DB933D00CF1DECD2E4520A3F983F849F6B8DF09FF7A03B6D8802FF733FCCF89401AF83DEC7B9460B74F37329860BE197B5CA961FEB1219C5BD6CFDC30370F10BD803E69F20FC409E8C2F43F8';
wwv_flow_imp.g_varchar2_table(50) := '0794D666E197B509C863ACF99270FE5DC5A31A1FA875676900981B888CF5C936E379C91540290377F6554F956966925C8AB92CFCD09C9EDC10492E20140C9B2DFFE965239D7328E825EBCBFD80EB2F85DFB3901EDFFA733D9F8D0788147BF48E52DED0D9';
wwv_flow_imp.g_varchar2_table(51) := '9CA45D8EAD49DAE328E00F179F4611637E66C40CC6BEB8621838087C33F48181B0B5A1C439EAF4EF2A4E2FFBF7CA2A549F4708BF5923C80677CD41294BF8B77D38C742856716FE9627B8D524FC4EA6912C237E20C6C2FA9F5D36D26917E8636F6C4F5C42';
wwv_flow_imp.g_varchar2_table(52) := '1FCAC8A3AAF329ACFFB352809815A3DE5125BA9C59DCDF1AA7BDCEB8087A618170CDD4C904E6A77B880B5B70CBFDA6825E5F6C9732E321DCEA17F5F959905748613E3755F96A4C0C2DFB191A29BFB201453A4F3B9BAEA00DE127C30ED326CBDFF2FDD1F8';
wwv_flow_imp.g_varchar2_table(53) := 'C28CF92DFCF3D4CFC24FFD10D6BF50002C7F0143097AE9A5A0A3EBF1D89E6FDD8B67E1019CC89915FDA30E7A2769BF334E07DB633D46D08BEBC55AC11610F0AA619A060A1554D90384A511E6CF8D2B581B375164D853CAFF7393D3957D9EAA021493F072';
wwv_flow_imp.g_varchar2_table(54) := 'CF34C2EFF2F194F6B76DFD11FC7D2C7FC76403543434A785DFBD062E6CF3A40905BC59F8CF2F0D7F5002B07FC01EEE873D71CEF4AEEC6C6FF6879F85026858921A39A66983A057942701EF281D6E5B09608148DCB8BCC1753D08BF2B089D4D8C0CA378FE';
wwv_flow_imp.g_varchar2_table(55) := '512456A82484E67B9A20EB66B7E1715FE5D292A821223FE05E6904FF60C787EAAA6824EA18F66C107391DD2D604F9E58A11287B9600F96FFECD2D0E7ECD21E00E157D03B34ED0CDB53D4F53F41D0BB7CA59F5C0134B3478916671115F86E027926E91005';
wwv_flow_imp.g_varchar2_table(56) := 'D8190BFF43C585F033229B9A112C3F35E4676AA2B0E587FD81F1811192A5A9B4253EAE983DBF778BFA21604F749AB96D34A59DCE3C1D6CCFD3E1EE3C1DECE20172375D60FEA6853FE5805783BB68B79CB885528C8FAC7E3D9D76EBE92CB33EDD9EF33143';
wwv_flow_imp.g_varchar2_table(57) := '0C92AC7E09439FC3157A3205A8D6F6736169967033C538ED6605C0F273E00D6870C7F223FC401FE84EAC3FC5542880843F2756BEC2FCCFE14A3FF167A80A3F2D97E6F73D2103D803E6C7F2A3007802539DCEB0938B51C0AB2457863D70FDA31CF42A835C';
wwv_flow_imp.g_varchar2_table(58) := '93F09F74097C4D7DAAE4440C9CF97E25D79E88ED79763140B03E4EB3135CB981626F6B9476097C39607D64FDE19A8131758DC60EDC7F56518022B1A29A12BBDAA748AC3CB19C7FF5F6D14F116C8F4BA72DFCF44DEC6DA70C79FC88F0C3F8505B1598DF13';
wwv_flow_imp.g_varchar2_table(59) := '275CD509E3A31207181F597E0B3F7C3F827F8CF5EF3AFF8227C6F207EE170C7D6617E8D13D40DC10CDB8514BA32786D130BDBB354AFB1D0E20902D3F7526547752DC4677105583740CD14081E53F05FEF4E81F8DC44A19603D15B5F6CCEE7149755217D4';
wwv_flow_imp.g_varchar2_table(60) := '744D107D01FB3BF374B49B6CF5C1FD1D1F2E2707F37B74795E4E24E18FA097C6FA4B05BC401F70BF15000F7006ECE9536B958D51CEB83FC7FBF1E80A20EE55F45B9E0B1FD67F83120782DEA19440C25F097CB1FE0C4542F0C1FD823F3D7A48CB5A722CFF';
wwv_flow_imp.g_varchar2_table(61) := '730AB09E5A118A8ADA3C0C3866A112F0027B0E77523ADA4309F004E5F080803D1EB8E52417D3E88CFB9951EA1A1FFA86CFBAC6FD675D2090835FBC4111F466DCCF7D798E5F4FA300B9C459E3B135326F927636C1FBC374B4334CFBDB23097F95F2C4FAD3';
wwv_flow_imp.g_varchar2_table(62) := '2E77DE6FA7B3CB765682A82567738883DEE0F99FE3C57ECCCF54607E65D64BCCBFB3554B3B99EA3CDC4D12FE831DC700E6F95D7AEEDA9E92EAD46C52411F0FD1A26214C6E7E42207BD083E07D067C0148D4C4254722F8F79FE377DAF27518012FA7834B6';
wwv_flow_imp.g_varchar2_table(63) := 'E1CF381DEE0CD39B9D81209071BFA10FD59DB4C9312EE3F4D2071EE072E8BA1F822C2756D65467DC7857D43AD165CC5F33C7BF03D6CF47167E703F093084DF5427F0D4AB89DCCAE84D34083F53A603F723FCC717752901BDC3949A477311B8BFA8EFC981';
wwv_flow_imp.g_varchar2_table(64) := 'EF1A02E59DAFD5C097DE51AC3FC12F0A200FD06149C234F3FD607BA603D33DB4914EA4001BE982163AE835B5D039B9B2AABED19B5A93E7F2BA6AC00B79409FF0CE664A0758FCBD5A3ADACB01EF4E12F421F3EB7E0A28690B3E016F8C50A95A7EF50C84F5';
wwv_flow_imp.g_varchar2_table(65) := '3FAFA72FE7F60024C0A8FE6490C058339216EBFACB154DCFCB483D9A0708DAD3491807BE4C09DBDE80F61CA9DC01FC8F12E00D08C0287530EBE3511908FE49B79D4E7B0C4E6AC9CD9A5EAB589B5754DA7095C285E58FAD37B43DC2F3EF6ED71290E7ED7E';
wwv_flow_imp.g_varchar2_table(66) := '4A47FBF6000A78192000D5491B69C6FC9E466DCCCFD46932BDD4F8007BC0FD04BDA7C09F737B00A0107900D7F4C7A2BF7227999A2E6974D156CB98F2F03CCCC5E329405E80ECACAF935ECC8A94F0437D7646E90006687B2448045DC710D4107E6644027D';
wwv_flow_imp.g_varchar2_table(67) := '4E2E37D2390A30F4DC18AFCBACD4F7BC620588B9FC05E66F3316C5D0E760A7960EF7527A8302ECA210CE0184F017989F11EC5ABD1AD087BD039E197A21C14FE9F4C2ACCFC9454DD69F0C306527FC5E343379B4BB4B56B0FE1A325C192CFC5C28D1475480';
wwv_flow_imp.g_varchar2_table(68) := '98E9434617EB0FF441F8CDFA4081C2FDD35F4A3904337298077939686B406A04BFA7BD8D74D1637092E7C6A8A02A5FE4EA0CA1E7615F56FF290A9E3FD36B91E535E6AF59F0776B19FE40793A0EC0F20BF6E481C2F0FC18A7C2F23366BD087A3D2AF1B45B';
wwv_flow_imp.g_varchar2_table(69) := '4BC7E704BE35B13E2881A746787C8C7BB7735B2475D78A21EC15107EBCB51ADFC7394FB3A25127B7B9EA2B57806FF1FEC01F841FE667BF33541CA0199239F805FEB8D687AD20ED74D163415A5BD69FC237CA9F99DE1CD8F23627FD23BDB6BCBE7934BC18';
wwv_flow_imp.g_varchar2_table(70) := '9F9AC69F1CECD6D3DBFD5A7AB36FF813C2CFCF989BE476C819238155E2500D7AC1FD6CA35479F3C033438F2F6AE9F3999500C627849FBE5F6E84FBB65D2E6D02C33DC521FC901525696128F4D45F8FA7005A8D596E0604FE1C7486E970BB9FF6B787C500';
wwv_flow_imp.g_varchar2_table(71) := '554A6D55EC36A586C4027FD6CB4A8022F49918EC9991B8D5F5976BFAABC3B13A58FFED94DEECD5D3BB835A7A7B600520EB0B1C82F1B90AF3C7169A087A638AB4F8FECB94BE9CA300F57472EE04188C0F1961BC30D69F2E3DDA56A1B09B4D14CA13256CF9';
wwv_flow_imp.g_varchar2_table(72) := '3D03341A627CFFD091A7CD0EAF5401AA93CFB4F61E17D930F589B53FDC1EA4A3DD7E3AD81EA8FC19E1E746E236097ED90C42E02BD6479B422CFC863F4C0B2EA68DBF6A3D00F630FE910C6F4798DFD007CB2F05D8AF09F6C8F293E56D953342A9ED09CC5F';
wwv_flow_imp.g_varchar2_table(73) := '6E9821E86566A8A74420FCC01F14E0CB19B8DF416F8C4B043A71EFD4B3DDF17438CA5BF82A975EB835D5A350CAACBDBBF29E8E197A1C05888A4F2D4A9B6A330898FF70A79FDE6605607D4EC1FB4F5DEFC37690936E5680415BC21F13833D3F66AD00587F';
wwv_flow_imp.g_varchar2_table(74) := '8ADB98104D926B7F07BC5F4F877B167C0E684F925F9E939A853FF3FC51DC16412F092F973767E1EF322714A1B707C0FA9FF5182266CB4F4E87BF09748D9E6D46D6100B68C1B5D61DD9FAD312194DF12A57D7289AC53E8DC7B6642B55803229E3B2070626';
wwv_flow_imp.g_varchar2_table(75) := '311FDE892F925EFDF466AFA73880A058D59E2A7823C945A5270AB029E6076F40E71795A03137B2EA611EFBC23DF5FB45B37B587F2CBFAD7E3DBD3940E8ED018E766DFDA9FD11CF0FD5C99CD554C1FC799B8CB7D2DBFA6B58AE843F15816F2802AC0F5CBF';
wwv_flow_imp.g_varchar2_table(76) := '2C7F934E32CF66A274FD7097921606E26605183305DAB398980AC15C201EA9DD0A16AFD8AB768745D7F7BD0F8FA200A63E3D2855F067C301F09BDDBE8E83CE400114B7653CE5E2C0FB037F36D371775310C8BC7F6C09B9FB5ED8FB5EB0E7F0FBAEA5CA13';
wwv_flow_imp.g_varchar2_table(77) := 'E054DC66D883F0BF3BACA57787752900EC4F401F181F3CAC11B7D91E4CB46A7CF2D28C107E66039DF72CFC9A158AE587F5E952F5E9C519B441B215469B60363D21EE68779CDEECD2C2EA215910A1C518F4BE87629D74C9E7782C0A8C105EA03A04379359';
wwv_flow_imp.g_varchar2_table(78) := '8F769957AE002E7BCEDD5E943DB451002A3EC9FAF61503EC6F8D8419617E287920F885FD4101BE640560558E0327439FA82B7F4D6170B1A06261DA5B409F7A7A7B584B3F1DA10475093F412F1960562861A9AB2B93E6B312FB13F45AF859AAE7C9701A94';
wwv_flow_imp.g_varchar2_table(79) := '4BD07B6AE803EE2718A6CE07D687CF42D944EC6540E8430180421834DE8F1880097C08FC69B7998EBBAD74D275F3923D7AD40CE538E091F3382B538022F39BFB7D6DFD9DF9DDD91C2AF985021CEE0CD400436E809A1F125F2C444601803F28002C10F85F';
wwv_flow_imp.g_varchar2_table(80) := 'BC7FDEB7FB1CEB4A566EB672CC83F567DE6770FDFB3B60FE7A7A7F54B7021C38168829D02A6BCED65FBB8673A2CB8FAEF02CF686F5BD32E9F422A54F67297D3E75F00B0D8AF053094A638B26452B9B4FF9B4A7F5A10047BBB4B28E35490ED88BB162140D';
wwv_flow_imp.g_varchar2_table(81) := 'CD4A28C0978B663ABE70079F4B593C10372644C8033CA2555BA102C02DE75933EAF8F26ED89D0D925E2880730050A17C1F6C0AFC09EBAF003843A0B31ECB919BEA037EADF53ED571262CC790F06F3BE03D02F7EFD7D34F875682A37D677F1971024C6174';
wwv_flow_imp.g_varchar2_table(82) := '4915FA8402A8D44153DCD830EF2D3108FAC985F7037C6257C0692D1D5F78530C3901387D5054CC0B2D20D0D644C28F1230BC8CA01805E17DA13B298F3EB96CA62FE72881CBD85985EAE9701E871E46EDC75000055A5C28677E3784FD476957D69F7A1FC3';
wwv_flow_imp.g_varchar2_table(83) := '209ED307CC4953F4D61D52EA00EF6F0500FF9308031AA1008F8D11576ED56FF80679B393C6BE3BD165E17F7BC0D19E3CE8A0000020004944415410D7FFEE8000B8AE3A1F825EF750DBE2C3F644711B825F963AD0DAE8C5D9C01E849F11E9AC4A32ED690A';
wwv_flow_imp.g_varchar2_table(84) := '545B62D46F117907C714DEC869FEFF706792DEEC59013430B7354D8D86DF9F2418D8FFF3792B7D39A797C3A5EC9A1097AB797F400530EB8002007F0C7D38062E7DD81C29034C5D10EA3218B5D2F90005D8940250F600FC110334F696C0C776913794CF95';
wwv_flow_imp.g_varchar2_table(85) := 'BC6C218F92F706C3F7B315726FDBC2FFD39B467A7FD870B6772F0BFF564D820945299A332B40D5F2ABBE5F3B84BD2C8F95A9C7172CC8604D120A106B92187542FBA3CB1DBC27CC892F72369EDDEAA159B0406F80403B9EE304DB07F4250E2411B6A00079';
wwv_flow_imp.g_varchar2_table(86) := '318633C30DCD6D8A497D3F8C0750DBA37A7EE1FEB928C3B4BF45BDFF407540083FF427C11401706F44E617A1DFCC8A40D9732E7C9BBC4205C81A00E6A795D1B8BF9E76B78DF97F3A6AA49FDF36D287370DF1FE30415A03AB4457B6FEB35CDF13ACCFACDC';
wwv_flow_imp.g_varchar2_table(87) := '245FD4F7B317A0EBFD601F4F803EA640A9FAF4BA545B7F676ECBF1EBEAEB60747DD371C0011E6097BE8E49DAED78A21FF7172FC0EF3316FDD3993DC0290A90BBF9D4349FFB391EDBC0AD2E06C8C2EFD267C69D407D0E4479A204DB9B547D8EED2655F949';
wwv_flow_imp.g_varchar2_table(88) := 'E98385FFB4B79903616F0907FF33FED001B02B0E5FD397AB3B096AEBB2FC409F37078DF4F39B46FAE55D23BD3F6A280740A2CBF53D15C607B843E01BAC4F6E701951E7C3E67882DEBC21F2E3C93CFD756CEC4FF617E127E1E57E0B27BE42409D87B017F0';
wwv_flow_imp.g_varchar2_table(89) := 'EE80A9A00F71C0E12EC3CC1865E9E2460C1CBF0FEE07027D3EB30214EDAC79447A94B63CE6FD7D700558287E53EBA315A003F589026CC3FBF7C506C9FAE79A1102E0EE00D883026CD9F247F6372F4D7300FC3A142084C06C4B097B0EF7C0FB3EB0FC1C6F';
wwv_flow_imp.g_varchar2_table(90) := '0FEBB2FE05D529309D479850DB2FAB6F28143B8287C399703F6B91B0FE607EAC3F4A00042218C6F2478DBFC74A5614205B20E00D2C137428F4E7D18E150065D8DFF6584B202EC2CDA814AC7F550160839EB2B66BB50A504C7D08EEBF9F8EB67B82402800';
wwv_flow_imp.g_varchar2_table(91) := 'D61F17EA31872E7D40F8E1FFA142E1FEB1FE9445E3216EA200557AB43A2AFC7BE3380A87B2CC413F32275DF56ACB41EF6EC756FFA7A3667AFFA691DE1D361CF4EED745796E11F48A23C0DA1BFB57294F1A5BCCFAE45287C12CD39DF37442C09BB13FD69F';
wwv_flow_imp.g_varchar2_table(92) := '40D8D63F37B854B6DEC7A6CA22CB9F374712088B0AAD28C0E1CE485E80FBCC7D6172DF310A4010AC794E1E6CC6D8447ABA45858A3A79BCAF152B80072A050374D8E9A7A39D4BC120E00F0DF15E6CE1B6C7F33E650F5BE9A4B7A9C01705D0CA4C2D5070E9';
wwv_flow_imp.g_varchar2_table(93) := 'F3F730E257025FD9CEFEADCD2F57097FD5053FA63BE6DCC2837AE95DCDD67F03C6A7913EBC6DA6BFBF6FA69FDF35D3BB8346DADF35EE578D0F4B4268628FA05790A7DADC92273867CAB3DB9F95827F6AE60725D07EE0C2FA7BEF715CBBE57E0B05C45901';
wwv_flow_imp.g_varchar2_table(94) := '08842981200E200620103EDA19CB0B50E7C56B99D64D124C2C50280043CDF2823CE7021EB73A74A50AE081B7CE01C0001D6EF7D29B1D6A7FFAA9D31EAB36C8733E697A6FA53314A08B026C4901C2FA7BB27356803B5AE5EFD995E732AC293E8737B19BEE';
wwv_flow_imp.g_varchar2_table(95) := '749903D6BF99FEF6BE99FEF9734B8F587EBABDC4F56B7E8FCB1CA2A1C5A50E31B77F96A613B73652E30FEB73DE9D39E83D9EA74F275600F604037D687AD79AA40AECB9CA268741E2BD991A4D3904D00725201976B43BD223F1015AC4A0ACD36E2B1D77BD';
wwv_flow_imp.g_varchar2_table(96) := '1ED51B63BC233896653C7675E8832A4095B6F37647EAFF196C650500FEBCDDBD540F004131D8D10BEDC80053F7BF998EF100975600ACBF9324B136F3DBD59FE5D207779E0584F06484EC584379C2AC670F2196306F797775E2D2D6F7AA2759A1779640E5';
wwv_flow_imp.g_varchar2_table(97) := 'DA7E313E0A7A1BE970B791DE1D35D2DFDEB7D23F3F34D3CF6F9B0A84297F46F8A29945353E19EB3BE875F0EBF1E5863EFDE14CDB204F2F6612FC3FB3029C9C13A4BA0C02E1277B1B41EFB75049342331DB1505A00C5A15A152000262CF76A5D49D588164';
wwv_flow_imp.g_varchar2_table(98) := '18B0072F707EC950332B42EC08F6A242C3A0C7CAF4AF4E01B0FEA2C95C0241020CF8F3AEA200AEFD2713D812054A00FCA54B0CB095BA432B4058FF62C4C6151EA0DC2BE6CCA7775F796B64B3E9256FBC57AC03CA40CA6561B9511B9682808F250F5A92CD';
wwv_flow_imp.g_varchar2_table(99) := 'BA54156A19062CDC903B7AA1EB74C770639E9A4D333E04BCEF0E9BE9FD5153D81F0804ED4900BCD3011EA12F39D1951FAB353EF60658FFDCDD9585FFFCD2F0E72F14E033C1AF694F182116E5698B8E16895C0339F3754109A9FDA1282E4AA2813EA10030';
wwv_flow_imp.g_varchar2_table(100) := '4118448618A8243AEF0A8BB9AEE7B92C2246DBBCD82D9181C163F24378002A4077B706E9CDCE657ABFDB2D3C0002399D11E452FE8C026C4901F000304004BF2E7DCE337F8279589224D7C42338E6A4B5055DDBD2DDF75AAC50CD0BE1805D0A17D5AF6A8A';
wwv_flow_imp.g_varchar2_table(101) := '8F3E559669783FAE03406F8B07A2E549079572DD55C406A100AD16B53C303CADF48F0FADF4F79FDA4A7821F887BBE4010C8D64FDF38C7ECFEDB40728135E5600ACBF4B9C1DF89E5CCCB40D1EEBFFD797B9787FBECFAC4F29BEC6C99749AF6F296E7800BC';
wwv_flow_imp.g_varchar2_table(102) := 'AC15804098BD0E0181C80978CA1F5E023AD5BB82BD201B6FC0A0039EC7AAD4D81BA05D0E8F501EFDF01EA0C814BA180A0804DCD9DD1C08FEBCDF43017AA240B9709329FDBD6D954010FC7EE976EC01062D7585A9F1259A26AE50809842E0F53ED071DE67';
wwv_flow_imp.g_varchar2_table(103) := '4B6F2A8DDF4C3EA005B0DC89EBFD02B29DAC549D7A9C472C75A3E291BA97BE70B08BBF9404CA167155AE998FC4DFC6286CB6A9E769A47F7C68A7FFE71F1BE9BFFDD256D28BA23717B879BC39B022307FE0FDF8B7684F4D7600FACC52AF22FC5FCEE7E9F3';
wwv_flow_imp.g_varchar2_table(104) := '29F87F262F40B9039960C19E6CF56F729ECB0A00D687094201963D00B120D79938402BAC541E1DF9003AFD60825C1354BDDFABE68456AE00EE00230B3C48EF76BB52006201C6212288F0FFE07F29C0251EA0A31AA0F00061FD8BED2E197E4422A6469654';
wwv_flow_imp.g_varchar2_table(105) := '2ED8C24F638636996BB9C35C9B0DBD191D4884D5640D6B55013CC0B554002F7A2010A4FAB1EA0DBC602F43224DA3588246D7619CA59F57592D167C3BE1554F3B1D4A9B9BE9BFFF9215E0E796A010412F5CBFA735E7BAFE0ABFBF3CCF07E19FC8FACF52B7';
wwv_flow_imp.g_varchar2_table(106) := '07EC99A54FD09DA733290096FF8BB2BE6E7FC4FA7F8F655B3EBDAA02D012C9220DACBD14A00304B2072023AC6ADF696E8EC9BB9B430180428CB9A96E8DFC213C001468AB493ADC59E04201767A6A8BC40A8FA6C6FF24C18E2F3B0B0A4000AC6609AD365A';
wwv_flow_imp.g_varchar2_table(107) := 'AC168CE056BB6C59E9C91EDBEA22672D73F6A6437980B69915044D1EA0E6BFC9BE81626AC1D08DDE083F3DAF4C3F860FE7114560079632A3DA31FC756C701B97EDF8030B8ED537E3D3D972D07BB407D7DF4CFFFCD096F587F5211E28825E858925E48904';
wwv_flow_imp.g_varchar2_table(108) := '5755015CEB334B23D5F8CFD25977963E9DCED25F58FDE399284F925F675DCECF83AFA2C75AF6E1065F0B0AA009DF568080411103A000648309C6B5C03CAFB045F06990810962D949343CC51699C7E8F85BA907080580F22C1460FF22BDC91E00062802E0';
wwv_flow_imp.g_varchar2_table(109) := '8B01DD5FE1011C03A84E3CD39FCB0AE0223BF604CFD3568B0967F0D05424CED2C18EB79923FC5445E2191030D5C74801B42C947F64C5F2A2663C41D9C35A4BDD3CFA9B2E284F44737900D6126814C561C122D97C9A1BBFEE4BAC93CA143CBC767BCB82FF';
wwv_flow_imp.g_varchar2_table(110) := 'D39B56FAF0B6A5C75FDEC1F9B784FDC1FD45D02B9CB25CD76FD01E1B1B43F8C5FAC8FA4FD39F5F66E9B7CF333DA2009C13DD5F9C4BC09F18AE75DDE757CE22B363288C26FDA1009A0C9121102D9224C33A56006213125EC02062013C8026FDE101A4005E';
wwv_flow_imp.g_varchar2_table(111) := '6BC53DFF1EE97193CF76D3D7AC5C01DA150F00FC79BF77A15C008131766C8807A0045A0AD0495F2E32041AB64581C604B1650530CB63F601017739EE2C1DEDF93114C0F0C789225BFFBA3C800FE1214F25603A8E3C42191330EF5263BFBB74483110AAE4';
wwv_flow_imp.g_varchar2_table(112) := 'CA5D1E9CD9920C8B6E7AD1E3755844701441EFDE0E856DEDF4CF9F3784FD0980C9F6120B50FF43B20BA52F9B59B207586A708961B6AEF599A5CBFED49CFFE92CFDFE7996FEFDD734FDF1C53428E7107467C1F9DF5081AF5400B5474E5508070C82023DCA';
wwv_flow_imp.g_varchar2_table(113) := '0A0014E6B36360E80160328473021505C81D623FA4025007F46EEF22FDB47F918EA4002E813603B4A90E3020D06714A0BBA522388F3EC9AD1C4B10A8AA008CF506FE84021CED4C3DEF5EF0274F43C80A00DC08E1AFD7431978CC2BD3939921BB6AF7C086';
wwv_flow_imp.g_varchar2_table(114) := '12A84E1E25508348668BC674542D7A839B2842B0487C1E189DA3FD66FAC7878DF43FFE46D0BB917E7A63D84312CC456E39E88DBA9ECCF67CDDE145B0394B43A63867E187F5F974324DBF7F9AA55F3F190251FF83E50FAEFF2641EF7763805C162D05D078';
wwv_flow_imp.g_varchar2_table(115) := '14ACFFA202A0EDF400170A8007B8680B06C5B03365FD6F90F7B9C935BEC96B1ECD03EC6FF5D3BBBDAE14A0F4009E00D1950218024901A041E5013244C9C3551783467B00E37F07BE07DBB374B46B0FC08E5B4D3ECE4A6016A826BCADA356D7A33D42BD80';
wwv_flow_imp.g_varchar2_table(116) := '462807A5D9C405F4B212081314A308CCC44401A895010E296BDA2780F4CAA0B0A2DF12A6800C31CA04BE7F83A077DB7C3FD6FF7FFE7D33FDB79FDBFA3765CFC42ECE6338E80D7687C71864B5D8E145E9B1599F33E8CEF3A9AC3F0A00F4E120031CACCF6D';
wwv_flow_imp.g_varchar2_table(117) := 'E296EF2980DB23ED018041F200BBB4BD7ADD150571A100658FB03D003088E6186200F708FF801068BFD35710FCA1F000402014C00CD0550AE02689AB3D8037CCC476730230D6FB50936E45D092E7BCEED3A3000D8322106ED4AB0A9015217B8494FCBED4';
wwv_flow_imp.g_varchar2_table(118) := '1F1117D0CC11DE00388407F0B81017929D5D5A09024E2CC40415A9099E9F38A4ACEDA796DFD81F05C003C0FB037DA801223E28469844A6377B8198EA1003AD500A9A5C607D2E2EA7E9CBD92CFDF5659A3E1E4F15007380FDB1FE7C5EA8DDDBB03EDF5700';
wwv_flow_imp.g_varchar2_table(119) := '06ED3215AE0C84813F5280CE38B519779FA249DE8130D8FFCB453B9D7699FFCACCA7D7A4006D0AA4189947CD7FC400550FD02A7A004C37E622A99C6708FE1F01A1A422BA928042B6FE04C36C3FB1272018C69AD251852740114A0FC0F3EC092236488644';
wwv_flow_imp.g_varchar2_table(120) := 'C03414C14A90B721322FE7DC3422B534F0EA94150F47BEC1D511E155A10905A0C84DB5FD3B7472B594E9FDF0B62DECFF8F9F37D2CF6F5B4A84017B22D165A8E34ACFC8F016634D62AE0F036DE1FC0733617C04FFF74FD3F4C7E769FA7C661A948417E7C1';
wwv_flow_imp.g_varchar2_table(121) := '67ADD6F7DF042E5CA500A1407863140026882098C01705D09ADBD8F77085021C0B0279DE6B24C35E8707B8AB02E4ECE0721E80599704C3582094804D87780014C06B3F3D1313BC0D1C82154210AB9EA01A13F05C0A5267742CF98A3CE14CFB70ED015000';
wwv_flow_imp.g_varchar2_table(122) := 'F03435355855EAEB87EA9EB2224436B52A3851DFBFD321B38BE0B7D2CFEFDA0A807F79EFE77C9F5C802A657332CB906751010202114C8BF5A904BEC7673309FEAF1FAD007803841FCB8FF0E3ADAEABAEBD4E29AA2C502800E510943E140AC09CA00C81E4';
wwv_flow_imp.g_varchar2_table(123) := '0166285F0E822F5BE9D529C05731C09207300BE420582C501502554B11827254F793A190E2012982B3C05282ED72019CF2029D94B6373C4A106F000E4709500662813A1E207B03BE8722E0096026CAB8C0F81F38811270080A753D59413535D91B2C3791';
wwv_flow_imp.g_varchar2_table(124) := 'F03751C2833DEA7AB0F8EDF48F9FDAF200EF8E9AE968BF25D66773038F344F33EDE67256F75B0AA0718623DE73EA7287AE713FD63F1400EB4FBC42415C78A9875480E80D8E2018AB0FFC110DCA9EE71C03C4AC50B140AF5501CC029108730C0004120BD4';
wwv_flow_imp.g_varchar2_table(125) := 'EDA4CF6482BB9B0A826181C4076708B46C91620BA2B6CD6B529A73031ED7E7041842BF8B12E445D0C0A23D9480B8A05D4BEDB6215178839226B5079057A89334AB6B9820B52A0187A89BD7F404924A677EC4D29E5ED81B206C5598010D8BE7D9DEA2A11D';
wwv_flow_imp.g_varchar2_table(126) := 'CCDF4EFF43412FAC4F2BEDEF36940F60A511812F0985EB3C803BBC9CEDBDEC61E5A7E2FC3F9DA00093F4DBC769FA13D6E7C2F540D5928EA83EBD49DEE22A6FB09C07100CCD798065088482702719A908DFEF4159EDF4854971AF010291082307F0BE6081';
wwv_flow_imp.g_varchar2_table(127) := '4C839208ABD2A05FE50158A99327C17DCB25071CF21CA2BCA8A1E5223882634A22F63BF374B8374F6F76BD0D9DA969A6481D90B65AF5853C41083E6C9133C77E2470374DEA6CB18BCBEC0D545B03243A9DA58BEE3CF5F102136F4A41F8DDDC4207574302';
wwv_flow_imp.g_varchar2_table(128) := 'FFDFFFB691FEDF7F6E8AF67C77D8525C80478A526E8F302C999F650F102B8C54EB438757772AD6E7CBA9035FA00F07CA40056815F65C076F6EF2F3AF1261990542F8173C8066853AE276D94905028905CA34E88F1C042B130C0DBA1779007B004A21B0F6';
wwv_flow_imp.g_varchar2_table(129) := '5D1261D4022D41A0C804BB21FEFB5F76E9EE1926EB4B5C2025D8B40740F0DFEE912C4B79233A9EC01D57585D334425F62FE1903D4104CD111350314A40A9E51194171F83BB093E1D845277AF60936C6FDDC24FA903AD8D1FDEB4A500FFF31F9B0A7E6182';
wwv_flow_imp.g_varchar2_table(130) := '36DA2859CEB0EA642CFC0BC9AFDCE40E34A2CD91C156AAF5B9B4F043777E3C9E4801F83C3C1E67F823D6271B89EBAEE54D7E7E752618E15FCC039018632C3E67A459A164820302A1003913ACB1F73F1A0DCA48944E1B1C4835682E86A316A8ED5AA071EE';
wwv_flow_imp.g_varchar2_table(131) := '05A01608EC0F048A7E80115B60722DD075C5517133A286B69C5B632500F21010A304B11B97C1B1FBCCCF2CDA0A51027B827A6391260D05889880041D813165D4280105656A30F96C2F80D0517F03EEC6F262D9117E025CAC3FF81FBAF3EF1F36D24F6FC1';
wwv_flow_imp.g_varchar2_table(132) := 'FD0D79213E3F41AD035C333ECBD9DF804514BBC1FA50EE7076314D1F95EC9AA43F3E4FA4085F4E672A7D86A1C21B69A8551EAC7B1301BFEE35D7D602C102ED5208E9EE3F0C8132C15484F629852E4B219C087329C40FC502C54CA065055035281423D5A0';
wwv_flow_imp.g_varchar2_table(133) := '9443670528AA41876DAD408582BC69796C9168CAF325351E44C39B5C0F2428B40D33E4034FC0E6144D526398143101704831C1D50A103142513A91E110C3A38803B0FE400EC703D374DAA5248172071AD8696BA4A5D141EF7B953BB4141077361BF240AA';
wwv_flow_imp.g_varchar2_table(134) := 'F2B94E0172600CF6A7D88DC0F7F86C22E1FFAF3FC1FD93F4F9745A2820D8BFE8F05A950758AE06D58408D3A0DEFA4920EF41B9DA1493158061B9652D903D4075F1E14D6BABAE53D66FC2E7FFFDBFFECF83B5C45ED51083EB733FC0501E001844104C3568';
wwv_flow_imp.g_varchar2_table(135) := 'D90F4C208C2BDC52204C39341D6134CA8735B8CE037C2F3E70C75256822DE37F28D2377B73AF0DCDEB833A9B35B34352821C13E4E4D842D904F46872700C8C83D96064B8272A53628C02CCD24729C25435379439BF3F6A29CB4BC28BE787FB647B2DFCC0';
wwv_flow_imp.g_varchar2_table(136) := '1F2096405C61FDAFF60061F98723ACFF5449AFCF27D3F4EFBFC6E93F7F9FA45FFF9AA4E3B36911883F14EBF3BD4498F783B91F40CDF1EA08CB0D3179369066846A5740A3E8072007502D87F60084CA2AD55BD426DD45091EBE142253955E89941B62E808';
wwv_flow_imp.g_varchar2_table(137) := 'DB1CA437BB975600F504BB4D6EAA8910AD74398A71E81D7586D110A379A0534F84A8AED5BC3E1AF0A5A8D27C24958809088A8143788250005687E20534594DE3C4EBB97AB4C4FE0A862BC5740B7902563A018534612D0F97A5F6FE84223404D11E00E803';
wwv_flow_imp.g_varchar2_table(138) := 'E303E67F7BD84ABB9D667EAF8683DF6F28803D8269D098E63C1C4D537F304B17BD693A3D37EEFFF75F93F4AF3FC6E9F78F13411F065FA93CA352B979D36B771361BABA238CBE60CF050A0F40893495C128A22B419900426BA42190CAA1198E35A6037071';
wwv_flow_imp.g_varchar2_table(139) := '5FC0437EDEABCE69650A50A72738EF05504FF0D6D73DC134B2301265C454E8688A9707C83DC17923CC5DAB03AB90089A340263CA22763B8E05F0006FF6E7E98055A25909020E51A51941318F5F2B40B6DAB59C23D046450AE598BA604A5401280AD064B2';
wwv_flow_imp.g_varchar2_table(140) := '83E1CF2FEF803DB03EC6FD1177D8A3B847A01A038402B80E083833CD1D5ED3747206DC71D00BF4E1F8EBCB44AC8F7678DD4492EFF89A65055053BCBAC1BEF6009AFE3D490A7EE9086348961B62DC12A9BDCF7957C04D21EF1D3FF6C2AFAD4E012A5321E0';
wwv_flow_imp.g_varchar2_table(141) := 'FC3D15E2B2980AC1A28C188AA5AE30C6A2F4B6F25408CF056258AE57223911755BDEBA5A94160DF1281D354194461806A574B417F180F7E9EE6DD7D2F666050AE584D872E94450A5C405D5F64A28D29EF6EABAEA92661AF20CFBBB4D61FEB0FEC09E6613';
wwv_flow_imp.g_varchar2_table(142) := '258A78A33283A71204C734674F786071B5599FCF6793F4F1CB24FDF90505B0E097AC8F694FBE56D1BF1C1ED614AFCBD2550457198BA239A1DBA3B4BDC9E2734F88A60FE04CBBC28CFD6346282B93220056AFC40D58BF67A700262133D3901580A9103117';
wwv_flow_imp.g_varchar2_table(143) := '08E843633C63516892217B7BF55C202B00CB3208846F3A18EB26172428529821126207CA0B380ED01675EDD4F59E5D684B35D2A87668A9780EA1ADC022D70DE59E82993728326284AA4B262D40A96E779A697FA7A91AA02D59FF46A51463D1D92F7B0070';
wwv_flow_imp.g_varchar2_table(144) := 'BF8BDD8CFB617DFEFC324EBF7D34E441018837C8F85EF44AF8F3580A40124C65D0DBEE03A84220C6A20077C1FF587E778179248A14208F497FF1532196150018D4D26CD03C184B93E13C188BD18864073D198E62B39677022C8D4674896C8C46BC9F455B';
wwv_flow_imp.g_varchar2_table(145) := '74D9AE0D4209F004280133F60D89A02CED052228C6528B1E8D1E828A0290240B65E0510574AA1D8AF99A6EC4DFDC68A4CE96B3BD6D845F4A5536E85415B8AA0070FDEAEF55BD0FE50ED3CCFA8CD37FFD314EBF7E84F69C38F7D0F3E02B65A1F3E4B6557A';
wwv_flow_imp.g_varchar2_table(146) := '00CF31723122250FC5643882E0CC022D0EC6F29E304F84F084B81F662ED0570A909763A0002CC760282E5E201480FA107079CC06651E287341351CB71F93A1B317B8E16CD0EF798118F3272FA071E329678A1D0423FC2C99E3919880A0588932954C80D5';
wwv_flow_imp.g_varchar2_table(147) := 'BF5600D2B6AA21128CC95E2297530341DC35E64C324CD0C686191F6202BD3E37E2C4A896F8FC5A6A911361627D32E559B23E04BDA3F4AFDFC7E9D7BFC60AB6117E284F8AF1A2E4E1362D8E37F1A057BD46FB1F341A915E0C8F473FDC666324CBD03D1A11';
wwv_flow_imp.g_varchar2_table(148) := '6800FE6728162B922CFCE56438E051EC7F7BCCE5D90F1A035CA500D5E9D0075B036F866738EEE648E5B3AA11A9254D87D066C81E3BC1DC21C684E818901BFBC17C43EF16DA2D07C59AC2907304AC14C2F2BF3F4409880BBC76945E5C3C0170280AE7A24A';
wwv_flow_imp.g_varchar2_table(149) := '34ACBE3C4025530CDC010E11CC798A8415038B8FE0379B61FDDD98C305B84E0144790EA699F531E4F9F79F59013E8E9505A6BF9785775E3B7AFF6ACFEF29445187955C7FA5E9D06A82B1024083A20C74866DB6A71A40A6E1B8DD723F40B12380891023D3';
wwv_flow_imp.g_varchar2_table(150) := '9F8F29FC82870F9907A85E30309F8BD4D80FECF1E8DA0BD6B102B020830D227881D80FC07408845F0B32B2027848AE47241218DD4701AA9F2F60819B6ABC459DC4D8BB037B01C5032801DB16458F06359A8BE4802F390608058856CBA2DFD89FB6A82342';
wwv_flow_imp.g_varchar2_table(151) := '4902F65415267A94BF8240B90106EB8FF07745794ED2975302DF71FAF79FE3F45F7F8ED31F9F803FD305D873371371731F10F5574058925CF40108FFB3286FC74DF12841548216E3D12F980E4D1FB06300F03F7981C8FAAFFA732F9FE1CA1420D6A3366A';
wwv_flow_imp.g_varchar2_table(152) := '8C46A96C88D1828CE1E2861856A4CEF28698819764E001588E6728E429715E91F470FB0182250286418DC20021F86C572F1FAD043B5B9428E704595133949361D903541560B1DFD825D6D5A0F9AB9F678DF419963428AC8F707F167EB0FEC7E371FAEB33';
wwv_flow_imp.g_varchar2_table(153) := '94A78360BC01B427D69FAFC827DC5C9C6FFECA92E4B0278EEA5BCAA0B51F207B0014607F8B5D61DE01B1B820C38DF0B1278CCCB057E0AE9AF5FFFA3C57AA00DE20E21DC141855212B1D719A6DD4D06268DD20E63D2F3926C125F083E63D217768469495E';
wwv_flow_imp.g_varchar2_table(154) := '43131B6245CFCD6FD9B75F193181A7B1D90B501F84E5973760E9F48137AE53A34FA6981E5EE507543374BD0218E7973D0685922C34E447A3BE3FAB6940C61C3AF8A5CEFFBC6BC1FFE313ACCF38FDF58563923E9E4CC4FC500D4AB0AC4EB99B0EF6B9E545';
wwv_flow_imp.g_varchar2_table(155) := 'AC66FAB51E49B995DC8D9757245901E80283F86026141EDE2B92C0FC587FF60330118299A08C43615DAAA6EF65EAF331D560C50A506E89F486F872452AA511FB1D6011B100651149A310B5251225E839203ED196C80DB5CB11243DE457F4EECA8D130BB4';
wwv_flow_imp.g_varchar2_table(156) := 'DD2740A90454E87B2D9E66F3BA3732B299915840F5FA04B1991ABD0A0285852F1E05972A5328AE5300843FD39EBD41667D3E8ED27FFD3112F617EDA97A1F37C10CC7BC1E3A8140FD21AF52F9B7AE1A4AC02C56F03F14283B01624B24D9DF8E623C37C333';
wwv_flow_imp.g_varchar2_table(157) := '65C30A502EC808F8A32A508DC0BC1FCB7797B35E9D0264A8223759DD13BCE915A964860F3BDE15EC3DC104C28DD41BB6BD202F2FCA3ED6A26CEF0AE022D11B1C30E12E27BC88B3CB0B0E0C42096086542AB16305F870544BEF8FF00894321B0AB1A51146';
wwv_flow_imp.g_varchar2_table(158) := '076A54167D09DEF0BD658853F41C5758A3C598012FA0B04C5960E00CB427250F60FFCF27E0FD51FA8F5F875202C31E07BEB03ECCFEBF6F87D775D7B3FAF7B51C4FE5E69E0A0DD63F8C3DC11A89CE58FCA9D6E4AA088E35A9DDBC26F582FA1F480FD623B1';
wwv_flow_imp.g_varchar2_table(159) := '1BA29E263FDC9648DD4BCFE54701B429BECD85613B24D3C2C80CC30AB13275EC5A91BC2883CA5076035314E771E9954DF10F383F7ED1A57B843A8A001C42D8813F3FBDA9A59F1414DB0B283FA078004627CAA6DD50FF75937D3988EB660A90A756ABDCC1';
wwv_flow_imp.g_varchar2_table(160) := '195F38FFB30BE3FC7FFD3E4CFFF1EB488A40F903A34F107E37C664D66785C563A1000E7C2DFC1E8758DD14CF5618431FE851B452B38006B128DB2C50943F901C53D5EF8FB628DBB6CC8152AC4A050651192A05506D1023D3FB8241044A9A1231C9DBE207';
wwv_flow_imp.g_varchar2_table(161) := '5680E30B2FCBA64798407855E3B363C186477DD323E05800F8F3FE9052E65A7AC31EDEBD5ADA573C50573BE5B7589DBB79002B8066686AA4E1249D75813A04BDF600FFFA7DA4C0F7E47C928BDDDC7156A578AFB3E477FD79288099338FA2F148F408801D';
wwv_flow_imp.g_varchar2_table(162) := '0483FF6DFDDD7F4CE39027C1794B3C79002851768311DBE1D97F48050825E0425012612FE058000578B36B050006B12F0C0CE069D16407610AE813B60274D91726AC488FC0EACA653DB58104996110826F56883EDE9A9653B3A397261AC6982B434C407C';
wwv_flow_imp.g_varchar2_table(163) := '45FFC0D7AC50595077150B14B900DA28C1FD08F9A7E39103DECF647C2DFCFC9BF647AC3F42F95090F0A68A01B14165AD2670A8FB6B9AF6772CFC34C2F33DF23B7826AA647B03D700693F1849B06E33CF01C2FA3F6E03CCA3D1A0D537F2BA24B341AC4B02';
wwv_flow_imp.g_varchar2_table(164) := 'F3130720FC6F77298D18CA65627D99D64C59446F44A6902E31826127C5FA244C26B96BE80EC571D7DD600953AC286ABB3C1A25202076928C9A7E2B03B3FA5961442CE0E4D6DD20D06222CCA24C190335FE9F8E617C86E9F74FA3F4C7E771FAF3F3387DFC';
wwv_flow_imp.g_varchar2_table(165) := 'E2A4174BEE5014199947A44D62194960FFFDEDB2004E1B2277C68244303F587526EB61EDD90CA32CB01A60CCFD23FC8F5DFFAE4389BB00001BA949444154FFF80A50599801268C58001AF4681705E8A74302E15C1DAA36C9A997E61107A834E2D2F90012';
wwv_flow_imp.g_varchar2_table(166) := '62BDCADAD46285CF75927DC39F2FB4F8A981C64571280170E8FD513D7D384209BCAC9A58400573B9B42146ABDC2608568B6524CC047F92E0CFE9C524FDF109BC3F4CBFFE394A7F7E19A54FC793747C3ED1B05B06DF6AB82E01F7232880135FDE44C9269E';
wwv_flow_imp.g_varchar2_table(167) := 'AD3663676229DEE2723C6A7F80BE587F557F5E36D2F965239D5CBA0E88823825BF9EA0FCF94914200AA68A95496D38E29102E0373B2CCF666F30B891261A2FCE13253AB01738EB3928E6DFE28D474D8D4E7762ECE1BEAA0A509649A0044E8641897E7843';
wwv_flow_imp.g_varchar2_table(168) := '634B3DB342F5B4DD21206E68B244B5B8ED263140B5102E96F309FEF419644567D728FDE76F83F4AF3F86D9F24FD2C5A57B80A13DB50F78850A50250962129F7A2AF26678ACFFC1CE54EC4FF4014087AAF4619EBBE4107C6D85A4FE9F02B8A6FA01087E51';
wwv_flow_imp.g_varchar2_table(169) := '807229E1C3DECB9B4AC5CA68D0E203E4D4616C8DD4DAD4163324A9131988090202ED6C523465EC88519C8812B5174001F000E7BD56DE20EFE5D9C50CF99B9EED35AFABD27C1EAFE2A2393C41D0A23FBFAD4B098041077B1E5D1EAC902B464D8DDE54019C';
wwv_flow_imp.g_varchar2_table(170) := 'B4F20A2602462C3B5D5E9F8FC712FCFFFBEB50ECCFC793B160115D5E2E767BA46ACFA2BF3A160F7A2324FB180EB6A7E96877920E763D09829188D09F944610A75DF6EBE9A4DB48C7172800C2EFFD604022E239AD4392963DDE56C8C7F700F91DDDA09E6B';
wwv_flow_imp.g_varchar2_table(171) := '833429823A11F6C80E941003129136C77DD22740DD0F99E12E824F5D1070A887327892705FED92DEF2C257B5F9E521F4A1185FCEF28796E30102E00F6FEC05DE1E32D7B3AEA575AEEFAFA7B60262E7051A57B45056A75057AB4739072A474D7B32E181E6';
wwv_flow_imp.g_varchar2_table(172) := '16FA7B87E9FFFBF740BCFF97B3B1684F6FA671C1DB6D1B846E7B5D96797FA84FAFA2CAE3E8C5FB83FBA769A783510BEEDF7B002E7AF5F4E5A2998ECF6DF98141647FB5197ECCCCD5F2FEDDF6B33DD4EB57EF01F2270D3A1425F0E23C6010F522433142E4';
wwv_flow_imp.g_varchar2_table(173) := '0218A6C4F708B010C0D1844489AD3E0A7076D94E273D7B0225C672FDC87583B3EE7AB1AAB54294452B0E50205C4FEF0E7D30E30725000A5126115E60B9D8EDAA3C4078091480F94104B608BF8ADD3EDB03FCE76FC3F4EBC7A1A6BDA1201A6D926707DDF5';
wwv_flow_imp.g_varchar2_table(174) := 'BC6EFB7B5EDC5D0ABF125F943EEFDA0350FDC98E06763EC4120F76AE017BBE9CC3FCD8031008438716A50F0F0C616F7B5EF23DABAA06FDCAD5E4A49829516010EE327202D0A2245048908D64491A0DDC3CC1307981A045098AED05BC54EDEB266A3BD487';
wwv_flow_imp.g_varchar2_table(175) := 'F98AD43C904C30689B8E31849E24198AD0D0F64694405B5C363323F44D5AB442839238CBF348813F0CAD85F6FC7CE24ACF3F3F8F14037088F6BC9CA6F1F869581F8C96C64D325F896524CC5C95024CD2D11EF81F83364B8D9CF8F2EC1F36EB940A00F421';
wwv_flow_imp.g_varchar2_table(176) := '20A6299EAC30C9B1687B7CA8FB7597BBFE780A20C97466387A04F00228814B23E81F1DA603B60A6EBA5B2CB6C8D31B8C1220F827975682CB015E205369538F302F5CF65DAEC415BF532D96731FB1FB030888DFEED7D387B7AC35B21298152A9B5DAEA645';
wwv_flow_imp.g_varchar2_table(177) := 'AB8DF53106A5A60D33E7BD99684F5578FE359202A0086480510C32C2C09FC76870894B11C9C1B0FEB6FCB6FE04C05A46B2CB0E68C76E5A803171F0DB15FEB7F53FB9B0F5BF0CE10FF627C787AF42018A8B8A580B06D90B407F6E6F5A098E7686E9706798';
wwv_flow_imp.g_varchar2_table(178) := 'F6B70C83BC48DBC92F41A17E4B0AE032698FD2B01294FB651F48F617E28A488ED11FEC8912AC34AAA79FDF34D2DFDE5B095868A17546CCF851C5683971BA088A736568EC25232610FC19CF35DAE4B78FA3F4AF3F28781BCAEA53EE002472A797E18FECC8';
wwv_flow_imp.g_varchar2_table(179) := '23488C591F2A4BBD89C7B4A7772F10FCA200627FB6A7CA06037D5064968D7BA34E239D5C380026F105F4C1F233492F469F44EDFF239CCE37C5E2D13C40F513040C5299344B15189C8507D8A13C82A6999118A1689A47091072B2C34C13080520180E2588';
wwv_flow_imp.g_varchar2_table(180) := '7A7205C5797BE17D9561B1FAD175429442E309F0021FDE34D2DF5180778DF476BF91F65531EA86F7E516CA087A63179997FE794B3DF007DA932A4FB13E99F68C4A4F841FF8B3EA1EDFAAE58F21C36E1DF5E271968E10F06AE7422E7F30ED69EB0FEE97F0';
wwv_flow_imp.g_varchar2_table(181) := '5F32F5C11E0025A0EEFF721059DFDC2597A77E3FA5F03F6A0C5015C680414189BA57800E227B0162819D8D892E2C37409323E40518A8646A94525AD1A25202B7D4B96D326F93C94A70DF0B1CD9E198D8EC6239B63A9217B0F0FFF29632097B01263FB3FC';
wwv_flow_imp.g_varchar2_table(182) := '626B830D2F2E960B0F104A0090F15A56684FB2BE0CD19A88EDF9BFBF0E5CEC7682E59FA6E1988C6FCC0B7D1C0F20E1670B671E30ACB192951D6C70FF24C118830223C4E00312784CCB3EBBAC8BEE3CEBF268EA13F803F667306EB9F7B99C20725F43759F';
wwv_flow_imp.g_varchar2_table(183) := 'DF7F120FC007F6F05A26C7392F407B24742839013C00F5E4B856822B35CE031526641061850C87EC0D5A39B1B29C592C8742DD5709AAB0C33B716BAA0582162529862760A5A9A9D1663AD09CFF0C8372AF70B51D92E04F5879E0851A303C401E14E03F7E';
wwv_flow_imp.g_varchar2_table(184) := '1F2AF065E015092FCAA2A36F61D5B4679CA78B176DF9B57547D333182C6CDC8F02100F900FA0288E0F48F33FB4E749B76EAB8F1288F7C773D75DF24CE02B18F774BCFF57E4CC63B140CB6F1C79010655A965B24D30052D3A5223F52EC7D64475255CE848';
wwv_flow_imp.g_varchar2_table(185) := '8EC1FFF7062EA6020AA9B3284F162BA70BDBD23C746E20861EA1908641E403EAE9FDA115E0A7370DEDFB7A433CB0ED8038E60945C11C3902B29F8C4CA1A4C1CB2CA03D0D81287DA0EE07EC4F4D5078A0FB58B99BFC6E35EF81F597F0AB4BCED8BFAA00E0';
wwv_flow_imp.g_varchar2_table(186) := '7E1B268DF2958732ED09EF0FF6A7F9A5147EACFF684CCBA30DD973FA7A320F405E408567991685435630BCE97C809461DB8B16A83A2CA7C8114C911F3004726F2934296ED6AC50D498448FE9432942586232C4F407D31B400EE0CD01390166FEB3F6A899';
wwv_flow_imp.g_varchar2_table(187) := 'DE1D190A95C9B1B262941800DCCF0619F678C1F220FCF0FEBF7D1AA9DDF1D3C958F047C56ECA48AF5668AAA5E02A5A6C02F398A13A4F7B1A269C835FE17F32BED47419F77B3F0159DF5A3A4501CE1DFC120360F9117EC35357F03EB7AFA753804C8B3AD8';
wwv_flow_imp.g_varchar2_table(188) := 'F205352D8AD5F73481982C001C62F7975BFD72B1DC08D79A6110499681FB4B29BDED334C2B328DDA2FE0CB7E5FD6A1DA42090C62902ECC4F780284FF6FEF9B5204965C130B6CA871267B023487AD386302C599C61A46633B4AF0D7F1589D5F4C78508F2F';
wwv_flow_imp.g_varchar2_table(189) := '2D8EB9C77795A21315B05E3E9E83DEBC5E6A5F6B670D81F6B68DFDC5F9C3FA50BAC13CD47E097F8E2FA8FB67FAB3851FE53041518E3B5CE5B9DC56C19E4C014AC6212FB9CBB1004A403CB0BB690588359BB010D4A04B8692035EBC40110C038B729D09CC';
wwv_flow_imp.g_varchar2_table(190) := '90922D13079B9A2C1D7372EED131552D96F3A05D0FCDDAD9A644DA74E83F7E6AA65FDE03833C025153E0A81625182EE00FB87F967EFB34D6602BA00F0DEECCF887F9A117C09B6556DBE35B62FE727070E07EA04FAC9945018041DB5B3076C6FD1895E188';
wwv_flow_imp.g_varchar2_table(191) := '41C06CC8A9A7F34B27BE8801803FB03EEC02D03DC8139FEF6B806E2BDC3779FD932B806F027DC3911B3035CA4401620166CBA008621C14785909344E716266083AD48A405C80F561D28003AF601E1E222658A645BD7CC32B9668924101FEFEA195FEF6AE';
wwv_flow_imp.g_varchar2_table(192) := 'A98098B547C4021AAA2536A8843F4C8E36EDE946774A9DD5E33B640C8A7B8257D9E31BE5CDB2FEB9C29356D0ADCD79DAC1FA6BA92081AF178F334612CB8FF06BD9DD041897D219822FCC0FEB534F67D9FA930CD3A40719A0C71B767B13A15F60249F2A08';
wwv_flow_imp.g_varchar2_table(193) := '5E862466854A25C00B040C4201E09B09888907F0048C1AF1026B637FA850290045577DD79BABDF34E3CFC20A051CBAE704A610209491291134C8100463FD7F79C714E8463ADA6B6AF3A3C6A0373D3394A1B98C4FD7420B14E0B751FAB78ADD3CF393E676';
wwv_flow_imp.g_varchar2_table(194) := '04C66B9256437B96492E57BC56610F969F83E5E2083E4A803244D05BAB99F264EBCD790FAB5FCB412F5E80E1B72CC0F06271B33EB1E5F3B6A2F938AF7F520FB0586F6E2844733C56860E31BC000BD6A81352B96DC769777A514992A98C9824D904AC69CB';
wwv_flow_imp.g_varchar2_table(195) := '8F12507148DD09A97779829C81941200852A71C15D2F73B421224C8C5764B135B9009480835D602E946BA6ED8ED71FA9C27538D7664904FEB7BF28781BA5DF3F8D950926E165A6A414FEBB7EBEF8BDAB608779FE0C7BF2240C597E04BF137B95BD639980';
wwv_flow_imp.g_varchar2_table(196) := '9742372A4189A2F04C401F5B7F284F2B00824FF903C28FF50FCF1BB0F1BEE7B1AADF7F5205082FE08AF8DC40AF814B9E37EF8A512C3F82EFC50B5604CA6E1DB0916462AA1C811633E651020E14C047BDA8415160ACBA21F6702DD2A477C1A741517AB29C';
wwv_flow_imp.g_varchar2_table(197) := '69516201049FA4180A1130080508F607FA93B646025F065DC5643716DEE51E9707A170C3C004D68F47597DC530B0597940B0E62179871AAC8F968A67E1A710CEB08711E7C6FD647C4FC5F9B31A8AA57775B53FCAD84C202A6C68EEE9685725F7C5DF7D72';
wwv_flow_imp.g_varchar2_table(198) := '05288261133CBAD0A6E2E66A94C71374F2F265751DED58099488695B0980430CCDC2132826181802918451096EC148E49BA3C0CCB85430E38EA513D52909C0204AA681429444900C2310768D10C370B18A943CB346C95B1D99E84C0E805C806BFD3DE161';
wwv_flow_imp.g_varchar2_table(199) := '152C49017B8A15B21E07099365AE7FAE31F15E24EEAA4FEA7FDA2D4AD34D77B2E883658004BC0E7A99F543DD0F969F926EAE2F8D3D2BCAC3AC401D9E8D025415A196BD00506823C3218DDFD0EA9D891EE59A377C93C213444C40811C71019D475602AC13';
wwv_flow_imp.g_varchar2_table(200) := '1EA28443047166884A6F1016F3A656AB8AD1297B203740820C384479F4E13E10083AD48571C6FFAC2DF5E26AE84EA08F175A18FE3C64B56735B945C05EAE89F2EC23B6E4D0F38CF073840740212843C10879B015FDBD2CFBC8416F97A497950018848171';
wwv_flow_imp.g_varchar2_table(201) := 'D06BE12FDA1C57A4CC0FA907CF4E010A37CD248986B1676C20040AC5164260104A409A1E25A0664831C1DC93066080E83C4209140F0C8C4F839B56C26CCC343AB723065B1198F5ABE4D915F4E9322B44A11C9E0038B4BD49A798B7C2334388D6475A19E1';
wwv_flow_imp.g_varchar2_table(202) := 'F7D91A43E7978EDE2CF586772F76ABC29C0576A3A8E65C147C53B75E0E62E12F15200260EA7B9CE5B5E5D7CAA7C1DC41EF8503DF0B14A0EFE237865E11F4027BAA41EFAABCD98FAF004BF1809480117C1BD3B4AD78C071806BD33D9A0F38041647D018B0';
wwv_flow_imp.g_varchar2_table(203) := '856033740925000E1110D3A32A4550700C5EC56D9BAE73D0C60D5C9CADBF70B19794E0AB1E62059635558C5230473D90FA85DB1E7E3B266B3A044A78BBFB708870310685C1B6B79FE7FF2DE157A6245B7C825DF0FE46DB457C409EAAE5670E2A828F2181';
wwv_flow_imp.g_varchar2_table(204) := '5CD075547D0F5BDDBD609BC57F173D431F1400EB7FD16341B81B5F24FC2AD87BDE8CCF558AF32C3D40E4063486A38043DC1C182004DE9428C24F5D0A5E819B47E1167008B8C1A205926528012D78587E7B811C130C58D88C4740095241DB2936A828C14D';
wwv_flow_imp.g_varchar2_table(205) := 'E1D04239014A00BBD2B6F0A3109C0B7F1B8E1FA1A7CC41F33FF57EA63EEFFBA5D8215B7EE08EF97DE6981AEF33F3940917587D9686B31E8A60979207049F60372CBF849F4A55B2BC97A63C59017B26CCEFD20719906CF93DB1EFBE67F0F8BFFF6C1520DF';
wwv_flow_imp.g_varchar2_table(206) := 'CB62B4A2E6D0338C1576084F90FB5243016CC5F899F701533F43B28C3DC33044F206552F001CCA4A10DE4018B608E218D295470E6A5C797583E3F76F14D6D713A76B1240CF0B62551290CBC26F6F53567ADEF6D687B057135A7ADF1AAB5D3DCD027AD64C';
wwv_flow_imp.g_varchar2_table(207) := '4F4D93EE18F768C863EC1F96DF64C25C7559319897554BCEF2B2ED12BC9F83DF5E863D4394D9B0A7808F2F00F32F5FE767AD00552580198A650CA2482B435949D3130F2826D8B227E0E6CB13685F9733C2E07E07C8A5F02B382EE0903D018AE0143E81B2';
wwv_flow_imp.g_varchar2_table(208) := '05D7B52CF60E4579F2F2D5AC70A925D71EE3CA090E2DF84A72E505D6DFE3090B835AB5AC6A2BB542B963CBC572C1EBB704C1B2E0B78162667A54B784D067E17766D7753F5C57C00B9F6B3421200FCC8FC577E00B04EA22FCC01E181FC54FC6FCB18EE931';
wwv_flow_imp.g_varchar2_table(209) := 'CAB56F6B28AE7BFDB35780088A17CBA7F104083A5088FDB44C28F69C4A283C9EE3091872AB0DEC7967170C85BD81D9209264587F1422BC003C377101AB4DB1700E9451084398224E88B124952B5CCD25B888CDED8BBC3F5F909CDF55A0F85B4B92BF1C4C';
wwv_flow_imp.g_varchar2_table(210) := '46819C591DC32D05E02DCED96C14C2BD25C1AFE27EE08E797F5D9B8629E7AAD5EFF54DD586F537E5E9661762015A1E25FC9345E1F7F9AD86C2BD4E88EFF3F397A10039280EAB47BD7A3B07C6A4E8C954A204AA5BDF6656BD3D01560F410006780095D7F0';
wwv_flow_imp.g_varchar2_table(211) := '101BA00812741441CA50D3CDD5A39E93EEB72270C3A508590996E304DDFC25FC1B1464409410906ACEE13665DAD5BF17DE45D63E63FC609F60A0AA426F810F2F60AB0F440CACEFCDF30ECEB5E15E5087461DC31F05BBFD947A431B067947F1FCA527BC8F';
wwv_flow_imp.g_varchar2_table(212) := '003EF5EFBE0805082854F5062EDD3545AADAF5EC054C93DA0B80730D891C0C4A09F0067327CE1C1F388143E562083F90289481725F7983B8F9DF508205585449ACDD45C87D9E0E9C951C0CB853409ED2F2436B9638DFC24F424EB0270B3E90101608B843';
wwv_flow_imp.g_varchar2_table(213) := 'A08BD58FB2067A8D0976B1EEE73D92741C667DE0FDF104F68E610062F3E5538BEEC3BCFF8B5180EAE9C6B402779339385EF004398D0FD3E140CF891F844599E33CBE10E44B19454023F07F7802180E0EB97CB1440CEAAAA57186440A962BF141151A5531';
wwv_flow_imp.g_varchar2_table(214) := 'F137F30AF984EC21CCAF4612CC63D54B2A532B56F3F20E6FB2C9B0A762FD85F52BD69F1207ACBDD89D0C778091DE3D1C353DEC16B3F0DBFADB03D0A689E0431290FDE5FC39F705CF57C13CABC85C3F8C785FFF575EA4024850A81ECD5BCA99568C65E366';
wwv_flow_imp.g_varchar2_table(215) := '43939A2AB5F0871284354450BCE30BA1323FCFFCA180462801AE5E8F4B0710A83C22585E84460A721776F5667A307B85E59A23D3A7167835CFE70618E2072DA16BD63C8D428C0ED6DE163FE84D333D24E04C7572E81C1508BBB11D2A198C36D1C26D8AD9';
wwv_flow_imp.g_varchar2_table(216) := '6CF549C409EFCBD2F368C1A7D00DC1C7EA1BFA95C25F2D6E7B8998FFC5B140DFD2610B8C2B483D66C54AE0BD556533B7A090980F673EF106C083D22378AAB32B4BB9D1668C1C2794493259C08C7F63037C04C911149631426C6A77A945D50B14C9AB6CF9';
wwv_flow_imp.g_varchar2_table(217) := '0BC157C06C98660EBF26E10D8C1F424E5EC170267B8142392CF41BB93484E42150876BA420179C3FB2C5B7B033849789146ECC07E723F8607D58A06ACC13DE4DFEE30572FDDFF3032FD203C4091923E7DE62594CCFAE67732182E0153E190651F0258FE0';
wwv_flow_imp.g_varchar2_table(218) := '84101E8180B1F00670F5A24C5DB64C8C608508C5707799AA49334D3A64A06D668A4260BE628B72C15D75737B702505D4D1A2BDD2FA23FC587D73F9B6F8627780347CE64C73F21A294B5E578A11F0F72CF848EB8C4D932A619EA90F192B4FED1142AF6037';
wwv_flow_imp.g_varchar2_table(219) := '2B80181EE04E25E0BF36337E3DC278F6AF78D10A5055042091FB09AC0440037902148134FF66284356801C24B2F111ABAA841547B1D3378AB4DDC8128A01EF2D45981817EB507C40122D27860ABA3473E4790C8806430A3718351BF2D8EA07B559E2FD2A';
wwv_flow_imp.g_varchar2_table(220) := 'F4C93087A45666B554F69131BDCB5973A60E8C3FF77E61AC3E25D608BF218FAD3F0AA09266200FD67F000B64E15F56E0B0FA7729177FF6D2FF98C371577D311C4CBA713EB6189A2532E78D22C086981BB7079027D07373E75859410BC10B04D0559C1650';
wwv_flow_imp.g_varchar2_table(221) := 'D3A80E9C4B6FE098C0E3FE9C2770719D15260FE992E0476DBC691DFD97FF2E7FDF8A60A588320679815CCBE318C0D95D3C03C20FB441D043D8C1F85A993AF628452A4CFB830874FD88B0D3C4DE13F3E300D83B079C052F127E952CF8AAEFDD53FEFD1FC2';
wwv_flow_imp.g_varchar2_table(222) := '03143469A6239C34CBDE20F7BB4A78141FD833447694F2653FCFFC3941240A21ACEDADF00A985982A760D541B3A9D450842807881E5853ADCEAFFAD3792CB09548CA94ADBFA14F09811C0738CB6B45700FB43C9B14C2FF9ECF0D6D10768AE95C5C87A5A7';
wwv_flow_imp.g_varchar2_table(223) := 'A9DE55A70A727B7ED4F728C2D341804B4C80D5E76F38C9A71AA8CCEEFC8878FF2A45FB611460F9E422380E218AD53E9409E011AA25020E8C29612E1581F8405E0145C85E41C3ADF2A2EBC827C8D2AB1CC0421F8FA5C067223F0BBFAC7F71C4D8C4F89ED1';
wwv_flow_imp.g_varchar2_table(224) := '51D0A1287219EC7BDDACB03D30275BFBD188AD315E9B84B5BFC4E2E7526B411D29801542023FB2B5176C43F8B1FA19B2FD60F1ED8D1CCB0FA500D5F2E0B23AD3DEC0C1A269C1B256A6A40ED51DA5C491EBF94D275A09D807AC89CFC0A20C8D02B6C4A4E7';
wwv_flow_imp.g_varchar2_table(225) := '72D15D2DCD0571721D44CE641942958BB39795C07980E834F6BD03E2A880821EE119ED920E6AA15959A43D02E664A8134A80A0573D8084BFCFEB28BBCE34AED631B91255702DD7391531D54B26F66F24F6E58B7E280588DC4C018972BCE9047056846808';
wwv_flow_imp.g_varchar2_table(226) := '17C3E2F8C0B46216F85C371FF5F3F20071C0C1E78099290FC407EC04538C105086D54861E1B3B72885BFB4FE284EF1BADC045984B16ADC8F0DF016F80902CF01E419F9116B2EE82345F0726D2904DF57DF015E81D758F811FA607696199E2ABD196517B7';
wwv_flow_imp.g_varchar2_table(227) := '94A517F9F21F4E01BE4A74646D28B3AC5686C8ACAA902C1F513E5C249972D22914401E212B831252DA0FBC182CCB33E43D00A55294967F110215E300B2C58F8A53576686E063ED99128D950F4BCF2382AFFE0209B80360FE5D3DF899991D17E229308FCD';
wwv_flow_imp.g_varchar2_table(228) := 'F219F3FC68DCFE6D34F18757802B039F6A2931DC79A5CC00817602AA2C39100F9F853F02E4C8CA7AEC214AE0BAFFD80D6645282D7E04D01100BBFCC16C90A15B4D0128965FC24FB9028CCEC4ED92863A1E9908D697E5CFC2CECFC9F07218DA58E8F5EF8A';
wwv_flow_imp.g_varchar2_table(229) := 'F03FF71125B711DC877AEDAB51806A7C107537C1B6787BA52B46CBC49229C85008B14828411506111C57843F28D3880F4A0F10C56D59E873955B40A3F86C912C43F8A35EA7E0F2E5010C6B02F648F0058F02DE38036D057249C65518BF109E7B8C897C28';
wwv_flow_imp.g_varchar2_table(230) := '017CEABFF36A14A01A1F448C108172B59D311661582122CB9A9352ADE8F28A1A1D7FDFB1802DBE294DF70044A6D7C1AF935D7EBE10A518FE546049AC41B500874537E6070A99BD293BCBCADA236F91A1D9467F63A9816741D8D6C2AFCBF1AA14E05BF181';
wwv_flow_imp.g_varchar2_table(231) := '2E444520AA8A51765DB904D9021F42EF6EAC68452C05DF16DF7F373FE63729089622D2CCCD320536F76C200971110867D66609E678A44B167A25AEFCBB45CF4105EF3FB5A57DAEEFFFAA15E07B3765B9E736BC41B42046C6D91EC3753C51D856509A55A5';
wwv_flow_imp.g_varchar2_table(232) := '0A2D5B36C3F9DFC1C11BA7E75EE16CC9510607C59460E72DF179846231FAFD3592F80FA0556B050801FC86002D7762956D8ED532E68A07A936B22C09FB02F25910FCEC17C28257E050CC09359C0926A7EC29FE1E83F39AE8CCBBEAC25A012A576E2150CE';
wwv_flow_imp.g_varchar2_table(233) := 'DFAF0AD142CC50D6B42D617BFFE2422EE9DBFFF8FABE15DD64E580DCA2DBAC02730A46E75B967F8DF16FA4136B05B8D165CA429D0579D9927F5FBE736BE335EF73A51C074F1FA323EED86A798B537C752F5D2BC0ABBBE5EB13AE5E81B502DC411E0A6BFD';
wwv_flow_imp.g_varchar2_table(234) := 'D881E71AD6DCE16E7DFF57D60A708F4BBA20FFAB5486B5E0DFE32EAD156065176FFD875FFE15587B80977F0FD767708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5';
wwv_flow_imp.g_varchar2_table(235) := 'AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767';
wwv_flow_imp.g_varchar2_table(236) := '708F2BB056807B5CBCF5AFBEFC2BB05680977F0FD767708F2BB056807B5CBCF5AFBEFC2BF0FF0385D89EEE3B3F955E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26045834691794057334)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EECBDD99263E971A5EB1B330240CC395451EAA66E4E3F804C6499E9A2A9A6CCFA318EF424929E44D263B499D8';
wwv_flow_imp.g_varchar2_table(2) := '625FD08CA44C0F70FA462589ACCACACC1831CF879FAFFFDFD8404666003120A61D55304444020860EFEDCBDD972F774F2CFFCA8F407E045EEC11485EEC27CF3F787E04F223603900E417417E045EF011C801E0059FFCFCA3E747200780FC1AC88FC00B3E';
wwv_flow_imp.g_varchar2_table(3) := '023900BCE0939F7FF4FC08E400905F03F91178C147200780177CF2F38F9E1F811C00F26B203F022FF808E400F0824F7EFED1F3239003407E0DE447E0051F811C005EF0C9CF3F7A7E047200C8AF81FC08BCE0239003C00B3EF9F947CF8F400E00F935901F';
wwv_flow_imp.g_varchar2_table(4) := '81177C04720078C1273FFFE8F911C80120BF06F223F0828F400E002FF8E4E71F3D3F023900E4D7407E045EF011C801E0059FFCFCA3E747200780FC1AC88FC00B3E023900BCE0939F7FF4FC08E400905F03F91178C147200780177CF2F38F9E1F811C00F2';
wwv_flow_imp.g_varchar2_table(5) := '6B203F022FF808E40070C5C9FFF33FFFF316BF1E0C9ACDF8CFC5E2C47F977F3D8D23309D96DAD9775AAB753ABFFAD5AF967EF7343EC9FDBECB170B00DF7CF3B31FDBB4F0334B0A3F9E27F3FF6A33FBB125F66333BFE55FCFF7087C6B73FBD60AF62D1F31';
wwv_flow_imp.g_varchar2_table(6) := '99CDFF8F150BDFFEFAD7FFF4CBE7FB913FFFC95E04002C19FB7CFEDF2DB19FBDC4939D7FE62F1E0107843F5C1BBF04147EFD2FFFFB1F5EC2F17AB600E0463F2BFDD53C37F897701DDFD767FC36B1E41FAD60BF7CAE11C2B30280D4E86DFEFFE6A1FC7DD9';
wwv_flow_imp.g_varchar2_table(7) := 'C48B7D5D07835FFFF69FFEF6391D8167010018FE7C5EFC9B3FE4767FF59C4E4EFE591EE511F8D6D38424F9C7E710153C690070C39F16FF3ECFE91FA5A13CFF3735B75F26C5E4EF9E32103C4900C83DFEF3B7AD27F50913FB872499FEDDAF7FFD4B11894F';
wwv_flow_imp.g_varchar2_table(8) := 'E8EBC901C0373FF9CBBF9DDBFC6F9ED031CEDFEACB38024F92237832009087FB2FC38A9EC1A7FC36294CFFE2A944034F0200BEF9E62F7F369FCDFFF9195C1CF947781947E0C944038F1E00BEF9B3FFF157F324F9FB9771DDE49FF2391D81C492BF7BEC65';
wwv_flow_imp.g_varchar2_table(9) := 'C3470D003FFDE9CFFF3E2FED3D279378799FE5B183C0A305809FFED9CFFF392FEFBD3C8379969F38B17FF8CD6F7EF1D78FF1B33D4A00C83DFF63BC54F2F7749B23F05823814707007999EF369759FEDCC77C041E23083C2A00C8D9FEC77CF9E6EFED2E8E';
wwv_flow_imp.g_varchar2_table(10) := 'C06303814703005EE79F15FFED2E0E72FE1AF91178C447E051E9041E0D00E4A4DF23BE64F3B776B747606EBFFCCDBFFCE22FEEF6456FF66A8F0200F2BCFF66272F7FD6D33D028F2515787000C843FFA77B11E7EFFC5647E0DBA490FCF54377123E3800E4';
wwv_flow_imp.g_varchar2_table(11) := 'A1FFAD2EA2FCC94FF9083C8254E041012067FD9FF2D59BBFF7BB38024921F98B878C021E140072EF7F1797D0E6AF31CF3CE5412F80CDDFFAF37BC60347010F76FE73EFFF70D7720E000F77ECAFFACB0F19053C1800E472DFBBB90831E66D9DC479408E64';
wwv_flow_imp.g_varchar2_table(12) := '5B7FF06E0ED1E37F95078C021EEC54FEF4273FCF3AA2C77F921ED93B8CC6987D5B5F32CC78A2D3839E39F37CEBBFFFCC19B9EA6FA57F37BCCE835D488FECBCDCF0ED7CFB9BDFFEE24F6EF8DC5B3DED41CE5BDEE37FAB73669F33C82C00AC82C1D289FECC';
wwv_flow_imp.g_varchar2_table(13) := '595F7ADDF9321E7C16045680E4769FECE93D3B4932A8395F1C8C4DBDDB43E9021E04007EFA939F23F9CD5770DDE07AFF92A78E46CFBD9FD88C778E3F677F9FFDF318787CEDA57B028370355F09022B57D0835C5037388EB77D4A34FC84A3968657FA663E';
wwv_flow_imp.g_varchar2_table(14) := 'F7DF6EFAF52051C0D6CF57EEFD37BD2EF4F8ACF15D75717122B386CFF70580208240F2071F9302C3A7A77D1EFE007733C060FE87D1AB7E1F6E99146109083E17013CE3D440203A3740A0C07D2685E227070007D4CDCCEB21C8C0CDDEE1CDAEDDA567E5B2';
wwv_flow_imp.g_varchar2_table(15) := 'DFF50EE29742F81869C693B730FE60E405B302B700008560FCDC734DC6C747D735B765639F61FCB30804DCCF050AB30518A551410881DD08B2D1F00D5CE07A4766FB8F4A0DDE4116C3E7C8C9F80B8599FF4E469FD87456B0D93CF15B361258C7D01E220D';
wwv_flow_imp.g_varchar2_table(16) := '58E77DDDE911CFC3FFE5C39986F4D13B474F1E3C38869CF5E68B9F134B0A66C568E485C40D5E869FE8DE6FFC3E0083DFC74860F107D3903FE3FD67331934863F9BCD75E3FB69000407087EC7BF2962489F33339B667E4EC122F3D1B77EE1DDE02A4E0DBD';
wwv_flow_imp.g_varchar2_table(17) := '20632F06832F16E6562CCCFCA608606ED359629369D146D3A24D660507026E1107D7FABC0F500D58EB7DDDE0D87DF62939FB9FC9A943589D5E24A9319B950A66A5A26EE512F7897E5EFA3EB172D1ACE8FF96A4F7A9E1A76020C317102CC040D140C85763';
wwv_flow_imp.g_varchar2_table(18) := 'DE9A8240347419F6643AB7E974EEF79389EEC7DC4F66364E7F6FE177731B4DC2BF0318219AC01AB265CB34CAC980DF5D5E6B9BBCD62ABF21D095A1978A332BFB6D6A95D2D42AE5897F5F020492997FA6F1A468FD51D96FC349C96F00824702A6D75AE7EB';
wwv_flow_imp.g_varchar2_table(19) := '37BFFDC5566D72AB7F2CCFFF97F3F994780B57867B700C3E187DA56C56F55B62D58A59B592E8FBB259A59258257E5F2A58B99C58B954B0624960E09EDF01A020E34F23810802BA27BC500EEB894178830B1E00E395E1CFDCB847E399DF86A3B90D47331B';
wwv_flow_imp.g_varchar2_table(20) := 'FAF7FA7934E67773EB0F67D61FCE6D30040878DE0204F8CC4B84A4E7D3FAB35BBD1857AC5100A077E0E17DF0F2187EB53CB56A7962B5F2C4EA95B1D52B23AB960402856466B359628351C9DA839AB50755EB0E2BD61F576C342ED924E46B9E3AAC8100DB';
wwv_flow_imp.g_varchar2_table(21) := 'E601D6794F6BBCEDF51E928B7F16C7291A41BCEC3C9C0F5E3F1A7EAD62C6AD5E4BAC5ED5CD7FE7F7DC0A56AD0A142A958255CA052B2F0100461E0000432FF07DC12301F7FD9E5E28C7F0FFD23725AF35F7B05F9E7FEC862C631F0C6736E07E80A14FDDE0';
wwv_flow_imp.g_varchar2_table(22) := '3176FFFD706EBDC1CCBAFD997507FA99686032218A5054E1C616A281D58AC3562FC82B2E5BFE7E0CF1CB258C5F86BFE3863FB6466D643B0040796CA5C2D43FC86452B0EEB06C17BDBA9DF7761C047AA38A0D47254F07307DE70AD631932DA7016BBDA775';
wwv_flow_imp.g_varchar2_table(23) := 'DEF73A8F7949F97F1AF0AD447E1E5A06820E83774F43685F50A88F574F0DBF6AC1F0CD766A0537FC7AF85DADAA9F1D04307E8F080400C56271C5E30B04FC662207163F476008FF5E083E3009ECFF4C00309DCE6C32C6F0A70E02FD810CBFEF20B07CDFEB';
wwv_flow_imp.g_varchar2_table(24) := 'CFAC339819F78081470B63A507DCA653B389BF6E048505C1B87A1DDD97EA7035E4D73921E49F7BB84FA88FE7AF5564FC18BDDFD746562F8FAC529A5862787FB3C1B8649D41C5CEBA3B76DEAD7B24D01B956D302A6F0E00665B2D076E1B00D64B84D64193';
wwv_flow_imp.g_varchar2_table(25) := '47FE9825E22B23A18D5EBE549ACBE0DDE815EAD7B8C7C02BC1D06BE1FB5A927A7D8F02307ED2818AEE53EF5F2E588934A050700088466E18BD5B920C3FDE7B74E0A981EEFDFB583A0000BCA435B7F97466B30000A3B10060907AFEA97B7E4501010C82F7';
wwv_flow_imp.g_varchar2_table(26) := '2702E80DE61E290C3C35508A204010289036101D4C03E97895DCF8AE4160B5A4CA4776C32F61F833AB85907F8790BF8AF18F6DA73AF208A016C2FF6232755274382E586F58B676BF6AE70040AF669D18019002CC1C512D29AC9702D87305809736F86309';
wwv_flow_imp.g_varchar2_table(27) := 'E9C87BDDF3E35D64F095CADC0DBE4E88EF5E3DDE64FC3B6EE8DC4803F0F2183CE1BEBC7DB5140D3FB1B27BFE8295CA0527020100376E67F908E7B1E682CD6304E0BF572A405AE0F7C5001A01080003FFF29220B799CD3C0D98DA28E6FE80C1506941FABB';
wwv_flow_imp.g_varchar2_table(28) := '901E1019F43C32504A001070CFEFBBFEBD00A13F341B8D880C967902270B454EDC233920A3C4FBCBE3CFAC5E995A1DAF1F0C3F0200C65F2D719B58B130A5706AA37162BDA1BC7FBB57B3F35EDD2EFB35E70006E3B28D26459BCC0BFE1938F7EB7E6D9307';
wwv_flow_imp.g_varchar2_table(29) := 'D85A04F02209C0B4E64E09498C7EB53277426FA736B79DAA59A366D6A887FB1ABFCFE6FB187962A5126C3FDE5D049FEEB33F63F83260EEE5F90B5E8716A585272F98B2D06C04A0CA4001C028083CA0040A110C2239E7F540C2DD594A08C2FEAB02A07BDD';
wwv_flow_imp.g_varchar2_table(30) := '541580F81331A8A8C001A03FF7B4A0DD9B59A73BB3767F6EDDDEDC3A7D22043C2944634809321A84683659F3B9ED45EB47210879149189E8DBA94EAD519D58A34AAEBF08FBE100E0024A4EFA4D3D2A1A4F13EB0F8BD6EE57ECB25FF508201A3F9580D1A4';
wwv_flow_imp.g_varchar2_table(31) := '64E3A93401CE01AC590550B4B0BD1901B73D96EB829A3D6702301B522EC9714368592ACC65FCE5B97B748C1FA36FD5CD9A3B66AD1DB326DFD71307043C3FDE9E9C1E838F069DE6EDC1C0B361BE18FD18E22F8C9E8B4FA2140838E7B745003A0928A00004';
wwv_flow_imp.g_varchar2_table(32) := '307E0148A818F87D1013B9F04DCCDD7C3E0B35FFC5F71E25986278D7034C67369D8938A44AE05E1F5EA03FB3CB8E6E17DD995D76E7D6E106080C05024402638020A40552252E8B8CA298E9BA8BEF2AD090C757AE8F517AD81F3C7FB336B6567DEC00D0AC';
wwv_flow_imp.g_varchar2_table(33) := '8DAC11883FF27DBC3E9F9FCF359A1464FC838A5D7465F84401EEF92903A20598061D4026FDBBEEFDC67FDFA62028078075CFCA671EB72A8B75F372469F8B0CEF32B74A09AF3FF770BFE1C63F97E1D7CD761B8040E200D0A8271EFACBF8E5ED79B1A83043';
wwv_flow_imp.g_varchar2_table(34) := '6C42C9292ACDA277E1DF63BD39FD9EDFCD0404FE3C37A2980EC4F25FC8FB1DA80A56F0F421F17BD715A442228C455ED3852F219D71255C00B9F879312E793B22064504540C88023ABD99B5DDF067761180C0418068A0AF946030321B7273D25011C12A3F';
wwv_flow_imp.g_varchar2_table(35) := 'B00E00AC06DC6EF87E38E7264056BE4FD80FD187E76FD526D6AC8F0C20685445FA911A90EFF379388E83318C7FC93A7D58FF8A5DF46A76D9A3F457B621617F34FE1B2801D34B6C8B9580ED01C073DDF597917AA9AC2EC32F3BC9A73C7FA73A77AFDFACCF';
wwv_flow_imp.g_varchar2_table(36) := '1D00307EFFDEBD3E865FF07400820FE3F7525E49DE7C362FD8789278BEC98DD093DB6492D8D8053A1838B57A19BA7FEF4021C3490183EF3D15480B8F41D22A8FCF7B77E30FA98057265C5CA4F264AC5410C9E8F34994B4446492DEB850491E9663114B88';
wwv_flow_imp.g_varchar2_table(37) := 'A4034A050210900AF4E64A09422A1081A0D737EB0D75030856A381B4A7E10BE0BDAAC0934A52865F2EF23E6756F3707F6A8DDAC443FE660CFDAB13AB9717F93E076D32E3BD14AD3328D965AF6C9784FE3DBC7FD5BD3F3A8068FC11A09D42B90985F12C01';
wwv_flow_imp.g_varchar2_table(38) := 'E099770046E518613386EFE17E4506BFD798DB2EB79D9935770002D28040F405814FB6868F217AFC6D891BFF6094587F40D869D61F27C14326369C988D0899F1961E36030E66D3E039BDEE1EBC7F8C00E245A9344057A70B853C2F564420838F7C838000';
wwv_flow_imp.g_varchar2_table(39) := 'E2126092C147ED010465202D6B893E534D158D7259BC073107DC810B89100DC1FEC76A0124E08008006E60EE29C14527DE9BFFAEEB24A13E1F65C3C8A55FE7B952C3E350A6B57DA231E5FBF5EAD45AF589EDEE8C6D97B0BFA6721FD100445F857C1FB20F';
wwv_flow_imp.g_varchar2_table(40) := 'E39F720EF0FC45BBEC55ECBC8BE727EF0F61FFB8E484DF94B07FC5F3DF30C0DC5A29F0BAE378C3F7FFE9D39EAB0438B2C8B1868C577436B92AE3C7F00F9A333BD89DDBDECEDCF3FDBA97F754F38F125E4A71A2BD95A743DA4DE65CFC89F5068975FABAC7';
wwv_flow_imp.g_varchar2_table(41) := '2B0A0808951337A89197D302183820AC106AEEFDA3F86671CAB3273F7A55A906D543E0B2E352C14B952E360AB7A848544932F1D405FEA2D9D03D550C078192A221D47252FECCBCA2E072622F2BAA1CD81BCE3D3D38EFCCECEC726EE76DB3D336F7736B13';
wwv_flow_imp.g_varchar2_table(42) := '0D40128EF4F9D46FB0DE651B7B288846884AA8EFD72A81ECAB4D6D6F676407CDB1EDEE8C3C0570751F217F616A50A6BCD751C6F8DBFDB29D77AA764ADE9F86FD451B87B03F9B86DDD670B625095EEF48DEF6D398D9730480E8F5B9B8088DDDBB5460F731';
wwv_flow_imp.g_varchar2_table(43) := 'FE99B5762200CC6DBF4504C0EF21F9E44563CD1D63A771044F037934A1B184B0DF2F3E197EB76FD61DF0B3597F64CA951D04308C409EA5914050DE790AA0DBC2F37FF964A61D844E08224B564AE2C64F04E0F26355275C8D18148A0E003B893576C46320';
wwv_flow_imp.g_varchar2_table(44) := '66220AF2C8C17990456A103902BC2B2902BA003403979DB99D77E676E6C63FB3B3B6D9658F48C0FCF3F399013AA201E737BE50595B84FC183E1119C6AF325FB33691F76F8C1D045A35797EBCBE937DBC2F27FB82E727ECEF13FAE3FDA9F7579C0024EC87';
wwv_flow_imp.g_varchar2_table(45) := 'E98F1D80379C0370E509299507BBBFFAD5AFDA77607A5F7C89AD00C09FFEE9FFFCAA549C7C77DF1F661BAF9F15AA702123E8A91409F76762F76B336BD6671EEE2BEC97D7E7C6BF633018122136170C463F9C146C3822C44FAC3F2AD8C0C37CDDDCE0F9FD';
wwv_flow_imp.g_varchar2_table(46) := '1003808412398637E446E92D1BF673E146E22C1AFF55DD78571EABA057889E535581D888149B910408F1E622A600069430176AC5A871506AA0A8474428C080519293F3DE501942144204521EA432E04461D73C2538EF987F2F20D0B1503420C9B2CB0532';
wwv_flow_imp.g_varchar2_table(47) := '8D464430D1EB2B159B7989AF49BE5F97F1730308C8FDEBE5892BFB68EE319B3A77C2B1EF8D8AD6E917ED12C2AF5B760020F7870044E94735E03E8C9F73339996BEFED77FFD5FDFDFF7359D03C08647381A931BBF7B96B9D5ABB3E0F131FCA9E7FC7BCD99';
wwv_flow_imp.g_varchar2_table(48) := 'ED91F3D723B9A7909F1C1AE3273385CC23B7F4107F50B04EAF60ED34D44F6C80E113DA7BA8BF60C521A4B2325AD8F6C894FB7DACA3F37D1AFAAFF74117BC4018304289309D2F1049C145852002049FAB1C1A979C17F01E0655367677126B3500C150EDA8';
wwv_flow_imp.g_varchar2_table(49) := '090848110001CC98940055A07A09241A8203C0F04F2FCD4E2E747FD1212A10080074CE6504D972A4378BA1F242796F279E1BCFF7A7D6F29C1FC387E8C3F0A7DED4A3D65E8C5F029FEE80321F397FC92EBA153BEB5442CE5FB23E84DF586DBF7719F667CF';
wwv_flow_imp.g_varchar2_table(50) := '500E00EB5DAF0FF22867930BD1F8619167B65B9FDA6E6366FB8D998CBF39B7561D7090E1AB3B0F665F9729170F5E9FB0BEDD2F58BB57B04B002078B9EE500040888F87870CC4E821F3A2B17F32B9277AC24CDDFC4B61F2970E5E6814F487ACF203FA3791';
wwv_flow_imp.g_varchar2_table(51) := '88E9DC01D712A82A10BB1769626AD612DB6D52EE4CFCB647056447C227D2840A64A1970EA52F801F8017405ADCEDCEEDAC6B76726EF6E1DCECE3B9D9491B10C0400588B189290217AF25396F0066CE0B3737FE89137ECD3A4A3F85FC78FD048E623EF346';
wwv_flow_imp.g_varchar2_table(52) := '25228BFE10202EBAD7BFE891F757ECBC27CF3F1817A5F0F37E7F90E746E3BFAEBD6E7300B8F6106DE701D1832E95F8F0307897CACC1A752E2C08A599ED63F80DE5FE183FA12F2132C602B147498F909FD0D143CC61C13A18BFDF12EBF402D9E7C64F9349';
wwv_flow_imp.g_varchar2_table(53) := 'E20C7F1AD207318F0437577BF7258FBFBEFAF4938399D5DF47E3D283B2A3C516D385D2B421F0067C6ED201F800899D124500A9F0897F233A52B524A605940E010164C49DAE391F80F1BF3F35FB10A2807300A00F302E40C8750888AD307EAFBE1095C1F4';
wwv_flow_imp.g_varchar2_table(54) := '07C3DF99BAE137AB327EF4FE9404BDA107E0A1D519E31F710EC8F74B76DEC5FBABDE0F01D81FD2E71F3CBF7310F763FCCF2E05F8C94F7EFEFF2466FFDF764CF66EFE4A34A4F86AAA93231E91A8879C928BCB43FE1D79FF68FC087D22138EE7572DBFE086';
wwv_flow_imp.g_varchar2_table(55) := 'DFF3905F37987D0080F09F488054807C3F925D905078FDACC7F7F7939DD89B29345F257EB99BA371CDAB3842445DBDD203E4CA107FB14C4834D0E0966A1F940E343D4D5868248808F8CC54062E88002EE7F6E1CCECFD99D9C70BB3B3CBC4D382DE10A254';
wwv_flow_imp.g_varchar2_table(56) := 'D189187EB8886CC82F60F61B865F97CC1712109088BDFC281BBDC63F322FF3291AC3F843DEDF97E8A73B28B9F7F7B0FF9E8D3F9CE2FFF6DBDFFEE2FFDEF7F9DB0A07F01401607996536C1315A1E40CBF87FCE4FB13377C48BFD60EFFC6635433A79EEFC6';
wwv_flow_imp.g_varchar2_table(57) := '3F85D8A36BACE85EFEB2C78586F117DDF0B961F82AEB45722F8A7A328339AF682D5EBA403267F3AE4FEC6A2AB1782B42A3F873AC22441D815A9C9516F86C03EF7F10105031D80D118178138053F308691882003CBBC4F3CFEDE35908FFDBA44CE6E9119E';
wwv_flow_imp.g_varchar2_table(58) := '9BBFE7822BBC7E553A0B31FC21ECAF8BF5DFA9D1DA8BF12BECF7D26464FBC7183F2918613F5EBF64E7887D7A658F0650FE0D464507710FFBE314A57BB4CEB9590E00F7787CAF7FE9E059A3FC152F435E098B4C4EB9E7C63FB5FD06171B649FD47E34FAE0';
wwv_flow_imp.g_varchar2_table(59) := '8DD0D8C3108BE8C3D0F1F8904A05BBE82AECC7FBE3F561F7A5F2535E1B157CD1F3BB47B8229CFFA44DF6110040E40CE25CC2282ACA4E39D27013F53E90122087DE6FCEEDA025A9349F1522104F4F0A709A250031FE81D948D2FCD4F821FB00602232CE87';
wwv_flow_imp.g_varchar2_table(60) := 'DFEFC8F313ADD5CB53AFF17BCE1F7A1AD4AF2030B9EC17EDBC53B2B36ED9437F8CBFDD2F79B71F5C0DD11B25DAB59B7AAFBFC2BEF8881C006E79006FF2F434DF57AAEB0AB202D251882527957451ED37A776E09E7F6A7B4D424C097F2A15C9697932AA30';
wwv_flow_imp.g_varchar2_table(61) := 'A4A3FD71D17A9EE32BBCC4F82F7A9F1AFF42F32EDDFEEAC49C2F7E9E60F877EDF557FFE6970845DA81D27429F204F17D8501A7CBA981261D91065022DD6B9A1DB4C49BF052A400EDAED965D75C1B00FBDFE94903E1ADC37385FE7007F2FC4AC1382722FC';
wwv_flow_imp.g_varchar2_table(62) := '94A261FC787EAFF193F343F68552A91BFF88088C7352B4B376D94E3A65BBEC32DEABA4B07FA4C61EB81B18FF9B697B37BF1A7300D8FC98DDFA194B357E978F32107261FC8492FB8DA91DB4C60E02FB7EA1A9FE0F40D044A3DA7ED1F3C5DE409EBF4DC80F';
wwv_flow_imp.g_varchar2_table(63) := 'CB1F2200BE8F2C3F79BE5F5C612046F643DCF5208C5B1FA00D5F6075F006781007A250322425403BE09D91804043A5438C0C711006DFE9CBF03B0309819828C4EB52892122E3D803C084FC5E81694CFC9C28E79F5AD58D9F09BE5367FB5D893891884AC6';
wwv_flow_imp.g_varchar2_table(64) := '4F4A5174AF7FDA2EDB190040D81F8CDF6BFD539D5707E638A760C363B1E9C37300D8F488DDF2F129E997D18E7BC71817192212D4633BF2FC87AD71F034327EBC908CBF10D47B5C40183D217F30FEAE220000C1853D84FC6EFC0BBDFE27D2DCFB76E9B73C';
wwv_flow_imp.g_varchar2_table(65) := '66D7C5B0692F7F2C4B86F908940EE3B4639F84E42DD2A115BA22278B9C59E227499FBD29682AE38F6CFF4E0D83A7D7425518F7FE0D7818C83EC97E69F7A59B2F1ABFEAFC32FE454A5652F8DF29DB794FC6DF1F51EE5323565CF49146385B382F3900DCE7';
wwv_flow_imp.g_varchar2_table(66) := 'C5F999D78E84BA26F7A89E0C6B2C526962FB1EFE4FECA0A9307361FCE4E8E4898C86C6C88B1E465EF44A76D9855812084034B9926F2CAF0FFB9CBDB8B29D634FDDFBAFF21669341053AB202ECA8E3E070C306EBEA804C4D900AE7F40A4E7E22BF55A70EC';
wwv_flow_imp.g_varchar2_table(67) := '215E0F5A333F1FAAC050EA9B79BECFB9F3011E107E5EEA53E8CF6B42B6E2F9392F679D929DB7C9FD395F65EB0C8ADEEB1F737E48BF1B75F4DDF2FACD01E09607F0A64F8F221FCA7D7810BC0944DF7E83B07FE21100E166A3AA7220DE8C4B8CB9F0D4F5F1';
wwv_flow_imp.g_varchar2_table(68) := '1E528FE1556096F979E1F92105D3DEFC5BD4E96FFAF91EEA79ABEDB9AB8AC3C55213BDC39812B9F18519FD54145485415E3D77DDC5616BEACD56D1F877F0FAE5994FEC95C047834B7CB4F9049111FA0B955F31FE934B427F917E183F951AE6FC91F767CF';
wwv_flow_imp.g_varchar2_table(69) := 'D3B6013907802D5DA95974F78E3E3CBF6BFB2190D08C4FEDB0390A61BF883FCA80E49F5EE3B758DF47375EF21A329EFFA2A392520CFB23D3AF76D1CC877B044B31B674A83FF93329E7E289F5F23FFBBFC5894A450D4C45724DB585FE0AD4960080476354';
wwv_flow_imp.g_varchar2_table(70) := '616A10B19AE64BEA86D7F7A124DE7084CC586904E917C64F6A76DA2EDAC9A5F27ED201377EC27E8C7F253ACB01E01657C963D50164597F26C5682474C6F869196D8CEDB01500208498D49CBDC63F2BD800718F0F860CD2512F2149438EF123F8C1EBF810';
wwv_flow_imp.g_varchar2_table(71) := '0F2793960FE4B62FAC5B9CC63B7FEAAAD82AFB07384E9460F1FAD20E4861E9E5C220B58E022C07E48AC43D48B4A9F17BCE8FE7F7B05F93865C7C1542FFF30EAC3F79BFA235085B19BF06ABACDB727CE70725BC601E01DCD791CDBC6E96F587F1F7BCBF2C';
wwv_flow_imp.g_varchar2_table(72) := 'F698BC7F6F07B26F6C472DFAC65553A689853C959C1F59281362A81747E9286C32E49F8793C1F861913525660B1FEA89FF8974A6A26FE741DD875A50435530FEC35DC27E797FD87FEAFF2800F1FAACE99222314A7CB5B60CCF4FCE8FE727EF3F6F2BFC87';
wwv_flow_imp.g_varchar2_table(73) := 'F8539446D56651EA5B25FD1EE290E600B085A39E05005F018594B482A1D3273E56DEDF1887A111A4048004FD1F5285E1F92FBC5554BA71E4A378FFAE8793C1F34716790B9FE739FC09CD1B8CB314250CD250158442DC44FCC1FA53058010E4DCB9D77781';
wwv_flow_imp.g_varchar2_table(74) := '0F282BD22F86FE945C915D43C49EE2F92FE5F955A181F1571AE7617F3A36ED618F660E005B38FE1100620799727EDA46F1F89A160310D03E1A6BFD6AE32D865D7032FAF30E0D23CAFDB9C8609109FB35AF4F61FF4B0EF5D73995311DD08C7E3509491F10';
wwv_flow_imp.g_varchar2_table(75) := '8D9F7C7FD1664DFF406AFCA1A38FC9C5DA641C42FFA94A8918BF0BB0BA453B6917EDF412CFAF5E7F3AFFC4F807A1CF3A6F760B8FC901603B0799CA92878F907E8C84C6E031FEC3E6D0893F000172895A3F5D7D3483F48765D787AB55B4ECF251E5FC12FF';
wwv_flow_imp.g_varchar2_table(76) := '44E38F032B720058EF64AAE14A393F5E5FF2E070F34E4BD87F550116C6AF90DF879E85B1E4E805989244830F02A2CB6E629EF3770ACEF80300787F8C9F488E094CF15CADF74EEFFF513900DCF33116E9AC3C13F2884E31CD8893E73F6C0DEDA031F6765F';
wwv_flow_imp.g_varchar2_table(77) := '4A82087D9CF41B41F8A1164333AE5BCC23A51E5B787EFF0B5B548FDDF321BBB7975FCCEE636392262563F847BBE4FC8A003CE727ECA7FC5A5657663A6B90F97D7410A58B4C45FA313380A62BCAB1671DB1FE676D34FFE268466335F7C4BD09F7F6016FF0';
wwv_flow_imp.g_varchar2_table(78) := 'C23900DCE0A0ADFB146C5233EDC3A0C8324ABFB11D3446B6EF00A0DBDE8EBCBF483FFAF865FCCC84D364D868FC52FE31DDC75B7857E6D5E5E1FFF29989253E7E1BBDBE068968AA3092608CFF784FDE9F921F849F775A92F3FBB051117EBEBBD097952C06';
wwv_flow_imp.g_varchar2_table(79) := '8EB28710D20FCF4FE87FEAA41F864F1A1022B561C1E72EDE674FFFBAD7E3558FCB01E03647EF0BCF8DB966DC02CBCA27BCBFE7FD010020FE480560FD19FC41DE8F3084954F0C8738696B4414000089441F39C6EFE1649A4B6A8146FEB562FC0ABCC23872';
wwv_flow_imp.g_varchar2_table(80) := '2DEBF0521F4B53E80CDCC1FB9B1DEDCDEC9849CA1EF66BC007E55727FC7C8C5800001F8786F12F4A7E74585E78D89F28ECBF24FC2F7AC30F63D798C980D8270E167D8CE72907807BB29C28FC01007CEF7B756CBB35CA7D43F7FA183FB3E2D1FEBBF72F98';
wwv_flow_imp.g_varchar2_table(81) := '4DE7E4F578FF929D76AA767259B5D30E8B21A2E7473AAA89BE2AF5F998CA1C00AE38875945A0762884525F9D966019FFE12E1180483FB800C27EEAFCC87B396F71C4384C3F913FF304350C75EE8B46DBBDC4CEDA897DBC0CA1FFA5E4D8977DF81B556722';
wwv_flow_imp.g_varchar2_table(82) := '507BEFE62304EA1C00EE0900A279D224C2CAE7DDFAC8F67708F70500D4FD9B35EAFD332B95E4FD4753FAC295F79FB6ABF6E1825DF0CC8823E7470F40C7582C232DDEF863BCB0EEF1B07EF1A5B3128828FB8D9B9261FB3DECDF333BDE130850EAD3187549';
wwv_flow_imp.g_varchar2_table(83) := 'AEE9E8D3082F01004CBF97FA7C40EA3C5D3AC20E01C2FE93CBC43E5E28E7C7FB4739367317B2A45F0E005BB8221EE8CB13FE00002000494441549B1290DC9FED302C803C6C0EECA009E137B4BD068080F1D34516597F1A7CE80F671124E13F11001C40D9';
wwv_flow_imp.g_varchar2_table(84) := 'A5A3B1694435E4DCF8AFCC67336E3F6BFCDA92AC5660BCFEEB83050038DB1FE605FAF4E0244CF10979BF0300E13FC61F760B60FC0C5525ECFF78C14D0080F1230282A08DFC8CDED22374FDE100E611C03D0093AF840E6BA2580481D73F6AF5EDC8418028';
wwv_flow_imp.g_varchar2_table(85) := '402BA29C6126F46772EFB86CED41D92EFA5A0871D6AED8699BF9F08B61113E7FDFE7D3E661FF9700C0093F1F1A1A670198B51A8987FE78FFD7FB00C0DCA70833E403CFEF849F9F3795FA7CFB70A8F56BB087947ED1F8D921707A2900A0D1876880998BF4';
wwv_flow_imp.g_varchar2_table(86) := '00A8B5378E3B5FEC127868D96F4E02DE83B1AFBEA4F6C18BFD279444F1B7DF18D8ABDD9E1DB706B68FF7DFD1C458F27E35F990E3D3235EB5B38E6E107F748EC1FA6B31842E2A2ED11C00AE3E91D1E8547255FF3FC34019137EB09B04D24FC6EF63C1EA62';
wwv_flow_imp.g_varchar2_table(87) := 'FBB5716991F367579343FC4DC35214B60AC3F89FB6133BBD4CEC84DC3F30FFEEF98754703463314E772612E17D4589F66303813C02B8035058EDF48BC6CF6C3876C013FEBFDA1D7814000040FC413621F841EDC7F69736AC7FA7661F2FAB76D6AD7ADEEF';
wwv_flow_imp.g_varchar2_table(88) := 'A1FF989D708BB5DC29B37D07EFFB39BE84A6F706B6BF9E78CE7FB897D8F13EDE3FB1C316B57E6D4D76CFEF537CB43444E5BE50EA0BB57EDF2D486FFF84D5E2CC0E4CECFD59C1DE9FCBF829F9D18CA52942A1090BEF1FB606F17E88DCE0031CC443DFFF63';
wwv_flow_imp.g_varchar2_table(89) := '39F63900DCF24C64D9662DB0D005C56C38DF07EFF9FFD05EED2A0580F927FC27E4A4D167E0AC3F0B2120FD6AF6FEB2E60B227C2B4C1810A9A19DCBB3E11F6F5679CB037AC3A74792CD077950EAABC9F8F1FCC7FB89E7FD84FFCC04A4E9C74B7D21E75F18';
wwv_flow_imp.g_varchar2_table(90) := 'BF0040C45F5C391E178848E9777291D8BB530080BC5FCB5608FB99B8144788F9BAB0D0F50900C41D0DBE7485F3F888402007801B5E70F1694BAC7398EFA7869FB17BFF565D04E0516BE004A097FD2A332B14B93054F367F73B61FFFB8B9A7DB8ACB90680';
wwv_flow_imp.g_varchar2_table(91) := '419F74F771C15047CEFEBDDCF817276DD167B1D81604DBEF617F2BB1C33DB357FB89DFD89C4C4AE06CBF8FF0C2556B9BB0CB7B33537C67AC198FEDBDC340FAB5D91950B01FCE0AF6F15C835719FA8161FBF050F639946756658F233B01A8EE242C1AA55D';
wwv_flow_imp.g_varchar2_table(92) := '9BC1ADD2704422F731A4033900DC1600322100ABF8508EB1FE59C63FB45DCA7E8D81F7FA530A8CCC3F570665BF2EAC7F1FC14FD58DFFE4B2E6C41F63BFA274F4315C28B73C4CF7F6748C092FABC61E6D0EC6F8BDC6BF97D8D1AE40809FA902D4AA739FBE';
wwv_flow_imp.g_varchar2_table(93) := 'EC617FE8E58FC69F4EF5F1819EF2FCEC0DC0F3B337E0E385F27E4080D09FE61FC67E31724D7A0F2D07A59B937B0685F245D3167D1CB46F6B0A9052858596E3DE0ECFB52F9C03C0B587E8CB0FF011CE2EF2108B0CF1572FCBF363F810805401C8FDC5FC53';
wwv_flow_imp.g_varchar2_table(94) := '66221FA4379CB21F32DF9A9DF6AA5EFB47F8032188A7F0AC74CD1DF5B7FC184FF6E91E762722FCE4F50B7618C27ECFF97755EF672F002BC234BC33107E41DBAFD65E4D14F50D3E087D7C58E8DCD7869F5E24F6FE3CB18FE7108005EFF347FBAF7E0C9565';
wwv_flow_imp.g_varchar2_table(95) := '39AFE83A7C4CB80F7655A4C7BF32C7E1C3852602D1BE1D177FC451600F79F07300B8E5D18F00E09A7F424067FE51FC0DECA8D9F7F01F00A00310EFCF2830ADF042DAAB35D0EC8287F8E39EF01FF20FC14F3ED7E3CB2727ADF59734E917E33FDA4FECD849';
wwv_flow_imp.g_varchar2_table(96) := 'BFC42380ACF1337959ABB917FDFC51DBEFE17F28FBD1E1C7F660468553EEC3F3BF3B050050FCB15B91BC5FB93DE7C897B9549818ACB98E547918F1C6EFC016949C3F9C57ECE3A5468269729324C20F1D05E40070070020024A8D23CC8A6B5695F7BFDAED';
wwv_flow_imp.g_varchar2_table(97) := 'DA61B3EFDD7F34017101F2359E321C82BA3FC65F73C3672B2C60D00D9B61B51A2AFF4AB98F2B469C49E197F8A86FBC3F06FFEAA0A0D0DFBDBF5682D5C33E8538C64B8D3DF2F6E4FFB1E62FB1CFCC86C3B032CC3706B13158C41F40403A10F37EDE9B3639';
wwv_flow_imp.g_varchar2_table(98) := '314350939C0F9BF2FEADDAD445609C47BA020100949DEC6C589D0DE0515EB694B4C5D39E03C02D0F760CD135E8533BE19AF591BD6A76EDCD3E00A008809C908B2586FE30FF17D4FDDDFBD7ECB2A7D0BF3FD64EF87CACD7F289599D718886A25A61E30FC6';
wwv_flow_imp.g_varchar2_table(99) := '5FB0FDDDC45EE3FD0FC8FB4903B40A0C4290190B3C3EAEE78E0020E31700F84CBF31BDFD3317FB10FA63FCA7EC0C3C87F853EDDFF3FEB116ACC8F36B50288B420E5ADAE580F787EC25DAA0FC4767E00F67657B7FA1812EB1A39328208E717BA876EE1C00';
wwv_flow_imp.g_varchar2_table(100) := '6E0D00A1D5D4F37F509F9D7E94FD0400C7CDBEF301CEFC17F0FE450FFD2F7AF2FCA79D9A8300DE5FA53FAD88FAD27AAC5BBEE527F7F4D859E9E29AD05403E9B7439DBF89B1CBEB1FEF179CED77CFEFB57E94809AF1AF605DDD7C94F83CEF0F00E04A3FDF';
wwv_flow_imp.g_varchar2_table(101) := 'E23373D28F0D4184FE271716B4FEE8FD133B6F2F7B7FE60560FCBECBA139B1A35D341F4A0168F0720098987707BE3F2F7B04E0B31CE36460AA022115C801E00E2ECB87EA05E0A2C4F819F851AF0400D8EBDADBBD8EA700E4FF9486A0AB87132E8085E73F';
wwv_flow_imp.g_varchar2_table(102) := '69D783F0A7921AFF2723BDEFE0D83CC59748A3FEF00D001A577EB105D88DDF8DBEE0C6AFD09F861FED02C4F8D9184C7416437E6AFCAB29C02C1DE889F1CF7D47E0C9250000EBAF1BC60FF1E7ACFF34108F152D07F5D0BFB5000011809A1CCC63E91120FF';
wwv_flow_imp.g_varchar2_table(103) := 'E716A70323F48A5B81B27D03BEF2718B5F79047083839D15FF90BCC12AC32E574A1311803B2102D8EBDA41B3EF7300D0FDCF2DF6FAE3F9EBEEFD3F0600A00BD06BC43ED577CB57C10D8EC17D3F257A7D95586470183F793FC6BF532FB8C8E7F561D1DE1C';
wwv_flow_imp.g_varchar2_table(104) := '090008FBF7A3F15761E6756EA8F53BC117443E0E00E1671FE93D99FB32D07617E30F61FF8539EB0F10D0F3CFBAF5DE506A3FC27F8D14130010FA33CDF99808208E770B1384D936C49A3686849E5E96EDD45783D1F0A5F90EE97210381FFE0F7D24F77D7C';
wwv_flow_imp.g_varchar2_table(105) := '536E255F0FBED9A15EEAC4F37074A1FCC3FB372A34FB0CEC78B76BAFF77AB6BF33B47A7592E6FFBD9188BFD376DDA5BF31028014245FCCCB7E3A1F4B2BBE020068630FA45FC1F37E18FFB7C70100F60AAEF26BD535EB4F8D566AEE51B4BF68EDCD36FA30';
wwv_flow_imp.g_varchar2_table(106) := 'D197355EBDFEDCCEBB78FDB97DBC10F1F7E15CD25FF27E587FCD62D07B5B02005FE32600000C18EECAC8779C02E9064A410C9E76E193369100BA0FFA3C342958E22025297ACFDBFBCA23800D8FF52A0068CE3FF3FCF0FE136BD686B6571FD8D16EDF8E5B';
wwv_flow_imp.g_varchar2_table(107) := '3DDBAB0F7D0C38E1EB04E1CF901E7F043F753BEDD6EDA45D731930F93F1741DEDB1FDA9DC3818EE3BBDDF357D8F05BB0BD06DEBFE08C3FDEFFCDA1A281563D71C69F748BE32DE3170090E72BFF5FB0FEE8FC45FC51EF9FBBD807A38F37F27EBCBF7BFEB1';
wwv_flow_imp.g_varchar2_table(108) := '96ABBA2C3B6C1F7602B03ED34AB7E6D48E5A00001120D781A4E0147387138D0A27FF6743105C00E940BB5FF6A941E371D1C5447CE97D6FEF2B07800D8F7514E780D7A0B597FED0FDFBC82FEAFD434F01C8FD0F1B03AF082012D1986FE9FE31FCD376CD53';
wwv_flow_imp.g_varchar2_table(109) := '00BEA702C010506FF5DD7208B8E1C7BFF78767C9CF38C4B3E473FCE4F93DEFDF23EF2F3A00BC3E24FC870F4852CF1F9B7B14EA2F1B7DACFB6B7BEFCC98EBE7DEDFEBFD737B7F46E86FF6E182693F488061FDD5CD17B44241F3AFE5A15A23C6FE003800CA';
wwv_flow_imp.g_varchar2_table(110) := '80DAEDC8CF8DDAD88940727C3605B1C015C3FFE15CC35E2EC2AC074F0342D93707805B5C62DB2001B34D39A9F777F26F6CADDA200000BA7F548094FF14FECFC2B8AFF600DD3FC60FF9A74A40BB5F717230AEA97AA95140CA8487BC9FE3E0B5FE0AC65DB0';
wwv_flow_imp.g_varchar2_table(111) := '56438C3F79FFEB032280A2C43EBB2A077ACE1FA7F964FBF9C320CF0520A8BF1FB14FB73FB38BCEDC4ED1F99F99BD3F8FECBF72FF2E829F095E59D159B6224133916F10AE6A692869804701AE0750DB375A00FE6E7F94F8887000E0DD69CD75010C7BA124';
wwv_flow_imp.g_varchar2_table(112) := '48DF471415E500F0C40000EF8FF69FB15FF2FE087F86B6BF3370EDBF87813EE79FB6DF4AA800D41C04CE7BD4FFABD6710250B5FF6DE780B738DC77FED46C294C6DBD89B3F8187F73A7E04ABFE383A2BD3D2AD8DBA3921B3F9E1FE347E30FEB4E04A5725F';
wwv_flow_imp.g_varchar2_table(113) := '76A0C782F98F137E08FD3B83B99DB76781F19FDB07BCFF85792AE0C4DF8015DF0C6C91F1C73264D4ECA0EA64CD9B9703EB53DB6F280DA01C78B48B186CECFA0F5211D6B5D30B00007C0F009C710D68FEE36054B43111406823CE53801B5E5ADB8E0062E9';
wwv_flow_imp.g_varchar2_table(114) := '8FF01FF5DF6E1DD1CF020050FFE10118FAC1C41F497F51FDE1F965FCA801C9FF01008F00B64C02DDF050DFCBD3B200E0C64F834F4DC6BFEF325FF2FD927D1588BFFD66C1477D21F4A1D64FB94F8B3B16E21E2FFB85D25F769B0F793F9EFFC33961BF42FF';
wwv_flow_imp.g_varchar2_table(115) := '93732281C42E3AE69E1FE36716437C5FAB253A499105020D5FF04A04A072E09BFDA19382280491880338D4FF1D004E6AF6FD199120D2E0B29703E3DF2102D8E657CE016C78B4B3290000400440F80F0060FC787EAA00740136AB631FF889FA0FEFDF1920';
wwv_flow_imp.g_varchar2_table(116) := 'F84103507715207C00EA3F260123087116D82FE297F9150DAD44B92F84FD6EFC4D8C9F9C1FC6BF685F1D93F717ADB513C27EDFD41B067A60EC3102F034600100487D7D8FDF646EBD01A4DFDCDE9DCEEDFB8F0200547F183F3D00C389B4FE5ADF1DC68B5F';
wwv_flow_imp.g_varchar2_table(117) := '715AB46F6066F50AA3C5950260F86F0F47F67A8F6E5052C0A98D2907F6191F56B6EF4E6BF6EE548D5F340AD1FB119BBFB69DFEE500B0A1ADAD0240B538B59DCAC89A75C2FEBE1D34FA5E0568ED8C94FF17E6DEF68BB15FF669F5A5DFBF6A17FD9AA4BFA3';
wwv_flow_imp.g_varchar2_table(118) := 'B20D47B0C03EE86B2D0058AA9167DEFF75D0715568B9ED0BEEBAC3ADBC1F36BFE006BE87E7DF2B79DEFF2A93FBEFEF166C870DCAE9349FC8EE2FB6F7A8DCA79FF1FEF4F723F525F747EA4BC9EFFB9399BDFB08E9473AA0BE7F4A7E9AC2149A04BF30D633';
wwv_flow_imp.g_varchar2_table(119) := '466DF5B23401787F00E0AB83A1BD39D0FC47FA43201DBB437607040038A3FB5323DFE3D05788C66D9F8F1C00AEBB2257FE1D00D089D238A96A69ECE29F565DC67FD8E885EE3FF2FFA90B58A4FEABB9D123010600880410FF44EDBF9A7FF4BAD77D454F19';
wwv_flow_imp.g_varchar2_table(120) := '8160E919E187D57265FA9A414EEB3F67A4B5D7FDCD6DFCBB0F52F5721FC6AF52DFD17EC95EE3F98FB9A70250F44A001A7F52045FDB956EED91C1C71420AAFF98EBE76A3FDFE433B77677E60CFFC773228099FD80F7BF90FEBF87F71F93F75FFF893DE198';
wwv_flow_imp.g_varchar2_table(121) := '49A444A9176F8F14F8782F00C0BEF63F200F77227098D869070EA0EA1C008B5F0400252F15C66B60596876FDFBB8CD237200D8F0E8694887067352FF67F24FB3C2665F5A7F7B7E230260F537E41017757FCCB45FC2FE00007D987F01C080997F936238F9';
wwv_flow_imp.g_varchar2_table(122) := '6B2E8FF0E1A08B2FF7ECABEE3D7B15AD3E383C7FDBDEE64B877AB1BA8BBC3EB1FD5D85FCAF0F4AF6F6A8686F8F4B1EF6EF36D5FD87F1CBFB47826F1101A400E02DBE5ADFEDD37D8673BBE8CE24F63997E0E7FDD9CCCB7E9EF7F72DCCF68BC33ABE7C3EE2';
wwv_flow_imp.g_varchar2_table(123) := '500FDE3BE79A26A028087A7B30346E00001C11676C30A63390D6E0AABD0B1100C35FD34A401082E500B0A151C6876F83045C0000C325263EFCA311C53FCDAE1D35BB9EFF331148EDBFA8C82A76D6ABDBB9DF96C9BF98FFC7B15FEB18A5935161F27014CA';
wwv_flow_imp.g_varchar2_table(124) := '4482EA730B28A27E01E4D0200ADDFBF72BBB066E78F86FF4B438C9D73D7FA960F55A62AD06E53D443E2527FDDCFB1F16BDCB8F0620F7FC91F14F4B7C8A0462C81FF5FE78FFC964E6033EBAFDB99D5ECEECFDE9DC7E38130188E73F6BB3E547C63F1A93FB';
wwv_flow_imp.g_varchar2_table(125) := '67C0F50B947C3C769C0B884808BF580A7C7B3072229005B028448954E822A41BF087B38ABD3F17078042904A0044A02F10E59641F3FBAE08E411C08697ED2A0010FEBBFA6FA767C70040ABEB1100E51FEAC46CFA85003CEDEE04F24F29009C00F97FBAF0';
wwv_flow_imp.g_varchar2_table(126) := '239D2C74F51B4A475E07E6594D311A678D44969F61909D990E25ABF84A3EF3D6D5702A69A13AE322E7860C967B915D0BC6DB838A70F5AD034A1B1EC6F4E1F1735518EAB183CAAF68077B787F3C7FC8FDA9F7EF4B0158AD2661A24F1CECA1925FDCDA9B05';
wwv_flow_imp.g_varchar2_table(127) := '00CDF387819F85E93E73FB783673D2EFFB132200F27EF101FD0152DFC5B1886FF04B9FDD01D44B84CC000400680C1ADB51932AC0C85E1F8CECB041299011F033270211037DB88C00C03428148102006F0F0E20904DD16E7A6CD7795E0E00EB1CA5CC63B2';
wwv_flow_imp.g_varchar2_table(128) := '00E0F2DF2AC33E86760000B43A0100868EFA94A6A8007486550700C43FA401E4FF887F1809467B70EC09CF1ADDEADBF20A81E7C8AA77531F27C2A895196F4D2392C661E3492300840D026A840D32564DA825CFA5B34D5E8F9C978B73E69EEFEAE114F705';
wwv_flow_imp.g_varchar2_table(129) := '029AA4CBB82E7AFA8B76BC5FB257787D6E47254F0310FF90F713FA03AA4BDB7A43896F31D86341FAA9C71FB5DFCCBD3FC64EC8FFBBF733FBEE84BC9F797FE4E62AF9391086E8683300D048309502D510F4667F6CAFF7B4FD996630F8A2C98C2943252F05';
wwv_flow_imp.g_varchar2_table(130) := 'FADAB78EC440B1121057BF6587C1DCD7715F3807FB6FBFFDED2FFEEF8666B0F1C3EF3B92F137B4CD1480BF572D8B00DCADA1FAEBDBAB56DB41803220FDFF78650CBC3D44F90700EC780A4004C0305001405CFA11670B7EFED86AD330C63FF72DB7B52A17';
wwv_flow_imp.g_varchar2_table(131) := 'DDCC76D0BF973515D741003D7901F397417B876100001A5A6869A5FB0D528AE117DEE81242DFD89ABA8D81245158532E31CC3378FDE3721AFABF3E221510E9A77A7FE24A3FD7F547996F1600E22E3FCFFBC3604F37FE996BFD09FFDF9DCCECF71FE6F6EE';
wwv_flow_imp.g_varchar2_table(132) := 'E3DC43FF6E10FB38002AA848F995EB8C6F11012C00C089C0D6D85EED9202200BD61E082A0110919D61D14EDB652F0792020000BE00C63B034314305D98CB75EF61634B5C79421E016C78046304100180EEBF561DE96FCF5EEF76EC55ABE3822034E22800';
wwv_flow_imp.g_varchar2_table(133) := '01004A7F27ED869D040020022005184E74C2B53E3AB483AEBC9F48F091F3E2F9C935EBD5B9AFB44283CE4A6BEEF95DB92CF59CA20042539105BC363306D853CFD24AC828C65A61FC74BA45F24B20A08E37DA58538EE02AD271C3E3B6CA438AF44BFCFD12';
wwv_flow_imp.g_varchar2_table(134) := 'D6EF378BF6F655D97EF4AA625F859C9F6860BF15483FFF6CEABE542B6FD0F947008864A0AFEF26EF57C90FE3A7CDF7AC3DB38F170080EAFE3F9CCAFB1301C57468B50FE1BA8FA8B44AE78DC844EBDF2102C7F66A6FE437D480F4044012424852F2F3A6A0';
wwv_flow_imp.g_varchar2_table(135) := 'B68684B203C289C0614803C2EAF7A836CC01E0BAB390F9F76D45005E060C1140C315802AFFBDDE6D3B0020054601582868EDD765BF6E1F0080363C40CD2B005DEAFFE3924D66714E7CF4D7CB1F580D3168DCD5E2EACD274CA1C1F81B74A201024401A404';
wwv_flow_imp.g_varchar2_table(136) := '6634CE148BE8093200401430D3204A2200A6D9E2FDBB7DFADC05021E09783A0048881BE0E65B71831826DBA2BB4948B7AA5B88C68FE7AF05992F9EFEEBD715FBA3376567FCE1000E768B2EF325BA49D775A786BE58E2A1A9BE810464AAEF64E625BFFE00';
wwv_flow_imp.g_varchar2_table(137) := 'CF3FB3F3CB997DB898D987330C5F24209500043FA443BE733194FD36313811A93A123A37536F05860778B52B10200568D5273E2A8EF748FB2FA53FA20046859F03026C801E94AC37D22628F5056C67055C1E016C00303C340EEC5800C0D03DFE51A3676F';
wwv_flow_imp.g_varchar2_table(138) := '762FEDD56E0400567FB1D2BB64173D01C0C7F68E9DD3FD87027058D1C99EA1005C906FD1B0A2C7F4411884FD3E7F0EC9A904277B187F136FC36EFB692644362B10059002F8D50C73A00800AE01D2914515187B6FA05E77808028A03B50EB2B2981E7C5E3';
wwv_flow_imp.g_varchar2_table(139) := '408C01048BFD19A97E60DD439705000FFB0B8937F9D4AB456B32CFAFA572DF8F5E57EC476F94021CEEAAE4C7AC7F9481D9B55D310520EF8F137E9C030829C07832F30EBF0EC6DFA1CC37758FFFFE544070EA65BFB97FD618E9AC93F35FC5CB3809688A00';
wwv_flow_imp.g_varchar2_table(140) := '00008C1D4520290037DA835B41124E256030060088026204001068053C7A002F0B4FA5075645E77A5DC8BAE7E1AAC7E500B0E1D1BB0A0060FD0F1902BADBF6284011805A808713CDFF7B0F005C36ECAC1722802115805258FAB958FBB504003E78422BAC';
wwv_flow_imp.g_varchar2_table(141) := 'D86643D8BFBB33B33D377C18E7991D3466B6DB9CDB0E29402971E32F143E0500A611F1DE011C27029D040CA98047030861E85B379F7E8377243F66363E4040471CD5034A865140B4EEA1CB0280C67A25DEDBEFE53E48BF038CBE6C5FBD2AD9DBE3B21DA7';
wwv_flow_imp.g_varchar2_table(142) := '79BFBC3F4610557DD9915E5900580CF7C4FBCFACCB68AFF6D44E09FB9DF99FB9F73FBD9CDB25C60FEB7F85E067A3082090AB1100107EA10580083C8607F0080091D8383485D1826C4EFA91062C400095A8D2007800403A078075AFAE8748014277182460';
wwv_flow_imp.g_varchar2_table(143) := 'B34A04C0DEBF9EBDDDBBCCA40078240100F5FFF79744008D34054004C400D0E9FCEA01A031DCC6FB93F77BCB297DE70D19FF414B00B04F04B083F751F85F480AEE610101B5B0FA385CFF9E8D95EC23A4CEECE540388189165BE2FDE980A32F1E510CB7CB';
wwv_flow_imp.g_varchar2_table(144) := 'AE74F1784A42EA98126C3AB03402801666C2E46BA4D7E1AE0C1ECF0F00C0FC1F1D149D0F88A41F654E0060B1AA7BD1D9E7001074001AF705F137F3D01FC10FC6FFFE6CEAC6FFDD07147F33377E97FA86929F4F0B0A4E7613E3574C12CA80CC842402A830';
wwv_flow_imp.g_varchar2_table(145) := '115AFB018E77479A10E42900643129A1A60FB11BC001A057F635F070012C88D18420ED84CC01E0B102802F7390661B19B034007DA5007B974E04120150165A05800F1E01D4BD041801009DC055419E5F9861EE3C00900DFD19407980F76F0108440573DF';
wwv_flow_imp.g_varchar2_table(146) := '8C8386DE23000C1E10000CFCFB420A061110F80084AF44043E126BA899F70CBF4426CB020CB4F110650E020349692308AC96CBAE3B5D122CC9F86B55BCBFF2FC3F7E5BB13F7E5B0DEDBDA520F3558400F879934F98E2AB56DE6500883A7F7E8FDA6F349A';
wwv_flow_imp.g_varchar2_table(147) := '59A73FB333043FE7537B7F3A75E3FFEEA33800CA817C862884DA14CCB29FF34A00085D81AC82F319818D91B576D416CC70103807947F0882C8FF91069302A81250F2356238861C00AEBBA2AEF8F7AD9080D7000069004AC02AF3E0ACA808A04B04D0741E';
wwv_flow_imp.g_varchar2_table(148) := 'C049C0C17A00C047F4FCDFCB7E7385973B21F76F8534A0A508805DF78869540508118013810527231D081C10F8594A21710F4A094807BAC3C4DA5D4502440000C07997B6599A64643CAA996BDA6DD4CB5FE539577BFBF99395B2843C8D7AD10E5AF2FEFF';
wwv_flow_imp.g_varchar2_table(149) := 'E5ABAA83C0EBA368FC05AB57128F66F40E577BF957002074FE51EFF7D01FEF1F187FBC3F61FFBB93A9FD70421950EBBE22E1771BE3FF2402282A02688408E0A835F2C62022803D2200DF0B11228061D12EBADC540A440F405AD0A1398C72600E0037B0FE';
wwv_flow_imp.g_varchar2_table(150) := '6DE900AE8B00F6DA9A03580E0030FE1400D801D01B8521209F8B00C21516FBCD3D0DA8C5251421FFF754606E7B4D95036B15D5CA4B0108A2D17F0E004433456E20B1F1187D009B6CC505900EF8ED923E79726778023CACB9AE3E4A663F07009072BC0757';
wwv_flow_imp.g_varchar2_table(151) := '2D9612AB570AD66C10E2973CF7FFFA55D98DFF476FAAAEF34709C8D04FF40C697B6FDCDC1B64BE0BD2CF293F272508FD31FE4E6F6A179D45E8FFC3E9D47BFD3F9ECFECE45C5A00043FB735FC78752E4500613D18B300D91370D4CC00002BE1ABAC85D39E';
wwv_flow_imp.g_varchar2_table(152) := '00BA0289009001BB162094027300B899DDA7CF7A0C11C0EB0000AC899E13015C090055EB852120D3D9972740A86436F71CD353817406DDD40D9F340022B0D5200AD0445CC26758F66241DE1E00505AB09C1268C48DAA044E12BA58A810A201C6648B0B60';
wwv_flow_imp.g_varchar2_table(153) := '5C1665333C28E2193C6CA72F72307AD3D553479D9E1C2686FD74F8A9B7BF64C70765F7F85F1D8BF52712A0E4C7E41F0999621FAE467947D1CFA2BD7779B1078A3FF27E48BF93F3A97D70CF2FEF8FF1D3F77FD1D3EC3FC2FFBBFADA040062041001605109';
wwv_flow_imp.g_varchar2_table(154) := '500480162007805B9E99A70200D201680AD03A00A0BD83AA0620FD8D91802A020CA2C0EBCC7DFD350B310081E849CB258C2A931238088813707230F00400812ACF0C2FD5FA2BCA831E09000097EAA2433E0B10901AF407DAA24B2A900ECE08E7D0BDBFA7';
wwv_flow_imp.g_varchar2_table(155) := '3030F90AFBF75A453BDE2BDB9B5765FBFAB8626F5CF557B6E38392CFFB63CF1F73FC23EB9F1A7C26EFCF720071D807653FF27E8C9F9C9F9B87FDCEFACF9CC71087B1D0346C4AF87DA684A65E80CC82D075230000209B02C001B42101BD3538E7006E0405';
wwv_flow_imp.g_varchar2_table(156) := '8F19003E6438007400D79180F100E842850C0B7C402970021935201C001180034243ABB0B3400037B0D0060800C2168A157E408000C9C9020C570C8674C0BDFF251B7310D110666B9436BC009375F16C1083598110EFBDCC34DF2A5AFEA21DEEA1EF47EC';
wwv_flow_imp.g_varchar2_table(157) := '5371D1CFEBC3B2F7F7EF368B3E00242AFD22E9F7250020ECA7CD971B2BBDDA1D18FF897DFF51C6CFEDC3197DFFD204782933A81B23C176A38B2CF3A4D508E0731CC06E5D2940E400BA8881E0007A8103F0B90044007136400E00373A370F090028012903';
wwv_flow_imp.g_varchar2_table(158) := '9202300CD4A7C186140021106540AA0094047D0B7028037EAE0A903D001EA9B37E3CA6031083411B40FD9F88A0552712987B5990A880C5986CC6A59C06EB0EFB5EA234182280AB00C04B87940ABD7F007250CA403402A40367BE3527F4D35F081018AA49';
wwv_flow_imp.g_varchar2_table(159) := '3A002780A8267E09B0884498E65BB4835DB1FE5FBFAA38F147E9EF701FCF2FE38F1D8D3ED033DDDEBB3CD22B9B0248EB4F9B2FCB3CA776D686E89BDAEF3FE89E2880F09F72E06018D47E2B8D3E37BAC83E07009401CBA10CD8A01F802AC0C80E1A63DBA5';
wwv_flow_imp.g_varchar2_table(160) := '0AC0AAB04002A2FB5F44000882620A904700B73A275B0180D058A32110CB3A002F03EE759C0484037021D09893BBD001F830D02005761D0024E01A622FDF1710DA7C21C8F0968BC6205501880000006E072DF3FB56834EBB98125021082940900AA7BC40';
wwv_flow_imp.g_varchar2_table(161) := 'A80EC017081C0239E8D261F309B980001D754401B4D2120940AE79534D4F23B72227E0D2E5324D3C52FA45B10F86FFC75FA1F7AFD8FE6EC9F37E7A18A45C94BCF7130048798028FF95F16B93EFD427FC9C5CE0F527F6DD07EEA5FE03A0480D10DFAC738C';
wwv_flow_imp.g_varchar2_table(162) := '37BDF83EAF03D064E0E316BD009202AB25581C0400C0C250A50002004500791560D373B0F4F8AD01C0522F40D804D464155846091896814425202220CA8029000CD50C140740785FFC359F3EA603B18B4E63A9A30E9DA6203C3F0030B3C3D65CBBF25A5A';
wwv_flow_imp.g_varchar2_table(163) := '97E5918033EC1104222F1084420100222700102812503A40FE1C410083D7541DC26E116D12D80804F8E2EFE0D9777DB807A17FD98DFEEBD7087FAAF6EAA8ECDEDFD39360FC4B6DBE2BFBFB96B5006AF3ED51F2EB4C5CF0F3E16CE2613F2900A1FFC925C0';
wwv_flow_imp.g_varchar2_table(164) := 'A0DC3F46267791F7674FD15500A052ADE6021EA7BD00638F0E7C26C024093A802807AE3808A400403F40CE01DC0C071E1200BC19282304D23830948065EF0624FCA7231029B0F702846E4022007518EA335F07026204F4452440A88D5A0EC9ACC8C1B9AF';
wwv_flow_imp.g_varchar2_table(165) := 'C63EDA9DDBD11E404024205E807EFA1404A25A302A050319184B86F13E0A8620065D318864B84B6540C33598A9F7FE44B936C8A43E4D0000200049444154DA7B1EC36781F88BA1FF6B1FE55DB1AF5EC1F88BFC3BDC2BBB1A10CF2FA5A03E95CFF40B6980';
wwv_flow_imp.g_varchar2_table(166) := '34FF9F0EF924FC47F073D925CC9F78B84FD8FFEE94EF150D0048CCFF43B3004919A3A7758EEFBA575F1600567B01F0FEAFF6164AC01ACD618900A08D10C8A5C05A14EA1140BF1486C4E600B0EEF1FFE4710F050034030100888068064208C409C79BC66E';
wwv_flow_imp.g_varchar2_table(167) := '402280934EDD454117310508F300A4AABBBA1B70F543468560FCBD569485ADB915F504A009401F70B4377720201D801CA44A40488E5E80EA40C1DB86150190AE50B3F792612C1DA6A385623761E2F93491009A00DA6B11D8E079F1C2F001BD20B421B477';
wwv_flow_imp.g_varchar2_table(168) := 'D67F5F4C3F9E1FE387F83BDA97F7A713100EDD4B86B4F2787B6D3078FF7931E24BE3BE44FC31E567300074F0F813FBFE03DE5FC64FE84F039097298948C2324F6FACB9E3BD7B11003817ABDD8044006937604D1B821061FB9EC0D80BE02A40A500FC0E25';
wwv_flow_imp.g_varchar2_table(169) := '204B42F208E08610F01000C048F00800DE0E1CA4C002005A703511F86327000024200341860C04A1F5B3E09D7A0E00A401D7B8283795180284A6719E530A2DC3120C8908240D38D85534204E0010507FBD1383F4D7076DC02A0044C5A0548305B3305380';
wwv_flow_imp.g_varchar2_table(170) := '1C967662C440E4D884DB310D0004C8C7F1B85ADFCD741FD5F921FF00023CBF88BFA2A7091C230C5B4140C6E05700801900D4FBC9FD09FFBB7D42FD89FDEE07DD000052114008D5627F08502C97FD56177BDCF0324B9F969D07000050EB6720080D4084FF';
wwv_flow_imp.g_varchar2_table(171) := '9A08845C7CAC76E03983410BBE20C46701040EE0022970E8066444FC28EF06BCD9A9D93A0030129C9560B5811D347BF6BAD5B157BB5D0D04612370A289401D9F08C43AF01D27043D02C84E04F219F4D74F04BA2A1A482381300BD0D3810A654095048904';
wwv_flow_imp.g_varchar2_table(172) := 'E0028EF70004B3BD16D5019A71B4760BB1907BFED044140D5F3D04B19F400D460E023E5740F304C8B19D103C9F064E60EA242139F74E3D74FA1D4AF2FBD5AB8ABDC2F33703F15752F8EF13C842B7508C00B2958074AE7F86F567C4D745676AEF4F26F6EF';
wwv_flow_imp.g_varchar2_table(173) := 'DF8FED3FDE4DEC879389EBFF317EB88138E127CBAFDE65F8EFE94A3A135011C00E7D000100F0FEAFF759124B09501381B423B01056856B1680CF04E88A00F4F1E06374187933D08D10E06100404B41590AF2CA0782F4020020FDC4188AD6192DCF04F4A5';
wwv_flow_imp.g_varchar2_table(174) := '20FD8A76025009B821006452E7F478910E5021604210A420A5C10800C77BB62006776214101B8842E89F720201005C45B8E81FB0B92216068B505FBF089501CA83D1031325000094F960FFE100DCFBEF92F7E3F9F57A9A5710BF1629C02A000002CAFBA7';
wwv_flow_imp.g_varchar2_table(175) := 'EED991FC9E5D4EEDDDC789FDFBBBB1FDC7F71357FF5D76E805A0E61F88BFCCCBDFB5F17F0A007126A04682E1FDE3546000801220918E4F04EA2001D63C0000E0D201A0147644640140959FFBFCCAE7016C7874B3F300180A5A6724980F05ED2F8682EE68';
wwv_flow_imp.g_varchar2_table(176) := '282865BAE9BCE8E13EB9BF56822902D04EC0B28D03E2DF2402484D67C5CDA1BDE76F93EB030294038FF715051CED71CF524DB3864FDB89BD03570040CA094483F561831A3136934680E620BC2E6A3BC441D4DD01805AB5E8E5BF835D72FE9283C15EB3E4';
wwv_flow_imp.g_varchar2_table(177) := 'BF27EAE0EB3A002027C2F83DEC9FA03C84D99FDAF9E5C43E22FA3999DAEF7E18DB77EF275E92ECF4102505EF1FAA2AF76940574E05760D807603BEDE5719306E886223319D8018FFC9A5DA801D009805C096E010FEE310F289401B1A260FDF560410093B';
wwv_flow_imp.g_varchar2_table(178) := '0180B4004400EC04602EC0EECE409360434B707FC44C00168262FC5A0E123B02E320C84DF6025C7568D29EFBB8C53654070081D528E0D5BE2281DD067C001D7A84B00B235713916E22059502C46EC23868D4670AB86C38560798AF8F01925E14AC592F7A';
wwv_flow_imp.g_varchar2_table(179) := 'DB2F4A3F8CBFB143D94FAFA772C7E72380581274D26F1226FBF6201B21FB26F6C347E5FD1090FC4C13106548A4C9E4FE811EB9570F2A00106F43C726F5FE7D360339008CECCDC1D085407534005E01601848D137027DBC50F9CF8782F609FF190786F82A';
wwv_flow_imp.g_varchar2_table(180) := '0C894D2702DDC01036784A1E016C70B014F62D6F06AA85C5A03E16ACD9F5C940CC03F04190680112CA6765BB1C2C03409403FB6AE84D3703ADF19ED379FB65F3D2A09382EEFDCD5EEF9B470207ADC449419FBBE7FDF73278710201042200C4BE01375E0D';
wwv_flow_imp.g_varchar2_table(181) := '1B8D9D840001621B8D159BFB9E43FA0FF0F63B35DD307EBA014B25C02436407D01007CDE9EA4BEAEF6EBD3E937B50FA7887DC6F6FBF7E3A0F623F747920C4860FC12236D0300E24C018D87A323539B811001BDDD673760580CE284309F2371052023C1DF';
wwv_flow_imp.g_varchar2_table(182) := 'FB58F0B20F056907006041E8D25E80CC6E86354EF98D1E9203C086872DDD0D185783B119A8CA6A3095022103F7EB036B3006CA6BBF8976030EA400F4B1E02C09F54A40D906238D81F271DC5EDBDFF00D7DE6E171B1257C00C342C407C8F303021E05EC51';
wwv_flow_imp.g_varchar2_table(183) := '216022AF48415A7617A4E02202482B0599D9028B46220986BC81686836F00E41897B88022A95A2D5FC96F8F7AE444C678A7D0A005AE5ADF97E30FF34FA0C8653E5FD1753FBFE646CFFF94E37AA002E45EEC9FB932678635266C2CF1D1DCE2B8FB2CA8061';
wwv_flow_imp.g_varchar2_table(184) := '3760580ECA0C402200AD061BF980D0B81A8C990BE7DDA2BDBFA8DA0FE7155F0EEA8B4106451F11CF8426DF098093D982F13B8764F95E808D2C2EBB3DC7770396276139E8C09783B02094148006105F0955A0094595804BD683F70208B01D6858B1FE90E9';
wwv_flow_imp.g_varchar2_table(185) := 'C08B49B077B51E3C8EBA5A6804AE008183C4DE1C26CE0F900E78375EA1B0345558E1BFA202F2FFAC40280E1B892981C66C85088991DFA5A2958B487DD1FACBFB4780F95C0A9002C01C639EB9E087921FB93F793F9EFFDBEF46F61FEFC62EF821E5A00F41';
wwv_flow_imp.g_varchar2_table(186) := 'F3FD681F5E3E9DF70D008C2B6066430D00684C9DF567392800401AE0BB012B531F094E05E0CC770356ECDD594D00D04300C430500D666140CB36BF7200D8F068670180BDEFD5C003B4EA4882B52198686077276E8499DB645E347800F27E54814C05F2F5';
wwv_flow_imp.g_varchar2_table(187) := '60FD8A83802F088973E0D0FC6FF89EAEE404325E506A41A4C0107FD2031CED9ABD3E34FBFA38B13747891D34D53484D7F6A94281A5CF0280730029182C4F1B72D9701896E25B8E01120713DD624BB20084DBD51C401CF4199B7DFAD1FB5F2AF787F4FBB7';
wwv_flow_imp.g_varchar2_table(188) := 'EF467E4FD98F929F0F2C25F4BF83FD053739F48036E3DA290142003A00040E80DF55CA135F0AD21B15ECB45DB2EF4F6B5A0E1A7603220022FF8FDB816FF21E6EFA9C1C00363C722900605485A9D777230FC07460E603EE1301EC0C7D1C34B301672E0946';
wwv_flow_imp.g_varchar2_table(189) := 'E9A5B5E0220405022203351B4029C0DD0080877799FE0240808E3BD2013A05110691067CFD2AB1AF8E4807D8CE93D84E85B05D397C5404C6FE00A4CD0E00011CF83E360F1121E89D67C68FA5C34814554452F16A00D05812C2FFC536DFA9757B28FB2676';
wwv_flow_imp.g_varchar2_table(190) := '7246AD7F6CBF7B3FF6DAFF771F20FEA64EFA69E7A14E640C00EE0244AFBB346297261517741F8C033F0A0080F7470B803088481180EA0D0AF63100002BC20180B81E1C0088B326AFFBBB77F9EF39006C78341D00C27318F2582E91068C8D0D41BB210A60';
wwv_flow_imp.g_varchar2_table(191) := '35D8FE0ED3824756F569B0520452F6631808FD009404CFBB554502B4068F8B6EB0BEF576C3F7F4C58747AFC8887136F01205D4D42A7CB46FF6F628B1B78766C707E2027677B483CFD381A20CDCD58061C2B0A2804F09C285E12F868CC481A48B91649164';
wwv_flow_imp.g_varchar2_table(192) := 'BC2A020833F07DB107E53CE5FD17ED890FFAC0F8DF7D1CDB77DC020108F147DE1FE5D191F8BCCBC3F7A5D7A2DC4A830F22A0469D252D0280C35DE900980BC880906261EA514A0700B82C1BC6FF7D8800DABDB22F04A1470000B82B0E68DD639003C0BA47';
wwv_flow_imp.g_varchar2_table(193) := '2A3C2E0B009C7CE701621A501B7AFEBF5F672F3C91C0506DA045882935063111F8144D40075D80D2015860B60411C2DE39008448C0C1254401AE14DC594401AF0F127BB59F3808B088133E00D22E92820B2FBF48015639816C17E16A19713175E8CB0040';
wwv_flow_imp.g_varchar2_table(194) := 'F4C39C3F97FAFA7C3F467CC9F37FFF6164DF7D9CD8FB13D8FF89371F3106CC3BFD5235E1F552EA0D4FF7270FCF965BB599796E3B95990F0345F67BD4521A70B44BFE4F1BB07A0046135A938B0E00DF9D56EDDD69CD4E21007BD2FFA3FE9303B8ED3BDCEC';
wwv_flow_imp.g_varchar2_table(195) := 'F939006C76BC82B709C3B398D5579C59A538B51AB3016A920553063C6CF4EDA039F0DFE121487A475326BF56DDE84FDB750782D33655818A57031402DE71041000C0C1C5078A2815606C18A9805705F6137B1508C1D707052F0FC628A014A28074AA703A';
wwv_flow_imp.g_varchar2_table(196) := '617899145CED225C80C055F3073E1F0120FCA1CFFF92B0DF3BFD26F6EEC3C8437F2200BAFF5001C2FCA3F85B9D49789FC29F9856397B11F60112FA6B643B3D00327E8080EF5913E68361E6BC57C6AB110154DCFBC30120057605E02892C002803B8D00AF';
wwv_flow_imp.g_varchar2_table(197) := 'B9BE7300B80100C4A7E0AD59F6502ECCBCD4E37D01D5916F073E6C69590864A097030BCCE0972A90F09FCE408C5F1D82559F0517D5801BBEA56B1F9E5D7E11A5C2F401782AE07C8000E0ABE3C4BE3E2AD8D1BEF4016803440A66F3FAF8FD0A00A40B4916';
wwv_flow_imp.g_varchar2_table(198) := 'FF9EEE2488FB090239781507A0FD7EACEA0A137E20FD08FB4FC6F6DD0F23FBCFF763FBE1E3D8077FAAED58C29A6D87FDD9EA0AB5FFC5BE068C5F0080E70710A4004402ACE52A6800500062FC3F9C57BD04A8ADC01200390774D729600E00D7DAC7460FC8';
wwv_flow_imp.g_varchar2_table(199) := '4E96D1B28B999F64A90227D60400EA033BDE451ADCB5BDC6D076900597D8AF57B01EB2E01EDB820502DC9F75AA3E2310014DAC016FF4A6AE3BC999D298DE73A80AF80C0195002905FEE855623F7A5530A2803DB401354040653C27044319501A80650058';
wwv_flow_imp.g_varchar2_table(200) := '740FC6012381F40BBB08F4F84F5300BC9DD7D3E9049C6AD047BB2FD2EFFB8F23897E7E10EBFFFE74ECDD8678FE54F0B352F6BBCBE376D56B45F10F9114DE3F8A7FD8D47484E76F31026C628D1A51E1D489CDD1149114FB160400EFCFABF6E15253807A43';
wwv_flow_imp.g_varchar2_table(201) := 'A6466574203900DCFC146E430ABC1A06A2F002B52BC5996B02200349015EB5BAF66A0F5DC0C05581A4014CDC8508440AAC28404000007407656F035D94D26E7E1C3E77E1C6D0D5B9FA900A88144C5C194845E08F5E155C1B70D062867F628D1AD37AA9E1';
wwv_flow_imp.g_varchar2_table(202) := '4B23E07C40583B96D5057C8E03883308B3D2E26C04002E60541834C64FD90FE2EFC399C8BEDFBF1FF9EDFB0F63270321FE786C6C8BBE8F515F5F3AF229001419B5A6E52C8BBC5FADC0488201073822750012FE3301080028DB878BAA6F07660600E13FAB';
wwv_flow_imp.g_varchar2_table(203) := 'C07C457C1E01DCEEA27F0800905141061205CCBC3780998000C09BFD8E1D3A0FA0FDF07840C83E548167DDAA1381800000D06142906F86553DFDEE99001DDBAC4436CB07ECB7280726F6F571C15E1F0208CCF22315D05CBF5815D04CC1D07060AB5B8716';
wwv_flow_imp.g_varchar2_table(204) := '52E2940348EBFE5797017929F809043FB1D9E7F412E26FE400400440EE0F11787EA96E409F3E9C21FE6E77D56CF6EC980240ECB20790B0FFD59EE4BFBE0BB081F7A7F6CF44A83003705070E33F6B6B2D38BD00E4FF84FF8391BAFFB6A55E5CFDB43907B0';
wwv_flow_imp.g_varchar2_table(205) := 'D9F9FFE4D131075545405C00A2A0D7BB0280E3663F6C87D57C80D1141E80F29F5281D30C00B02C24CD07C37C805BBEBD2BDF6F1A09900A14D0B16B50083CC0DBC3C45E1F169C183CDE572AC0420F26FC1009DC0700A0E01B0C21FE68F619BBE2EF5D08FF';
wwv_flow_imp.g_varchar2_table(206) := '317E88C0938B89AB0119F115DFFF5D1F9B755F8F77502E3079696AC77B137BB5CFF41F950069FE894B40BC637294D845AF60A797183E23C0D4064CFD5FDE9F86AA0500E465C075CFC2158FDB560490FDD391B863A1852B03CB536F0F3EDE65592800802C';
wwv_flow_imp.g_varchar2_table(207) := '7868F5DACCA7F6D01E3C18A3FFAE38FB8F20E8BC53F5EF7D2A2C17C5B878AF84607CFF910F809F800B386C2576BC57F0722069005CC0E11E205048D77621E7CD8E115B5E3BB67E0490B562547FC87D4F61FD4FF0F60AF9D1FD93F79FFA98AF6950FD0900';
wwv_flow_imp.g_varchar2_table(208) := 'B65D2ECB1E332A35D512035805006F0EE4FD01000840F60344EF4F8E7FD629DA87F3B29700D5FF8F34BC64C3E0FDBD0128701939003C5100A0862D51C8D44B7FC7CD9E7300874DF400EA092745A0C8339E05511020D0451958B573DF10CB6CB8B24B8363';
wwv_flow_imp.g_varchar2_table(209) := '73D05D9784621D5B06A8D220C6547799307302D002900E14EC2B4F070402DE3A5C2F783B6FDC367C1B0E2016BB783F087F28FB11E67BBECFEDE3C85B7E3F5EA0F89BF8F091C158757F07AEBB3E306B5C77703DC5B09BA156D14626BC7F04002FFDEDC4D2';
wwv_flow_imp.g_varchar2_table(210) := '1FDE5FEDBF1F2FCAF6C339B93F5380280573FE9917594887C164F5056BBC953B7B489E02DCF2502E0679687D179A809D2AA12055809E1D36D417C08E789A42C8BBC90EC753186042411A420000A4A16804240D262CBCAFAF25B96C3A4A4CA900CC3FBD02';
wwv_flow_imp.g_varchar2_table(211) := '6F8F8BF647AF0502AFD006EC169C0FA02A90F5FA378D00A2A49A148A76DFB34B1A7D46F61FDF0DED773F0CEDFB8F74FBA1F717F1C763BCCF3FD3E3705FC727BE6EB6C408E8F88EC6B09485F21FBDFF84FEAFF751FF4DDCFBA3FC2315F47D854331FFEFCF';
wwv_flow_imp.g_varchar2_table(212) := '11FFC0FEABF9A70FF33F51E98F1261B6FCBB6D5CCB01E09657D12A00200CDA29530A621844DFF61B0C0B4121A8E620A2004A6A2803F1F4907F0000E2A08F97B0C3F407B039586DB6DB60B9A3477552B0AC99816F8F0AF6476F0AF6B55705E00418EAA159';
wwv_flow_imp.g_varchar2_table(213) := 'FF74F9D12C1487852C64C257A700ABDB895DF51F866960D428FA4E2E18ED35B46F7F2F00201A400874D19D7ACD7FC65AAFCC40D4FB36946CA41435FF345441E632797937F4FE9302D0FCA3DAFFD49B8234FE9BD908053BEF14ED87B38AFDFE84190041F9';
wwv_flow_imp.g_varchar2_table(214) := 'C714A8D0FA9B559686A0EC9657E4664FCF0160B3E37505A9162AD978087880024339E90D10085012A439E8A039B4D68EF2433C449C18AC2840DEFFC32520C0DC002A026A0EC9EE0CB8E55BFDE2D3A3820E5290540079F057AF14010006440187BB456B36';
wwv_flow_imp.g_varchar2_table(215) := '0A3EE8A35C442ABC50F965A70A7F22054ED5838BBD84783E5A7821FFD0FCE3ED1D00BE1B7ADD9F9F19FDE59B7D2630FF5AC219AB18F7792C78ED55E025C5433CB55345F5C77AF6A91DED721B7B2580730BF9E769DEDCBCF4D781FC730090FC9754003930';
wwv_flow_imp.g_varchar2_table(216) := 'A13F9A8FEC38F887307EFF9CF93C80DB5D4A591D8A4B6D290996A6564713E0D260E6C20DECA8457FC0502541AF11D3C156B43E84201581AE00801B1502C943171362E2DFB94F03E0B5C9716B8110C4F3C30170FFE69029BFCCF9431F10AA02E9749F4517';
wwv_flow_imp.g_varchar2_table(217) := '60B6F127EDFECB4C1502288800688EC1F3B3DC83F01F8FFF9FEF467E7BF771E8A3BFF0FE3C86BABF1BC87DEB7C3397426C308A9106F93F23D759BF76D412F90700A0FCDBF5D29FCAC09484896A7A41F843FB2F9EFFDD190340E8FDA7F147AC7FF4FEF71D';
wwv_flow_imp.g_varchar2_table(218) := 'CD7CE90ACF01E076F6BFD47E2A810DCA4096774EBC24082188F77FB5DBB7C316150149441106A941888B8234A0E2DEFF631B8D80F8011F111DC74485B2E07D4A5FE36B230E220D800C3CDA1708BC3D2CDAEB4336FCC207149D0FA8043E208E075BB4FB2E';
wwv_flow_imp.g_varchar2_table(219) := 'CF148C6DC33260E5BDB4F1A2EAD38C3FD5FAE100A8FDBBF7EF4CBC32301C6ACF80C2F0ED994A1A01048E84FC1F710F6BD7DE1C4CECCDBEA4BF44024D883F4FED9846CC5462E9FE61FF31FA8F172511805DF27FE9FE9796C16CEF637D1AC1E611C02D1160';
wwv_flow_imp.g_varchar2_table(220) := '252CD5BAAED024549AFAB8309A820080A3166DC2236BD60107A50178798F02E812EC541D00A808500D6050848B836815451C941978711FB6E0173D4D2EA8DC6A89FA04760BF66ABF606F8E8A1E0930E2DBF501BB45D70668C2EFA205F84B1180727F4D14';
wwv_flow_imp.g_varchar2_table(221) := '668417C21E3C3F621FBAFD54F31F3B28B47B534F0F20FF24FCD94EABEC52E81F2A242277E7D6A831627D626F0FA60E0200806BFE6B53978313A8F86CC441C12E30FE4B068022FED18D8A00A01EA7FE6E93D0FCDC559E4700B7B7FFA557F035DE61B00784';
wwv_flow_imp.g_varchar2_table(222) := '60DD2B0200006900A4207303C67ED1900630028A2E419A812807A20AA412A0B2606C166189681C48AA3F775F0020B69B29B7E4BB8040E25E1F1EE0CD114B3E748F5E8019FFDE28942E10F99404CC4E148A538320C828EB7D3C1FDB7FD2E8F3FDB2F19316';
wwv_flow_imp.g_varchar2_table(223) := '10FA6BBEBFFAFD53F1E11D9FAFECCB7D92F77BCF8456B153F66BD5671EF6BF3D54044015003520D51DB2E9119F6BA0C19F6EFC9725070088400DFE50E9CF2740DF3398AF7B98720058F7486DF0B8D8D28B2E80861088C0A310011C34E81518B95C143149';
wwv_flow_imp.g_varchar2_table(224) := '5A119814BD22405910E33F0108DA8A04E003C41A677608DE43D818F9059CBA8340094250254048C1B7C72CF92CD857AF8AF6FAA064ADC6421D980E138D5385E3D09030462CCE0D243FF6FA7817EF3F71D28FDB3BB4FE41EDE7A1BF2FF5DCDE84DF55E2CF';
wwv_flow_imp.g_varchar2_table(225) := 'F99C68FC2C5961B232C29F5D79FFE3FD89ED39EB0FA93B55C71F9AFFAE64BF0AFBE5F911FEA8E94773FF9696C1DEC379DCE052CD49C04D0ED6A68F25157065605D44E04183D2E0D0F61ADA194F45004F8B77132158B24E9F66A18A9DB4AB7672893E20A6';
wwv_flow_imp.g_varchar2_table(226) := '02E1E2813D5E738BF0A6EF373EDEBD2D84A04F144E6C9F6EC103A5005F1D17ED47AF8B1E05A01064C75F6C194E978AFA5A31148361AFA0EBE26887C6F859F0317765DFF7EF99EF37B47FFBFDD0453F087EA8F993F7A733FE563A196FFA99D6795E3624F7';
wwv_flow_imp.g_varchar2_table(227) := 'B0BFCC1C4585FE18FF41531100B57FC27F883FCE2FC49F66FE6BEA2FDE1FE387F53F6B179DF81B8C95EE29FCDFAE9E212701D739FBF7F0181F1A518407C05B84926083493123DB6D685C14C412525C57084E050254056818A16B8CCDB11D1647BA4498C6';
wwv_flow_imp.g_varchar2_table(228) := '91E041420D279DB07DC7EF3F4EA7210A689106ECE2F50B2E10FAFA55D1BE3A2E491CC4A2CF6AD10542511B90A6042ED7939E81E885FCB837D0F210BCFD773EE05311C087D3B17542AB2F5D813EDB3FE31DEFD351AE86FE6A9252D8CFA2D5FDC6CC68F73D';
wwv_flow_imp.g_varchar2_table(229) := '6CCDEC10E6BFA925A05ECD49E028E86530D7FC63F084FE0000370061300C0B3FC22EC13B3E55B77AB93C05B8D5E1FBF293B968C921191A8A2EA0B533962E8034A0C12E017248B58E2232617828BB02690D860B903048EA31978FB23DC61564F7CF07F8A4';
wwv_flow_imp.g_varchar2_table(230) := '9D64EEF57E5707B6E8100C51C02B5281A21DEF156D7FB768BB0D2DFCA46538E6FC9A1FE0CBCBDD98B55054C67F7AA9051FB0FEFFFE9D4A7F887EC8FBD903C00EBD48FCDD07D7F1B9BCDF271F32ECB544E4469B340D3F333BA4D77F6FE6E1FF7E03E397E0';
wwv_flow_imp.g_varchar2_table(231) := '27EEFB73D10FDB92BB34FD94ECE3A5520080003E206A3A56D38C7BBCF4D67EE91C00D63E54377B20A124510044111501D2017800E6C5930A30361A22891AB3A606157C461C6900C60F10F8FA280701C68B2F83C03A2BC5377DE7B1E515CFE61B7E2A4401';
wwv_flow_imp.g_varchar2_table(232) := '8C0A4311182A025E1560F967C9A3830665411F1CA2CA802FFF2C68CE3D9B7AC9FB09EF4F2FB4D69BC59EB0FFBF7B3FF2915F4CFA41F187D63F4E0792A068D377BFD9E3B361BFF2FEB8E957CB55F1FE877B84FDAAFFD300D4A84EDDF89DF81B53D160DA0F';
wwv_flow_imp.g_varchar2_table(233) := '23BF0B76E279BFD87FC83F0681C691EF9BBDB3ED3C3A07807B3ECE1082E802B86020049BF5B19702F79BDA1BC70089DD9DB10F962C95B8A4C815218DB4338EB15100002DA4173D29C9982FEF7BE4029B7CD746E239AA0BDA28696A8D78BDAAD900B12C88';
wwv_flow_imp.g_varchar2_table(234) := '2640E94039F00145AB8676614D135634E06BC39CF59FD97967661F4EA7F61D033E639F3FADBEE7131F02EA23BE5D20B310FEDCF5675B3DDD1100E29424427FE6256ABDFA5C033FF666F66A4FC33FF87D254CFA91DCD7ECB203F187F163F8453B6F173C6A';
wwv_flow_imp.g_varchar2_table(235) := '6BF7017371379EE4DD3398DDE452CE01E026476DC3E7486B2FA51822A0BD3A00A048E0B0A5F5517815A200E6E713360B0414FA03027002A71D42CAB2757A6295B38324367C4BD73E3C9B17CB2BD207C0D8F044207080F197ECBFBC2DDB1FBD810F886980';
wwv_flow_imp.g_varchar2_table(236) := '6608FA1E8082D21536F7B03D984D3EDF7F9C78D9EF77C87D7DBA2F357FB6FB04E22FCCF78F6F705B46430AC6824F2D4F61C9C7DC0E5A7385FFBB22FFF0FEE837A8EEC06930E7EFA243D81FBD3FC21F4A7E05EB60FCE358F6136BFB08ED3FAF025C6B0977';
wwv_flow_imp.g_varchar2_table(237) := 'F080684C9495981BC8C290BD1D1A4800002D90840F20AF448507090579E6A4E0B06417FDB24F92E1C66AA9980ED04F8E7799FAC2D23B78A39997C886C60B6D804684ED363537E0AB5725FBF1D7650701AA046C03260D6086601C1CA2FC78EE63BCF1FE84';
wwv_flow_imp.g_varchar2_table(238) := 'FCCAFB55F6F3E9BE3EE05365BF987E6CCB63C646288C1FCF4FDEBFDB60A53AB9BF6E10807B0D0D002592234241A380DA0FE3FF705E70CFCFF71EF6F7C4FAC7869FFBAEDADCE6CCE711C06D8EDE9ACFD5454D488CA8847661660644101000B0550672898B';
wwv_flow_imp.g_varchar2_table(239) := 'AC56091D8333F27DF2483801A502F493334E8A10932880D652EF2B778DC0DD7A9A6CDF812A1A94C50ABE41687F5725C1FFFA95000085E05EAB688D5AA80878249378EE2FEFCF4AEFA9FDE70F6CF651C30F79FF62A9E7B2F1AF7968377E581628A3DEC119';
wwv_flow_imp.g_varchar2_table(240) := 'FFAA59AB1E8D1FCF2FE3DF6BAAF9475A7F6D2E22A581F43BEF10F617ECC3059EBF60E7C1FBB30168E4A3DD965B7D377EB35B78420E00DB38C841F5E53BFA7C680846AE0A00F93F84207C80464AEB62E3A264E006FA0042493609335812C3771008936560';
wwv_flow_imp.g_varchar2_table(241) := '997DB7BCCB85C387B9EB7033208114824A05F61AC8828B1EFEFFF11BF100340BED794520B14249EC3F04191B7CDF9F4EEDDD8976FBC1FA33F107C55F5CED05E178D751CC55A736D6E0B3841F61BF6F4F6E2AEC8FA1FF6153550022B3B20F7381F4637A11';
wwv_flow_imp.g_varchar2_table(242) := 'A046D89FD8098ABF0B797E427F64C0F4026876C1628BD4162EB31BFD891C006E74D8367B521A4E87A9AF9A1C041F80B10B048802E2582944425C9494D5C81CA7338D8E460BC024D98B2EB3E5000181014A3326CCC4811971A0E85D1954EC41A05390F7E4';
wwv_flow_imp.g_varchar2_table(243) := '06B353F0C1A1E801E00200002A0270014C0EF28A065D7183B92FF1740008CC3F242073FE08FFBDD36F65A9E7664777C347479153BA2045421FC27E37FC5D797FBEDFDBE11CC9F8214449537A03F2FEC4CEDA0AFF4FDAAAFD0308DD41E2A41F1182CB7D1F';
wwv_flow_imp.g_varchar2_table(244) := '63D2BF72B87200D8F0FAB9E9C353B699CD3FBEAD17151953846196110AB14E0A10A0441853014A886A847110402330140844E3070800846E9F7F57DEE93A81D03CB4BA2EFB26B975048074B35039F13E019480520896FCDEBB0521036B12058925A7E967';
wwv_flow_imp.g_varchar2_table(245) := '661FCEA7F6FE449B7EDE9F8D5D0BE0ABBDE8F4BBE941FDCCF3B2C33CB2694C1C7F167B1D08FBF1FCBB3BE4FC733B08C64FFECFEF628B6FD4F993AE5C761319FEA540803480A93F9D3EC69FD8C8BDFFC2F36F8BC4BCE921CC01E0A647EE16CF739E1F0FE4';
wwv_flow_imp.g_varchar2_table(246) := '20203D395E9F2880FDF23499203DA5F9A45E997B795020A07480901F10800C44690600901E5073660C958F9A9E202F5E4CDE5965D537B930B3BDF12A97252E94210A0004A80A1CEE15ED789F08A0E800E0034F5CF937B38BCEDC3BFC4E2E10014D3CF7F7';
wwv_flow_imp.g_varchar2_table(247) := '09BFE3B9971B37792FD71DF6746E4276804228C1C531E810AD3B6EFC66BB4D967AB21D49C4DF7E6BE6A0C0D41F9FDE942C3CFF25797F7D6D05E1000014B1494441543BB18F17053BBD90EC174070C61FE377F095EA71F5785FF7BE1FEADF730078A0238F';
wwv_flow_imp.g_varchar2_table(248) := '3EC04542A599F792B34986A9328C968213386C724FAFF90204A80C20144259D61F4918E4BC40B7E432545281451EAA94C09B4FE2EAEC1BEAEAB300102B02654F0518142A7DC06E53138320026B550100F9325E13892F3C0039FF6597C59F33EB07E6FFAE';
wwv_flow_imp.g_varchar2_table(249) := '854C5900F0C82244E2025CAD476702726BC76CAF616EF0074D4500A4010EBA559D17803A2D63F620FDF0FE01002E0B3AD6C1F3137DA1F317F1A78BEA2E81EDBE2ED31C00EEEBC87EE17563589A2010426EEBA4E0CCB5008000EA40ED995324D0A4E9044E';
wwv_flow_imp.g_varchar2_table(250) := 'A0A82B9A15635407F0F4E80410075DB07906410A65A8BEAA0390519E12CC88061669C1D264E02BDEE7EA859BE246A62D57DE54FB0321FDE81A241AA03780DFF1854A8EE61F4440ED7E30FC21ABBF63D94FC3146E6A28598E231D741AF289D8D0B460FA35';
wwv_flow_imp.g_varchar2_table(251) := 'F4947D886C4676E3CF907EAD1D29FF380FC8B765FCBC57B336C6DF363B730020F74FECAC53B04E2F84FDA45E84FD9A0676E7D598FBBC447300B8CFA37BC56B67CBF59A20B48804EA0C9C2412F055D3DA3683FA8C9F21AAAA15C0025191868AA213F00A41';
wwv_flow_imp.g_varchar2_table(252) := '880408490101AF0CC4740031CAD81C0890E4FA0CFA50325C058225435CE1B052030B9D881E0914A96A24FE9EE81A6CD48B617438E633F7B15F4401183C91008220D66423F78D35FF9B1CFE25C35FD13F245A4DE863C3014C097C445C12D663FC0C3A61F2';
wwv_flow_imp.g_varchar2_table(253) := '3100C00DC55FA3AE915F2EF19D2BECA782D1E943FA9933FEDC480150FA5DF6E86D8861FF22DDBA2998DDE438DCC5737200B88BA3B8E16B648D89861B9507C9F567562B413E3174326E9A9DDA1EDD6701046A9E9B9A15A8B3CFD56546EF4077C845294E40';
wwv_flow_imp.g_varchar2_table(254) := '8CB46E0CA82052C0938924545A8011A604E115216B0C9F3FF7D1A28775630B2050AF14AC5A4D9C23C04827334040C62410FA54ECB3E1A1D3C333558314C4C2B6B248F4B9E17B84A27C9FB0DF8DDFBD3F253FF3B21F649F3CBF263951E7E71889F033BBE8';
wwv_flow_imp.g_varchar2_table(255) := '9A9DB5133B73D28F31DF8CFB4AAC8BF113616508D7A712F6678FF9B302803FFDD3FFF955A938F9EE4617D5169FB42ADAF3294261EEBC8B52CA333778C4412204B90F829494A0C2F0182E194020440284FF70037EDF5F800040C0A45A31D5EACE4BC543E1';
wwv_flow_imp.g_varchar2_table(256) := '0DDD544CA848469E96B40040C048F1F2FC0D42E938DCC3BBFCEEFA58C73C3F46253EBE3B49F37DC83E727E3C3F00C0BD427E52027A342065E9436041A9788B45D82F00C0FB23FB85ED2732E038AE1A7F0E009F3FB1777ECEAFFA534F0500AE7AEF3E4528';
wwv_flow_imp.g_varchar2_table(257) := '8EE3F225A3B0D1EC19540BAACB519B4C17E2F7A40AE4E00201CDD9932270805E6088E72F78338A03412FF1EF21AC7A4301410481341D70B562B885379886DA6B0084843518BFC2EFD850E46BBFC30E80ACB75E3A066B204F36B48EDFC76EC134E4A74251';
wwv_flow_imp.g_varchar2_table(258) := '52AE2F5E22187E9392A5F2FED4F0AB0AF9E15F20630128D215CD2B80F0B3E0F50500EEF9DDF875EC7CACB7F32ACB67F3A9A5009369E9EB7FFDD7FFF5FD5D63F2EAEBE500B0C611F6B0DABB07B990F14C220669423968512684B1E66795AA58E7050844DD';
wwv_flow_imp.g_varchar2_table(259) := 'BD066FA8FD94F1549083CCA687AD266C8D2040F83A881772880444122A2D58B40367C2ED6BC43A2E5922FFCE7CCED592DC9576BE81F147E312C8A855183212CD811A9674537D5F834C3CDF6F69DB1120C0682FC27DB4FFEC71600A03C68F64B9D3C7F8E7';
wwv_flow_imp.g_varchar2_table(260) := '22FCFC46D84F1AA0B05F39FF22DFBF2BA1D51A97C6BD3D2407807B3BB4377BE10802AEBAA385D823014501A4014401F4A8339F1EE28AFC168F87428FDCDBF5028C1B1F73C1325C444080F7020CF8196E2086B15CD0D4AF9D1B707E40158314105608C335';
wwv_flow_imp.g_varchar2_table(261) := 'ECF5D30F7E1DFC7FE14517DE5E6906861F5B77F9BC00A05723CAE6F97E2D30FD8D1D0D34F5725FF0FE0E9A94F860F909F9A791ECA35231B78B60FCEEFDDB2AFB51E727222072E298FABC82CC27BCEEA3DDEC2AD8DEB39E1500FCF99FFF796B32AE5D6EEF';
wwv_flow_imp.g_varchar2_table(262) := 'F0DDCF5F8A204028ADBE018C7DE6E900860F00D09DC6F784B400019D6CE4BD84E1513E4C4AC0450B09485910B9B0A700C3C45384DE88E51C4A0B9C24E436061020EC04084B40B0C6C75DAA2CC4925C7CDE55D6720DA2E858E8E655078C3E65F6C9F335B1';
wwv_flow_imp.g_varchar2_table(263) := '0865226911653E42FF662DB1C64EFC391E1FEDF6A3355BF3FB35A484662598FEF3AEBC3FDF4300029ABDBEB6FCF0D8A8A9F032EEEA675BE3D83CC68794CA83DD5FFDEA57EDFB7E6F5B01CAE70200914C9258488A413AD1684A411380E1D3A5E651010A36';
wwv_flow_imp.g_varchar2_table(264) := '5A55EBE4BD1AE74D489C245A2D464A40E98FD901A4060E08088986897302905A5CE80CB640E7EE9E2E8081780253C5208CE98A616F3AAF2F907A378A0CD2AB6E7179A4DF05624F550685FA30FBE532DE5EDA030C9FCEC4567A23F457EEDFA82A15203228';
wwv_flow_imp.g_varchar2_table(265) := '53DE2BC0B188E5E7B3A04F886DCA0AF733C6DF43C24C9A24408C13997D41D1ED3EE87DDBD9C6AFFFAC00804FFFD39FFCFC599D220F7B8D41219A4F0F08C05C7B240027C0B0CA50CE6280251E1110202C8E40405A30473B3053C580901F169B8B9C9E766A';
wwv_flow_imp.g_varchar2_table(266) := 'DA74B8F133432E242796908748C0CB770E028A083C730E9C800342E00D38FEE9C1FF0C67B044E605A453CC228B8747F0525E2CEB61F8004029518E1F6AFACC20C4D0771B888F34A884709F521F9100A9001515083EDE15464F358281A3489009F9F1FCA7';
wwv_flow_imp.g_varchar2_table(267) := '6D5A959957103C3FC6DF87E597E1ABAF225332DDD8C41EF7137EF3DB5F6CC5396FE58F0400F83733FBF1E33EECEBBFBB450E2C72900622F10292AD920A783AE0C4A042DE3A373C604565B90806C4ADB16C080810DABA5E8050D7CB842A6FC9F8C576C774';
wwv_flow_imp.g_varchar2_table(268) := '4040208EC06F9134F4FB38CA6BA1844B23850C2D182F82544340A4E24B5442F500320F630FA13EBC86E7F821E4C7F863AE8FDAD02300C27DBC7E08FFF9EC107C6AA2C2F067AE4518F838F299B3FC1D6E84FD1EF233A25C330B3CD71F84129F33FD32FE67';
wwv_flow_imp.g_varchar2_table(269) := 'E551962FBD6F7FF3DB5FFCC9FA57E3CD1FB93D00F8B39FFFB325F6B39BBFD5C7F94C95BAC861C50B50C242D906374059906116F001D10BF2331E126F88B1208AF16A81B157409384F070A403438C3EC886F99D9382D3A01E74359FC060C8F72E28326FF4';
wwv_flow_imp.g_varchar2_table(270) := '194FA5954FBD64200CD34A421A122C1266197F2C176ADD17A226727B0C1FB092A72F38A947B8EFE45E45C6AFE84691003FA3F0E386D1FBBFFBB215797DF27C568B793F426FE60C3FBD083427716B77CD2EFBEAEF77C34F43FEF099886202003CB5F2DE5A';
wwv_flow_imp.g_varchar2_table(271) := '57F1DC7EF99B7FF9C55FACF5D85B3E2807805B1EC0C80B0002E20554CAA2A4256E4032574000A51B8D2D94C0F0901E128768204EEC65EE20DC00F56C9A5868327299302BC9F9BDFF4E5B7C01800100C03AEFC00F78949046053145884B2F6339317BDA55';
wwv_flow_imp.g_varchar2_table(272) := 'B653B95062213E07DE3F25F730FE68D8D5828CBB2A414F1D100BC6EF7C80470A0244F2FB6291CE3DBCBE46764DA68C1A93FC18E3BFE830943478FCB60000996FCF7B1344804630D364E24549341EFB3B38858FEB2512FB87DFFCE6177FBD8D37B53500F8';
wwv_flow_imp.g_varchar2_table(273) := 'E6277FF9B77FA07AFE661B1FEA21FE861B10CAC1B0B70E6FC88A314503A405736B4500081141A30E692610C0C0D2A19D5E4BD7E20E6DDE5512EEAD3000C35C39708C0A64284A15301800C08D86FB4CB351BAFA3AE50182F1FBDF5B787F2D12099EDF4B7A';
wwv_flow_imp.g_varchar2_table(274) := '899529E7B98A6FF19E01027E0700E0DD356CCC33FBD07913760910EE4FD568C49C4136107507C1F307AF4F57224000CB8FD7870F88A9CDAA0EC203982B64D20F71DEEFE56F3E4B00F8E62F7F369FCDFFF95E0ED8237AD14523518C06D4EC021108108823';
wwv_flow_imp.g_varchar2_table(275) := '98A7A5B0A6730362CF23106070A592167A2804D74C7F29EC140D000253D282A92201AA084402CE8E8776E3D857A02124718BB1BE97F70C345FD817E85E3F18BF939CEED143BE1F084C37FA10F63B938FE0C987A5CE6C8EC4D8D38F998DDDE067361A41EE';
wwv_flow_imp.g_varchar2_table(276) := '69AD588FDB405D8830FD2EF0F11C5F37F27D117D4A61BCD41989CC679CF0AF5EBEC97CFED7BFFE97FFFD0FDBB8ACB717017CF3B31FCF674588C0E7F915BCAA1FD074879F482F9F6C5BA112A0BAB7038297C4C407100934A899FB4D033E3DB7263D700F5B';
wwv_flow_imp.g_varchar2_table(277) := 'B07229AEF8120D4FC311863D764DBF780379FE85165E83471686EF6BC079730040347EF7FC2102F055DF5A1C924EE90180829497CFE2797E495B7AF859C6BF20F546632D101D8EB546BC37988AE0EB4DBDB68FD1730F00E0E9994CD4E77700C380DA3E15';
wwv_flow_imp.g_varchar2_table(278) := '814555E313E3789E57CFD2A74A0AD33FF9F5AF7FF9ED363E6A0E00777494577BE0C5A2C73AF9DC4368883027C52AE4CE5404E83014008835D7F700015101221AF7B674F379434FC18939C96D434AE09A020CA660D4C3A52F88832F3306EFA814D2095F94';
wwv_flow_imp.g_varchar2_table(279) := '2EA3C7D863645148C2E6A0955ABFC020344615C575C079F8802D6AF894F1A6C1DB7B8B31370C7F2692AF4BB83FB58E7B7A8C5F9180C83D097FA4715884FD4B72DEF8D6EF79F9EA1D5D0AB77E996D950083AFBAF5FB5DFB057EFA4C2B01F100AC6AD023B9';
wwv_flow_imp.g_varchar2_table(280) := '56C053069250BDFADA709B1D81E52A39EAE519107020A828EF060462579F9A7BB4E5D7C37837EC0008A2F3C24D6903FFEE468EE1FBBD0AFA8048347EE70042D3FEA75E2176D6281EE73F6878C2FD6928E711EA0F868C131700B8F1F7A73E65E80200E800';
wwv_flow_imp.g_varchar2_table(281) := '028A001633082466F270DF5F4BDFC749474B17E8D398E5B9B62D7CF6815BAC006C1F007EFAF3BFB7B9FDD5ED8FD2D37A85B454C5453C8FC347553AF348C06BE5A4038A04480F5C421B99F61009901A9012B018D4350461D34F21B3F24B64DE224A883F63';
wwv_flow_imp.g_varchar2_table(282) := 'EC10895A0D2E107000C844008088DEABDA06E348F0A8D2F336E2A9083DCD1398D938E4F80C171950CF8F20C0F7E4F9BD995D7AA94FD10004600CF3212829E72989589E27F0B4CEF01DBEDB2D12805B07806F5E0811B87A392C5DDC19F65A7573E60C8499';
wwv_flow_imp.g_varchar2_table(283) := '7894D52005DDEBAB8E4E0A001FB020DFA8C3AB6AE060E064216BBFD46F10CB89DA0128234FA385D4D8973D3FC0204090EFCF761D22D8C1F051EBB9D18FA73E3D08367F38529E9FDEBCBC177EF68880BC7EE6F93D613F9E9F30DFDB76A761D3701024659B';
wwv_flow_imp.g_varchar2_table(284) := '8BEED09C9EDC4B6D93007C000078E644E0672EB75500F0A6158BCABA301ECBC16041B2C11944C26D21AE497CB20F00C13D1101FF56891503884207811005C4FBC01944824F6941C19900A7FAA32A90DF0732D395763E386461FCA389D68561E4A8F7C8F3';
wwv_flow_imp.g_varchar2_table(285) := '75AFDF7BC352982BE8D3867CE250347AFD3C5951F26555887E416E8D957A9CD8B04D0270EB00C01F7CEE3CC075975504836C375D1CD61149C3F8B38438717E9E6AEE940B5D3B502D4884E32539A5065E36C4E803082CA50399503FE500DCF4C3B03E7FE3';
wwv_flow_imp.g_varchar2_table(286) := '615C7908FFBDC7C043FE383E6C61FC5ED273324F510086AE2A84DA7955C2A33A103B17F5BD97F5B84FE3FEDCE8D36B66CBE1FF8300C07317045D0700ABFFBEEAF156BBEE0001290C1521B8022F28F120066B692AA01400255E0CFFB3E53DF18431F797D6';
wwv_flow_imp.g_varchar2_table(287) := '7FE16E176E77313148BD048A00101561E0AAE747A2CFF3F9C1CC06E3998FECF26A444AE22D0AF7ABE4E87318D8B1E9795EE7F17F48C2FEEED7BFFDA7BF5DE7B177F598AD075C2F9507B8EE842DF5EB8707C728213B4957E544A9EF9C07C0E85D30140D3F';
wwv_flow_imp.g_varchar2_table(288) := '36F1C8C823C9277B5F187EE4FA5627014606DE25B7A1A1289D2118C3FA913CBEC27E450700848F18CB7420AE82D975C7E0A5FF7B5248FEE2D7BFFEA75F6EF3386C1D00F234E0F3A77755EC2679B11E1F7BEFB35D79F1FB6290F16667F1456357BEAFD788';
wwv_flow_imp.g_varchar2_table(289) := '24DFE7DF412612084B41A3F6DEC3F950AEF361A25EFB5F8C128F834CAF1A3CF220A1E636ADE86EFED6D63A00B36FF74100E09B3FFB1F7F354F92BFBF9BE3F67C5EE57323ADD2527F10172DF7E6074F9F15CB645CEF6242CE66A73A9DB1E175FFCC60D290';
wwv_flow_imp.g_varchar2_table(290) := 'D7A7B97C008A38CA3C0DEF57FEDC667FFDF99CD3753FC9B6D9FFF8BE1EE4BC7CF3DC65C1EB9EF595C77D69A6DDD2C08ED4A32F02F86CB81D5FD69B896EEA7EC39B598A4A6213516665780407FE4CEEFD6F78E23D55DB9EFCF7C123803C0DB8F985A2503E';
wwv_flow_imp.g_varchar2_table(291) := 'F3FCAB9A64C2BF2FFE2900813F6DBDAE9A55C3BF0A47D67BA5DB7DD617F1EC0760FF1F3402E08FE764E0ED2EED2526FD2AF2E08BA6BEA9E92648FEF595019F1B4717B7FBE8CFEED90F41FE3D3800E451C0CDAFE34DCA6A579BFAFA00B0B0777DF749D9F2';
wwv_flow_imp.g_varchar2_table(292) := '4192C89B1FBB47F7CC2D6BFF573FFF839EBE9C0BB8F9E5B84E2DFDCB66BE2E0864D387CCFB7D29CD39373F456B3DF321BDFF5569DD5A6FFA2E1FF4D2958177792CF3D77A6247E00173FF479102880B7899FD014FEC52CDDFEE3D1C818762FEB31FE54153';
wwv_flow_imp.g_varchar2_table(293) := '80F846725DC03D5C5DF94B3EEA23F010B2DFAB0EC8A300809C107CD4D76AFEE6EEFA083C30F1F7E822803C15B8EB2B2C7FBDC77C041E43E8FF683880EC89CA5381C77CD9E6EFED2E8EC043B3FEAB9FE1D1A400291FF0CCF707DCC54594BFC6D33C020FA5';
wwv_flow_imp.g_varchar2_table(294) := 'F7FFD2D17A7400E0E9400E024FF30ACFDFF5E78FC02328F93D6A12702915F8E6673FB659E9AF9EF326A1DC565ED0117844A4DFA34F01D254200781176421CFF8A33E52CFFF2849C0AB2E833C1D78C6C6F1CC3FDA63A9F53F390E60F50DE7D581676E29CF';
wwv_flow_imp.g_varchar2_table(295) := 'F0E33D36B6FF7387F85192805746024886A7C5BFB7C47EF60CAF97FC233D972330B75F26C5E95F6F6BB7DF6D0FDB930180BC4C78DB539D3FFFBE8FC05308F99F0C09F8A593E50D44F3E2DFBCC43563F77D11E7AF7F8323F0C4BC7EF6133EB90860B55C98';
wwv_flow_imp.g_varchar2_table(296) := '03C10D2ED8FC297773049EB0E13F992AC03A672A8F08D6394AF963EEEC0824F60F4992FCE3B667F8DFD9FBCFBCD0938E003EA91644EDC07CFEDF73B2F03E2E9717FD9ADF2696FCE3B637F7DCF7117F5600B09A1EB89A300783FBBE869EF3EBBBD15BC17E';
wwv_flow_imp.g_varchar2_table(297) := 'F91CBCFD5527EAD902C02760302DFC6C5E48FEBBCDECC77974F09C6DF6569F4D066F66CFCDD37FEEA8BC0800B83255E0971114F85EC0F06333BFE55FCFF7087CFB87EAD1B756B06F9379F2FFB757C72608035010408B58C68932B94364082B07B0496140';
wwv_flow_imp.g_varchar2_table(298) := '0C04ECD21D177D29257097F7E1BC6F9FF9C3FFF04767FCCB01384299A6E9FA796759C6717F77185EDB6F9E7308ACEBE5F9DD749E6F8F7334CFB63400596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40';
wwv_flow_imp.g_varchar2_table(299) := 'D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40D5399421';
wwv_flow_imp.g_varchar2_table(300) := '90153000596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA040C40D539942190153000596F6904AA04DE16F2A1664D7C71840000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26045834943762057334)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EECBD8D561BDBAE346A0309C93AEF73CE037CEFFF3677AD0412F01D5255499AB3DBC6FC180CD61A9B6D706C63';
wwv_flow_imp.g_varchar2_table(2) := 'E4EE56A9542A6DFFEF7FFFDF6ED3FF75043A021D818E4047A023705111D83600B8A8CFBBFFD88E4047A023D011E80878041A00F481D011E80874043A021D810B8C4003800BFCD0FB4FEE0874043A021D818E4003803E063A021D818E4047A02370811168';
wwv_flow_imp.g_varchar2_table(3) := '0070811F7AFFC91D818E4047A023D0116800D0C74047A023D011E80874042E30020D002EF043EF3FB923D011E80874043A020D00FA18E80874043A021D818EC00546A001C0057EE8FD2777043A021D818E4047A001401F031D818E4047A023D011B8C008';
wwv_flow_imp.g_varchar2_table(4) := '3400B8C00FBDFFE48E4047A023D011E8083400E863A023D011E80874043A02171881060017F8A1F79FDC11E80874043A021D8106007D0C74043A021D818E4047E00223D000E0023FF4FE933B021D818E4047A023D000A08F818E4047A023D011E8085C60';
wwv_flow_imp.g_varchar2_table(5) := '041A005CE087DE7F7247A023D011E80874041A00F431D011E80874043A021D810B8C4003800BFCD0FB4FEE0874043A021D818E4003803E063A021D818E4047A023708111680070811F7AFFC91D818E4047A023D0116800D0C74047A023D011E80874042E';
wwv_flow_imp.g_varchar2_table(6) := '30020D002EF043EF3FB923D011E80874043A020D00FA18E80874043A021D818EC00546A001C0057EE8FD2777043A021D818E4047A001401F031D818E4047A023D011B8C0083400B8C00FBDFFE48E4047A023D011E8083400E863A023D011E80874043A02';
wwv_flow_imp.g_varchar2_table(7) := '171881060017F8A1F79FDC11E80874043A021D8106007D0C74043A021D818E4047E00223D000E0023FF4FE933B021D818E4047A023D000A08F818E4047A023D011E8085C60041A005CE087DE7F7247A023D011E80874041A00F431D011E80874043A021D';
wwv_flow_imp.g_varchar2_table(8) := '810B8C4003800BFCD0FB4FEE0874043A021D818E4003803E063A021D818E4047A023708111680070811F7AFFC91D818E4047A023D0116800D0C74047A023D011E80874042E30020D002EF043EF3FB923D011E80874043A020D00FA18E80874043A021D81';
wwv_flow_imp.g_varchar2_table(9) := '8EC00546A001C0057EE8FD2777043A021D818E4047A001401F031D818E4047A023D011B8C0083400B8C00FBDFFE48E4047A023D011E8083400E863A023D011E80874043A02171881060017F8A1F79FDC11E80874043A021D8106007D0C74043A021D818E';
wwv_flow_imp.g_varchar2_table(10) := '4047E00223D000E0023FF4FE933B021D818E4047A023D000A08F818E4047A023D011E8085C60041A005CE087DE7F7247A023D011E80874041A00F431D011E80874043A021D810B8C4003800BFCD0FB4FEE0874043A021D818E4003803E063A021D818E40';
wwv_flow_imp.g_varchar2_table(11) := '47A023708111680070811F7AFFC91D818E4047A023D0116800D0C74047A023D011E80874042E30020D002EF043EF3FB923D011E80874043A020D00FA18E80874043A021D818EC00546A001C0057EE8FD2777043A021D818E4047A001401F031D818E4047';
wwv_flow_imp.g_varchar2_table(12) := 'A023D011B8C0083400B8C00FBDFFE48E4047A023D011E8083400E863A023F0C922B09BDFEFE28E17FE41DBF179D38F2F7CD17E5A47A02370AE11680070AE9F4CBFAF8EC04A044E96FCF5BB1A04F471D711B898083400B8988FBAFFD0AF1081F70400CD00';
wwv_flow_imp.g_varchar2_table(13) := '7C8523A6FF868EC0FE083400E8A3A323F0C92250418027E9432D80398B3FE7B19F2C2EFD763B021D81E745A001C0F3E2D58FEE089C6F0494DC8F2DDD9FFBF8F3FDCBFB9D75043A022F884003801704AD9FD21138A7083C99EFF580678A059FF9F0730A49';
wwv_flow_imp.g_varchar2_table(14) := 'BF978E4047E088083400382248FD908EC0B946E060F2DFF78FCFC8ECCF78E8DE10ED7B8D2781CBB906BDDF5747E08B44A001C017F920FBCF787D045613D55B64C0E7BC3566C56392633CE685CAFD63048587FEFCDD7BC766258EFEA71F13ACE77C06FDD8';
wwv_flow_imp.g_varchar2_table(15) := '8E404460B77278E1803B83C3FFD59F5303805787B05FE0B345E0A589EBA813FE98073D95B0CBBFEFCB6DDB957F78691EDC077CD6EE5F8F1D1E7928AEF36BED7DAFC33F6C5F95DBD762F4D98ED57EBF4F47E01820BBF62AFB8F8FDD66F837FB05AB62DAED';
wwv_flow_imp.g_varchar2_table(16) := 'A707010D009E3EBEFA115F2802C724FF632E284FE6F92732DE22016ECB35E60000982F5A6B15F0B14060EDEF9CEF9BE3B58CDF6E35F1AFC5F9A0E6702F28DAFFD71C93E08F79CC173ABC2FEE4F39E65C3D1494C5F9B45D9C0153EE9FAAFFDDE706010D00';
wwv_flow_imp.g_varchar2_table(17) := '2EEE94B9EC3FF82900309CFE2B59FE60E27F12152C2B899ADEE26254C1003FAEE5852A3FC71904BC0800EC464AF350E21FFF6D04008BE71D71B8AD81A1FAD71DFA7B9E4AF04FFDFB116FAF1F72C611784B00B02DC97F4EEBF518545340BF7BB73BF68C3B';
wwv_flow_imp.g_varchar2_table(18) := 'BF40360038BFCFA4DFD1092370144D7D44E2F787EC4BF847A8DE6AD2D6E5630D00D404B678CE1EBDC0F698AC37257CFB63E26D977FABF1D2F7F56FF767F189C3634B7C0EE1A27D3A067B3AFE6D8986F60186B5CBF031A138E1E1D62F7DE208BC1500F084';
wwv_flow_imp.g_varchar2_table(19) := 'AFF3894060BDD3CF07B1F2D7B9B0A61438F19FFE262FDF00E04DC2D82FF25922701000ECC9544FD1E2C3DF7E44B6AB496F4EFE4A5843E2AF897E6A158C0CC29802F7D52533CB517FC6056D050CAC8002C4928F9D40405E188F3B32F60181A340C0DEF6C1';
wwv_flow_imp.g_varchar2_table(20) := '66ECE51EF756FA519F2802AF0100798EA9E78F5B00ED31A5DB7D0990C10FE018E7F7FEC3E763021A007CA283BDDFEAEB23F0640BE0091A7FF59F8FA1FEF9D657137B541EBAF8E4A5640604AAEEE37E856428949936F75C8F5669FA9ACC8BA02FAA7E0100';
wwv_flow_imp.g_varchar2_table(21) := '818343804060802CC00C38864FB1BCC7F5CA3EEF5DFD730E247FBF247FBE6BF2EB0FF20B7A85E702809151C3B345FDDB6D9E6FFC377F847D4F3E8089DECE0B83080E04D802C0B9F2B90EB806001774B2F49F7A4404266ABC9ECE8BF37B25F1EF3DFDD72A';
wwv_flow_imp.g_varchar2_table(22) := 'F7A83670D9A8C91E5588FD0F0FCA9FF5B86D3EBEFC5979812BCF2BFFAECA5C77D59F55F7D7A44F4200974126FFB57F1F9883000B5935CDBF37DFD21194C9A18F6D25E09FEB127CC431D90F796104F2D85A67DD94E441FF5B3A7706402D808905B0441F55';
wwv_flow_imp.g_varchar2_table(23) := 'FF6EBB7964F21F41C0E73AFA1A00BCF0D0EAA77D9E081C3C250FFCE37A45BAFCBBD75E42091B8FE6385B01019EA857127B529005146CC7E723C92F5F73AC781320D4779C34E6948203F8A4A86F5FA237202060808B1F8A24E901E23EFE5BD50954403180';
wwv_flow_imp.g_varchar2_table(24) := '90270FA7ED62CE702F7428FFF00C72E6C977D00F38C3080C27DFB213CFBA3D003471F594E45712BF3F717C3D0700FC7A2403F018F72523606D81CFF25F0380CFF249F5FB7C51042AF2D7C91F2F24EA5D771C54DF67C22D0FF75EE1FCBA49CFE70B2E2B78';
wwv_flow_imp.g_varchar2_table(25) := '56F27C8851FB4AFEA842081D78BF923B5E670550F04DE8DF8760CDD7A33941AE51F67315CF9F07168049DFE950BD867FBF0210D6DA0A050DACB50974DF1A7BA0DF919769BCC191D1180F99A7DA3F2F3AC0FA49EF1E81655BA79C8353E206B3C67F67953F';
wwv_flow_imp.g_varchar2_table(26) := '54FB5EF5ABF79FDF7B3A2FE70D8E710000257DBBAD5F0343B012957384050D00DEFDF0ED5FF89611982BBC7A92ADD37E4AAC7C1753555E137550F07BE9F9F13516143E9F17347EADF8E7EF99D495FCED39C112C46391F887FEFFF0FEF1170F6D8005EA29';
wwv_flow_imp.g_varchar2_table(27) := 'D1AFED8E35DABE2475E56A54F7996C716144F3209880F2331E4A562140841883021C98BD95C023F90FEFAB4C1C20F3E7EF15DB30818F32A470D0A8E82D8FC97EAD13466002E952EFABD217ABE649DD79B29ADC0106E2DFE2FB6400EABFD5BF2292FF2392';
wwv_flow_imp.g_varchar2_table(28) := 'FE8325FFC7ABB87550A096C0016F807303010D004E78ACF64B9F2E02C7748EF755DD713F2B6D25D5817E3F50990F897E25A9AF55F37E9F00812A7CF6F823E94F3FFBC5AC3CCF69FF785F043251F98F5A819C69D26730BAEACD15F7A2727E8201F0C43A31';
wwv_flow_imp.g_varchar2_table(29) := '0033187060A0C75506A1DEB76011D69E439031B10C021DC3EF202001455BDB13879D0A4F77A4F62BBF690406C09B14BD12B7ABF7B79BCD152BFB2BF6F4AF1C1020F9FBF77A1CBFAFFF2E8640EFDB9FB9DB78C27F7CB4E47FB579B0DBC7ABCD5F0301767F';
wwv_flow_imp.g_varchar2_table(30) := '61068209F8042C400380373D3AFBC5DE32028B243FDDB10F040865CF947A4DB4B8308C5FBA2FFF6DBBA98FC3F748C271FF55BEC6BEE72D9E3325F6000C13E81003912D810400D10658B01323A5B1AC3896F7441C0B23B03AFF3F8182658257F2C6AD2761';
wwv_flow_imp.g_varchar2_table(31) := '8200FFFEB1DE8F7F7B7CE46D80821D9F57FF9D60235E6B7C1DBDB6DDDAEBE1F7DAED0426A616C14B8FD59E2C7869E40E3FEF29BDC6785E27458F84CEEABE24F9AB2B24FBF8AA3F5F3D061048B0C0D70CF19F1D3F4CFEACF895F0FF3E20F9FF7DBCDED8F7';
wwv_flow_imp.g_varchar2_table(32) := '6204421320866AADAD789AF0BDE8551B00BC286CFDA45346605FAF760D10EC6B013C95DCAFAE98C4796BC97BBC6F1B3FE3DF0006EC310200F1FD154181BFD6FCB8ED66ABDFE5C0211F9BD53D133B384B97F7E5FB17ADAFE49F957EEDF7277B51B50AE3D5';
wwv_flow_imp.g_varchar2_table(33) := '67DD593FC8537CA4B52D50FBF6F5DFF656F3090094FC3D295B22F6C4AC846F891ADFEBBEF9767CFCF8585463000AF61A0F7C5DFFDE5E335E3B1F373311074DDC278CB48FB66D20F0365781E579BD27E2A2F5D9CB57D2170050A2B7EAFEDA93FDA3DF5E5F';
wwv_flow_imp.g_varchar2_table(34) := 'E1563F5FC5CF02078FC90CD010C8D8826498ACDA67C5FF70BDF963C9DF6FF3CB5880051350C28373B56815DE2674AF7E950600AF0E61BFC05B46602DF91F93F8EB7BA8547B54F54AF4F5D6BEBFDA6CAE95FCF5B325FB72FF357FCEFB080EF8F80008F61C';
wwv_flow_imp.g_varchar2_table(35) := '3D56A02180068101EF078850A22F095F637F852550B52FA600ACFF48F9E7CFBABF32013133305F9272BE9009BEDCC46343E0378380450B80D5BB92B3277E25EA4CE235493F78B2DE45E21E12F883DD3F0105FE6CF7EBB176EB5FFE78BBB59FF5EF23F0A0';
wwv_flow_imp.g_varchar2_table(36) := '7CE1493DC05A0A5A4BF80D025E77F6AF9FDB7B78AB000096B851F1CFC97F4EFC3796ECAF1F37370202D70606F065CFBDF6D748360082C17C5700994AFE5791F4EFFF5AF2BFD9D8EDFDC30D58800202D6DA000201E7A4036800F0BAE3B79FFDC611380600';
wwv_flow_imp.g_varchar2_table(37) := '2C1EA3F3B5F4C71D04CCD5BD276826FD721BF75D2381E763B69B6BBF4F5FF5DF369BABEBF1B10E10E2F91524E8716207D45A503B8149BB54FF63FF3F933A12CE920DC8C980640CFCA3091CC0CB0E7F477E6C45C4A01EFBCA673A680426615E54D72B895F';
wwv_flow_imp.g_varchar2_table(38) := '095E15BE256954EA48EE99B4F533FECD1FE38FC563F239A8EAF5BCBF91F4779BBF0F1B7E09082448105B10EF750DE9944B7F0380373EB1F7BCDC0C00F6F9EA0FC2BD8D8167267F07EABB0DE87E55FCA8FA2DF9DF58F2BF7EC06DFC4C10C0C43F0380D5EA';
wwv_flow_imp.g_varchar2_table(39) := 'FFC192FF95277B4FFA7F6F3677F6F5E7C6EFFBF3F77AD0033400789FE3A77FCB178BC0A151ADB55EF55CF9DBCFAB557F24F14D26F59ADCAF379B1B4BDE761F81C08DFEFD7ABBB9B1E70B2094FB1D1C0CF733D9131C247B5040805A056C1D80CA9448704A';
wwv_flow_imp.g_varchar2_table(40) := 'F6311EA8B9FE23927FB00399DCE7C900010980849AEEF6D727F1D914819D14FE120026358FE48DEA7E4CFA8F9EA81300F8F70F48E0F658FCAC8A7EB779E4BFABCA57D2AFCFB3EFFFD8EBFE1510E0EB1120D496815880796C7038952C0C53769AABFDAEFE';
wwv_flow_imp.g_varchar2_table(41) := 'DFE6E253C38C636C3C0653C99F2A7EB06EACE049E91B10F0EAFE7AE7C9FE1B13BFDD7EBBA9400080E09A80210000F5033EB7123A12D0FF46F9DFDBD79F6B24FEBF379BDF7FBE3900B0EF0D10B83EC0F50057A11D1008CFBF6A5A35FC36217CF1AB3403F0';
wwv_flow_imp.g_varchar2_table(42) := 'E2D0F5134F1581BD62A0B9425DB940AB17AE7E3EAAF265D2F7E4EE49DF6EB79BF8D9EEF32F80010305F96FBC8FC91DF723B1C76B1044D8F3FD77FBEB64F2CF1601FEDD12BFC485C8C51500881928E0408F89BC3D0203DA0731A7E7BF0D4C80588421F94F';
wwv_flow_imp.g_varchar2_table(43) := 'DA817D1FEE5AF5CFD140F5F48DF64F2A9F895E553B13BF277B4FFA3B266D7ECFFB1EFEF2DFCBF3040CC6E7004CFCF98B2F7B5DFF3EC040B201330BF0946FC0C1E37B45DC75AAF3E1125E77090226F74BCEF383F6270350FAFBEAF5D72ADF13FFF5E3E6FB';
wwv_flow_imp.g_varchar2_table(44) := '8D0100FB1E5F6203B215C016409AFB52448A91BFBF0F0000777F91FC95F87FFDF9B6F97DFF2D00813DA64E050C00328E97060097703CF7DFF8861150A535B30385F98F42B62AF9476A1F89DD933ABFECDF95ECFDF666FE19C97F788C8041800602040205';
wwv_flow_imp.g_varchar2_table(45) := '0187041596FC0102B24550923F4100F23EC61224EE5B6305467BE0AA03808230847EF5754AA28F4D81F3BF2742489741952F2AC8A65941744B8B22DF5B00ECD947E52FBA5E557EDE2E927F2471B2009ED0C106F8630916ECE73FFC3E6EF9DCFBBF040062';
wwv_flow_imp.g_varchar2_table(46) := '02F41A6C3B60EA60FCF26EC0042EEB9FFA868772BFD48108EC17F462DC2FFAFDA5F28FDEFED56EA0F92DF15BD2FF7EF31700C059008100B0010E00A801408B015F59FD63F4EFEFE33668FFDF7F000094FC7FDD7F0320F87BE3FA800A00EC75066ECD7F68';
wwv_flow_imp.g_varchar2_table(47) := '00D0274147E0A9E22AC7D8CB19B4979C26BAAED4BF847DEAE12F2BFC39B10B006C1D087C230B00502020C0DB9BFC1980A2FE5C00C18D188264010004ACEA1F190024FE5ACDAFB40298C807F57FA5FB8BB7F07E51E0CC0A2C7F0E3415642C035C10981264';
wwv_flow_imp.g_varchar2_table(48) := 'B6008A00B050FFD9E727105022AF95BF57EC600250C58FACC083EE2B55BD3FB654FE6000369B7BBBFD4346C05F27C18333141C13B496C0DA644028BF71AD8E226E4D77F2D4D85A9FE62F88404855A8988F99FEACFA5DBCE7D57FF6FA45FBABE7AFCADF92';
wwv_flow_imp.g_varchar2_table(49) := 'FF1A089046005A024C01B8954FF84898D18FB5A44CF16FBDFF6BA7FB0D0078F23710706F5FDF37BF4C07606D0003000FD7310DA06346D72D14320D005E7054F453BE4404A611B3818156B2299AB4AAE6F7C7C6FF2D97E3C4681E15FDAAFED5C75F0080A9';
wwv_flow_imp.g_varchar2_table(50) := 'DAF784AF64CF5BDC37257F4BF6010AD41E181F23DA3F5A04DE0290A09000806385E9016089B80AF8E65EFFC80E201463B0D82860FE262350448352042EC081FFDE023EEA0753DB05FECAB8302BF985F98F2E9C9658C904408DFF9862BFE8F54F49FE6800';
wwv_flow_imp.g_varchar2_table(51) := '90C0C08102A97ED1FFF74AFC04120205620FD09618C7046BB5B734141A5D0E433B501883CA1E7C8973F423FE88428FEBD0C3B94F539F63697F8AFCBCFA67C5BF0600D02678E0144049FEB5FA77E53FBEACB237E1DF00002CF93B083000F06D310D003F00';
wwv_flow_imp.g_varchar2_table(52) := '0453D72D9CDD0D003EE210EBDFF991115849FCF5ED88E24FE31E197B4C663D61ADBBC7C0A78EEE51A857018057EA91F80B03B0A0FE51D52F01404DF4A90750A2CF5B8909EDF1CBEADFC0800316BFCD44AFFEBF86F600082656409794828682D6A7F9694E';
wwv_flow_imp.g_varchar2_table(53) := '0ACC1301A5BDC02BADDA0C75D45057AC5128381E4029C8E40EC162EAE300402A7FFB3EFAFE2B6D8048FE8FA105100B90957F691B943E7FEDFD0B04D82D8000048162162430C4C8A0DA14C53848CC4078161443219A1585B9111190D88219041C12B2AE1D';
wwv_flow_imp.g_varchar2_table(54) := 'F71F796ABEC7EF5E8B471550A68B9F1660D531BFDAEF87F2DFC6FAACFAF7442E657F51F81B0B6000C093BFA8FF4103F0E002401905D1C437A97F078912FF61F44F00C0AA7DABFEADF7EF00806C403200E90710002007701A00BCC701D7BFE37C22B0E8DB';
wwv_flow_imp.g_varchar2_table(55) := '17DE7499F835DB9B663BA3890EEFAF663CC5C0674DF027F5FED0CB1F40400505CB6AFF7AD102D044C0D80640CF3F937D7C4FA1A025FB7144B0247FD2FF1AFDCBEA5E1DFD640796BD91A2F457C751C041497EDF6D011F0E0042874031626502A29429226D';
wwv_flow_imp.g_varchar2_table(56) := 'F5CD591AC3F58F0C4024DA32EE370081C7A50090557D54EC120496B6810B07D9125863012A10C89682DA001C3FE4B4815A0283F7801B0B8D4C817E9673A19C06674F81D0113CA337F0D527090E812119F9E830CB99FE1CF373A5BF8DF80D943FA97F8DF6';
wwv_flow_imp.g_varchar2_table(57) := 'D5E42F16A026FF10FF4900F8106383AACA656D6D9FAD57FE26FC23FDFFE7EF15C6FED802A86D0007031A05F416400100BC0C470BC0FFD0E5C6C28FBC5AF714C04746FF8BFFEE43C9BFE6165C088AC8A71AF394EFC3B067E5BE7D4AFF4CFC93BABF52FE12';
wwv_flow_imp.g_varchar2_table(58) := '05C6B8DF5A8FBF4E0024F50F216156FC12FCE56820287F6F49D8E3BCF79FFD7F300063A51E3FB3A28F8A1C5DCACCC0913DF21253D980EA19B06012C273404B870848386510D57FE52F872B99FA009A09A420D07BEB2904AC4C80CFEE0FE37F8F310950AB';
wwv_flow_imp.g_varchar2_table(59) := '7D8DF7694A40CFD3E8606A0434F6975300A925583200F9FCA57110BC0578FF9EEFE54500EBE1640842371080E8F813FB2B0380A7849402003AF747753FAE0772F1B31E3FFAF66000E6CAFFDB0002A0FEBF5928FF1FC01E14E31F093DE058B9DDF888AA03';
wwv_flow_imp.g_varchar2_table(60) := '00CCFD7BFFDFE7FE39FE471070C7C4FFFB2F0480F6EF8B2980E930C0A9D400E0F8B3A31FF969235093FF241EF7736EA8FE63AC0733FCAAE4E75B887ECA485FF97EECF557F57E51FD0F823D4D04A4680F1E0059E16B0C50F7AB82F7845F7AFA4AF6320692';
wwv_flow_imp.g_varchar2_table(61) := 'D0CF47FEE81180A45F8D80920118AAEFA8D66BB62DBDFE0A00664050A708262F80B1EF3FB61D461D42D116A82723ADC10C004885FB5B2A0E3B6202E403105E004AFE7524D02AFAF9E709282C0C8316CC4049F63343508583314D504610631C110E82F65E';
wwv_flow_imp.g_varchar2_table(62) := '30A2387A0A184B8036C2062D0DB204D116E064C1A21D5063B42668FDA2E384D5B3A3866020922AE8A7B23FC57D96E855E983EE97A35F35F5F1446FA37D732B207C0038F37F45D57FD90130CCFB07E56F237F48FC0600CCE0E79E0C40E800AA09907D6F46';
wwv_flow_imp.g_varchar2_table(63) := '402100846BA08189FA5FFCD400E0D3E6B47EE34746602DF9CF1704310081FEAB2DAF9FF839BFBF10F2C5F81E93FBA2AFBFA2F09FE7FB87197E3AF81527C0A8E4FD7D953EBE6C828BE39F010051FCAAEED77EDE4EEAFFDAFF8FF1BE0000BA5466D6ADD57F';
wwv_flow_imp.g_varchar2_table(64) := 'D9830645DEC0068C80A1320CB99A5800A4DA11539B107E0493B5E270F5E6C130A33B02012CFE294640F378606102D2D94FAE7FD936904DB0F7ED1700A21A075503208D0F8E5300D00CD491C2F4107017C1E21F608FD363E339FE5C7C857D710102F304C1';
wwv_flow_imp.g_varchar2_table(65) := '0C0606ECB610871D79727D8287ADCDF4C7DB2EE07F18EB23C51F153ECD7C6EAE77A8E6EB9727F7BCCFBF2F00004C8112BFE90590FCE516281ECDD42BD6EBCF7EBF09FE32F11BF58FFEBF580033FD810BA0DC00E50C184B8198FCAB13E000051A007C8223';
wwv_flow_imp.g_varchar2_table(66) := 'B8DFE2CB235047A7F42A550428652C69FF30F608A73E43FE32E8594FF0DFECE2C051BD6F76ABB1BDD2AFB7FBC6F97DF900A8E22F263E25A96B56DF8D8458B563A220A97BD0F8BA0F9EFE7A8C2779FD1BE9FE2AF883F04F5B0597263E6C063072A11B8E9F';
wwv_flow_imp.g_varchar2_table(67) := '050246C7B4E971050C80764C3121447FC560882D8871D3E1BCA3601ECDA887471DA04F8B404FFEB10B80AE805AE24391A014F961173C3807CA4950C956AF31D904075D9FED85EA1D106643ACFE07B3A0615A00E0C035047F70EB9E027F385AC87FC358E1';
wwv_flow_imp.g_varchar2_table(68) := 'B46F4020A0102135F90FADB09905F8620CC02C7F581500F290CC2D7D06C02DA16396DFCF6FBFB5597E247A25FC7A5B4D7D8215902BA0DF32F153F0B7B5713F4DB1705BA5257FA3FCBDEAB7441F557F267EB0007402E4F77511907DAFD5C0BE32D82700F0';
wwv_flow_imp.g_varchar2_table(69) := '9B461E001AA773FAAF3500E7F4697C91F7B260000A10D0B7EAFF55CADFE9BF62D413FDFB48F6BB48F64AFCDF0500786BCFF9A6D1BD32CFAFD70D5A5F3DF948D66001203AD42640247D77EB2BF7CF3FE7863F7B3E9DFD58ED7BC20DC7BF51F857FDFEF352';
wwv_flow_imp.g_varchar2_table(70) := '31F3EC63729757BA33009E6FC7C7FBCF7542A07A0394BE7FB41DDC893013BE80400504E14E18631AF381BA0E02B08E379900800224F4412710C2C13412127B306E1214A8A8A060040852F9A7D66034119243608C0ED23700FE011B9F20B0EFEFF57DDC07';
wwv_flow_imp.g_varchar2_table(71) := '3090A385A917A8FE028330B05826AF9EDA5F2CF9AFC0C23D7F76AAFCC1F481EA07B0CFC48F59FEFA33AA7A8DF95560E02D024E056821906DFD4B9FFFC7A0ACD4B651E5EFBD7E267FB3FA55CF3F6FC10044D2D7F72E122CE63F4CFE02006B7F7C03802F92';
wwv_flow_imp.g_varchar2_table(72) := 'E4FACF382E024B211047FCCCD92B36F3656F1F49DF683FCCE5DB6D54F94CF2DF6F769B6FDF361B4BFE0E00BE6D715B98806F8B913F59FBA2F21F2AFDC99407499B74382B6455EDAB95F230D39F097F9EF1D76BC4329F2284982BFF5AE12BC9EB3EC43405';
wwv_flow_imp.g_varchar2_table(73) := '81C3FDC32400387BB100753C706621000212BCA035333201D58570300EF44381DC04D15F4C043800E03CBD0100DA06A345A055C1020A7B7E9E5F836379D575D07E5FA8F9EDFBBA40887B0666F3204FF6F40ED0F796F8EF78FF9D25FFFBDDC66F09049C25';
wwv_flow_imp.g_varchar2_table(74) := 'B0E7B015308C154E0E8383AFC071A7CBE77FD45CF2163FDC80AAD2FCD0CF1FF43DAA7E4FF8378F9BEFACFEF1B38DF3E1FEF4F7CFEF45FF87B31FFBFC83C10F3C2B43AAA2197FB3F955AFDFE97DF7FAC72D847FD7D001D8EA5FB60494F4E5FAB7BA0A78D2';
wwv_flow_imp.g_varchar2_table(75) := '00F8077B66F4BFBFA5FFFBDFFF775E9CC4E73F052EEE2F785AC99C879893D145F51FA37BDED7B78B0012B96EC74A7FB7F9CEC46F00E0D60080FDFC0D55BF81800A1AD2C4A788FBE8CF5F57F8D644378EC355B15C8EC60D893DFE1E1AF5F00F1C6D7C57A8';
wwv_flow_imp.g_varchar2_table(76) := 'FE3DC95F95BD25EE30DB896A5F893F4D46667080542C38514704F1466B359FA0A6320015F8D45D057A3E78CDF40FA8BFB17AEAE605D7AEBA71F1F58B301DD7E2825CEE136B400E1D400213067269ABEE83FE6F341EAA80625E31ACC981700F8C4A1F2040';
wwv_flow_imp.g_varchar2_table(77) := '5F77F7A8FE0D04D8F796FCF33E3004CE04C86590AB882178C4F86015066A64502D814317DB63FD03CEED02B33CFFC7F33D302993A056F97AE5BFB5733EA97FF8F60308E0CBE6F9471060A23F670168E8E38B7DC822CCCE7E5671E3D849CBEA65F247857F';
wwv_flow_imp.g_varchar2_table(78) := 'A7453F96FC7DC90F40000000AA7D030BA2FBE7C41FD43F93BF7F9E13205AE0A30FFE301B007CF007F0D97FFD5AF21FEF433A1A55FF5AE821A11F1880ACFA49F547C56F553E2B7E4FF83B54FF56F95726C01FBF0DC600FEFEE8CFD7C53D95E217E5EFD726';
wwv_flow_imp.g_varchar2_table(79) := 'F6CA9342E7E92ADFFC525D6735C3643B8D3564EF7D76EC2BC91965010F8171C46FACEAEDFAC57FA7C3981B9756E65D80212A8FE9BDF3FD2D14FF85E1100B3056FF4B2600611238C2DB0F6A33B258CEC4E13B5C80392C882715B660F879DAD2A30B389F14';
wwv_flow_imp.g_varchar2_table(80) := 'CF85E88EAF5B4106C5876A3760BC2FAD86D1DF87657024FE0904000020F90B04CC4C00FC0A3452580C865626040208E4D4E460358CC82C37109EFDF5616A63F8515AEFF3EFD3FD6E5DF807FA1F891F095FC9FFF61B97F9D0DB1FF43F94FF55FCA79141BC';
wwv_flow_imp.g_varchar2_table(81) := 'BE1F19F0F59FBCFDC1D848E96F1EFF50FAFBA21F030096F84BF2571B00238139E7FF602383B6FD8FFDFEDAF7CF36DDF2D36B0070F64774BFC1E744A026FBC881CC6BE31ACF62F2133BBC0100909C41FBCF943F287E24FC11041440C0EADFFE1DCF1F1DFF';
wwv_flow_imp.g_varchar2_table(82) := 'EAC63E780914AA3B123FDE341DC1E37B5C95A7F97BDEA738CD7D7789EE981A23C1E7F57DD9E7AFE2BEB1AA6745EF450C3DCBFCFA26FFB2FC77BCFEF8DAABCB8198C0E73E7F26FE9105D08E05B545B4B3603125E8BF3A798B21612FEE1F390E3D362F90FC';
wwv_flow_imp.g_varchar2_table(83) := '4B8236CD2452B9110187041953CB81D6BF18E32B7E01720CB4443F03014FFA230330B403A817F0CD83B1AC08D57FA87ED7780000200049444154AE3EAE7B078AABE0DC2618499338F514C5734B18F3B5613CFFCBD15712BF2C7D73E2A77AF9A7CA3F13FF';
wwv_flow_imp.g_varchar2_table(84) := '120888FEAFFDFF05F5EFC9FF91987AACFADDE0C7CD7D60F2936AFFABA0FC0102CCE92F1900D1FF1A0DF4AA7F672C00847E4AFCAE3088F3B31EC563C4CEEDF36C06E039D9EEC21EBB46572E55AD4C735970B2E2978F37137FEDF76F35CB8FCA3FFAFE53CF';
wwv_flow_imp.g_varchar2_table(85) := '5F7D7D50FCA0FFAD25106D004BFC6A0994EADFDB07B1B52FD5FE7544CF93DA24984382B5939AC996223BF4724B051E176D54E191BC3D14E3E36A9A1BFAF6CC9599EC97AF3F82022EA7992E328BDF3F80935C28C4B7364D00681A216FD70481B870D7C74E';
wwv_flow_imp.g_varchar2_table(86) := 'DF0F16CD7CD7040371BC2891973E6858C09241907611F8A41C3FAC209540D4424AB8B3041DD21D3835EF17FFB4139E6D83AB0EC0C1C03DA87E0701D102C8D680B5085C0B302C1BD264007F175B03C63EC05D4EEE82F8594B894227304D10AC5D6A9E6EB5';
wwv_flow_imp.g_varchar2_table(87) := 'BDFF052A892F1DAD69E815425F3FF761E39B8E7EA4FED9FF97E06F6C0194DEBF9BFAB0FAE7889F847F12FDE99819E6FB197B54FDFAB2AA1FE37E1AF103FD2F06A08CFA712AA0F6FB7D74B0247F305105964EFDFF7306730D00DEFF9C39FBDFB8B717A924';
wwv_flow_imp.g_varchar2_table(88) := '5FFE8289F98EE43F0BFC2C81C0D8C346FCAADA9F7D7FA7EBC102CCCA7E25FD85F23F92BF7CFB91F835FE07031FCEF897B1BD61FE5E6421933C2ECE3AC1F13D7ABA99EC81FCEB4AD9ACCC45CDE76DAD0C484C063BAED71C5F1B1714267C250651FE0594A8';
wwv_flow_imp.g_varchar2_table(89) := 'DE4EDD406500004632014FDFC744C01204283EEB1301A32E40C9386E8BC66366805C0455AD0594E4EB73B8F8C5937D018D9A16C9DBB22F6258B0525A0FD1F7AD76C46595B056086B89909880610A402240B60B2402A44F408C15120C6075310C85F4BDD3';
wwv_flow_imp.g_varchar2_table(90) := 'CEE13298DF5720E0DA81F2B9D78BC41ACB76CA8BC8A1F37FBD00A89FABDA7B3B9F7EF175BB61E32B731F33F6591FF983EA9F7D7F0901CDE8A78C026295AF5C02E1EC97FB04CA3A5FD1FD25F943F087AF18F9FB4316C0ED7E290264EF1FCA7F5B094C8BDF';
wwv_flow_imp.g_varchar2_table(91) := 'B5E44F0000366A3E074FF949BDFEB51B00BC3E865FEA15D64EFE41CB52FA7B43F28F8BB89DF076E2DB051C89DE177770B65F423F257B57FCBBE86F39E237ABFF879F49F557C1A0D6F2DA38DFD0F3A7694F8CE855EE9A276C247E5E3440E77225A8F7FB12';
wwv_flow_imp.g_varchar2_table(92) := '04C036D4C46700020203874082FF5B54794CF80122F2DFC6D720C8880B4B65224AFD1B5A005E9EA3E490DE00606014632D058E99CCB957907DFE640564D9AC49876406A24D106C416580AAF073AAEEF5F848F6A31BA4DC1FAB58143E0B0208F97BFCAFD4';
wwv_flow_imp.g_varchar2_table(93) := '9C75D117605A00223DD90CAB1DA07D011AEF830F0035020202711FFD01CA38602E1DAA46420632387E58CC83642204C7C11114C85E38199DBCACA4DE6464DB4E71E1794A88B80423CBE46F9F017C3192EAF7F39E49BF8AFE62AE5FE37E45EDAF8A7F3002';
wwv_flow_imp.g_varchar2_table(94) := 'E2B81F2C826DCC0FEB7C717863319503F69AFCBDDA07ED8F9E3FC7FAFC36AD7EA5FA97F00F6D82B9EF5FA8FFD06DECAFFE4FF119BDE56B360078CB687E81D79A2F000BFAAA5470B8E06A8317A9BF6AE8E38A7B55F832EF51A297D08FBD7FABFECB285F4D';
wwv_flow_imp.g_varchar2_table(95) := 'F6311910637E48F07585AFE6FBE11A08E19FC6FDAA05AF046C40EB38719DCED306B0F002E7529050796F73494C008242ED92215055279620C1019277BDD047B29F4144A18317147179DF6200469D82AE4AA33A2BB500C201DA01009E6099FCD7DA03B555';
wwv_flow_imp.g_varchar2_table(96) := '403010E3921B7A28101428A1C7C40712F650D94F8B9CA2E2D726475A3DD7854EA1E7F00531D09038F8B0DB4180966D81EA39E0B6C2B41EAECE7F3125108B8634F35F0C829C31482F8001341446402E826A1300240014D4EF470161D92D4060585B223AD7';
wwv_flow_imp.g_varchar2_table(97) := 'EAED292E37C70200008131F9AB4583CF04143FCEFFACF623A93BDB47939F9AFC75DFE4FC07A53F1CFF1C58B8B90F0040AA6134816176BC06B26CBE3F133F923D13FE1FDAFCD2EB5FA020E6FDD92270873FB709BE221BC8BE7FA9FA8706D4DAF8DF293EA8';
wwv_flow_imp.g_varchar2_table(98) := '377ACD06006F14C8AFF232B31279000053F55F7BB5BAB0ABF2575F1FC91BC9DDE6F773863FEF43B29F1880E20330AEF0A5C08F093E5D0399F417EE7D69EC236A5B293093342E182E12D27CB7BE77D1904C5FF038F574D1D7E57D5A271BB7640762CD6C1D';
wwv_flow_imp.g_varchar2_table(99) := '1103E0D0B8D8FAE8D8C412442B205B03AC0707F5F8A8DB280C80B2499D4C2A3A0800398D2BAA629F0D820A03C0E42DE160D2F5D548A956EA95D267E28EAA5F4E8A65CF03F73638C82B36CE3A16C02CE90B6020B40A9E25B315A09EB0761300048CBA8064';
wwv_flow_imp.g_varchar2_table(100) := '0672C19054FE61211CEB854710303B064223B07412742F81000AB21A2E3B06EA8221BEFD20ABA6499A535D6FE6F3BFFE9E51E49BD33DA9D710FB87CA1FAC1E93BFCFF6DBF9CF39FFC9F067A4F8ABB56FA1FA0DF46D0104E020EA8A1DFFDC7DB494601E4A';
wwv_flow_imp.g_varchar2_table(101) := '7F4BF04CFE7F90F8A5F4CFAA3FBDFE4DECA78A5F4B805CF847EA7F10FD7D91E4EFA749FB009CEA54FA9CAF3B2490FAC390FCEBC99F942DFAB3A4FB59F97BC257F2FFB6DBDC7EDF6C6E5DD52F511F15FE1303A0797E5DFCE1E4A7CABEF4F5795FB5E31D97';
wwv_flow_imp.g_varchar2_table(102) := 'EE8C956C4D9A0E00481542250E0000EFF70403FEFD40D90A3008188872242350284889BD0EDD8AB25C15871537B941F0B7A2D05CDE35766CF32702833230007C40EA5FDFB37A1F35011C0BAC153EA72AD232592D20192ED5054FB611916080493CD738E7';
wwv_flow_imp.g_varchar2_table(103) := 'C8A6B7734214CAD14E8E75AAED931A0F1C83F6FB652D8DBF87124B1F114492A8ED00591057D7C0615B618004F5F4B55B20D901247F24FBC13D90ED831C1D94C11040400809292614C8D471A2E3D4FF0CFEDFDC0A38C51566DFF9BF3FF92BE62BC99FA37D';
wwv_flow_imp.g_varchar2_table(104) := '18EF43F2BFFD96637E50F64F76BFB4F295C00F6D84A4FA4D5300C0A1BE3FDE7105D33EA7FFB0F51EFFBD277F13F75D457F1FE37E30F691C14F2CFF51D28FE46F401ED5BFDA78C7A8FD4FF1D99CE2351B009C22AA9FF83557F2CA385856845CEAFBE224CD';
wwv_flow_imp.g_varchar2_table(105) := '8BBCFAFC48FEBBCD2D67F72DF11B00F86100E03B12BFDD278020DA7F5EE1AB95BBB91DB0FAED97B13E3AF885356F75B22BE37E12E8D9091D95BF0100BF186F0B5D4B40505981020482C22DF70150A835200D410284010850A13EDEB767648C7CBF2AB4B5';
wwv_flow_imp.g_varchar2_table(106) := 'CF4987DDFAC2D122021CCABAE2552216A0249CF40D18FBFF12E3A52D3240991C16F37818EFC35A6455EEFC37FD5C049CB274C6B1417F071A3ED5E3A43201C1421421617667E919402322B462A40DD0D222D80A0F2642B42E0630E016412E1432A018B6C1';
wwv_flow_imp.g_varchar2_table(107) := '211C4CEF004C1258E23747C1CDE6B7BC05C25970CD5A383F7F81800AE34E3D09F09CF33FF77850F85716FAA0FACFC4AFE46F73FD9AED4F9B5FB004A9EAA7B14F78F8A3F217DD0FC11F55B20476060064F063B7EAF723D923F9DB789F92BF1CFE340D1042';
wwv_flow_imp.g_varchar2_table(108) := '3F4FFCA0FC35EB5F937FCCF8CBECE7135FEB9B01F8E41FDE7BBDFDD4CC21B5C8C9AB2AB3E5E38F645DAB7E247924FFDDE6873100DFF1335CFC68EA53BCFC2B00489AB72CDF196C7A69E033FBDC33E18BDAAE159546FD44DF8BFA578F16D4A146BD0C1854';
wwv_flow_imp.g_varchar2_table(109) := '3640FBC291E4E73E6E26FF911D1030F0DBD88C5767C5D3496ED40DA410B07AEC1C0200C40A830DD9C1F9E360774666A0B605A411D032A3E8BBC79E842500A896CBD2640C9FA7F41A9CD6B8E18A65ABFE91E469F12CAB67BFDDBA1F44EA3F726BA4F40000';
wwv_flow_imp.g_varchar2_table(110) := '02F49B0FEA7C4E186405B897002C4C5D6024C640A02067FCA11780C80FD57CEE0E40C28789903B0AD248E8B79B0ACD2000CF83566014054AFBB15C2773FAB37E10FDD6D6C3CA382636ECA5E0CF857EF6B548FEA8FE7F98B1CFB787CD2D5B016201000054';
wwv_flow_imp.g_varchar2_table(111) := 'ED030058953F27FD51E459AC7D39BD03E60E237E9EF869F0F3FB3E01C0EF3FB6CD0FF4BF0000A87E63FA700B5D5056FF6090C6FD1B4F9D83A7FFA45EFF1B9A01787D0CBFDE2B54BA7F10FA148A354EFAECC3AA1FEF0A7FD2FE48FE00013F2CF1DF12044C';
wwv_flow_imp.g_varchar2_table(112) := '0060F4F11F2FEAB8B0A35AAC4E7660AA5D89C0CF80DF4799A4AA17FF1E754351F5C7EE775709F362EC7DDA6D5C98172D0156FC6B0C800040A57435039E5EF5F35C7849FEA50F3C8C1A66560F07C0F9C03BF682B40A06725E70A09C259A8CFE3AFD009201';
wwv_flow_imp.g_varchar2_table(113) := '4860665B127335F228C644E2AF2D1C6302C6968E263790DC0102DCED91497FB8D5B647BBA5583058071E9BC150F97B46744613A1E24E58F60D80524E0BE204071BAE2406132041600501E12058AA7D03010000BC756030B604708C8DA0B18280C1F551F2';
wwv_flow_imp.g_varchar2_table(114) := '86535D798671DF65BB6FACFC25C644E2BF76F19E09FC40F9A3F2D7D703BF2F6D008EF7F9F3D8E3D7DADE2AF093C3A0E663151B4DE178F54FA31F03EC46EDCF95FFEF7B98FC180B00873F6B15F08B891F55BF097EAF52B4ABED7E1EF7CA299DEA0378BFD7';
wwv_flow_imp.g_varchar2_table(115) := '6D00F07EB13E9FDFB490F6E75B0B75EFA4F097C217623F53E18AF2D7FADE9CED77D39E0A00BCE247E5EF20403A80C200C4385F5483128AE5263E55A1D5690F945CCED3E3FBC9B9AFFCBB4C7E9494E10C967DFF41C14D26400A6EE9026AE53F8200D2C4D1';
wwv_flow_imp.g_varchar2_table(116) := '02C8443F18C1508496D4BFB6E415A1204582A83CD2263692FC90040E11B7CF3BECE631AF10060ECB81C40221F963DE1BDFE7F4458A32A3EA975E43024E89F864DAB4C200C0FDD1AAFE910D803E409E0F453CA8C980A84CA95151EB6AB0A64DDFC77D0E86';
wwv_flow_imp.g_varchar2_table(117) := '12976993A1B50DA215E0C70D808058806A1E041321B200A5FA7730505882100646AB29B524BB61B780CCA2C245B9ACDA79C6E77CE0FCD7381DC0754EF880F9C36C3F0C7DB4C56F65D4CF7BFB040096FC03041000D0F277BDFAB7D7C6DADE35AA1FE06C34';
wwv_flow_imp.g_varchar2_table(118) := '53CA361EAB7FAAFD45FB2BE9E316B3FEC100B8B7FF54F987C98F0CC164BB9DF18F681FA4D69EF1997CD0431B007C50E03FEAD7CE633E87E77A27BA7FA8FAB5C14F899F1BFC2AFDCF1EBF287F4FFC060294F807173F890755FD53195E124F2C14500770F0';
wwv_flow_imp.g_varchar2_table(119) := 'E1D69C3E014075F12BEE7EA818D09B47F22EF4FE54F9CF9A803479015DEBC2C0E2F896F47F02814AFDC7DA58AFF247CA5F8E75F3444056814BAFF8632BFE83C7DA24F4AC1736712BB14028DA3F9C0E282A7EAD4B9E1980AA09880A5D95BF34036C058801';
wwv_flow_imp.g_varchar2_table(120) := '909193DA000102B8F931EE2F1302391EA8C4548587485A100996F6408082699C4D7C52EC6E4F11A1D80067788C0510087085FFBC3C88FB04EA5E81352D804481764C4D4CC0EC20A8C915EEB77936003874FE47F2AFA3BDF456A8064C73F2AFE37E18EDCB';
wwv_flow_imp.g_varchar2_table(121) := 'EABFB2000B116031F7C15C3F7AFD4AFCF2F487B94E31F82922DB14EFC2E54F463FAEFA2F7DFF48FE6C09180390D5BFF5FC45F9A7BDAF68FFA0FFC9C20DA74C03808F4A65FD7B9F1B817D33BEA1F02555BADEE767C2A7E04FF3FD10FC698B5FCEF463598F';
wwv_flow_imp.g_varchar2_table(122) := 'F5F9B305502B7F63047CF46FEAE73A9D1B551C3DFB29E613FD56C7F7BC4F47439EB1779773F7AEDEA591CF037B854AD676D1506217D52F3A56B7752240D4FE6CE4227A1FAF3F52FC711167D2F7F7524140180BB1B271819A9CE14453AF2F8B793508985F';
wwv_flow_imp.g_varchar2_table(123) := 'A05CD052FB21632055854B001063A045080865FE8A30F03AD982600D58FDCBC4498B9C94ECBDE28F454FE9FC28F327F83F2C9900DC47912A270594C0422B10130DB37991F60F2848B96740A6423E362A162094FF451310B6C2EB8B85624AA08E07162050';
wwv_flow_imp.g_varchar2_table(124) := '8FB33CAE8A057558513F7D3538E6FCD76CFFA0F311688AAA9F206B9AF107F56FAA7E0A006DBDAF2FF399BFB0F12F96F9A8F7EF00807EFE41B6D755D13CB74CBC1BE05D893F93BFF5F5EF0800AAE84FDFE7ACBF2AFFECFB87EB671DF52BB3FD0701D4D31F';
wwv_flow_imp.g_varchar2_table(125) := 'C1D93DA21980B3FB484EF386EA813B33801500C4B62ED27CB88867F207DAA7D0AF26FED2F7CFB13FCEFE1304C0B75FE2BF71EDEF7C018F75BD301B405068A423818E367BA9FF071570AA8145B1CF8E7E7A1CFAFF1CF1A3100B3E00A3E86FAFA52B13F990';
wwv_flow_imp.g_varchar2_table(126) := 'F4E5F35E7D01A68ABFF694350218B4E660318CCA735A8E8750BCC561B2AF97BCD7EDB11806496429239EB264092E7D6270EA28A0DA391500AC8001778DD442278D03E682275FF654BD0164F94CB7494D06D4632ACC84022400B4026C1653A17018AC9EF6';
wwv_flow_imp.g_varchar2_table(127) := '0508F8E7C3968D8901E92EE86C1167FFBD1DA0F1400A04B17088C2C0B84F3B07E80F30F904D86B040B55DA0372A534362B8E8D278E8763CFFF61A69F2E8D199F9CEFC7F22ECEFA6BDC2F6E010262E65F96BE12FE85A73FD8826AEA63D71F8C6FE28F43F5';
wwv_flow_imp.g_varchar2_table(128) := 'BD23802F8C9D31779CF3D7BC3FCC7CAABF7F5DF36B0B7ECCE697E2BF18F74BC57F24FF3DBEFE3A176796EC2D4EC58F7A8D06001F15F977FCBD8B935F883616B4988B1A057ED57F9D5EDE10F7A9D297C187F56067631FADE9E5FD620162AD6F2EF451CF1F';
wwv_flow_imp.g_varchar2_table(129) := 'B42F37025228269BD755E39E92E43351D7451F7401B3CA3EE8F90A0C7811D1E85E99F11FAC5A63CD6B7A000C237EAAF4CB6217D0F7A59F3FAF8595C0CF95E7EBE37E21FCE3856FB8C0BFB5F8EBC0EB2D5B4363F56F7431162AA56990C6F064B9ACB6409A';
wwv_flow_imp.g_varchar2_table(130) := '04690BE36C1684FBD52EF0DBD216185B0370784C7F88F2BD364B86153480EA3C56EA02C395FB9341985C0663F4756402342E68AD006D065C3805563050270616DF735C9020C02708342E18EC0080A9760BB8D665D287AC8D091E73FE478F3FDC19C7B97E';
wwv_flow_imp.g_varchar2_table(131) := '4DF7C8D94FEB7B71AB649F95BF57F874FB1B2C7D6F20F693B39F171754FB9BB648BDFF581B5DFAFDB5D70F912ED6F9CE5F58EF9B8E7F12FCE956F6BE18F75BA7FEA13518F9FDB753DABCE3C5FF895FD500E07C3E8BD3BC93421102C1568E377775476F34';
wwv_flow_imp.g_varchar2_table(132) := '3CBCE9E1CFEA3F5DBD94DCD3CC07557D49FE31DA37DBFBCA0E582B80A11AAFD46DACEA2DDBE724F2C3D85E2678CCEC4BAD8F0B82E6F853B0C76A5E4E7FB10F5C6357D902D08575BDAF2FFA715CF3BA96C8638C6F1070697950F632EB73752157CF5FE23F';
wwv_flow_imp.g_varchar2_table(133) := 'B9D81D7D703C931A78EAE1A3014C6E501C0462010434A9919E01E9D0C715C3D187D7CAE1B4148E3E73B40D5208AA6344A382F173DDFAE80000C7544DFA1A19D4A4C962C784BB55EA98AC601482D79878D0D2A16A2CC415C0E8450308A82530EE1B80D0D4';
wwv_flow_imp.g_varchar2_table(134) := '7402100DE65E01F70BB0FB5C1C882F0805ED763B01018200DB32E8C75759115DC8B27ABC8C1304FBCFFFAAEEF7F8BA6E424C090B002575BA7A82DED7CC7F7E9F023F5AFE72EB9FEC7CC12A96F97E39FBB9EE42D53FCF95D0DAE0FCD6796E263FA6F497D1';
wwv_flow_imp.g_varchar2_table(135) := '4F75F81BDDFEE8FDCFF1C05CED6B6AFF04008736FA299E073A66479FA2E7F4C00600E7F4699CE0BD2CA93FCCB2C662183BF1EC475EE882EEF7BE69F1F127D2F7AA3F9CFC38DF4F6A1FB3FDA4F8B9D92F1CFD34B6259F77EF0367A557ABC451ED5FA87F57';
wwv_flow_imp.g_varchar2_table(136) := 'EB6A9F3746F5EEFFA812D0E89E2E10DCCAA619FEE2F427E5BF4480F3A636CCEAE7FA56EFE1D76A7EB26CB55DE091B8E77DEFB3935F8C9BE5F6B7B98A1B7FCE32FD90787BF5D0299FF3FCEFAB89FFC02F4820A015C3A912D79E217D6ED53C68B946786DB5';
wwv_flow_imp.g_varchar2_table(137) := '30C639D3586A6927AC51D0D948486E80A0F86B6B802020F64B68AC902BA5CB2A695F332DEBE90204B2F5354D12B0016304B50C85001AB90150B7DC2B1056C2313A4830E05B08B30D1089DF8482F79BCD2FBBBDDBFAF7BFC33C08805720D5165225581C76';
wwv_flow_imp.g_varchar2_table(138) := '3EB16D36CF371C3EFF35E1235F8F25F397F47EBAFB15D19F1B7BB1BF4F41200C7E64E92BCA9FEB81E5ECE7E0CAD4FF6A70254B26E60D22BFACFC63CCEFBE820028FC050062FB9FC6FD8AC3DFA0195A99F35F3BA71A009C2049F54B9E36022308A0D98BFD';
wwv_flow_imp.g_varchar2_table(139) := '4AB60064E421473FF97843D4031A55AE7E8EF8090034DA17463F31D6073600BEED55DDAFD13079C4674F3836F5D1E447AB6CA5C075D73E2EEA41EFCF92BF5D3CB79BBB0002F8F9BE18F9E0B107AC7D29261A847BDC210EE1E098FC87AABD247E50867B92';
wwv_flow_imp.g_varchar2_table(140) := '3A55CC8372BB3C362E79CAF555D8C5C6E35395FAE2087AF613568EC149E1EC52C032233E8847FD782AB6B5B2150E3BE10A188AA8305A08D5E361DA3930EC1D18C743B3DF5F6D84E123A02552B9467A0BF329FA0BB843A54DA6F8CF6401B4704A6D293154';
wwv_flow_imp.g_varchar2_table(141) := 'D4C488295376C567CE890E8A3C07D74073101433A056C1B4504874BF1B0545E2DF6CFEBBDB6C7EF9D7D6C100CC85ECF84ECF802701008FCBB182A53F469CFFA0FBEB781FB67766DB0F743E933BABFE74F5B3428042BF6F49FD7BE2F742C256F666C51F3E';
wwv_flow_imp.g_varchar2_table(142) := 'FE5E7C64CF7F4EFE6AA749D73354FE26F273739FAB8D99FCC8F4C7FAFC0200F0F62FB3FED5E56F58EB8BC9A035DAFF1008F8E40300FEA7350370DADC7B36AF3EA85787DEADC6A2EAEA5E987A6091C74CF9ABEAC7ADD9FA4ADD1FEE7E14042AF9AB9F5B17';
wwv_flow_imp.g_varchar2_table(143) := 'C664C5970B675041962C42548EE53BA0FFE1D58F2AE0CE92BF40805D187971D4AD1CFD662155B40726E3956AC9BBAF475F937CEDCFCF62BDE81697A42E90A084AF6267F1D8E10151C80DC7D293179F2700C0DEA5657B5883C5EF5B130A1204F84D050365';
wwv_flow_imp.g_varchar2_table(144) := 'C950C1104BC3A1BA95507476AC24AE5B27CB92A1622EA4F1C1A0FFCB2E0125F8DB6F5B58537FC72D8E5D7CEF40816C40B404E86C39BB0CE2EF439029D5F4D14E804600026D1D1420A8CB85201ACC36005C02ADE247E5FFDF6F0000BFFD0D000033210000';
wwv_flow_imp.g_varchar2_table(145) := 'B100752C1057F475EFC041C0B6E7FCD77404C49114F945E2DF6DBE53E12F653F000092FF0000380D5093BFD4FDB845DCBCDF5F2C7D45FD1B92AE6D348DFA39E877753FBE6CB4CF1DFE040028F2C33ADF92FCFDBA01A5BF6FF5730B708DFBD536CA9367D5';
wwv_flow_imp.g_varchar2_table(146) := 'D95CCFDFEA8D340078AB487EA6D7E1052014FF55E55FB678A5C047FD7E8DF5E1C4B7797ECCF5A7B5AFBCFD7101D58E0079F7B3CA2BC231240B95953179CECB02444EB2EC4D0A90959003008000DC92157071902D6991BB1F68D359E1AF9EFFBEC43F57F4';
wwv_flow_imp.g_varchar2_table(147) := '4AE0F5623AE7D9A5E02A0F8C786CB2FA8BA3666D54EB59C5FCB31E7CC4413BB68C174F58139DF953AA9BDCDA6B0C6E73455BA0DF503615564021D1A1AC88B580283501D001D4D6932C850D0428D9DF1A0050F2F7DB6401EA5A6A4D0AE876D004B0825642';
wwv_flow_imp.g_varchar2_table(148) := '9B4D8386ED830E36D922A84C0027022CF91B08B08ADF13BF7DFDDA6CFEFDBDDDFCFB5B4C808E73FA05701B656D01D4A199BD9FEEDAF96FD33E3C5F73B4D7923E0A0109FD9201AC0E7F0400C602902580C86FACFA21F003648AC42F862B6E49FD97B69B9D';
wwv_flow_imp.g_varchar2_table(149) := 'A7A0FE35DE4700C0E4FFCB0100BF5CE58F1680B6F9D575BEEAF9C76AEED0505C5EF26F06E088EBDF5779C828E6A24F3AE77B350A554F7C3FE1A5F075CA1F491F73FDACFE23F973C35F71F693BA7FAEFA11CF9AF0254CD4258175C130F25736F5A9075813';
wwv_flow_imp.g_varchar2_table(150) := 'BF8452DE0A30A1156ED3CE7709006ADF3F0C7AD4BF176D3AD3F425B9CE8CCAEA71521F7FC481345469473CFE5C1EB2060286F7B66825ACBFF37CD8840EF870FD3B68788907AB03A1C47FA9057020CA9D0202007EFB7D4B000B2080BD14741B0CDD401513';
wwv_flow_imp.g_varchar2_table(151) := '6A14562D08D1E6989E0946C0DEA41F1C551F908C00402876098801802D70A9FE59F9FF5B00803101AE05300680FB036C04D1C07168467466ADB0000265BA1DC0BF467DAD5D47C6C3EDBCE7D61FD5FE2303A0E49F3A0053FD034C8C22BFA0F829A294A775';
wwv_flow_imp.g_varchar2_table(152) := 'D82E531F93E3BB32DC52EF7FBDFA87CF3F8C7F6AEFDF3D3E268B5FF704E1B52505949799FC1B009CCB15F495EF635FD1572F98A80C78A12A6E68EAFB8FA85F429F51F0E7C99F40409BFDE6FEFFB0A9ADCC88576A3F366A158B5E8C34D9766F39F5D193BB';
wwv_flow_imp.g_varchar2_table(153) := 'A8F69D01F0EA1E095D55BFDA0091FC7971D5E3520700207130F91710A061FB4315FF311F9D3E87BDC5F9930F38E6B79CF163DEF8EF53950BF3218E1086B8749E02D06221580A8F20808C800300247FB50AE6DD142313A07659B5C516A8CE2A17C250AD20';
wwv_flow_imp.g_varchar2_table(154) := 'E62641DF3AA93D02E90BA0EADFA8FE5FBF379B7FEF369B7F7FA1FA3720202D80A604D4029009561843EC69CDA0BD56CF7F4D38542BEFE2E659C6FB42FF13A63E765D488B5F01823AF6E700A028FBD3D58F6D932A8615E53F59685797BF91FECFDE7F5DF2';
wwv_flow_imp.g_varchar2_table(155) := 'A38900D0FF25F90FFD7EA3FED7697F9D9F970407BA0570C6D7CD63DEDADEAA71F0F19E123F053FAAFCC7D9DE44FE10FB65E5AF71BF4CFA50FCDFD2DC0754217AA9B27D0D45B83AA64EB9E549A893B1F6E572AD278D7A28E28B11201FA762CFDFA8D352F1';
wwv_flow_imp.g_varchar2_table(156) := '87AF7A150216639F30FEB131AA32C39FCE7BE9B32ECA7FF81C6A165FBB521C59ED1EF3D97EF6C7AC029E635B14F3F8AA0723171DEBB8CA56401A0EC1B722810092794E0158B2B7FBAC1D80CA9F00803A00AC1F2E93011A2BD48400FD061C341763211CF3';
wwv_flow_imp.g_varchar2_table(157) := '600694F00402EAFE00ABFE7D1C90237F12FFFDBEDFB105B0F5DEBF92BF7D3F0A01B13DD0D80454B479CCD64A3F81D25AE2979B1FC47E61EC537BFEABA37E48FE1AFFF3EF8BFB9F6FF52BC23F808EB273A12C5DD2FBD67958C76F9D29F1DE3DA77A4CF3E3';
wwv_flow_imp.g_varchar2_table(158) := '2D80B2E4E79E76BFD602B0E53E1C09F451600AFEB4CA77AEFC716E97DD0AA5F5B4F2ED673F15F7BEFF06009FF8A31D8467D3DF9173DA9C638E0D69E3220F08A664EE03DA1F2778F6FD21F0598EFF85DD6F88A7000024FA8BB1300DF744F20700D0C9393B';
wwv_flow_imp.g_varchar2_table(159) := 'F8A14A4F731FA9F867006017500702D5C3DF1DFDF6F4FCA9F84FCFFED18CA73AEE3D978E7F92065F3BCEBE085858D32DCC7FEE22EFEF0502F90FC3FCFAEAF19DBE03728EC42E020050F70460B28626A550FCB164085301B219D64860F50A802D3101C1F4';
wwv_flow_imp.g_varchar2_table(160) := 'BDA664EAC40B56D9E606426301040062D994D606B3F72FF11F2A7D68000C00980EE03F9B02B8930890AE811C05DCC7002CCEFFA2F24FB1DFECEA9982DF1CF7D5B5A0BAFB15973FFA02E01A82E46FEA7F0021A8FCEB521F0122BF659F7F48FC45E8BB18FB';
wwv_flow_imp.g_varchar2_table(161) := 'A300508E7E10FF0110A4D94FAAFE21F42348B2EF3DEB6B6C7225F93B273E1E685F9D0D6800F0A50140F629C7F9DEB4F48C513F1BEDA933FE53CF7F0000EEE19F1BFFD067C505526359B1BAD7E39B1BFA6AD297BA1FBDBAF4F416EAC705A0CCF7F37B51FA';
wwv_flow_imp.g_varchar2_table(162) := 'A0F86904E4223F3306CAEA083EEAC53D8DED84DAF31F56EEEEEBF1EF49568BA4FF928BC74B9E7346C7EC5B24FF31BCA3B97D154E0E14ADC60B37050494E544613065006062030C08C431AB6ADFDD0159F91740308C1216AF003C16E700D882C27E514C17';
wwv_flow_imp.g_varchar2_table(163) := 'E2408E0962820595BF8FFE794F1F2B82D7C6FF620280A040F4BF3D171572D1003038B53D12C63EF312AF3AE247B1EEA0F909639F5A0C8C00004E8AB8CF137FB8FB95DEBF9CFDA23F81CF7670CB24ED8F6ADFDA2375D67F74FB73773FEBF587CF7F5AFD62';
wwv_flow_imp.g_varchar2_table(164) := 'BB1F94FFA2FF058E5C27B1E2EDBF5A407DF2F3F1B997860600CF8DD8193D7E74F82A6F8C234A29C01BBDFC63BEB7D07DB898A1C79F543F66FE5DFC4706408F4B57B532E7CF3EACFAB25E06C556BE44E341F133F183B24B872FF4F969F43324F974FA0B17';
wwv_flow_imp.g_varchar2_table(165) := '4052A1C3C29EB2E94FFD7E8C658979C8CA7FE9BCB7BE746730DFDF336A3528DF8F394EBEC8C5E6181000027FFA6FAF48720F3A7B33AC000020004944415408D8C30288690AD741ED2228CB7FC24170D82058560A93DE4762CF2982D0B404501063203F81';
wwv_flow_imp.g_varchar2_table(166) := '6C81391870239C140ABA26D0742D8F7009847785B6064AF8B7F3F13F07011C0354CFDF9800FD9B8B05A96F31A0ABE3796E01887D7056A424FFC51E8F002EAAFC47E62F687EDAFAC2DBBF54FA5A0614463F58E5EB7E02EAFFC79C3F12BFF52B34625B0D7E';
wwv_flow_imp.g_varchar2_table(167) := '60A59C1A1F17F3F9582F123EE87D39FFE9FB22FA63DF1F2E7F1AF7AB1B42D5260929228EA67AA87D91F3F1984B4FB439FEEF7FFFDFB15DB9E7BC6E3FF61D22100060FE0429F6C1229FDCDB8D6A3FE97E997B54731F09FD52ED9FC63F1003A1F25165847E';
wwv_flow_imp.g_varchar2_table(168) := '2B2AFF001C75085C149CCDDED276536E7E42FD69F001819FCC7CE236287E9AFAB8BB9F16F6D0E7BFACE7D5D8E068EE8315C0B5E2072598063EAB8B558E3C3B0EB1015F9D46DC77A80FA19BE2787C4B60FFE22355BBCE3195A9004D095C99BB60B00293AD';
wwv_flow_imp.g_varchar2_table(169) := '70DD1C3858078F13040BDB609A0859B28716862384DF373E0E2B4D8166E91D037BBB0BAB83D3F407495FD4BE6ED50A083020EA7FDA0B8024C7AD91258955B16F5DE415865C01FAC560C8C6B7B4F868F6E5C500754012F855B1B0C6FCB02C28137F18FDAC';
wwv_flow_imp.g_varchar2_table(170) := 'CCF94BF1AFBE7F3D8F95F4A1E9A1E2BFCCFDE3DF47EFFFACFA45FDCB2EBCACF58D7D0953F27F876BF4B9FF8A6600CEFD133AF0FED6014011FCC8C79F96BEDAD33DCEF5AABA07FA97B14754FEAEFC17E52F7390E297AEAA9F263E76D119B7F781FED71ADE';
wwv_flow_imp.g_varchar2_table(171) := '9AFC55C58BCA4F553F4080CFF597D13EADEBD53CBF1CC21EADB7EFE0826B7827719F8452E3A29D144EEDED351F99FCE78FE8457A804F7C1C1EFBD69F93F4EB6B2E80C4C4C00C8E84C5795036C4AA843135A0AA38BFCF5D144B2BE101009449014BF4F0C1';
wwv_flow_imp.g_varchar2_table(172) := '0010F86100805FD2111828561BC067D9B52E9894FFEF3B88FE54F5ABD2574B40B77529103604E6A2AB2A5E850030477CEB164F581D03C0A7AB67A1F8799E4BFF93BA1FFAFBABBF4FEA1F49BF3808564BDFA9EF1F8649DAA1F0881149197B89FD83C18F9D';
wwv_flow_imp.g_varchar2_table(173) := 'F732FAC9B1BFB9CFEF89BF54FD46FDFBEB71B98F7D5F9725CD8B7D8E3D66BFFAE31A007CE64F78B10B1C974AD995DAC50E0A5FF52835ABCB5BA2FBA4F9E5EC95863FE1FB4F3390DCC2964A7FABB4C2C50FEF204E3E5FDD4BE72DF5F981FACB628F70F593';
wwv_flow_imp.g_varchar2_table(174) := 'B1CFD61DCFC2E98FA37F467BE6921F52A0EC835645FFD8D74F9534FA80C51B9D996561DEB337FB3C7DB074F23F1CA39782807DAF5AE32D16A03202667A9B62549D1BE59680004CD9B485309C04D325B0DA08BB095649FCF6FD4F0304DF530F230060E0D4';
wwv_flow_imp.g_varchar2_table(175) := '18803BF6FC63EC8F202092BF160195C54002002E2094A685532CB41C88F51E1AF5D34402DA7DA951A87B3CD0D64BE0BF37F9BBB7BF6C81ABC14F8A1D25F4ABCE7E83CB9F53FFF04C940607AB94712D00BD6FE7BD39FC99BD2F6E4DE4875B54FF6EF2637D';
wwv_flow_imp.g_varchar2_table(176) := '7E37FAA1DA3F2C7ED3E16F5C9474A91CDC11D7AB6E013C1DA4B37E4428A398FCCB5A5FF7F4D70580C21E8CECE9A4678F5F941F6D3DD106D0629FA20C26F5AF8B6508FDE22AECE53FC79290F873831FD6EA22F1E3E4D54CBF687F4BFABFFD22C0DB62F35B';
wwv_flow_imp.g_varchar2_table(177) := 'AB7F13F6E5821E8D144EF4BE87631C915A13FDECEB5FBF245175F23FEE4C79496CEB2B6BD46D2FF3A211581C02B41CE6FE01DD479D4CB40BE82790BB05CA3221EA02CC26585E01B2111600B0C4FFE3B60000D3149808CE366D31E9C1BB6247F19F66FBC1';
wwv_flow_imp.g_varchar2_table(178) := '023800A030B08AFDF6257F63D454FD4B5CA1E4BFA4FE25564C23AFDCE7315E03A205C8EB44CCF6DBB92F6F7FDF8B50927F8C673AC42E8D75F6FCB9DA3AC7FECC11B15C0FB8D6D7ED7D2DF10708B8DEFCB2E46FE37EA4FFB5DCC77AFD12FB4944ECD71A99';
wwv_flow_imp.g_varchar2_table(179) := 'FC4CC2BFE38ECCCB7B5433009FE033B7536AC6B0E3CFB650435EE918BBA9EE7ED5D257D49EDF0E5EDE140186AD6FB2049AEF97B5EF38E3AF77A2AA9F893F28F9DCE0B756F9638C2F2B7F5F7F1AD5BFEC7DCB589F6F03D40C7FBAA0D579E821D12F5892FC';
wwv_flow_imp.g_varchar2_table(180) := 'C08F15AF7D8243A4DF22233083B035505667E5ED69D55510E74D592C2471A044806C0358956F2D801FB7C9020804B8AD30C7610D2457006002C0A0F89DFE27002815BF7402B0B3A66360F1B218B42CF4D4AF7F47D5FDE474C298FC21EC2DEE9EEAF79711';
wwv_flow_imp.g_varchar2_table(181) := '60DBEAA755BF38F773B18F019B5CE463BF1DE23E896AC0B4A5EA3F857F7245E45E0F160241FBDF5F6D7EB9C73F96FC381B600E7FDEFB871DB00A88BFE6F24721B18A8D18FBA3D90FDF51D07E0DD2C74B45038033BF74D66A29536DBEE958AC114E5FE801';
wwv_flow_imp.g_varchar2_table(182) := 'D68D7E69E94BF7AEEFE9E8B7000153CF5FFD4258FBCADB5F9EFEACF88BA3DF38DB9FB3FC35F95B0FF3BE58FA560030247F5F7C42EBD381FAA4002A047C0904F60A23CFFC73EEB7778208AC31BF13FD90F3F2A336403E02C362218280600166FAFF163A00';
wwv_flow_imp.g_varchar2_table(183) := '2D16B2E7BA26C6DD2D7305F0B0F8E72E0181277E267D4BFE32B5B2F305BA17D0E75EFDC7DF0173A4643278EED3D23784BEDAE0F9BD0201BB1E8C3A0029FFE5FD0F4B6099FB68C46F34F731AA1FB91F206061EDCBF7AB0549768D908E27F43F7FC7CADF00';
wwv_flow_imp.g_varchar2_table(184) := '8079FCAB0D600001626152FFC726FF95CFFB0447DAA77DC9060067FCD12DC4FDAA72A2DA49C15FAED85CAAFEB5B71BBDFEBAC4433FF3A23099FDE8E26117815C86A24D6F99FCE5B2E56349DADAE795FA72B63FCD7C98DCC90048F4873EE0B8D94F5BFD46';
wwv_flow_imp.g_varchar2_table(185) := 'EA5FAB774BA731D4BEFB3FD4AE00CEF8803FC15B9BCFA135D6A7CECE636C4ED3335C2CC4F9FFEA09004B61F4FB2506543BC0EE7763201F474C060063801C0164AFDF8480DA056074BF8C82B4F2D78E7D7B5E8CB3723D35336E247EABC8B172173A064DFC';
wwv_flow_imp.g_varchar2_table(186) := 'C8CFDF29FFB2C743D702A9FCD51250E2F79E7FE9FDFB4A5FF7F6C7178093A28BDB54F86B2B22DA140FDC8EA8515C8199E57A5F4BFADAF297B71000D6053FB8B668A35FCCFB872B22D5FE2B22DE3EFF9B0138C165E6ED5F526CDAFCCAD5E12B469F34774B';
wwv_flow_imp.g_varchar2_table(187) := '2BD2ECFDCBB14B3DFDC7CD0F0300DFA7359EB5E74F3F801CF743F277F5340553DAE31AFEFD45E467CB3754ED4BE8B76EEEB1D400547B5FB506BCF7CFB13F3986894E0C2B4FCD98EFA1FB8742903FB42CE8ED8FD9737AC539D1D75C700804080054108084';
wwv_flow_imp.g_varchar2_table(188) := 'BA1C0F0C10E0EB850904682D1CCBB078A0D9EFB42540D857914640DEEFBFDFE1BE5810543657DAF1EF42574CB8E4CC3F92B0BF4FEFC953B3A0899FB2CC274CBC060040FABFF6FA6344908E7E72F78BAD7EEAFD937528AB7C6BD5EF225CBD6753FB97B5DB';
wwv_flow_imp.g_varchar2_table(189) := '31F6173B3D72C56F88FF0AF51FFD7F6EF7F3BEFF90FCA759FF6023D78C277240E99C8ED58F7C2FCD007C64F4F7FCEEE5C5CB044CA9F0D7ACAF4C3E1C954FF3FEEED2C56D5E9AF357F5FF63000093F56F99F3F7CADF2B0AF99B736D2B5DD953E4C7119CB0';
wwv_flow_imp.g_varchar2_table(190) := 'EF854047081F6E7D59F1E37BA3F460E55BFFDDEFF335BE72F543CF1FE33D54100BE93F91F815DE350060FFD620E00C0FFE37784B6B09BE30E6A32111FFA1B602BCBF5D4C84521858F60B983050A2402E11720F8072FE5835AED7C5D8DB58E1C314085F50';
wwv_flow_imp.g_varchar2_table(191) := 'F82BF18FB7F3B64ADF8940939F71856F7124D4263F9978C5882FCF773202B2FCB67E7F2AFD61F6E33D7F2DF519AAFFB2D6B76CF60330C7889F000B2C9093F21F9C3D39EF8F16A0D4FFB0F695F25F1BFE82FE27C3E855BFFB7AA8FD97B7D5D27BAD807A83';
wwv_flow_imp.g_varchar2_table(192) := '43ECCBBC44038033FB2817C97F873405EA2A95B7986D664F2EC6FDA0D49559C740FD9BE0C713FFE3E6876900D80AA8637EB5DF5F7BFEBA9069BE5FF3B5B16A336C7CA5EE47BFCEFBFC9AE50F100031CF68E3AB91405981E678902E2052FDE72A4F7C707B';
wwv_flow_imp.g_varchar2_table(193) := '67F8A776497CCC17E8F6756687F849DFCE2161E7DA14482AE8F1B692554BD6EBDACE35FA5DB84090C64198ADAFF6C198B157BB2CCE1B1EA7D86E87AFD809509CFD64EFEB94BF274EFA5A14032B2D44022327174E6CF14B6BE274EEAC3B3D46DA9F8FD178';
wwv_flow_imp.g_varchar2_table(194) := 'EF60E9ABEB0A37FAB9E25FD43F16FBC4F5C80180C47E0900F4FEABD14F6EF2AC865F39E23726FED1F5CFC7FE98FCD56A4C5F8FB212590B7E7494B506E0E0F9D600E0A497A3E7BFF85300008A6550717661D2DE6D2CE1487F6E13EE8C73BECBE4EF4AE0A2';
wwv_flow_imp.g_varchar2_table(195) := 'FA859F3F2F6061EB9B558C9DF5A020D36D4BB3B8A8F855F94BB15B5CFDC2E16F0900A255E0BDCEDAF3D4B85F75F12B823F60A2A5C5ECBEE4BF52F6370BF0FC63F49C9FF12400D873CC84C0766124341A0699CD75F6D9D56F2F8B8278FE44CB8CC1B2F765';
wwv_flow_imp.g_varchar2_table(196) := 'E23DB059BC2D55BFDF5FA8F2D1C5B26EFB43F2C57BC8C4EFC9DF1988D1BABBEEF018CE77B72C060858BAFB71994F49FA7EDDA1C18F0A91B0D1E4044030008B15DE69EB9D6D3E1BED83E35FB8FE15F73F79FEFBDCBF66FE6BF53FACF4ADC5402A1350218C';
wwv_flow_imp.g_varchar2_table(197) := '476B6B00A678B40FC0795DCE6AEF3F8F5DB400869E3FFB72E1EBEF17037875FBF84E6CF51BFBFD6E5EE2238060019202D485200D7E82C2E4598335BE45E8171EFE66CE0100A0511DD9F8A69B1F687FDD2FDA5F9BFE207492C359CEF9EFE8DF8F8B8B967A';
wwv_flow_imp.g_varchar2_table(198) := 'F0845F39C10FC3DDE9E03FAF8FBEDFCD1B45E0A9F1CEDA0EA8BF7270149CD800B505D2493081408EDC966558A4E8359E2BDD4A6CBE53857F20E9D7713F6532B91A628537AB7ED71D40E733AEEA4E7BDFBACFA32AFD21F045F150E9FEC1CE778BD9FE14FE';
wwv_flow_imp.g_varchar2_table(199) := 'C97304F757E57F58FCCAF3A3ECF440A2D7C8AF127FDAFECE5EFFF3D89F7688688538460DC7E4BF7A49286D9E373AC4BECCCB340370661FE5BE5EA57A8973BFBFAA7531B79BB3BBF0F2AE0000C91F1E00C502D815BF500E6BC63F057F50FBDB7FCBE45F12';
wwv_flow_imp.g_varchar2_table(200) := '3EFBFA40F8ACF265E75B7FB65680B505BCC79FBDC1143AA1C21F4EF2582824E57F0100477C7E5DE51F11A40B78C853C02008A2F0D49089507A0504085FEC18187503EAD1D7B00E6E95D2B34CF6D579ECF31CF08CA6E40B360E23BE53F2A7C0CF2711AA97';
wwv_flow_imp.g_varchar2_table(201) := '472CF39A777A902D8CF1DE54F9C35008543F6242731FBFAFA4580F284600630240DBFDC8E4D5EB010CBECCD827ED7E31FDB35CF4A39E3F9C0FA13102F5CFEB505C2871BDE8FF5E168106002F8BDBC99EB5EF589E857FAAFC61F491AB3A21F80310F03E3F';
wwv_flow_imp.g_varchar2_table(202) := '55BEE8F92FABFF18F5E38540897F4B7B5F127F4EFBCBD23766FA59F1634487483E683D99F888EA1BDB011A6F528F304779D062A8E83E7678F3DAD3E7FBC90EBF7EE12A0E2D3B07AA9DB06541990729D14B915FEFD778A1DA543AA6D5BB865DEDCA66CAA1';
wwv_flow_imp.g_varchar2_table(203) := 'AD95E2DF1C5104F59FA37D368E688644767EE3564C4075F54C631FEDF458AFFC3DE10B0030BB32CD4FAB32D3FC2794FF6A7370BB9F3380C5E3DF8CBE6CC65FC63FF9EF0001D00E15AB5F4E15E526CF6C43F675E0F5A76B0380D7C7F0CD5F6131FFAFF5BE';
wwv_flow_imp.g_varchar2_table(204) := '5AEDC9DEBF287F54FDFC52852F00C03EBFB1015AF463B7B9D61714E068EF1BB510F6790D7EFED5C657FD7C507BE8DBE5098FFE5E5DEA338AFF3CF913D563C469EAEFB3FEB00BE97A6BE4CD43DF2F78E11158638B6ADFB8B609FC2C9166A0380AFA63E695';
wwv_flow_imp.g_varchar2_table(205) := 'D14CEA02011AE70BA05B93BE1DEC55F46BAF1D23BE18F793E00F2DBD5D00809F96FC79DF98FC8BA5775DEC134B7D52E41776BE641F24F2AB6E7FC005A2FF29FEA358D15A7952FBD7053F4AFE0E001C0464F5EFD78AD01195516233FCE1BE0F2CF8E175E2';
wwv_flow_imp.g_varchar2_table(206) := 'C28FD3B7FAF31B00BC55244FF13AE163BEDB989F886FDF0A0A50637E53C55F8C7ED2EA134CC040FDC7721F00805AF91F9AF39707B7FAFD4AFA58D6C113DA6E0B135057FCA2F78FA526F20357F59F33CE0A2602502FCA8DFA4F71A0F56BD6081C6C19957F';
wwv_flow_imp.g_varchar2_table(207) := '0C30501660AA5547EC6A85F4A043035D3E015AF5A889BBC5F655773F17FD6AD6DFC57BECFBB3E257E5EF2C0019000180DCFE69AD3E54FFAE2198E7FB8BC84FEF1AD43E55FE4AF883B73F4040152D42D46BE38D280862C98FBBFBC1F16F680314ED90287F';
wwv_flow_imp.g_varchar2_table(208) := 'F9FB67DF5F3B3FC6FD1E11E73E845F148106002F0ADBEB9EA424B6EF42030A2EFB8FB81064F237572E51FF50FDAAD7FF103DFEB84F2D8070F993462047885CEC27931FCEF8CBE4076B763182332BFE077A8F02BF0002FC791EFDA9C63EAE8696C8CF1800';
wwv_flow_imp.g_varchar2_table(209) := '2F2AD071F4D854D39E6EE4BFEEA0EB679F2C02716856B05ABFAF623514CE8BC915B50BEAB9AE4902F5FC614B9C2B7DDD88A8D0FE35F943F15FABFE74F61B92BF9FF7ACFE49FDE7429FB1BF9F663FA8F8D5BE904F418E39A6EF87AAFC58F2736700805A00';
wwv_flow_imp.g_varchar2_table(210) := '160DE9F207AB5F6D0D4DA73FF5FDC771BF398AADF07FFE21DE00E0F9317BD53316F47E79B510D8541112C7FE7C1659CA7F9AFC584F2F857EE6F2F7B081C94F0AFDF0EF750D30E87F8CFE48F16FA21FFE524FC050FA5BCF1FB3B7A4FD638B1FA8FF5AF5CF';
wwv_flow_imp.g_varchar2_table(211) := '2D8071D65FA6401807C2B8131DBD8AE06F6D9E6F8D7E7DD507D04FEE083C3302CF1199AD9A4EF1A40FC53A4140F05C3CF5C0C2C9D40BE7A6CE534FFECEDA61D40F2E84D9EBF7AABFB4035CFB5366FC65F2A3E4AF6B49267F8C1727FD5FE7FB33D91B0898';
wwv_flow_imp.g_varchar2_table(212) := 'C58CD5B3005B3E73EC0F1BFE90F01D043800480D405E27C6ED7ED8EC67CC825A9049FD5707D069E84F5625CFFC842FF7E10D00DEF9B37F120050698BDE22AAFE51F95FAB7F55FEB0F885CD6FB2005AEDA97E7F1AFD28F993FA77BFF254FAE79C3F13BF00';
wwv_flow_imp.g_varchar2_table(213) := '00E7FC739C4F2732047E020412055627C0340419C7FDEAF62EFF28564676E6BEEB3B7F64FDEB2E38020B5F8E3916CFE84949C73230804AFE01F095F8B3DA97C98FDB73D759FF49F0E7225FD2FF31E3BF46F9B39D502BFF50FD0B04709BDF62C46FF0F54F';
wwv_flow_imp.g_varchar2_table(214) := 'C3226708CDB6B8AEF9A6FE272D7E73DD2FC683310AE81341FA7ABCE23E11257F24FE476F3B30DD17B39F0600AF3B391B00BC2E7ECF7EF6DAF5224D48B4D90B893FE8409EB046FD63C947AAFEADEA87BB9F8C7E6A1B809E00AC04BC6D3054FEA0FE916073';
wwv_flow_imp.g_varchar2_table(215) := 'C6DFB775F9576EE0C21EEE9CF5D7CC6E6D03D4911F25FFDC0B808B03043D49FDD771BF1ACC6ACC522BA56707BC9FD0117865040E82802301C09CFCE398D626BFDAE337915F50FD96F4B3E7EF953FDB79CE002C14FF9C0E20CB17FD7ED7F9A4B39F0CC52C';
wwv_flow_imp.g_varchar2_table(216) := '811A1080C320D4FFEA51380720204081DFE3E30E2E85B2F895BBA16FEA43E5AFB65F08007DC10F99006A0074FD18AE136BC95FDEFEF20089164ADAA3F7F5E1E50778038097C7EE45CFAC6A767F01D1FD7E21A856BF12E6E1C495510792782AFE51F93FB8';
wwv_flow_imp.g_varchar2_table(217) := 'CDAF5A00E3ACBF1803F6FCDDF00355065806361EEA985FA1FCC3D887A33930F2A96A7F8AFF28FAAB3D7F097944F98750C875051243AD887A18D9A6FF5F7488F5934E1081538080ECFBE7148E57F94AFE41F34BF047DADF57FAE27B6DF8AB8E7FCEF4B9B7';
wwv_flow_imp.g_varchar2_table(218) := '4711FAB9DABFF4FB8BB39FE6FC73AF26504D00804AFBC79C7F2E2C5AF8FB53F867D78AF0F42F6D0001038DFD99B05836BFD013CCFEFEA8FE0B41B8F8845B22F4B283BE01C0CBE2F6E267ADF513739408C93E697FA27637FEC0C98CEA1FBD7FEFF50F891F';
wwv_flow_imp.g_varchar2_table(219) := '1A800000A5F297DD6718FD4C73FE31E3EF62BF711E3714FDB4E50C1040839FA4F372B18F46FCA0E2C549BD3AF74C847F28A02DEE79F1E1D64F7CC3082CC0FB335F7BF0B660D34D6DBEDC2F204B5F09FC34E3AF9E3F7EAEC97F6EF11988A8EE7E68218E6B';
wwv_flow_imp.g_varchar2_table(220) := '7C356910953FCD7E0402F0B7420428C19F9FC7B432C63E83B1DFAF7EBE8CC0A4FEAF42C0600538F36FCCA20A8521F90F15FFBC78780C7C27FF671E88E5E10D005E1EBB173D733F00584FFCB9DA57F43F057DACFC9D01F88E36C04F4BFEFC5E8B8066C15F';
wwv_flow_imp.g_varchar2_table(221) := 'ADFC315F0F918D2B6FA7CA5F3DBA3BF6EA0620E0A37EB2F61DFDFD45FBFB32135A07C7E20E9FE3CD3128FCFEFDA1ECE4FFA2C3AC9F74A2083C4710F8D45B90CE073B3DB04F409EFEB7DF3630F6B9DD6C72B61FF755931F630034E6A7E7AF5BFBA2FA07E9';
wwv_flow_imp.g_varchar2_table(222) := '586FABF04F35364E52CA007D0C30B6FBC5C6426302B1CD53F6DE59181413306A83B0E8473A213A88BA1BA8AAFFB1E79F2D9331BD1FD2503D15EFFEF765041A00BCF351315F4094E034E6E7489D6A7FF5FCA3EF5F7AFF62002CE1A3EACF0900F7FAA73B60';
wwv_flow_imp.g_varchar2_table(223) := 'CEFCE67633EB9E492EEBF6BEBB1CBDF1F9FE078A738CEAD7092C1050C53B46F5C9BDABACF555AF7FB1B56B9E7FD69CDFDA5854C3FA773E32FBD71D1B816340401D639D5F57FF96E7FC64EEA3F1BEEF9BCDCFDBDDE6A7D9FBCAE9CF0140D2FF91FC45FB87';
wwv_flow_imp.g_varchar2_table(224) := 'A9576EF4B3DF03919F127CB9A59D2FDE23D13953BF8FFDC52643F6FECB9A6E5B638CA240665FE57A516CC0AB1950E884C20A3C178B69B56F8E49AE5F049E1AA33EF673ECC76D360D00DEF928A8170F5D087CF08EFD39DFC11DE37EF2EB06ED6FC95C8E7F';
wwv_flow_imp.g_varchar2_table(225) := '1AF57300C0090055FFF66FBA30C83218FDBF6D08FE64F12BEAFFC168FF072A7349F5CBAED3FA78B2F3D4044026FEDCFC8711BF1CF31B0C7E8EA0FADFF9A3E85FD711387904F21CE7AF8ADE7BEE0E90C18F89FD6E6F8CE207CD6F95FF4F63001C0498C23F';
wwv_flow_imp.g_varchar2_table(226) := 'E97F2DF771CD40D9E857AF1F0BDADF29BFECEF23D1AADAD7BF95EA9FFF1E0B7E54FDFBDE0F54FF512068C94F71F8536B5042617FBCA8FFB856D0E35F0E7F313289E4DF75C0690FD10600A78DEFE2D5570180C6FD860D7F55F1AF8A3E2D7F5DF93F0800EB';
wwv_flow_imp.g_varchar2_table(227) := 'FC3F1E072A30D7994AF497F6BE57C5DF9F7D7F17F821E16B7C474020AC7EED24762640BEDD58EC0317AFDCE897B4BFC677C6701CAA92DEF963E95FD71178F308D4E41F3A1F0A7DD3D77FE3E7689DEFC74C3F12FF3F96FC6F0B03E0C23F300001F2691064';
wwv_flow_imp.g_varchar2_table(228) := '607F31DF7F05753F98C674F453F2D7989FFF6B5871E6863FEBFF8F00007D7FAFFA090030D75F17FD94653FD31A703988469BB02CF8C9D66049FBB3A5F29B7F4A97FD820D00DEF9F31F00C0500DB0F2F731BDACFC079FFF61D10FC7FF34FF1F6E8070FABB';
wwv_flow_imp.g_varchar2_table(229) := '3100603BC3A9FEF5E53E7E09B81AFAFE66F263543DC6FC32F9A36727DB4E597AAA3520631F8C052AF19B306810F4708BDFEC7C56517DF7F8DFF900EC5FF76E1190B796923F923EB53EB4F5B5EA1FBDFBA2F427DD3F56FF6400CAA63F7B5E28FD9DFA87D0';
wwv_flow_imp.g_varchar2_table(230) := 'AF0A89DDDC47F4BFAAFF720B37BF6AF55BD7FB66F297CB5F35F931831FF5F6E1F497B6BF0007D008C59AF0F0FA1F6DC0D3E31F9A24FDB7604FDEED93BB9C5FD400E01D3FEB59458C0B04D079507731E7AF6AFF21DDFE6E1EB0DE3716FD2CABFEC1EC2792';
wwv_flow_imp.g_varchar2_table(231) := 'BFFD1ED7FDC2E5CF457FA8FED3DE17DBB850E523F9DBC20E3FB1A30530D2FD0E1A54F5BB3AB8AEEC9CB6FA95C65D0380773CE8FA579D3C02214C9B8EF121F17BF2E779EE153B2A7F5BC3FDDD0040D0FFE8F1FFB885A98F8380EAF2674640AAFEC3D363D9';
wwv_flow_imp.g_varchar2_table(232) := 'EF8F39FF70F74B062097F8D44A9FAA7F028274FCCBB9FFAAFA07F5BF85B7BF55FF020071BD0043F02796FC14B31F6709E504BADDECE83150937FD0FFCD009CF4F86D0070D2F08E2FBE26000CB73F9FF527EDCFCD7EB73756E5A3D2F75B4FFC040104020E';
wwv_flow_imp.g_varchar2_table(233) := '0868F5ABD5BE760B40C1597F3F9B64A929DA9F1BB7A8FC971F77AEE954F2BFC6E6AE61CE5FD6C0A4FC65ED4B5F7FEDEC9E979EA8A9D700E01D0FBAFE55278D4005F5B3C31FC67995F88BB5AF8FE999A5EF48FD43DD5FFCFD83FA1F6D7FA3EF1F9E1E59F9';
wwv_flow_imp.g_varchar2_table(234) := 'FBF5844585AC7D719B637DAEF0F79EFB0800F4B399FD88F67FA0F14F1DFB53EF5F497F040158F4534DC1B440CCFD40620328AC7E77DA0552DCFD9A0138E9213BBC780380F78BB5CE41E5415073B4FAC5C20F3AF799D18FA9FA3DF953E4E7E37D0201F4FA';
wwv_flow_imp.g_varchar2_table(235) := '8F9600FB81B1E673ECFB7BE54FA31F55FF58EE6389DCAA788EF1B1FA877FB7F5F5AE07DF6E98FC54CADF50BC5CFDD0FB07A5389AFBCC6D8F1AF26E01BCF301D8BFEECD22B096FC23794DC95FD53EFAF648FED6CBC7322F4BF025C99BD84FB6BEFC5EFF5E';
wwv_flow_imp.g_varchar2_table(236) := '47FED0DE5B52FEB94C8C0E7FC70000AFC2C7CD7E35F9030070ECAFF4FE7FDDD9863F3100D906901780E6FCBD35A842811EFF799D284B7ECAA7D32D80373B54F7BE500380D3C778F80D4A8695FE97D3DF8D1CFEBCF2D7689F8DF7010CC0F12F4100E87E2A';
wwv_flow_imp.g_varchar2_table(237) := 'FEA91D80CB5F5A0943474B9B5F52FF70DE82E8CFBE57F56FB7E1DC65602080408E0566BF7F4CFEA8FA47DA5F7F6B0380773EC8FAD7BD4B04F601804AFD1B0BE72A7F2EF141AF3F13BE2BFB8BE35F5AFBCAF58FDA000207B17CB6D4C74DBDD8F38FEB09ED';
wwv_flow_imp.g_varchar2_table(238) := '7C35F217F6BE7CB361F05318805AF1A3F2D7C89FB5F5E0F887E49F73FF766DB0C46F00C08A850401A5F74F43B1ACFAE10B1294BF0A85322154E7FC1B009CFE306E0070FA18AFFE06F5FE8D9E53FFDF92B989FE40FD9BB1CFDFCDCFEF0FFE251050018046';
wwv_flow_imp.g_varchar2_table(239) := '035D0844C5BF9CFE74F254C53FD66C66D52F7FFF81FEF7D97FF6FF1D045CA7988727B4F7FA55F9078557B77505E37830BA5DFD7FD0C1D7BFF6CD22B0CFC34AD4BF57FE14EB45E2B7B97EAFF04DDD8F2F6CF29310504E7FB9F90FF6BEA3E80FF3FD0001A2';
wwv_flow_imp.g_varchar2_table(240) := 'F9D3CED7397F9AFE8CA37F550310EE9C96F43DF9C3E71F74FDCEFDFDED7B5882E7CCBFF5FD9DFA2703E0DF9309306D80F68648141C6EA08B228150652D90DDFF7FB3E374DF0B3500387988AD00DFF98E0DF96F89A2B3257CB1E2F70AB3FE0E00DCD40789';
wwv_flow_imp.g_varchar2_table(241) := 'DF40C03FB76400C804183880D10FBC017CADAF2FFB60CF91D99F04601AFD78BF1F6A7FD0FEF85E8B3972C10FAB7FB20041E79131B0AA40263F9A1CCA4D5DE396EE7DCE87EF11F6FE1D1D81778F405DEDCBE42F6F7FB8FB55873F1BF5D3885FB600D41AD0';
wwv_flow_imp.g_varchar2_table(242) := '6D58FB8AE5F3D15E59FBE602B1B4D454369D5CFEE264D47ADF5D54E348FCA5F2B7AA3F923FD7FB6AD6BF88FE2CF18305D0CA5F30005AF263D5BF277FB620E53B042662DCE5D72E7FEF7EB4B611D0A9431E029CA9B7252FEE34FD51F5AF95BE0F9B9FB77F';
wwv_flow_imp.g_varchar2_table(243) := '37FF180B704B1680C0C0C48026FEB3BD009EFCB5DEB36CF673DA3F14FF50FD43B59F497F5FF29F81800100A3FEBD6540A5BF8FEE58CF9F6B3AE751BF53C7B55FBF23702E1198975679552EEA9F8B7DD4E7B7D97E030196F8FF71931FCCFBA31580E53EAE';
wwv_flow_imp.g_varchar2_table(244) := '0FD01E0F2E07F25D012EFA93E08FCBC362700EC95E143F39381AFF544050C57FE8FB87CDAF6FF8D3921FD2FE0604FEA4E98F16FCA8DA1F34000610281896295856FED5F2FBB0FDF7B97CAE97F03E9A0138F1A75C0180D4EFA1FC67FF4E4B7EBE73CC0FB6';
wwv_flow_imp.g_varchar2_table(245) := 'BE0F9B7F1C000008D43680BC01E6053F5AEBBB70F9B3CA9F0020FBFDD731F2E7157E110086E10FEF1F847F65D4CFABFE7D1CE889E3DA2FDF11F8E80828F1CFF3FEE6EA29773F3B4725F843E2C7689F92BF8C7ED0FBC7AA5F5FFF4BBADF687F4BFA30F991';
wwv_flow_imp.g_varchar2_table(246) := 'BE27B7860E947F58F796845FAC7EDDE8C7FF83CA1FBDF80400F0F150CF1F6E7F12FEDD99EDAF6CC1BDDADF92FED7B490257F1A0059A1E0C502978079F50F1FA2F6F6FBE8A376FCFD0D004EFC79446F8E661C12EBF8C9ECFD7F33ECA1FA9FF4BFB5009CFE';
wwv_flow_imp.g_varchar2_table(247) := '27003020101A001FFB53F58FD5BE1A371200D0ACBFCFF997E49F15FF75D2FE91F80D1070D5AF6FF9E3CC3FE778A11DA82E7FDBB40EAFAED9D5D50000200049444154EC467B779EF888EA977FCF082C4469FCE58BA4CFAA1F9E1E58EE63EC1C36F541E8A7';
wwv_flow_imp.g_varchar2_table(248) := 'C53E91FC7F68CE1F6D80A0FEDDC80B6B81C5EEC9D06BB6F7250747933F50FBEAF1EB0485DD2FEFF71BB5008AE0CFFAFEEEE689A45F13BFBCFE35FBEFAE7FA5E70FAF905C00647A815C018EE42FCA5F9F5DEB7FDEF328DEFFBB1A00BCC1E770A8CFAD251C';
wwv_flow_imp.g_varchar2_table(249) := '7E4BC18E94BB75D39FD1F9C60054F57F6500B4ECC7C603BDFFCF7EA0FAFEE9F497237F0F3BF6FC5DF19FBD7E17F6B9E90F047EFE4513A048FC020065EC0FFD3C9CD0E6F38F4B8A4C86F453EC197A83C8F64B74043E2E0291FCCB807FB27800DEA2FB751E';
wwv_flow_imp.g_varchar2_table(250) := '8EC97FDCEE27539F4AFDE33E880045FFFBB96D5E01B4065FADFC69225651782EEFA94080AD018D2C50FD2F9B6EA3E8FD6B4AFCAEF8F7A48ECA5F095E55BE5CFF302E0C2B606D05ACAD42890C65F2D31E201F773CAFFDE60600AFFC3C96C95F4B2CCC8293';
wwv_flow_imp.g_varchar2_table(251) := '7D3A79FDFB2DE67671728F7EFFA6FED7FCBFB70042088896804C80DCEAF7FA11634061F653067F38EE677D7FABDAFF3C5CFB863F9CA8D71CF5A3C10FC180DB76C666BF14F1685DE768F15BE7FC8B7527FDC61BDDBFF2A0EAA79F4504EA989FBF210AFC46';
wwv_flow_imp.g_varchar2_table(252) := '6B5F54FC761E428F8391BF6AEF6B95BDD4FE6A0158D2AF9BFE8C2180C31F2A7F697B54F183E54BEA1F6F27457E30DD1A0D7EC004E00B857F5AFE6A6C5700E06FA9FA7DCB5F2CF7C9E41F56BF2B8B7FDCF8879302F2F9F74281AA7F2AA02386CD049CC521';
wwv_flow_imp.g_varchar2_table(253) := 'DE22C0D77E0CFB00809FA01CCFC1DACF5CD401318F51FFA8E4A1FE47650FE73FA8FE350268B77204F4253F1CFBC31CB02A6E5E0E76575E9DDBBCAD46FEEE0D0070BCEFF7BD010019FC8C0C805802070DB1ADCBF403A9FAAF2E7F885D0380D71E43FDFCF3';
wwv_flow_imp.g_varchar2_table(254) := '8C40299A71A41700100E7F4AFA41F9C3DD2FCD7EB0D8C746FCD40280F21F16BFB9E10F6C818FFA19F56F5FDC1D20CD50ACF4ADAB7DD9E3871837018012BE00406D0DB8CDAF9DD3BB5AFD63C98F27FE7B56FDEAF5D3E37F0600754328C6FE68F7CB31E130';
wwv_flow_imp.g_varchar2_table(255) := 'FAE1A2C1B5B9FE2E163EF6D86F06E015F19F2B8499E6C2895B93BF36F4D92DFAF81AFD83B02F13BD8C7F3CF9D3FC07CA7F0006541DF6DA1A9605F56F5FEEB3AD913F1FF703E55F933FBEB7DE1DE7FC39129889BF28FE1F68243499FD64E8C87AD071AC4F';
wwv_flow_imp.g_varchar2_table(256) := 'EA571C54FDD4B389405859F31D550020AADF7AFD98CF4F6B5FAFE6C3F00700C0B7FB690430E6FFF96F54FED7915E997969C65FDA21B010D3985F11FFC9E27704000207A5F72F10E0E37E65C3DF9F0D96FA98C90FBF86453FD1EBA7DDAF27FEB4060FB73F';
wwv_flow_imp.g_varchar2_table(257) := '9B12220380F7C252619AEDEF6BC5C71EEE0D005E11FF0400E33C6B560BB2E984CFBFA17A4FFAFEF550923FAA7F69009205801BE072EE1FE220531B5BEF5F95B8DBFD72BB9F8BFF2CF9DB1769FE5F96F4EFAF37BA0500405B40C61D76317870A740CEEF96';
wwv_flow_imp.g_varchar2_table(258) := '759D83D35F5147CD27719FD4AF38A8FAA96713815500408B5F0180B1DA47A2B76A1F9EFEE9E6E7F7150050DDFF44FD6BCC0FEE8130F7A98EA1B92B6FA9F29F1980FC79C5F7DFD5F969F823A31FABFC31DE87AF5F7730FBB15B2CFCA1D0AFD0FDB56040E1';
wwv_flow_imp.g_varchar2_table(259) := '61D7A0D10EFCD07C7F5F2B3EF6706F00F08AF82745B894BE2F47FD94F8ADEACF84AFA4BF76FB838AFFD1F4076B7EADFA472F121BFEA2FA2F76BF98F94785EFB4FF9FEBCDAFBBEBCD7F0E04B2FA57FF5F9B0171227384C7FDFDA9E4E57ADF43A37F7D42BF';
wwv_flow_imp.g_varchar2_table(260) := 'E280EAA79E55046A0B40C775A5FEB3CF4F95FFE0EC373AFC0530D0B81F7BFE5808849E7F8AFE64E58D737C35F17BA4BCC1AEE9FFA105306802B8DCA76EF8B3241D237F0F26E0DB78D59F897FBBF9CF5CFE0C04100854A11F94FEA9F67781B01720CBE4BF';
wwv_flow_imp.g_varchar2_table(261) := '5882563EE5BE5E7CEC21DF00E015F13F0A0070CCCFFBFD56E55F33F9FB621F88FE64FD5B4180D6FEDA6D55FDCB3808BDFF14FEC1690BFDFF6AF77B47006055BE55FE96FC0D044807A055BFA611B0E7058A1F3675C51411C1C6FEA0F509FD8A03AA9F7A76';
wwv_flow_imp.g_varchar2_table(262) := '118801803587BFE2EB9F223FB9FBA5EB5FB20132FB618B80FEFEF0F3C8197FB4F648F51300203039CEA79F21F01BC7FFD6B6FC2131C3F96F5CF293BD7FAFFCEF2CF123E91B00C0F71CF3330680BD7E54FEA90D1A36FBD1DBBF6E03C5B4D0F2BFBE5E7CEC';
wwv_flow_imp.g_varchar2_table(263) := '21DF00E015F1DFD70290CB5F28FEFD0457F2D7563FF5FBCBADC4804CFA680BA06D10C2202E000135C8EADF1CFF7C3C6FD9FB87F88FD53F93FF7F3EC38B76800300AAFF1D004C28BE5E73EABEEEB6F87DC581D34F3DDB0848A836BFC150FED3E447D4BF92';
wwv_flow_imp.g_varchar2_table(264) := '3B54FDFCFAA17E7FB5F9E5F63FF5FB8BDADFCFEDC1E40700204DB593F2C735A7A8FA3909308BFCD07FAF56BF30FFF1E4EF3EFF34FCA1CFFF50FD13040C00A0D0FF69F34B8BDFCA12064E4993B0C5340583DBC9FFE34F830600AFF80CF68B00E5CBAF913F';
wwv_flow_imp.g_varchar2_table(265) := '89FD54ED6BD5EFDFD8F20726006B803DF1BB401082BFC1F12F4681EC8DD735BFA8DEB1E9CF7AFA9CFB570B80BD7F63018C01F8E59BFE46016050FFE1F047CCCEEBCFDCCB7B45E8FAA91D81B38B404DFE83625DAB7DED96AAFFD8EA47DADF0080CFF7FF48';
wwv_flow_imp.g_varchar2_table(266) := '973F53FD6BE98F1601691DB0D4FED6CE83BDEFD2DF5F0060CDC8073840D57F0504B81FF3F74AFA69F8F36889FF7107FADF7BF9B2F9DD78F56FD57E3000BFAF36FF92FE57FF3FD4FEB545483BF05A14E0DAB8D4469DDD877EE16FA801C02B0F807D9570DD';
wwv_flow_imp.g_varchar2_table(267) := 'F217F4FF8DD6FAFE8D853F3FBE010448F897C91FE37E32FC8915BF26FCF3F78CFF17EDEFAAFF85EB9FC6FCD4FFB7B59D12018E1300A0FFD9F797BF7F1B77BEF2E8E8A77FA608A8225D75F9A3C39F0100A3EBABBD2FC6FB369B7F2CF9570040D19FF5FFE1';
wwv_flow_imp.g_varchar2_table(268) := 'F297FD7EB7F8E50E8FA5E27F59F12F2BFF7500A0290067007CD48F237F4ED733F17BF2C7B21F37FBB1F1BFE8FF8F00C0C1005DFF34EB8F4D814517B45BB7FF1408D031D005C4F99D0D0D005EF9992C042E3C177CCB9F59FD72DE3FB6FC31E1FFF80E7BDF';
wwv_flow_imp.g_varchar2_table(269) := '9FF6B38FF9410F50ABFFACFC73D35FD2661ACD03EDEFCB7EA4FCFF8BB97F1FFF2BE63F390190D5BF8D076A8C072E7F34F9114DC7F9E75786A99FDE1138FB08CC73FEE1F267C99F95BF8FFD71CE1FAA7ED2FE76FB63B3F91FB2009AF5378B5F98FC685CD0';
wwv_flow_imp.g_varchar2_table(270) := '2682641A542BFFB2DC87E3B410F829D1EFBB1D8D7E0400E0D6B9A4FC2D79A7D56FA9FE0B0090F02F4480EEF627A31F6B1D40245C3780EAC39D697D6F1B96CCDF20E0BC4E8306006FFE79A4E52F10BEC47F30F9B1F5BE96FC7FFAC21F5BF2930C80030051';
wwv_flow_imp.g_varchar2_table(271) := 'FFD1F79738884624763E39B586BEBFE6FD73D98F25FF2500F04900AFFED30D106B7EB12170715297B840D3F0E681EA17EC087C4804F6B2763CCEABADAFDBF0B2EA77A5FECDD60180B6FB39CD5FB7FBFDD8792B40A2408D02C2E18F263FD41104AB47A750';
wwv_flow_imp.g_varchar2_table(272) := '5F1B1EEE7ECEA1A3DD5F814071FCD31E80EAF417004016BF55EDEF6E7F3BF8FCD3E6D7AA7A1FFF8BE53E1000DA9410D4FFF81EE23FAC05867BE07211D89AD10FFE8A6E257EC8817EC42F6D007044909E7E08706D9C0034FF91D7BFC6FE8CEE07000010D0';
wwv_flow_imp.g_varchar2_table(273) := '975A00DAF2E77D7FB30BE632105D9094853196577AFE5CF38BC46FA63F72FED3C63F8E02B2E75FBDFFB122D866FFC928A8DFBF83C450F6A7FEF7350878FA50E8479C7504863E358FF5A1F2A7AD2F4479A8D461ED8BC41FBD7FCDF517001022C042FD47F5';
wwv_flow_imp.g_varchar2_table(274) := 'CF513F89FDD2E56FB3B9B2141936DAE8EBE37FBC3D040056C60063C39FF7FB49F77BAFDF123FBE60F52BE7BF9CFD4F1F006B17A60DB00106BB4EA85090C7FF5EDDC47414C415B2D980B33A3F1A00BCFAE3D0C98B17925DA7AA7F4BE266FA6314BF6FF4FB';
wwv_flow_imp.g_varchar2_table(275) := '6E2B7E4BF2F7EFD502005B50FBFEA3DD2F60868FFCA9DF6F543FDDFE40F9C3F5CF6FFF1420402B60CDFC43F98FE41F3EFF12FF51BC83933BB5FFFB14D2AF0E61BF4047E01D2210C95FD374E577FAD89D6FE864C52F4F7F4FFA48FE12F27DFFB6A5A98F66';
wwv_flow_imp.g_varchar2_table(276) := 'FD35FA87ED7EB0F7CD91BFA8FED9F3D7985F78FB9323C7E6D0C300A03202F2FAAF638058F3BBF32A3D93BF46FD2CE15BBF9F6E7FC5F54F895F9BFEEA022079FCA3508081107C4798D6D38CD48BA05A2854CA1F0FEF96C03B1CEA47FF8A060047876AFD81';
wwv_flow_imp.g_varchar2_table(277) := '75DD2F0EEFECEB39FD4FBB5F01809FDFFF0C00C092BF8102B8FD993B204606610A822A442348A9FA07650FA73FABF233E9C3DA17A23F5900DBBFBB26A02EFC21ED9F8B3BB2FF6FEADDF8AF01C02B8F907EFAB944400060CD98C692BF81805AF5BBD0EF66';
wwv_flow_imp.g_varchar2_table(278) := '0B015F38FB65F29706A0D2FD3F6E77E104E87DFF98F5CF565E9DF30F8B5F0FD271006058EE53C60035FF6F0C408EF9C1E44755FFEFFBCDE6D75D75FC4B01205801F4FB97A63FD9FB974E08AB405920D445494187A67F88FE3A901A09025A13F0B1674703';
wwv_flow_imp.g_varchar2_table(279) := '8017C65FD5B192BEA35E9E0C86EC9DFEF73E3E46FA7CC10F2BFFCA00A825E09BFEBCFACFB1BF5CF59B33FF51FD0F36BF34F6F1253FF8BE3200D20454BB5F9805C1EF1F6A61B909322006024AF207BBF1C260F5D33A026710817D0C808BFD98FCD5EF87CA';
wwv_flow_imp.g_varchar2_table(280) := '7F9B96BE4EEB6FD1DBBF95AD2FABFDB0F99536C056FBA658709CF3D79230140BB2F242781200D4B9FEAA0198BDFED92888AD7F52FFFF7D30C53FC7FCB8E007C95FCE7E0001E8F723E1DB24802BFD29F8F3CADFFD0246EA3F00005B17B5F79F0B8BF2034F';
wwv_flow_imp.g_varchar2_table(281) := 'E0C5B1C002021A007CEC89D100E088F83BD09D1E37D0E3DCFA67F78D5BFFC40060CCCF847F3F6F2B0320512057FD1600E00221AF4AF49B47E19FF5EE45F987CDEFFD4DF1F9AF6240D1FD620EB8E8C7FAFEDC1C08E3901199D7BFB993FF11074A3FE4BC23';
wwv_flow_imp.g_varchar2_table(282) := '50A9FF72520700703B5EF5F9B7B1C10F497F0B7A3F047E0003A0FAED36D5FE1AF733EA5F0E7FB9BC2B1DFE3C1D0E6622E35CBF12FF9300C01D8131F36FB74EFF53ED1FFDFE7B73F60300F8EF3717FD3818503B20133F0A052C0952CF3F3DFEE14314E18B';
wwv_flow_imp.g_varchar2_table(283) := 'CA5F7B0B726B620C33F2F1002FD52008D79B06011F77DA34007822F6F5E0CC548C2739FD5FAAFED8FE47F5BFFAFF1A0194E86F6400B205A04541BE0A9494241CC1D2EF5F6B7EFF3C24D5FF9B891F33FE04016C0164AF3F937F2EEDC02C6F8CFE6977F70C';
wwv_flow_imp.g_varchar2_table(284) := '76BAF2FFB833B47FF3DB4660CA366AAFC5721F1FF343E5AFF9FE9F3F90FCF1B5C5FDC602445B20E7FC7DB10F4705ED3CAE463F75B94F56FCE9EC577BFACE070C8E7FE3BA5FF902D4B13F8000D0FF56B94BED0F8BDF8D1BFC58F2D7AD6FFB2B0C808105B8';
wwv_flow_imp.g_varchar2_table(285) := 'FC91EEA7D5AFDC41F1BB3261A3DFAF9D244AFCA3264AD57F5D24E6D71B121ED863F2B61F71BFDAF1116800F05200C0C48F13605AFBABF97F6EFEB3DEBEAFF75DB400C00068DD2F00007681834900F51FC23F59FD3ED2E5EFCF0D47FB90F42DF9FF570180';
wwv_flow_imp.g_varchar2_table(286) := 'F7FCAF89E435EAA7AADFC44232F3E0F011453AF584ECCAFFF893A91F79FE111840BCEFD33007BEECFD9BDA5FFDFE9FDFB7E9ECE7063FF87914FA95E45F17FB986F8080BCBCFDA3A516B531F7F9E4CF72F77B1200B0DAB7673E72D98FDF16F19FA9FE25F8';
wwv_flow_imp.g_varchar2_table(287) := 'F364FF7BBBF9975FF0FA4F0000DA5F743F1804B083E332307DC235F94BCC88FD242984763E83A04145065A987C4D619F760CFCB013A701C00B018012BF0E78F4FD1F3D71ABFFAFB5BF6000A0F6AFE37FEAFF1B38D0C6BFDC08A69E7B0100C5E94FF47F56';
wwv_flow_imp.g_varchar2_table(288) := 'FD379BFF6CD3DF9D81811B88792CF90F73FEDA19C0AADF9CFF28C801B22FA5FE5ADFE3C30ED3FEC51D81A723301792430B0B441AE1740A6BBDCD668A7F57FD6F8BC31F2A7D9BE9FFE7C7361DFE1C0024FD0F873FB3EC96D10FB6FA19F5EF66602EE2CDED';
wwv_flow_imp.g_varchar2_table(289) := '7E73E53FF4FA7DEE5F3A80C30C80E87E2CF949AB5FB9FDC5AC3F15FF0600ACFA7700F04BCB7E72FCCFDC0063C10F8D7E62B35F54EB1A75C695022D4AB1952C58EC6F65AC33F9E7CE00998D615A810588BF7EDB063F7D84BFFD231A001C0300980C876E3C';
wwv_flow_imp.g_varchar2_table(290) := '91AE7AFE4AFC0602A4FE9700501BFFC400542F80EA01E01300DEFBD73630D9825CC5A29F07CEFC5B72C7463F247EAFFEEFF065A040E38002007557B7FA70A2DF40C7F509F8F6A757BFE27B44E010831CE7ACAA53D7E9D8C8DF96C23F4B605BCEFAA7F00F';
wwv_flow_imp.g_varchar2_table(291) := '34FF9600401EFF0002D2015487BF58E95B2C7EFD3C260050C5ECF1D843EDAFADF7156010D50FAD8E96FCA0DF2FC73F58F426FD8F913FADF8DD78F2F71600DB00BEE5CF67FD610C54C7FC72D46FA4FCADE5E97B0BC8506A3B69D538D8BFE9CF548B11A665';
wwv_flow_imp.g_varchar2_table(292) := '3010AAD7A2A1FDB8BA2FF03D8EA0CBFD1D0D009E02002B2371EA7BF949E02702AA7FB3FE35DF7FA9FF6DFE1FE63E10F9552320B9013AFD4F07C06AFC53B7FD49F92FBF7FD9FCC2D9EF66F3CB12BFADFA65F56F00C0C700FFC0E5CFBE52C4C39E1B13BE92';
wwv_flow_imp.g_varchar2_table(293) := 'BFC2D0EDB8CBBD187CC6BF7C3E5ED5BE1A95E9A5E2DF22F157DADFAAF534F9D1981F923F96FB8C0C80A601ACDF6F823F1805D1DB3FD6FA8201A8947842ECE5FADEA4FCD3DA77DF9ADF30FA2956BFBEDC471BFE68F8630000F3FD14FF49036022C070F9C3';
wwv_flow_imp.g_varchar2_table(294) := '0480847F4AD26018CA4242AE2746CB04557F9895B9D601CCA758010100E907B0A80CA3CB0E000CAC4C9B47172CE4673C203FD97B6E00F0620080E49F0898953F0100E6FF61ED9B0C004080F600D42540DEFBD749E4D54A0AFFB4E6D7FDFE3DA1A700D037';
wwv_flow_imp.g_varchar2_table(295) := 'FB4D2C804601479B5FCDF917152E7BFE35040D003ED9197CE16FB71EAFABF3FDD19766D2DF6EC3D7DF5DFE98FCEBBCBF27F8C200E486BF9C04F0EA9FCE80D8D9C1397F6F2964959C0E7F854797C52F6FE7B97EFD1CDB00E504F808E06034BF7AFD0F3EEE';
wwv_flow_imp.g_varchar2_table(296) := '477FFFA2FC97D56F05009A00B0DEBF6DFE43F52FF57F9DF3CFDEBD0E2F4C4A20C1EB3AE58665656159B297C9005892CFE40FA0A111E4001BDD0AF8B0B3B801C081D0CFD5B177C92BF52F00C0853F56F97F73EFFF071A000100980990B6FD79F22FDBFF34';
wwv_flow_imp.g_varchar2_table(297) := 'FF0FF31F5CA424BC03454FC4AC6D7FD3F81F1880110460CDEFB53B04FAA21FD26E49FD0BD98FF2FE4EFE1F761EF62F7E6104E2982DEA744B92C1009455BE58E8B38DA47F63823F3AFCC1EC277BFB06024CECE72C401901B4AD7F1AFDF3313FFB32E0CE65';
wwv_flow_imp.g_varchar2_table(298) := '4129888338D8FED36DCEBC1D66006AE55F414075F9F3513F6EF41B96FBB8BDAF1CFF50FDCBE52F3C0094FCEF41FDCBE9CF9C03A529A8A37E6A5FCCC9DFDA1ED02EE5D6520343DE02D8AA35010060ED05AC28C7AD03016702D01A7096D319876E45BEF054';
wwv_flow_imp.g_varchar2_table(299) := '78D1D31A00BC020084DDEF54F507F5EF2D00B4010400D40A70E73F17FFD9175A07D5F807C93F3DFF55FDFF35E73FF7FBB7FE9DA6005600400800B3E7A6ED5DA8947AB6EF45674C3FE9AC22A07132D6D7C348996C6947BA5F9EFE54FBDB281FAD7D31D697';
wwv_flow_imp.g_varchar2_table(300) := '663F3E05C0D97F4BFC3000C288A0847FA8FC9755FF98FC47D5FFEA929F18FBABBC3BBEAFFD7FABFEBD7256B53FF8FBCBDBDF96FBA8FF5F5DFF6AE58FC77AEF9FEA7FE909DC0F84EF476392C1761A63E2F6E676FD32EF036B718E20C0AE8BF69F25744BF0';
wwv_flow_imp.g_varchar2_table(301) := '9EFCAD7091D32001C00802720BA95DA7FABFF7894003802300400AE29301F055BFD6F7F7FE57A9F83DA16BAD2FBE57951F20C057FF421B20F73FF5CF50FD97B97FAEFA75DACC5A005AF36B2240EBF597D97F6303D209505BFEC42068D42FBDC7FA347B9F';
wwv_flow_imp.g_varchar2_table(302) := '93AC7FCBE922300080C9542695EAF0F7F7853E9EBCE5F0573DFDC7EFE5F8E789DF923E57FFE6721F9AFC58EB8E9A8261CE7F18F923005811FF29D1E6ED1200180840F59FEB7D6D567F5EEC836A3FFBFE1000A610108E7FD8FCE795BF89FF9C92B72F55FF';
wwv_flow_imp.g_varchar2_table(303) := '752E1F6A7FFBBBE093800565060050D4EC363FBEDBED08022A00B0D7360060EDC8BBFBABCD6FDB4A6AE3C9D21DB82329C4816931DC2CC0E9CE98F1951B001C0900222DAB17A659FFF0FB57E2E7621F0201A3FF3DD11BED4F26C08581DF041AE4FB8FFE1A';
wwv_flow_imp.g_varchar2_table(304) := 'FED3663E4BDEF8C2CA5ECCF55711E0EF3FE9FE570180FAFFA0D86C9E9756BFD3DFDB20E0BD4EB5FE3DA78A405ACDCE2635B4F88D5E3F287FAFE299D8ADCA0F773F8EF7C9DBDFDCFFDCED6FC5F047FA0129FD3103BFDFDA9725350D70D4235FBB5D6300C0';
wwv_flow_imp.g_varchar2_table(305) := '02A0A2CE9E7FF5F797D06FF4FA67F2A7CD6F6CFF63D5EFC97FAAFEC5120ED73B6A93A075B0E46F56C78F9B1FF6F51DB70001360E695A287CD2F67E61478C846FABC87DCDB0AF24D72A727B0FB224170BD0E640A73A57E6D76D00700800902A1781E77539';
wwv_flow_imp.g_varchar2_table(306) := '0100C6FDB0E94F823F4FF6DF6CB14F82000100B10051F53B6D669A01EB1F9A7F40CEFDFB25C07BFFA8FA219A81F84FC9DFC600EFA8F657D5EF00A06C0194D8C646707C1C474B38A6ACDF20E0BD4EB7FE3DA78A40808080D048FE41FF73C63F287EA7F7E9';
wwv_flow_imp.g_varchar2_table(307) := 'F0674E7FB2FB658F5F36BF56FDE716404E0B48F467B3FE54C50F637E32B78D55BD65BD2F4AFD0002B30F80F601101AC46A6029FFA1F4DFB1FA4F85BF257E59FDC2DE37A97F330312DDAF797FA9FEADEFEFABC0E927A01EBCAE7551FD733DB992BF257C4B';
wwv_flow_imp.g_varchar2_table(308) := 'FE3FF985962698000000132AB2FAE782219B4EFAEF0E00002C0035013619402DC03CA27CAAE3A55F97A5E6FFFDEFFF6BEDD79EA341BDF2B90520D31F17FD592F2C687F09FCFEBAF04FEAFFDA06F08D7F3E2150B7FEA59DA67AFFA8DA2DF15F33F91BFD6F';
wwv_flow_imp.g_varchar2_table(309) := 'C23E8CF7390088E53F99F85D00E83D367B5E22EB98B78D0B2496FD00E9F77F1D81AF11011700CAE18F00C095FE74F883C21FC95F263FD5EA3716FE7CCF0D80AEF697EA9F6C42B5EB16F55F057B882666E93CDDFBFF5680007B180104CA3A603C03CF3197';
wwv_flow_imp.g_varchar2_table(310) := 'BFF0F827FD6F891D76BED8F0078B5F2DFC51F59FC95F94BF7AFE41BD33F90F0EA05CFE85913F8CF961B321FAFE56F5FFBC350060FB4D9205B0A2C6C4CCF6A625FEB36A5F953FCCCAF0B383000902B997649F2F406DF57C8D23F53CFE8A66008E61007851';
wwv_flow_imp.g_varchar2_table(311) := 'D114C0D5961BFBA8F8F704EFBD7E030064005698003B3972E31F5E237AFFCCC410FE196D2FEADFAC7C95FCD902F0F5BFB9F1AF6EFFAB064058E4714574AFBE5AA67BC80D06FFBFF3382AFB5D74049E1181D9AE7AE8FDD3E1CF14FB26F6D3521F0300FFE3';
wwv_flow_imp.g_varchar2_table(312) := '0E7F9CF10F1640943FC57ED3563F9FF72FC2BF3AE73FA8F723E1E75CFF0C007CDC8F96BE4899053014A6C03DFE7DC14FA1FFFF6EDCDF1F96BEB8FDF7F7068B7EF8B3F7FF5D78875EBFD1F01819A4290F67F14D5B5055FF5611A4D90FFAFF2EFCF3EB1701';
wwv_flow_imp.g_varchar2_table(313) := '8055FEB78F9B7F6ECDDDD46CCEB30D200D800116D32CD97BB0AADFA695FEBDBBDAFCF7DB44CB0900A0433016407B49341130BA93360878C64971E4431B001C0B00942C63F6BF6CFAAB00C0C7FC2A10486D8092BF3100100F16D73F5B8CC5E4FF48FA5F33';
wwv_flow_imp.g_varchar2_table(314) := 'FF2EFCA3FADF35008501D0DA5F0102B508A01940FFDFA8B835938D0600479E25FDB0B38D80923F8CB3C6EADF46FE5CFC67A37E26FCFBAE91BE4CFCFFF393DFBBDA9F13003E1980AA5F064176EBAB82698223C31B010014FCA0F687B97EBB4FE2BF890158';
wwv_flow_imp.g_varchar2_table(315) := '0080600BF275E4FC070040FABF78FC7BF2A7B39F0080B1003EE7EFE380000041F997453FE1CB4F73C2317E14FE91FAB7797F989A010038F57FFB4000807680C48009003062E8D5FEFD953B96FEFBFB6AF3AF8F2D431458B500BA56C92638D410653470F6';
wwv_flow_imp.g_varchar2_table(316) := '7A38DB03F393BCB106004F0000AF8F63AE389DFF6C6C2FE87F4BF8B6F0C792BF03803F9CF54F3D809B024DEB7E314658E6FE4BF50FC53F297F17FEA1FF6F89FE9E0C80DFFAF7C90C3800A0664002C098B19DC8FE06009FE42CBDF0B7B976D11F127FA1FC';
wwv_flow_imp.g_varchar2_table(317) := 'ED7E4FFC5AF0E3663DDCEE47FA5F4B7D8C0100002030288A7FD1FE56F15BF2D3B8DFB0D6979BF0527A98237BC0032B2D8002141C309416803DDEBF5C40C7D7D2D8DF6331FCB1EA9F8A7FD1FEF2F9AF2D00A8FD010240FB17B31F2F0CA838E0F52D3C4EC2';
wwv_flow_imp.g_varchar2_table(318) := 'ECC7261DA0FAAFD53FD4FF0F9B7F08020C084808284333FB1B2CA16BF4CF12FE0000AC0DE0DA006801B47A187A25BDB7E568600380B7BD183400782900F0FE3FA97FD2FF58F4F38720C0927F150442F407C31FA86973E31FA82E6300D0F7374A4CFD7ED0';
wwv_flow_imp.g_varchar2_table(319) := 'FD98FD2FC9DF5B009A0A4871E0BCFCC74E42310BF39FDA00E06D4FA67EB5B78FC07CC14F3D0E37F9B9AF7F15FC21F943A58F997F33F8F1F5BE06008CF28F053FD606C0B21F6CF8034B70CB9EBF1BFDA8E75F2AFF6DECEA40E6B4E6DA9CC8D70040680466';
wwv_flow_imp.g_varchar2_table(320) := '4D8092BDAFF30570A81BFEA2F7FF778715BF640044FFC79ADFDFF0FBF715BF2604A4C7BF3D3E67FD29F82BB4BF939B93D39F2F479A92BFE6FE530088FEBFB5006214D0AE6BE60360130026023406801A807F7F5B0BE07AF3DF6F0801631AA00080640126';
wwv_flow_imp.g_varchar2_table(321) := '10C0656575E263162FB596E9F9E75F038063014059FF8B6D7F10F341F18FCADF927F8080AA0550F5EF021988FFBC92B0D7BCC2C25F0300867E5DF51FF3FEB6D5EF7AF3DB13FF4DF4FD6504640C80AFFB7506207DFFE119A0FE7FAEFC6D00F0FC13A49FF1';
wwv_flow_imp.g_varchar2_table(322) := '7111182EF6D3DB40C262F267B52F97BF39F99B8A1FE2BE54FDE786BF64007CDC8F8E80EEF15F56FAAAF207D8A06EA68EFDB1E72FD39E0000B1E12F97001DF2F8D7ACBF16FC78F2B7EA5FAE7FE1F2670240F4FCAD0DA0053FD200F8CCBF6900B4E5CF1800';
wwv_flow_imp.g_varchar2_table(323) := '2EE3D13A5E8116C532047F0E7A34EF8F913F51FF56FD0300A0EF1FFD7F4D35B1B031A0A6114089004DFC0710607A00B405B0B594CE802E5A36CD12DD01D5BA344620560B83910DE57A4F34BDEA046D00708406C08F369EEC5AFCE32D80D2FB57E23710F0';
wwv_flow_imp.g_varchar2_table(324) := 'CFAD3400B5058096811880EAFA27E31F6CC94222C7BA5F0200DE86F08F4C80277F7F2C7D02DCF657BD7F2E00A2C5E69ABB563300AF3A77FAC9278EC0930080D6D9B5E287B7BF55FE1ADFC32D927F19FB8B053F5B5FF8E3B3FFDFF0582DF819FCFD35EEC7';
wwv_flow_imp.g_varchar2_table(325) := '8A5F953F4270FC721FCEFFE159A5F2F75E3FE9FE54FC83F637F19F19FFFC71311F6C7EDDDED795FF35F96B028006406EF39B96C1B110CC122B3FBB186D26ED9F553FE7FD69F88331BF9C00A82C401A01A1C031609600C03408D2000000C428E0340E983B';
wwv_flow_imp.g_varchar2_table(326) := '0252BBA46D82F241F0EBD864F854998066019E77523600380600F02487CF37C76238FEA7EADF847FFF78F23716004C406D01F8CCBF03002AFF59C1C8B41CC23FA861B5ECE7EEAF39FB61C4CF0C7F42F0C7CA7F51F5ABF23745ADF7D16428048161FD2FFC';
wwv_flow_imp.g_varchar2_table(327) := '00299E7ADE61D38FEE089C3E028700409DF1BFBEE63A5F8AFDB4D807B6BD34FDB1E46F49DEE97E6EFA1320A0F80FFB00B0D94F6AFF98F3AF463F2B863F7B5B00950188CC950640620C3CD119007057BC4CFC5AF463893C9DFFA001880900B200FAD90480';
wwv_flow_imp.g_varchar2_table(328) := '29FE1B55FF8B71E0F03581CE61ECF723E1DFBAC08FDFD3F4C77BFEC504C8479BEDDA76EDCD4C6F89180B6922C01803B409008E013A034060000D931902B1FD193B02A407A08F89B7471A00BCE599D700E049008007C4420C5A00DF70CDEF0FD2FF0E006E';
wwv_flow_imp.g_varchar2_table(329) := '01000C08400C4810407A4CD57FD0FFC5F6F7D1A97FF6FED9EFB7A46F00200D7E120448ED0FC09094BFBD0628345A6BDA8C2F858C89FACB1FDD005E384C120000200049444154E02DCFA77EAD378CC03E00E0E7A2687FEBF36B9DAFF7FAABCDAF7CFD93FE';
wwv_flow_imp.g_varchar2_table(330) := '9707808101EBFB1B1890E98F69055CF52FEA5F16BF3400CB91599D49A3935FF5ED5F6D011C0200C36A5F56FC4EDF97BE3FFDFD9D0130F53F41803C00DC00C8D7FC72C94F58FD627700DC40B9E637AE69D8633057FE4AFC3F8ADD2F94FE2310A8BD7FBBBE';
wwv_flow_imp.g_varchar2_table(331) := '691992030077010400F05140267FF900FCB2FB6312004B82A07F422B205D4C0D1C9556E6CC00E898EB6BD9B3CFBE06008742562C9264F379450740D300C4ECBFF7FFC100FCCFEDFDE6A7B1005CFB2B432055FF18FD63FFD2C12CC57FDEFF573FDF047F99';
wwv_flow_imp.g_varchar2_table(332) := 'FC0100E0F38FB6005A041813B4132537FE0D957F19FFDBA79E9D67A89F7D04F5133A02278AC01A001817FCE466BF6F4AFE54F263A44FCB7CE6EF33F1BB0DB0A87F56FFE8FDB3D72FCA9F2C20FED4040010F11FB6F61DD6FB6A987DD20CD4CADF937EA1FC';
wwv_flow_imp.g_varchar2_table(333) := 'A1E4D786BF74F9F3797F8200000289FFE8F3CFB97F19FE989EA0CEFBABF70F4D134C7EA2D76FD5FDF79D8FFB69C44FB70102DCD2FCD1379E3AB3E97B11100BB72D7E84FF000000FAFEF003A01BA034007404B4A2C66C8135C2AC3166B446015E7C51D13E';
wwv_flow_imp.g_varchar2_table(334) := '004031E3890EC72FF9B20D008EF858FDA2E3550014AE66038C114038FFFD20E56FD5BF01809101800F40A5FF73F40F44BCE6FED3EB1F94BF55FFFF8901A8208023814E995134A893042334899635FFDF00E0880FBA1F725E1158B9D00B0060394D6EF61B';
wwv_flow_imp.g_varchar2_table(335) := 'A87E4BFE74FBCB2A5F9EFFC5FB9F9BFD4CF9EF637F45F51F73FE2B89BF267451FF59F14F3E0087448045F50FA53FC47EF7AAFA6BE21FB6FB1104B0DA171B80B5BF72FE03F5EFC93F56EE1600C06A19E392F4F88FEA1E4B7E64F5ABEF0700A0E4EFAD4D09';
wwv_flow_imp.g_varchar2_table(336) := '9BD1FFB7EBA4FB16700AA08E020A0004FD4F70805145B602DCF80CED50B0A2391AD800E06D4FD106002BF1CC6E795AE5C2EE1300203C0068F86354BF31009EFCD902A81A80110064F58F5A022B7FE5F76F863F56E55BDFFFD7FDB7CDAFBB11044807608F';
wwv_flow_imp.g_varchar2_table(337) := '43F5AF75BF57B1531B7DBEA4FBC0322CFFD0AEFEDFF664EA573B6D04A2FAB7597FEBFB53F007AF7E24FD4CFC65BE9FF763C3DF76F343CB7DB8E8C7FBFEA4FE73BD2F40FFA2E2AFCE7D7152A508700602000B42324BA640E2BF10FB71CCCF40C0BDCDFAFB';
wwv_flow_imp.g_varchar2_table(338) := '229F9CFB9F37FEF9B85F6CFDD3A63F6EF9E3EC3F8A0326FFD207948E4236BF63F52FB31FDC020424FD2F5320AC022E0BCD8C01D862B3209C00271D004D8164052C76C07715F8D220247FB89F2608080123AF6BFB8EB4BEA63DEF1C6C0030C56B4D1C17D5';
wwv_flow_imp.g_varchar2_table(339) := 'BFF704ED6027034000E01300DFD8FFA70EA0BA01DA4992EA7FB40030FC0700506D7FA1FEB735BF48FCFFDD7D9B580000046D07C4B85F0AFE30F30FB14CB28DAD8D7DDE69D18F7ED708AC885386237672F98BEADF004050FF54F85BE54F8B5F17FB51F487';
wwv_flow_imp.g_varchar2_table(340) := '1D009CF5A7D8AFAEF645F52FF73B390AEEB82E6374E61B9CFED802606A4FCFFF50F9030054A64006409A0230D19FB500FE68C90F057F91EC63B9CFB8EE570B7F0410B0F0671CFDB324ACE429FA1F571FB6226DDE9F3EFF0E0022D9170040AFFF4103205B';
wwv_flow_imp.g_varchar2_table(341) := '73DB0F30889BC71680EB000CC4582B60DA061863803E0A8856412C08E2683334016002B0B088C50C31D5C206BA2F75CF3A751B009470AD267F8DFFB1FAC71E806202C4EA1FE37F1000DAAD00802D04428F0C7D324FFE7E414BFADF0EEA50FF73FCCF0180';
wwv_flow_imp.g_varchar2_table(342) := '55FF0500480BE0F3FF72FBA3D84F863F95F20700E8DDDACF3A23FAC1EF1A81CA4C51131B535DB3DB9F2AD6ABAB5AFDD3E4470B7E94FCDDF0A70080B2DA176A7F1BF9B3BE37447FC37A5F790C9001080F7F8EED994BDF1AE53F27FA70F69BC40C75FCCFD5';
wwv_flow_imp.g_varchar2_table(343) := 'FFF4F8BF8F2D7F30F141750FB57FD2FC950DE0AC3F0D7FDCF35FB6BF3E3E98C91FB3FF2838D2F2178067E8FF5700605EFFF4FC0F1D00DB0458696EFD7FAD00D65E134C01400390BB07D40650E53F247FB72BA62700C1009800799B6C83E98CE266D067E5';
wwv_flow_imp.g_varchar2_table(344) := '21DB0CC0F34EDF0600330008C31FD6E77631B0D3C6E75BB102180C80B95F990526AC7F5D04384D01B848D0FAFF370FC3E21FBB9069F6DFDDFFB8F2577EFF18FD0300F8D700C01D2601ECCB458034FF71A56C54FF59F56BE40FD79D0600CF3B25FAD1EF15';
wwv_flow_imp.g_varchar2_table(345) := '81D5B654F1F3F7A3974A7C24FFAD036877A9F3F5BEDBCD7789FE4CF017CB7DE4F50F10E04AFF5BB409ECF1D6EF1F697F56FE14FEE56A6E6699695E5F76BD0B2660AAF46700501FEFC9F811BD72630024FABBFBBB0BCA5F4B7DB4EDCF047F02056A0D20E9';
wwv_flow_imp.g_varchar2_table(346) := '53F447D31FD9FE2EAA7F028088AB4F34010098DDF1ED930C005B004CFEB74EFF4F0CC0558E013E180878801B20C4804CF43EFF3F267DD9026B2A40A3810E02381D80C9265EE71A00BCC969DA00A002004FCC5CCDCB5B4FFE12FF0900B80B600500720194';
wwv_flow_imp.g_varchar2_table(347) := '0F405906140240BAFFD9AA4C320075F39FCDFE6BFEDFE7FEBD05F06DF3EFEF1100183080DFFF355031457F758F3659C958F4BBD2FE7F9383A75FA423F0D208D4E4EF3E5B7CA1BA9026933F123F96F14CBD7F3AFC596FDFDDFD7E62CB5F80010200B7F8A5';
wwv_flow_imp.g_varchar2_table(348) := 'DA5F0B7E3CF1F96B62144EE25C1B65137496CA5FF3FA715B96FEAC55FE62081204E0DA525FC7ED7EEB921F8AFEBCEAB72FDBEEE7463F58F76B4C80830013FAB9D80FC95FF6C012FD41F857AA7F8EFE8901B07702174553ED5B5CC70900F5FBB1F027C580';
wwv_flow_imp.g_varchar2_table(349) := '3E1AE85F0002D001C8E23C979BB90F80899BA90380B2BF0080B9E2A71F804080D881D00468B1995FEF960000D753FCD70CC0F3CEC88B04006B095173FE951EF33E59247FA3EFD1FF8F16C02402840110D800AD050E03201F1FCC6D65620030FF0F116015';
wwv_flow_imp.g_varchar2_table(350) := '00A205F02D1800D303C81448F6BFB2CD4C730F363158F9E392D3FF7504CE2B0273F287D326BD36C2975EB3FEACFA7D34AF247F6EF733B31F1FF763F5EF2B7E63C31FEE77F1DF77B8FCAD51FEF2E58036072A76B503D5BB1F12F7D4023816000CD4BFF7B3';
wwv_flow_imp.g_varchar2_table(351) := '69FCE32B7A776EDBAB7EBECFF6BBB77FDAFD8A0980D29F957F38FD816E07ED8FB979DCA6F8CFD508BB2D5B9004009C02D008A0B545CCE427A70072222001406EFEB3FBDC04C81626C57653E81EB0D61C7E00986E30A6029E00F206B04ADFB5010E026CFA';
wwv_flow_imp.g_varchar2_table(352) := '09AE817551908F074AF05C004000C73AFFDF5E00CF3AD92F0E00EC4B8871E273EED713BFF7021F63F4CF665CAFB9032018803002E21E007A00B80BA0D3FF384186CD7FF6CBBC372F01A02C7DB1F0472380A2FF8D05A85E00F200807850885854FFA88269';
wwv_flow_imp.g_varchar2_table(353) := '00F0ACF3A11F7CEA0894D13E8954F52BB18D2E97FC689DAF57FE6EF8C3B1BF30FCA1B0AFF4FF63BD6F11021A0040CF3FFBFD3EB3AE2542DCEA27131B6DA11F28FBC9BA57153EDEFBBABA1FC0005F5AF2635EFF96F85DD046F19F256D38FDEDD8F347C56F';
wwv_flow_imp.g_varchar2_table(354) := 'C9FFDF5F58F0132C8033005AF19B4B7EB2EA4FD31CB80BE6E89F5A82AA94B58C2CC600CD0720BCFE47206086407004E4975B0453075026018C55018002DB610CA5B11106028CA180DA7F04024AF636226820C06FDD24880BCFB82CA88E3A0FDA115EF266';
wwv_flow_imp.g_varchar2_table(355) := '0DC9A90FE5AFF0FA0D0006EA11F47F58FE3A08C0DCBFBE54FD570060C9DEAB7E6D03E422201BFF9300D04EB21400E6F89F1800A3FFB5F14FEE7F2E00A40EC001006D81130040FD2FC5BF043EF5C06C00F0154ED32FF437EC030045E96FC05B4A7F4BFE96';
wwv_flow_imp.g_varchar2_table(356) := 'F8D1F32FAA7F030114F6B9C7FFCC00F03E73FCB3C799E25F623F7BCDEAC6B9BADC07191EE95D1A8042E12BF1EFF30148C64020A0247E0300ACD41F8ACF3F54FD3B4FFEAAFEFFFDB5250B80768099FD88FED786BFACFAA9927790812F29FFF17E3CF50755';
wwv_flow_imp.g_varchar2_table(357) := '3E03803402D2B8DF58FD6BE5EF8209701620B500D64EA96D005F72E6530E4AFE391A688C80AA7E6C08B4F6276EC10CD822348E045687D3150D400380E75F271A0054FA51B3FEACFC3D69CBFAD74080515D570F1BB701BED6A21F9A01B9F35FD2FF52FFBB';
wwv_flow_imp.g_varchar2_table(358) := '00D0FB8B32C9A0FB9FCFE65B05CFED7F0200F4FDB7849F224032004E919906E01A94180580A2F67066E3207092E1F9C7433FA32370F2082C5A00C596567DFFDCEC972B7DB1D657FEFE9AFB87AB9F46FEC400E83E8DFE69BB9FF5FC2D4181DDCB255FAAFA';
wwv_flow_imp.g_varchar2_table(359) := '71D6E4DC3E12287EB65B25F6E70000ABF86BE50F711EE87F5FF4C3B13F4BECA0F977BEDDCF1880FFCF1800FB920620D6FC925A0FCA5FD53E984025FC18FDAB5604156CB105E03A806B2E00B26ADF0481EEF70F26604EFA5A06A4FBC1740204D8B5CE5800';
wwv_flow_imp.g_varchar2_table(360) := 'FB4F2C845DABECEF741030B00050FF23E95F6DFE3306E02E4180DD0FDB732D39A3C579038037394F2F13000412CEA308D423057F5CF85355FF98E337353FB6007E771120687E79FE3B0350AB7F57FFA74986C6FF808FE9D9EF26406A01E4E21F8D01A20D';
wwv_flow_imp.g_varchar2_table(361) := 'A016003C00B404C8C0034EF4BADDAB28AADEE410E917E908BC7D041613001ABD2BD53F3CFE8DBAC717DCFED0F397D5AF25F898F72F5300F0F82FEA7FBAFC79F2AF2B7D67B31F7F63E376BFF8D912F9D1E23F3007A0FB93F2F7F138267EF5ECBDFF4F611F';
wwv_flow_imp.g_varchar2_table(362) := '7CFDC900FC2200702D8079E9431CA8FEFF58F9B3C21FFC3FD2F73F261107C6D3C0109C00BD0D602D0009022B0858F1FF8F65406C0B481008612576028844912D30161BE55480447EDEF31700B8B316808100B101D005D44900ED34D05119E3A2AC7CDA0A';
wwv_flow_imp.g_varchar2_table(363) := 'E0F8F3F5F200C0B4154F7532923FE87F506339F207EB5F267F4E0018BDAF5D001A07344020F19FDCFF8488B3BFE86587BBFF4124630C80D1FF867231E2172D001901710C501B012B0390863F52BFE0EFE8FF3A029F2102127245EFDF13D272CE3F92FFED';
wwv_flow_imp.g_varchar2_table(364) := '15DCFE0802CCEAD72700260320008451FC07B57F11F95992A21021EC7DD9B347F25AF6F6EBFD87C57FA0FC6DD4CFAA7D8DFB79F54FB19E257E59FF0EE2BF05008006C08081AC7EEBA85F54FBFEE6260D50A994E7BEB95F8908866222C2590088FACC18C8';
wwv_flow_imp.g_varchar2_table(365) := '35016525B02AFE2A1494366076058C368083A014296A2C701F00B08D81BE3888ED006F0354068086400D005E7F863700004EA5F888C99FE37E96F851C1DB2DFCFC0D08786FDFBFC63600000098013C16CF17FD0F6E1E3D7BF7ECB7EADF27006C09100480';
wwv_flow_imp.g_varchar2_table(366) := '0100FEDCC006984640F206309740A96201228AD90F058C0D005E7F62F42BBC4F04A26FCB797F09FF5CF0478B5FB7F98D844F00B0E2F72F2D40320418FDAB1BFE82E9E3791F947E50FDE8D9BF0900B0C4EF4A7F03011ACD03E58F6A78C715BF10FFC1F407';
wwv_flow_imp.g_varchar2_table(367) := '5FAE01300680AD001B09C408600A0007953F2E637E7DA9106075E2425E0B0E00D00E8110304D81B01618600016C1D33AE06157805DF38A20902BCFBD0D40FD847B027022C05B01EE0D00E73F31005A158C5B32010401C97AA623600380D79FA30D005600';
wwv_flow_imp.g_varchar2_table(368) := 'C020FA2B637F187731FAFF2F0080257B6302865680CC7FA4FE574F4C7DF9B9FA0700B0AA1E22406CFD8311D0D206588F330D800B0039DA037041DB9F1E8579FD99D1AF70B20854808AB6588EFCB931CD4DF6FD6D539FD1FE30F3B94A6BDF58F6834A1FFF';
wwv_flow_imp.g_varchar2_table(369) := '9EAD8179EEDF3DFEA3CDC76C495FFFC1D8E7150C8027BB221A7495BF7F59F2DF45D24702C4D21FF3FBF7F5BEF7BB5CF1CB6ADF687F8C010214C8F3DF2606A4FA97D00F1F5649FE030AC88F3246E7C2704900209702810D486F000302A60930E73FEFFD73';
wwv_flow_imp.g_varchar2_table(370) := '4C103E01B60C0DF71913E02C80153DE67A5AA601863680CC81E8FF6F623FEFFF33F1D75B89026D5C10CBCF0000C47C2E847F7DED7BD679DB0080E172B39F81FE1F67FE55FD570060D47FB0000E06C000E4F21FF4FF2BFD8FE53FC5FFDF5600FBE20B0300';
wwv_flow_imp.g_varchar2_table(371) := 'E6F4C731406300866D80EAFF636570780054DAAF1819110F3CEB60E8077704DE22028BFE7E3168A915BFBE97CB5FDDF0672E7FB5DFFFF3F60A4A7FA9FBC3E18FEC8016FDD8863FCEFC63EEDFC60791DCBCF7EF27460AFD9CA667958A6AF5E50CC09AD18F';
wwv_flow_imp.g_varchar2_table(372) := '0100EFF56BC52FC7FDB0E2377BFFA8FE77B1DE572C4052FFD8F467CF13008037FE52DD3F3401F4C38A22586C882C96430B2077C00202D00E9800C0EDC3E69F5BDB1900105005816E7B4E006021D7E823BCFDE10980B140AE0A1600F87DBDF9B700011704';
wwv_flow_imp.g_varchar2_table(373) := 'FEC138A009086DF5798C3E4BEED446402F3E6D1B00AC00803AF257A9FFA1FAA706E03BAB7F030360032010C4862CD1FFD89065FDB94717FF15F5BF01004BFE3105902040F6BFB000467B402640F000809850A2655456FF3F7B6FA2D5C696048B0ACC689F';
wwv_flow_imp.g_varchar2_table(374) := 'EEF737F77EC0FBFF7F79DDED99C16F45464466EEAD929030D80CD56BD1601FC020952A6347C6501A80550AF0E8D7C5FA858F7C0496867F8251FBFC5BDC2F77D02791F217BB7FC4F44AF817547E84FC9CB61D7FB10014FA5103E03AE01CFE6211F0FDBCFB';
wwv_flow_imp.g_varchar2_table(375) := 'A73DCDE1D8A5E82708A074FEB700406300A87E1F95FE3718F8000038ED47BD2F4FFD9DFEEF6B000B02F3E4AFE1EF1542CFF74F3A7C4EC3DBC104C4732246C4D1C7CE2A49201016CC7915E090200EFF8F97779116C8C640AD02A2FC8CCDA92106EC6B00EB';
wwv_flow_imp.g_varchar2_table(376) := '1FD212380A0063F87F4704BAD6005A05841530C043159FCD2B00FF4E8FBC74DFE597AD00600B0028B4C7963FD1FEB9FB37FD2F1D80E9FF10050A049801F00BA9284F47F7B6DD3F4EFF31FC2900641BA0EB80D909E09500E97FAE0C4885AD00E05DBE6A5F';
wwv_flow_imp.g_varchar2_table(377) := 'F02FBD13004C8D7E8CA2AD7C7F0F7FECFEADF867B5AF4EFE5788F8E5F08F863FBC092024DDAFC09F8AFA759E002D7FE9F797D5CFFBFFA702005D3B90A23FEDFA31B47DE20FBADF15BF38F56BEF3F03014602F7C21F07FF6C36B799F237C27C069AF9A6B6';
wwv_flow_imp.g_varchar2_table(378) := '70A14CF6B9123F4B000D1166049E952E8020E0BE590379EA0F0070554080AB00AC460900C07ED20E48B12540116C8FB877A51BE0E62454FE5E017CC1F0FFCEE1CF323406030503705BF5E760515700F0FB378277050028F8AD0BC7AF05BE68BAFA7FA2FF';
wwv_flow_imp.g_varchar2_table(379) := '65FB63B00F697F0B010100EAE3B6FF8FDC00AF15F84485F04FBE7F9CE09DFF1F83DD204027FD0E02F2F47FC3BE80AAC72C0010FFC0CA00FCFE2B62FD0E8F7E0424A85FFCFA9EF09719FF2AF7E9AA7FDBFE2CE4FB9843FF74038FBFA37EEDF3B73B20637E';
wwv_flow_imp.g_varchar2_table(380) := 'CFE820889DBFA9FFB418B688DF1C4A54EAA7BDEF912B8021100827FFB0FB15FD8F3D7F9CF84DF56BE893EA1720301B109A007C3E86A3687FB4FCC52AA1E27EABFFA31E726B2AEA7EB003047440E6DE93D60FE06E040CF1A12D30F6FF7771E2FF7875BFF9';
wwv_flow_imp.g_varchar2_table(381) := '7479B7F9746516A0560164405B2A206EBDD24300BC743B6000009DF831FC0304780DF09D6240AE00980580838FF54FF3A97F15401FF7F27DB700A0AFC47601009CFA712193D2BFD5F0D7DEDF4E000100D0FFB606C6C5DFD4FF71514AF9EFE01F7AFF8BFA';
wwv_flow_imp.g_varchar2_table(382) := '2F112019807004480F40E57FD1FF6E01FC2506204F5DAB08F0B8AB7FFDEC277D040C00E6D7966FD24535EBE46FDA1F033B287B36FC8DF9FEA71AFA02002EFB093B2055FEA1F457D25F0CFD4CFAA3ED8F855E04F9198FD576FF8F1501A67570CA0DC0DFA7';
wwv_flow_imp.g_varchar2_table(383) := 'F04F62BF10FAE9B4FF35827E28EEABA29F5A05045868831F3BFFB4FD3941107E7F88E1E250930680BDA538B30CA0B305C904A028C84149CA080800007B2034006748073400B8DBFC0310102C004000FF3EC4801202824D08CD85D7007002E02D4281AA17';
wwv_flow_imp.g_varchar2_table(384) := '201880D8FF9F6D3E7F2303002060378019000000B702E661AE91202B0038EE25FD2E01C0F20B618CFD0DFB1F4EFBB2FD61FF7F99F43F4FFD1CFAB7E106A83FB31D8B3A022A6CBDFFBF43F21F50AC4FFF1AEA1CEE6D05604B60885F5CFF5BF6BF11005011';
wwv_flow_imp.g_varchar2_table(385) := '6BC41F9CC0BAFC3FEE55B07EF6933C02BB00403FFDC7403E3DC9A8DF38ADB7E10FFA3F4FFF50FD63E05F93FAFFC71F5FCB1510823F6A0662D73F0C7EB77A8EE53E99F43767FB3FC206B86417F45A2153FE207893D88F097F08F5F1FBCDE6EB3745FCDAE3';
wwv_flow_imp.g_varchar2_table(386) := 'EFA01F0D7D3B061CFAE38A5FFC3BB4008F899FC30A607A5697EE7BBD8409833AD819D903E19A60FDB2428294FF0FC53FF6FE38FDFF734D06001F8311B020908720B40DD61AA08480EA0688544082009CF231EC3F03047C2303C05500ECD0F81CDCFF4A04';
wwv_flow_imp.g_varchar2_table(387) := 'C802B46DC9FF7AEF3BEEA5BC02808C219D01007DFF49F737EABF687F26011A2400210308103C8CF4BF8B7F48DF37E19F067C6700DC09F033D6018CFEB5F71FA83994B07102186D80B308F0B84B61FDECF511F8BD4760388DFA5BE91E6DA5B9873FCA7D38';
wwv_flow_imp.g_varchar2_table(388) := 'B4717AE7C93F76FF43BD2F4FFF010034FCBD06701220A8FF00001EFE0EFA311B96A23F1D95DBFEBFABF66DE1B310303EFB803C00FECEDB35BFE17987CDAF95FCE0E4CF721FBFA7D7DF2C4056FCB6E19F0D7F8EFC0D2691CAFF19006C59E276B0FFEDA9E1';
wwv_flow_imp.g_varchar2_table(389) := 'B9A1CE0F715A3788E073C65D3EEE67760260D7FFF182277F00807F000092052008801D701002AA18C915C116F42116D85D001CFA670102C0067C3603F043A5404318D072F9D90A008E7B0DAF0060070020FDDF867BECFD19FC13EF7DFACFCFE1F0E7855F';
wwv_flow_imp.g_varchar2_table(390) := '00C01724427B32F7FF96F43F457F54F8170B8044C02A06C27F87F8C5E97F71FA8F5E6C9500C50980AF60FEFFCA001CF712583FFBA91E814103D0860A133659EBEB663F0CECB0E8F5A85F9CE8C10048FC87537F08FF62F813080010840010CA7FD8FD5010';
wwv_flow_imp.g_varchar2_table(391) := '746617419DFAFDAA608EBFCFBE5E0134D5BFE97B29F88F06009925E0E4BFCAF9BF41CEBFEC7E54F46BF047C4EFAF6CFB2B9FBF5A0155F13BD6FB8E2D7F19EDBB70AC7F8800EC5900C51CD655601691CF5BE503240038A7FA1F43FF5F00006201EC0AB025';
wwv_flow_imp.g_varchar2_table(392) := '906BD0FBA11DD0DD00590E34D90083019010D07A006B00C63440DCFFFA95BB06003CE675BC028006004057210278A6FFC90260E883EEAFE1EFBD3FC32F9C0E28EAEB1479D844D7DDFB1FC23F8BFEDA099F19FFB5EBA728B0C0000530EAC58608E6250380';
wwv_flow_imp.g_varchar2_table(393) := '89967CCC85F9BB5FE3D3D0EF7E9FF5EB8F7B04BAB0D6A74BBC0620F40B3A1927FF56EBDB33FE3DFCD3FAD795FF1AFE0003C80270C39FE97F57FBBA84C6DCB8014089F4269FFF01837FEE0618DA0123948675BFCEFC0FEF7F9CE2C90040FC8714BFAFDF7E';
wwv_flow_imp.g_varchar2_table(394) := '6D3E3BE12F4A7E8A09801D30F6FEA119A8A01FA7FD5140AC0546C3344B9D0A0F0180879E51BE761C8D5E00003A00070161D89B01000888354088012908CC40A0B80F720D10F02B0592D509E032A06400BE310B203400785333E058083476A0F077FADDDF';
wwv_flow_imp.g_varchar2_table(395) := 'FCA147E6EDFDF715004C002076F78AFC8DCADF1CFA6600A6D3BF4EFDF6FEF7FA5FEF3E5DFCE3DD7F0D7AECF7EDF19F000058020080000C2E0C728090A3849D01D0180051787FEB52DD6503FB5B3FCF4A09FEAD47DE3EF33AFD73F873E71F94BF4EFC41FB';
wwv_flow_imp.g_varchar2_table(396) := 'BBBC2752FF1CFAC3D37F3901C6D3FF2556085A23B081AE58B06CF0DB52F52F00805D547F6F050C726DA4FAE7C1CFE43F59DD9CF427F53F180050FF6EF7E37B0280A8F9150060631E014004FD28F73EDA04DD50DC2B952706E029AF770B27A105A013C022';
wwv_flow_imp.g_varchar2_table(397) := '40260082FAC7E9BF03000083AB4BDC374B0BE58035C0976C07441AA0B2001200C4E9BF5C0066021C06040D005B50C1B24C0EA89477AE20E09857FC0A00040058008456ACCAFEEF543FFDFE3719FBDBAD80C50038FFDF96423E15DCFF9FD4EEBFC5FE96E2';
wwv_flow_imp.g_varchar2_table(398) := '7F0400CC06905550C97FAE00A60A966FBC47BD0C00F0D286BF5F084F79533CE6C5F59E3FD7E0F704D43F1880B0E691F2C79BED7B38C9BBD80751BFB6F7010484DF1F453F57FA7BFD99C13FA4FE7BD00FB3E7F98A73B08F93FE38BFB9021876FB7B6C7F96';
wwv_flow_imp.g_varchar2_table(399) := 'D7F5CFB7C88F3BF86AF983E8AFA7FE51B9CFA43FF8FE9DEC17D47FE8005CF5CBFFC6929F6D9F7FD8DDF46B2DD1FEF36BEE77AEF5A5EFC53580AC803303A0E19F42C0A603003BEA30340630E9B1871D3A06388580160122EBE4EB8FD3D8FB0708F8A13C00';
wwv_flow_imp.g_varchar2_table(400) := 'E9000012783FE4BD3400403CD7E32AC0F7C2F7FCDA3BE6775F01C00E0090A97F31F8F516653F3752FC97FFDF7417750304113E91B0F98FF9FF11F9DB13FF7CFA0F21600100AE08180FCCAF11FDAFF4BFF0C1BE0000301C3EF487FCBB793779CC55F9149F';
wwv_flow_imp.g_varchar2_table(401) := 'DB854D133BB89E119EE2015EFE1E2928B3F86FA2FEB3DA3753FE74E277B67F0C79030132010510E81008E53FAC7FB6FC7DE0AEDAB2B071604F3E7F03807DAAFF76F23784F70AC1831F27F26CF9B3DF1F3B7F0DFED8FD2F00009CFA71FAA71B4056C01F04';
wwv_flow_imp.g_varchar2_table(402) := '0A83DD2F4EFFFB87BF9F010FEEDF19FE2238B69ED45D00205C00D0007C6C4E00B901C20A786E00C0B52AEB81B906E800C071C02804A2F54FE2BF210F002CE93200480794D991BC0A9EEF1A7F4BDF7905004B0060A8FCBD61C56F0800F5663D80BCFFCC0A';
wwv_flow_imp.g_varchar2_table(403) := 'A0766028C2D0223AB2FFD1FC77E79DBE7DFE4CFAF3FE1F20809D0075F26758104B30ACFE27FA1503D0CA807277F7CC57E8D2497F06035BF3FFB901C134D5670DC0D2D0FFDD1BE6333FCC2FF6DBE3F99F1FBBFE6753F14CFBA3E5CF6AFFACF5BDD0708F64';
wwv_flow_imp.g_varchar2_table(404) := '3F25FC89FA2F00E0D5C0690C7DAC0AF0F550FEE3E46F00C0943F65FC4B94E7137F84FCB488DE6400F6008032D67160596D96BB7FF9FCEF23D5AE28FF6CF753CB1F76FF9D01E0C0A7F82F730070FAF7FE5F613FA4B8B12FE73F9D12C6677E0D0D5AC92EE2';
wwv_flow_imp.g_varchar2_table(405) := '941380A540F4F9870B400240AF02BA1530DA0161878610F0E43ED8D5AC07D66A231800B5027600502240DA01B9022000A00E4A0720E7208805E0736518582F9F5997F2625F587FE1075B01C01E00E0A17F25EA3F804063049C00080030D7FF22E6D443C7';
wwv_flow_imp.g_varchar2_table(406) := '0E000C72A8FADDFAC7B43F0200C70033EB9F01415DF8D7E97F3B00FEC60AE0C1E15FF7CBE115F8CCF72E3ED63308580205D38B6C0501C7DD75FAF3DF4FFBF9F0E7C91F20417E7F67FC87CDEF94F9FEA2F63F42DC37ECF90906B00E701780858291F61781';
wwv_flow_imp.g_varchar2_table(407) := '3FA4FEA33C0883C5253F1A95BDDC67E70AE04000D019007FDFA0FEB1A7B7D84F6AFF6AF753C9CF8DB3FEB50250EA9F55FFDEFDCF253F5827B8E8673EE51FF76C1DF7D9F38AC1AF29AF00A003702D305D00F79B7FAE6FD306883F231A38B200CEA901A840';
wwv_flow_imp.g_varchar2_table(408) := '34683438B1B93A61AE7FE80050097C530C40EA0094030066606000320CC80C8986BED6A1FD1A5DCC3E38EE6179D39FBD02800100D0B6E2E63FEFFD39F8C9045C9909501C70AC0A74A1E3EBBAF7152F203A0068019CAD7F91F39F0080C0800CC044FD2B3C';
wwv_flow_imp.g_varchar2_table(409) := '2876FF6002D20130E500C45DF8F9B76087808039A0E44FBE8A16C1C0C20FB00EFFE39E955DFBE6DCF70B05F8440ECFBF95FF19F1DBE8FDB0F67D3CDDFC13413F050432E657277EE604D4CE3FF404112854A975FCA7EBC4DE4FEBA39F5F1A80DF010016FB';
wwv_flow_imp.g_varchar2_table(410) := 'A9E10F413FD1D2A7C09FCAFA271088963F09FD6005CCEC7FFC5D44FE8EF4BF29F2C15679DC53F5A8CF5ED218E0B5446D54D503330888C13F3D07C08140580FD02E3D03006B30087098088843119A0EA901E85D008E0436030031B4E380AD83A226C3F741';
wwv_flow_imp.g_varchar2_table(411) := 'DE6FF3F7587ACD3FEA9179BB5FB40280EE024801A00380B0F3E7DE9FC39F22407CDC458066008C763301700200E5EFAFC13F03801CFE0201700E30FE92ED81AE27DA00002000494441547F75E12B0740B4575EA27F0000C43F994793E517C7DE13FF53D1';
wwv_flow_imp.g_varchar2_table(412) := '017B96F98BFF69D605BCDDD7F5B3FC66BB44620E8EA9C43F0EFEC1F6A7C85E9CEC59E883817FBAF90700E0A373FEA1FA67F31F4EFF7009F4C1EFB09FB0FCF92D237E7555E60AA02BF679C10D22C00100F06B7BB4AF4FFE8B0C802A7E41F9F7921F66FDF3';
wwv_flow_imp.g_varchar2_table(413) := 'D4FFAD35FD0100F0EF0A0CB8F8C7E13F56FF534C28EAFFA95E27075E0DB96E68FFAE3301A2DC27E2807FC5E99E5D006310508601A919D06140A1896A89805D07C08C13141E9D86DDCFA77FEB01220A5895C02902D44A9481480E466A6CC0AC476ABFFFAA';
wwv_flow_imp.g_varchar2_table(414) := 'FF192F861500E8F100CD353A006801E4F01700D07BAF01A2F52FEC2E480D4462160B8078B12B0340FB7FECEF41EBDBF6C7C17FCEB6BFB602A0F06F64001820A4D3FF900160EAAB5DD67F08003C7C4F39F6EEB5BE341F7E4CFFCE67EC727794D29F563F07';
wwv_flow_imp.g_varchar2_table(415) := 'C744E04F84FE20A0A7C27E18F14B0080809F18FE9F4E37FF0A00A0B746FFB3E0A752FE70F277A220CBBBAC45D82EF9A9613F27FA2D3100060086B6040FCE14E896425AF358F213947F2BF909B5FF779FF0ABF8C7C39FD5BFD504D833FF7BC9CF2E00F0DC';
wwv_flow_imp.g_varchar2_table(416) := '8CD5120000307218103400080382060000C0DE7F270112003009D01A801E8B1E7D037268607823D08C8F23DBFED800E808E0EA02E839009D01282D948040DA24ED39E827159EF4D6BBCC0A00EAF4AAEB23682E03006500C0D79FB47F82809BCD75D30114';
wwv_flow_imp.g_varchar2_table(417) := '00507890D4FFB8F9F9C50A84DA13000100BEE32D6A7EB7570066005816C4537FEEFF7F9DB209CBB497052F4335E6B183F7F8A1B27423AA1796FEFD47BFD87EFF25BA449D2E3D2A2FD5B678FC33F27C5FB173F89373D710D6895FD9F108FDC9C43FDBFE42';
wwv_flow_imp.g_varchar2_table(418) := 'F54F757FECFD91EDFFE9430C7FBC610DE0CC7F6702D8E6C75DBFEA7C3DF4A5FAE7B598323979F5FB89FF2100D09981DD4C80ED7F1C5C020013E58FE1CFA29F4EF397CD8F0D7FBFB2E1CF853F2EFA19BDFFCBCFE97382800E00BA708EF746AE0042082806';
wwv_flow_imp.g_varchar2_table(419) := '6006006E071C00804B813211908F7107006001E64AE00E063209B0350282197546021D515A05F495C04055F2F17CCEC7EFF95E85CFF79DDF3503B07D915BC9CFB85FECFBE3F47F81C13FB2002E01EAE2BF28BFC0BE2C1AB07887EC00C0E23F9FFABF8301';
wwv_flow_imp.g_varchar2_table(420) := '1008B038D0F63F760654F29F5700B6FFF5DD57AF38AE24B4A7BF68FA6EDD1F7B5C13DD8F2FB259197EFC4F741818E803DF1F2FBEF7A8F883CAEAE37FE797F515FB00001980A2FB2BED6FF4FC33E3BFBCFC9DFE3700801620627FC500C0E7EF829FA0FB35';
wwv_flow_imp.g_varchar2_table(421) := 'F87945F0953BA4FEC55FE3AC5E3179CB59FE730EC00E80D0FE9DAE27E0EE9A497F3F5AC98F8B7E30FCE32DEB7E2D04E4AE3FBE464D7F18FC4EFD8BB29F26FEDBC7BA3CD715620030083DF370542B8048030403A038E07FAE2B1A385A016503A43D1A5FE7';
wwv_flow_imp.g_varchar2_table(422) := '62342702C29AC9301F4602AB10C815C06602F41E2B0030043FA0019013C0EB50E7012CDD17971EC31500BC670620EE1B6513E9FED99901B003E0FAFC678080EB8B711DE042A041FD2FFA1F372CDEA8685731038021DF857FDF82FEE71AC07D0069FBBBFB';
wwv_flow_imp.g_varchar2_table(423) := '10BB7F36FF9109E8FEFFEA02671890FFF75C006018F8D925DE1BD79CFC56652295CCD690F7CC0C2CEEE5B707FF92E66018F2A2FFD20AA43910B22315A70C37B8CA8C1918A1E7BAB9BEC6EF3B3329FEB36FA2B6F991F217550FCA5F39FFF4FCC3C2C7DC7E';
wwv_flow_imp.g_varchar2_table(424) := '87FBCCFBFF7EFA87EF3FF6FFCDE79FC35F71B263B67F3BE61D09009CEC379402490BC0DFB598045E430CFEB96D19FF38D587C84FF63E36FDA9EE372C7E6400BCEB0700C0DAA0B7FC65D31F0080AF5B5D9FF32BE13907D82E00807B0A1898B8D73506001A';
wwv_flow_imp.g_varchar2_table(425) := '0028FF2DFE5B5C01C81E1DBAA81E08042625344D782C4E62C0BB11D0A77FBF4755F00FC4012B08C856C0AE89F2BD711605CEAFBBE77CFC5EE36BFC7D31001D00B453A0C32E420380064035FF79FF7F0D06E0825A003001CE03081BA02EF01200DA934C4F';
wwv_flow_imp.g_varchar2_table(426) := '6A6500B0FCC7D63F0CFD6F3F9B06405D000E0B2A0680008240A2FCFF06007312D6730080E1642FEAD537E5003BDAC7E6DF350D844180F7C5030DB7B0263070F28B69A6EE035E3491CFD6506FC3BEB7A665A46A0703FE3EED1F39662DF0D66F265BCC4A9B';
wwv_flow_imp.g_varchar2_table(427) := 'B5B5EF6F19FFA2FB9DF497ED7EB2F461B87F74C56F130192FAF7E99F00E05C11BF3CFDF782AB51ACC7E7AB9EC8431880B1F98F5F6F8ADF62405E57BC49F4C85FB7FC618053F0E7943FF8FB15F52B0040B53F1980DAF73B2C8871BFBDE6D7D63FFE2C0DD4';
wwv_flow_imp.g_varchar2_table(428) := 'B7C9F29CD7DC6E00D00B81A0F02703E03E00AF025C060406E0CA2E00380122474059004D07E048DF00005803280C28847F7005C006F89322C0CE00B049B089A21D8CE6D864E7022CECFD9EF3F15B01C00B7F04F8A2DAB6898C00C00D8054FB5F5FFC8CE1';
wwv_flow_imp.g_varchar2_table(429) := '1F2B807CAF62A010FF39FC87173A0722FE1566559B018804C09B0FDAFF93FA0F064020C039004EFF330098D5FF5502B41C85F9DC002087BD6ECCA5C6E629C174AD6FDA757AAB6CF8EC20EFDAC5E1A8B3C000E8B9F3C1CC27FB7ED34A4570DC082A712CF6';
wwv_flow_imp.g_varchar2_table(430) := '8DCE55978662A958A51DFA0EBE92DFF20D65665846A609CFB51AFE4E39B069F53B8DD33B13FB78EA77BB5F02000081D00168EF7F5DE97FF85C8BFF52F41736831EF3ABA8DF66FB23637FD80AA09FECF96502003EFDEBCF66087AE42F87364FF18CF81D4F';
wwv_flow_imp.g_varchar2_table(431) := 'FFCEF88FA01F3100DCFDABE8E786FA8110FD29F0A70A7F14FE336569F457C3735E6F7C2DCD2D7B25026425301C52BF42E8E734400200AE016A05A042A0B402D2091089806072F2F539660160D863E85BFD0F6B202C8200072C47631C30EF8F1646530F00';
wwv_flow_imp.g_varchar2_table(432) := '7BF45092B6028007EF63EF93016827489F48BD0288385F950091FAC79B40805880AB8B0500A0B42C0300AE1A040014014C078006BF863F41404501D3EBFA61DCFF47131859808A07FD3300A09FFEBBF29A941E4F06B851C77BABBF9B3FBB58010100AD47';
wwv_flow_imp.g_varchar2_table(433) := 'E24636EC7567956EDBF6CECC4DBB51F553BE6F2A045D1CFAB655D5C76C55EB4A6B838915008CF78B430040A4FCB55ADF28F641D88F2A7D2BD35FD9FECAF58F13BF2C7FF8D8C2BF0BC5FCDAF257EB349FD4A71D7EDAFB1E0600FB0082190082816204B65A';
wwv_flow_imp.g_varchar2_table(434) := 'FEB0B30EF5BFAC7D12FD31DBDF653F5E018CF4BF6D835B35BF1A863EF9A7186FA1DFEECF03000BA4A73E806000900550C31F9A00800207018506A0650180618D83814281F93A642090B30040F7FBD46F30F01D204049800100B21340D5E8CA461957A423';
wwv_flow_imp.g_varchar2_table(435) := '8B522BD20767E2BBFA84770700460A999762670006007071B3F9D8863FF4005C053011305C006DC7E521C817697500C002C810A0D20098FEFF164CC079B003911310BBFF39FBFF94E13F5B35C0643FFD921AE8F527BA8CBBC8CF162C06839816645318C3';
wwv_flow_imp.g_varchar2_table(436) := '5970932850909F2F75F8121B30AC06869F796401F264A2DF777BF073E8FBB40F8B110B471AD56ACA35BCD6540EF79DEB0A000E07007C6EA5F68F937F13FA45A4AFC27D74DA67A18F0B7E7AB90F13FFA813208B40FABFD8A472D47838D76EDE27F8431880';
wwv_flow_imp.g_varchar2_table(437) := '630000E978F608DC49F90F3019A77F55FCC6FE3F76FF8CF745CEFFFFBEF23D1900018014FDE9F42FB19FAF570F7E5F8B0ED1FA93FBFF62D66606601900441C30448097CC03E0E99F7FD745803D0C2801809C1B3300B00E00F4FFB71FA509C0E9FF3BEE8F';
wwv_flow_imp.g_varchar2_table(438) := '0102C018B440A0B60AE82569F31A25AFEC47BB939EE886FAC2BECD3B0300636464A14252534C01140300FA3F18809F2308100B10002044317731F8C2FF8F53717A93E5005007C0000044FBC7F0FF791EAB00F701C4E95F0020E97F9DFC67FA7FEB84F60C';
wwv_flow_imp.g_varchar2_table(439) := '369738A8B76EF01CFEA8078D8637BCFF25C576FD1D590182815C0B7435B74001D017FF8DD9A3BB0C0052E413C35B433CE83F96A7C44D5A27FF881A55B7FAFC3EF3D6FBE94BD2CD5507C057C69606A051AA5CFD50F8173BFFF4F83BD54F413F61EFFB10B5';
wwv_flow_imp.g_varchar2_table(440) := 'BE0005CEF9672640AD0A42F4176B040E7F3A0A4A505A54FDF33300F0F91B000C15BF41DDCBFB7F43FA9F99FE04009FBF92010013E0BF2FFA9FBB7F335133F8CC53FFB4FF8F27E20F0DADE515C03600B89006C05900A6FE0D00A00F4058D0050A8162458A';
wwv_flow_imp.g_varchar2_table(441) := 'FB239D00E805C06BDD2C0B5B52F13A3D89533E863D4EFE6002020804FDFF218282A013200340105062403101799FE4BDA15EC73CE8FDC9C7F285CDF99D3FCE3B0500636104A96D0A55CE24007408D047B000975E01FC1428B8D9B0EE729B013065C9132B';
wwv_flow_imp.g_varchar2_table(442) := '15FC50F2070050E80F4EFCD4009C6F0802FA0A6002006DF8C745AD1EECE186D19EDEA7A40849649821D18D4027FCB8F1474738F682B871DB274C5010BDEF018AE4E1D6F04F4B97B512B2920D8E01BF52BBC35B2F688B1FFBF01F297F5A8BC25E14CD6C04';
wwv_flow_imp.g_varchar2_table(443) := '01B65C75CF75DFBDD6E96BBC361E02034FF978BFC49B46FFFDBB0B2095FF679BCDC5D9E906B5BE10F845A04FF8FA3F64D00F3EC6DF47B3DF255D013EF5875340831F40A280A3416109008B9E7F3E0680C39F00006D7FF126DFFF4DCBFCB7FA3F018006FF';
wwv_flow_imp.g_varchar2_table(444) := 'E7AF0500420028EFBFED7E0C126ACC9390D6BE35D49FBAC61E020038E4CC85405E03F4D3BF730020169C3B52D00CE8E51E577604009106680080137F0C7F82800000B001BA11502B00838008148A5C0027A5564260777DE5FDEC25BED0FED2CFF42E0140';
wwv_flow_imp.g_varchar2_table(445) := 'AF90246D6E0070471780DAFE40F77B05C0F76003E80660D6353F3FFDFF62000C35CB02C88C7FAC002CFCC3FB38FDCF0C40F85CA901986D2E1C7E1501EC9B73D7BA3CC5CDA22C7FCC3360B63B4FF2643B6AE0E3E60D5110DECECFF53E4E71020118FC0202';
wwv_flow_imp.g_varchar2_table(446) := 'E34A80C97156930713309C748A01E8E24D237BEB2192F26FA7FFDB382194D5EAE70D41006EC261C11A5601D30D39C395EA04BCA025FA4B2FD797F1CFE299F1E91FFB7F34F445C21FA27D23DE97C3FF5F08FAF9C43F87D21F277E010080008BFDC82415ED';
wwv_flow_imp.g_varchar2_table(447) := 'CFD01F59479D2F2155BE4140A7FE33C2F70111E0432B801AFE18FC0CFC0100C0E087682F76FFF6FFA3D8070C00DE7F1B1900AF001200DCE8F43FF9FCB71C2E0BAE94A7783D1F7AD5EC03006063CCF6651CB0447F1EFEA6FF3308082C40B0A4EC58899E14';
wwv_flow_imp.g_varchar2_table(448) := '0B019D08D818801F37600128F8C3F027086013E0C800940E20720170AF6C71E93D22780500FB9FFD15007400F00174FE3600000380C13F0200AE00CEC2E6227AAB9D6A5DD7CB1A6002804800D4C0E7F0DF5E01640260E65D97FF3F2B805BF94552B57A9E';
wwv_flow_imp.g_varchar2_table(449) := '7FE786D1BFD6C13ED647A4E00F7E600CFB0FE864573428DEEB63BC2795BB83054826E0A4C25D1A0B40C6B30DFFF805ABF4284E0D49FDDB65416A357213F2F4AFA18FFD2B6EDE37B01A0900E0CF0A5E0991E020C252A6B844E78B4CCB24223DF406FB5A3F';
wwv_flow_imp.g_varchar2_table(450) := '6FB82EF0EC9C20E6B7C27EACF667B63F87BE87FFBF3F7D88B85F28FEB102E8277FC7FC6E65FCDB46EA9596906E68FC25D27B6A00104343277ED7FC020060E87BEF7F131E7E26F931F6572040FB7FD3FF5FBE55E63F92FFECFB9F77FEB9829C126BF9BBFD';
wwv_flow_imp.g_varchar2_table(451) := 'F9D4BAA3014038016AF7EF1860AC0070400A06404DA97120D07DD2F716DA2B2B0C0840DD6B003300E10088D37F3502860E20C580D64B61FD47B1345ECF435DBAEF8D66345FEB0BF1197EEE1500CC0020720064013C27FD8FD3BF19006702600530330040';
wwv_flow_imp.g_varchar2_table(452) := 'C9D14B3E59001300840340833FDEF32D5C002D07A05B001DFD5B495758A055FBD5630000E6D7ECBA1BD4FE12467AFFEF2C70DEF4B9EFF7A93FEA412FD013CEAA500381D8E502044426BCF500CD26785A0C00AB931B03D027CE56D31707B45B11ADE80FB6';
wwv_flow_imp.g_varchar2_table(453) := '24867F3FFDA36AB44EFEB8C10004DCEC6201EC235E080EDA02022D47C2AFCB87D605CFF0FA7DD66FE9A7C1B6D6CED838E31F4D7D000041FF63F8E7C9FFC3E6DFFF9C6E020028EB3F2C810EF9895ADFBA36CA3EDAA8FFFCED8AF237087832002066C119FF';
wwv_flow_imp.g_varchar2_table(454) := '9DF28FC01F14FE60F0EBE41F00E06705FC8005C0C00F1D00D6007ABF45FFDFB68ADF2983E4599FC423BEF931008071C05DF8570E008A00A901E869800600B40212F530121880BC6A817DE2F7E9DF208022C066076CED80435D7ACB4BE9F7C77505B07D31';
wwv_flow_imp.g_varchar2_table(455) := 'AC006000001401020040E46701E0276900BA23001A012B5CF3C2CE0E005A001D031CE97E60001200D4E9FFAB01C0ADEA8043DC821580028052F96F610BBFAF4F09C70280615D30B106BCD1579111E93AD78116AD9FA5201EFE78DFDE9205B03BA0030089';
wwv_flow_imp.g_varchar2_table(456) := 'FF1C21EBA1823F7BD0C48F153788B20256E5A7DD150401DCFB495CA56851AF0038FCB74140300212073A82B5F400B4096EB90C7A425B4B19ECB5C7AF11006CFDCC4E79D4734006A88A7E4EA0FCC72AC8253FB2FD45BA5FE4FA7F88A10F16E0DFFFF06330';
wwv_flow_imp.g_varchar2_table(457) := '007401102C5C48E96F605851BF12FDA598B5C535DAAFDF5AFBE6A8DF87720096FEBBED7FB6FB71DFDF297F9EFAEDFB47925F84FF640220873FB4007603B80BC0D1BFBED6227B620EF949D1F01193FA993E750900E4214036E77AEDB312385A01F5DE7FBE';
wwv_flow_imp.g_varchar2_table(458) := 'BAB89308505900199646A1B5AD80F8350600201D00E8FE5C056825D03500B602321340F1C0B9061803D35600B0FF625901C01200480DC0CFCD279CFE3B0B70E93440BA0568035C7000CC21405B004020E0075C00E7431430D1ACE27F156E311400B5C1D8';
wwv_flow_imp.g_varchar2_table(459) := '0750DCB367EF507BFEE79D63EDFA47C115235E1500A2185008806207287A9FAD60A806FDB5B90203B00500EC08184F791FE27B6BA8E4AE9703863FBF17002D07C0C95E025554500B0884A8CA20C02B802EFC9B0000E84347B14E5A0066062827406B0183';
wwv_flow_imp.g_varchar2_table(460) := '81255030FBB65F1B00D8F5F31628E3F3C4015DA13F18FED8FD67D2DF45DBFF7FC2D0F70A801F8301803E20E8FF50FBE3EBBB38B4ABFDAB53421E57B9C6CBE7BF9CF1FFB81C80040016FDE1D42FB11F4EFFCCFBE71B2B7C31FCC7044024FE55FC2FC14088';
wwv_flow_imp.g_varchar2_table(461) := 'FFB0FBD7B516453FA1F42B7F7A7F9C9F69A61FF56D0F0500000150F983EA8F158042811C0E841440D8042F2334A8B20098085891C0163E325DB1848021060C4120E97F6802C615C0120BE0DAF431327D05002B002822B1ED92FBC392224037010A0004F5';
wwv_flow_imp.g_varchar2_table(462) := '7F59202035001770019001000088BEEBB4007A7039BE970E0078FC91FB9F7BFF9FE71B9CFEAD058040B09A004700E07D5659E0B6FB0C7C6ADE35FF97846C1D00F4E4BE586580BA9F87BF54C00001A6FEB700C085858004005C1B90FA2F711787096F806D';
wwv_flow_imp.g_varchar2_table(463) := '15A035402D28964180ED903CB579607305E0550028C552FF9708105A80CE00842010F6ACB00FFA7B4C01426218BA823B81C1CC0CCC944CBBD0FC781F75577EA64F1E04A4132D14223FF9FCADF6CF76BF36FC91FA5715BFAEF76D6B80A8FBFDB0F94716C0';
wwv_flow_imp.g_varchar2_table(464) := 'A4FF33E657B6D9407E6DF0273269E97FA2BC9E6405D0227E3B008893BF69FFF4FA63F0EB2D7CFD55F73B7E8CBD7FDBFD3BF35FEBA6089E1203E0A7F435030037027AE8F7F7D40000006805106140B81F8CA5406631ADDF215B47B53FBDFFC504380A787B';
wwv_flow_imp.g_varchar2_table(465) := '0DE0EA74C503430760E79462C37D79AF2B80ED9BC9CA00EC61000A00FCD87CBCA4230080205D00100DCE0C808EE13CA17290CF00A0063F41C0960640D6C1EDF21F0BD41A00989ED32500B0A436EEFBDD53872129C10FA774E61A98F6A7D7DF56BF38FD8B';
wwv_flow_imp.g_varchar2_table(466) := 'FEDF0600D4079408B09DF47CF26F35B2F1731808740620A90CFFAEFADDC506F4C8CF510FE02C80132AB7C30D30EA020C0C3CFCF9BE04843D3CA817B50CA982B273CDC2AED40A18084C1EEEDF11693E151698877F64DEEB7FD662A4CF1F943F581F0F7EC7';
wwv_flow_imp.g_varchar2_table(467) := 'FD3AF1CF253FF2FBE3B45F6FDCFFE3F41FF47F9403313B006FD47E68F00300E48F5151BF1C12DDF6F70439000B00C0AA7F2AFD7F6D7EB6D33E073D237FE9FDE77B64FC930DE0F0275060E52FB2FF7D9DF9BAD945FFBF846BC2C3788E02F64A305C0091FA';
wwv_flow_imp.g_varchar2_table(468) := 'C828E0E803800E201880FBCD95D700F8F88202C0D001E8903407A639B21C8F8901005EA70600C50210047400E03C808C065643608F078E7BE70A001EBC65AC00E0010080FDFFC7CB1FB10AB84E370019002B5CC900B8B484132DF6FF1300A00070DCFF7F';
wwv_flow_imp.g_varchar2_table(469) := 'C30AA0E700640C3001846D6F9D05B00870E9B0F91000F0CDDFA7D1F9E43F27FCD9FAE3DD1FAC7E10FC8515482B00AF022802A43B200180FA01F07DB13FAE34400700714276A159FA007467F4D9B0B40FD658942E626003B412B02B80D9E1CE0690EAB881';
wwv_flow_imp.g_varchar2_table(470) := '83020A75D33638B0A830590279C24B77503D03B912D8C10274D0F5E02BF3193F2101800B6F1A58C187A6FB83EA5F1CFC4CFD83A58FC13E15FE13823F89FE221320FCFF9DFE67CD6F5C0F098E3CF9471FDC4175BEC74401A77E40004391BF48FC73CA5FC6';
wwv_flow_imp.g_varchar2_table(471) := 'FC6AB087D52F1BFE5CF54B30C032A03EF849FBCF6D7FD697BC0900A03E00BCD631E8A101E8BB7F440103181000580438AE01289636A87338123B01C2EB2F37009900BB0014042421608080484F950EC0E1696107B44E88C5612B03B0FB66B20280C90500';
wwv_flow_imp.g_varchar2_table(472) := 'A48A1C80AB338A003F61F85B0320008052202601360640823950DA29006C00C031C000006600BE6AF8E3EFA20E1862412501BA01D0D9FF0104B2E5AA53E3E3933B03807EFAEF3BDF1900C4A95F1E7F7AF8BDF32F4A3F94FFB6FEB5FD3F58003302910B20';
wwv_flow_imp.g_varchar2_table(473) := '2B60CF731F3ADDBDE7EFC2BF8905E06FE50961D1A37FEFDE83205780F211980BE0BC7F048480CEEFA7FBEDA0A09FCE0CB06550990173905014B8C48E582B83A9CD2DDC09DEF12ED4B9BE5800E09F356B9E11C8C3E1CF821FBE21E31F813F2CF81987BFB3';
wwv_flow_imp.g_varchar2_table(474) := 'FD3DF4DDEEC7F43F89FFE2F4AFDA60B548F279AEC1CFB0A1A5A09F5600B4F8DF1FD6001050F0CDD47F3C6711F6A3943FEDFD21F4F3F087AF3F6A7EFDBE31000001AEFA0DB1E082CBA4EB47FCEB0D0E8B3DBA9D67C4815BDF7A5903A0203033002E045A00';
wwv_flow_imp.g_varchar2_table(475) := '00D102080160AE00702F45609A0381940818364F7E5F3EFE5CBF91016033609CF8DB1A601001E2BFA51BA04000C03A62D7570070F855B302809D0080454009001A08602570D900D901E07D261900AF003205503D0009007E1008780500870034005903AC';
wwv_flow_imp.g_varchar2_table(476) := '64AB61FFFF3B0060B2AD51DDDBAA7C33E447E23D0C7BD0FE41E31104C4F06F62BF4EFF830D88FF06BA180040346F3604C60D5F023F0D7B6E4B2C006C2E00B5291203A44131496ADEFF933C6EE1488C06465A624603B788E0A01AD329D0D6032D2468B60D';
wwv_flow_imp.g_varchar2_table(477) := '4678906FEA720F8435CC8D6E8E1ECEB64129BD6716A0AD02FE36E53B3300C90AE96764C67F0DFFCB73A6F7C5695F7E7ED8FE9CF71F0A7F65FFCF83DFC97F17AAF8C52AC1D744D0C0030BF1D0E0E7837A8C0890BF5B5F2954D90FA64FA9FF19F463D19FA9';
wwv_flow_imp.g_varchar2_table(478) := '7E16FCC0E2A7B7B0F96905A0E11FD78C863F4162D5FCCEC97FF3ADD93A80C36FD9CFF79987028048036C2B8010038A0D881860AF00240264670AECC39599C215009F6FA601E2F167CCAF877DAE01A40B7012601C9682018018700400B6035A24BCC50068';
wwv_flow_imp.g_varchar2_table(479) := 'DDF97C8FE2EBFACE2B00480000A18A6C8067779BABB3DAF98301E82C00340028049A570045694A00180C00452A0303A0E11F6060D105200BE056BD6505E2CCF3C597DD22033007D72864A403000018C7F766C46F0BF741FEB7A97F2BFE6305E035408283';
wwv_flow_imp.g_varchar2_table(480) := '0A0A2A9B5713FA69FA61F01B00CCEFC94E8CFF7D160656C257AD5CA82A765A620B0C0A5190027F2236D437E91204C6C9E386BDEDD8FFC67BFF590142BCD17B4DA05EF75636E47FC362AF7DAE8BBF7D9BE0CDDE83B17E1A3C2F69F383C71F42BF38ED23CB';
wwv_flow_imp.g_varchar2_table(481) := 'FF4304FA448B5FBEFFC08F15F3EB133F73FE091C42F91FBEFF8AFA8DBC0C2FFD23C1EFF127FF7D49803300300B80E728CA7E54F4C3E8680280B0F985BFFFD7E67FDFEE95F1FF2BDE9B0DB0CF1FD70A340361F5D3F0F77AC8C3DFCC50FB15076CFBB701A1';
wwv_flow_imp.g_varchar2_table(482) := '9FFDA300C0D97D28FD53F9DF01804280AC01E83A0077027005600040D62E18009DEC910A4800D05600B11EF02A00C9AA7603C0663D0502E9DEB90280FD779A1500EC030072008005082BE0A4017010905B007953C3757D1A02145AF948EBFFB00BE0C759';
wwv_flow_imp.g_varchar2_table(483) := '9EFCBFFEB8D03A60AC03CE1220055A74EADF43EE6000D0A6900E4379F3891FD776BF48EAF2F036D58F308F0AF8E1E0C76E8F7F67005016400704A9D045FEFFAEF8F73FEE21BFF47E06072E0C1A40404AEA0500E201312BB02418243D6FCB204F6906001C';
wwv_flow_imp.g_varchar2_table(484) := 'FE1EF8A67421E89A81814F7A640A4610001AB9BB03668B26798B97F13F5F0B91ACD78816ECFF83FE17F58F21EE93BFE97D64FB030444BCEF95010041C230F81DFA13D6D1A2FEF37A0808B26BF05BFCF730F5FF1000E88C8101003DF995F9CFC01FEEF079';
wwv_flow_imp.g_varchar2_table(485) := 'FABF57BB1F1AFEF8166C0040805600B84E703DE4F0EFC2D0E6F9B730B4AFE006C0FE422E8A87000080210F0764057DDA0F1D40A3FF6103641910AD807150CA44C072026C018070EE60C05728901D01640578DA2F41A098805B0280E8060827CFA401D03D';
wwv_flow_imp.g_varchar2_table(486) := '9040ABBA255EC62BF1EFFE142B001000404B15D069040149031016C078FB910E0046026F6B00189A533BEB10F0859ABF0180BEFFD7E99F7A00D604232C8817B1F658F7A7DA55B6285C9D729F0400B41540147D0C053F00011CF6040135F8170180D20099';
wwv_flow_imp.g_varchar2_table(487) := 'EF2E0B6016019901A8C7872FC691FE3FE4CFFA2A4DD2B410F05514F908E51AF0C71522E40441EFF00B00B0E295277FBCA78FFBA4FE4E7F4F9040A197ED84000271FA530BE150F6D2D9979912F8BBAFFD61F8BA8B0120D6BBFF2EF41B73FE99EDCF370200';
wwv_flow_imp.g_varchar2_table(488) := '0EFF31EAD70D7F001343DC6F86DF2C51FE87ABFE978280E61541DFF5679430CA7EB4FB8FFDB3AC7F18E650F077FAFF7F5F30FCEF071050413F0280B291DA11D2037F08D8EB899E41C04B39FD1B87B92EBD8473A5015806006401120C443E805C00000ACD';
wwv_flow_imp.g_varchar2_table(489) := '094086556140A7DB0C0001395980790DD0FF0CDA9FEB807ACF402096022500B8B776888FFF0A00B66F382B0058000050F8E36D00002D0F802B800A020ACB9CF3CB2502DC070062E8FF38DF7C595801640CF0DDE8004816E0990080CB7BAAE16F06001308';
wwv_flow_imp.g_varchar2_table(490) := '9845805D03903D008AFE6DF6BF3CCD670DF0EE55005FB41EF2F2061838E8152D2FC10808F872CFF3763C76BA115353B1DD1B300200AD030004B40648A1D7B01E90E82B9305D9F7DE9980EE0CE8BBF74EBBCE2FCBE71E0AFEFEC3EE5FBA8C70817C70C8CF';
wwv_flow_imp.g_varchar2_table(491) := 'ACF087AD4F053F6AF8FBD800000003297F9EF81DF8034011EB20A540DA79D277F31ED41C441D18ECDEF98F277F4FDAD215B872B6BF07ED3FB4FDB9E90FC33F627EB902C029FFB306FF7FBFF0E4DFF500B6FB39E56F56FAFBD4DF088EBF0CF71EFEE7CD00';
wwv_flow_imp.g_varchar2_table(492) := 'A426D34A1B9581390A1C1D283E14C4C91F16400D7E5701BB0B00F4BFC3804207A0DC145E03B5020033C7EC0E01800001EC06F8E1364001035A05B502B01E000727B0002B0078F8896E9FB102805D00E0FC364EFD6600BA06802240690060015C00006315';
wwv_flow_imp.g_varchar2_table(493) := '30297EF8FD43F8D704804B1A00B600B2DED2F5B70500AAE77AE940B9A5019857007AF20711A04EEAB3E58FA2BE5A03E40A40C97F1601860BC000A033006D05E03859F535FCA8000020004944415487FFF8B45FC2400B04B7DF776680C6005907E51FCCF2';
wwv_flow_imp.g_varchar2_table(494) := 'A02145B03B08CA45701FA2A3121ED102C8A020AE01A6537F9CFC0108E8ED2EC577E9044C03F7502156C92AA8289C013C751A101C32181E0B0416A9E67661A4025D38098F1F7DFF708234FADF163F0D7BC4FC46D10FDAFDD0F8672D006C7E6AF963BD2F86';
wwv_flow_imp.g_varchar2_table(495) := '3FEC7E63BDEFE0041994FF9DE67F1C00E8C0C1717BDCBD1340B8EC2714FF7A6E1CFB6BEB5FDFFFE3948FA1FF5FD3FF02005FBED21D00FB1F3EBF0BFE42FB216ACE2FBBA5E7E2A83BF41FFCE4190088565363275B401DE8E37B419DFEC5042821D0FBFFC5';
wwv_flow_imp.g_varchar2_table(496) := '2C806805BCCF1379E830429C5B0C40B702D6E9BFE701F8E30FA10BE891C0F83E0E03EAAFB395015819009D04C731C924C012010603B00400E4048815C0D005E09A4BF34C6EA963ADEFCDDD0E00D0C480D0083009904E80AABBB59775DC6BEB3EB3F58C3E';
wwv_flow_imp.g_varchar2_table(497) := '0A00B8DD0D42C0A0EFABDE97C2BFBE0AB002783B0700F43F6E0C830B402980AC14AE5580810081481FE8DB037E0900E40A2141C02C1C6CDFB3AD0538146C135C2E0F4A20D075011313C0CF21282871A0560173C4B0BA05B81AB005ADA8E13E24E6A17F2C';
wwv_flow_imp.g_varchar2_table(498) := '08D83770BAE2DC1FD7F09F33FE31D44F72C73F14FDA8EE17F47FF8FCC31608D6E0342B7E83F297E23F9D20ADE5AFDCD94D95DFEC7935D00F63003CAC3C81AD6D88C75B943F063E2D7FCAFB97F02F827FDAE93F560052FF7BFF0FF19FDD00CC00A00624F2';
wwv_flow_imp.g_varchar2_table(499) := '219414B98FEAFF8373FCD1FF147FFE3A600C00209C4E0200D600E8D4CFFDBFDEB4FFEF4140C500283955B5C076026C0380ED40A0BEF71F0081F2005600F0B8A77D650016448018EE50F93307A065013C2700D8CA01E0E93F13EFF26431BE401795E6ED5A';
wwv_flow_imp.g_varchar2_table(500) := '186E4A9DFA996C80A47EABF39B99FF3AFD770B20D4BF530AA019006B03A8F8666BA0DB001D2E83C1B3170824EDCF1F90A7FD7D8E01FEF7594C38EA09A63441AD0198FE368604D1F63717088DAE00BB0506FFF7E410889361D305F0DF821381C2B35C0D2C';
wwv_flow_imp.g_varchar2_table(501) := 'D0387DE83F0700F0F08FE74491BFF6FD637033E39FA77AAAFD99E84706607B05409F3F86BF4EFEF2FA9B55E0BF31B6FCE1674845BE4051F7E73F1A00E8C8C7950FC1034EFC6C8DFCB5B953BD6F88FE9CFAA7DDBFE9FF4103E0937FD80099F90F00C0A4BF';
wwv_flow_imp.g_varchar2_table(502) := 'B6F2994A7E1E773BFEBB5FF53800D034005E03641010E9FF7401442430AC80EA039013A00300AE005A1640B3005A08D8ED8004061201C20900DDD5CA001C7C21AD00E00000F0CFE002F819224004059D9F21084805170A02E2B05A6000A209F02C920073';
wwv_flow_imp.g_varchar2_table(503) := '05102E00FE5DD40143C89241406DF80FF5BF470280892A2871CF760E00AD80B403CED1BF14F39423C043FFBA81815A03B034C891AF63EB9B870E4FFE4C06DC160326D5DF0140A3FEF93013202CBB069C30585A802E0A64A190448172048415AC7508F066';
wwv_flow_imp.g_varchar2_table(504) := 'D4EB8425121CD80006C17416A027C17147DCA962AF061A08686B9938832DD0F587BCA2E7D37FDFF1FBFB128061209BF63FD99C81F697F2DFC13F19F423B11F94FFC8F5FF374EFF28F8B106A0D3FF59F243EA9FA5524AC834E08C5F2409F27810CA8E5801';
wwv_flow_imp.g_varchar2_table(505) := '3D8700007E6DE7DC9919197FDBE87F56FCFA796815BFDAFB57D94F45FE82E69FFDFF60059CF7CFE798CFEB1CF493F955873C692FE8731E0B00221150D47F1601C901601120740338501C0A00BA103074007AB3F0AF838104004A035C01C0E117D50A008E';
wwv_flow_imp.g_varchar2_table(506) := '04001109AC15000040165CA8D98E0FBD8B80DA0A600B005C24108828E00000F2B3B626C0F4B5A79AF81100C0D7C374DAE449D02A5F25012A102880405F07F414C06E03741BA04481B60DBA357004011502B3C408F4933CC9480FEFDD2B028B04CB55D0D8';
wwv_flow_imp.g_varchar2_table(507) := '828939E80E01B72BDAAB1D3BC8C608383EB80A856C13243B502C406903E695C0980C27BBD81D875194C30884E44CCC24BE7A011FC3002C53D07CD2BD72F150C6AE9F143D77FEF0E89F2BF18FDE7FD0FFB2F95D23DF1F253F1CFEA1016816407C2EBCFE5D';
wwv_flow_imp.g_varchar2_table(508) := 'ED5FD6CFA6BE6EB24CD3CBC502CCBBFF91212840B0FD791D50D0E9456000BADF0C0019199DFAB706FF7D7AFF7B02204EFB3EF50310B80B20005F737E1800B44A857CCC0FBF15FFFDCF7C3400980480BB5C00559FBE8701800E200ABB462740D2FE52FEAF';
wwv_flow_imp.g_varchar2_table(509) := '00E069AE9715001C01002C043C1A00DC5203100C400A001700C06C03CC509B52B1CF3BBA075700FD3AD90700E254C83D9F930D63780B04B80B208B80E62C801608143A80480F64EEFBCC0460E8B81D70EE07E0B0F211582B00B9E797C3836606A0B309F3';
wwv_flow_imp.g_varchar2_table(510) := '44ADEF4B0ABE62847B46408101F5078815C860A00100D83AD8814015C2D82B1E4C023CE33A89865320520B4B38E693E3EF3200231330010009FDE2798EC17F4AC57E1FFE28FA69F47FD8FDA2E44720200100F7FF50FE07FD2FB5BF418655DEC56AB8F0E7';
wwv_flow_imp.g_varchar2_table(511) := '1895FF011A80C62848EEA9885988FF6AE70F9F3F411A581B0EFDA8F79DCA7E6205A0811F3D002EFEF9A16A60A5FEDD69FF9F0060E19E7C0C807B9A5BFAE3BFCBB100C08D80AE060EFF7FC4005719D020027416C0BE15808580CAFC67157079FF5D0B6CEA';
wwv_flow_imp.g_varchar2_table(512) := '9FDD013D0D705D011C7305AC00E0C9008072009618000300D1FD8C003E0000C005A062A1F213FF0603D0D9D7D42B2AC258561F0EE60202990E6836C05D0038F99BFEB72B40EF233B009F1F5A00E602F0FB8CAA709C4087FD705B051410300830E55F00A1';
wwv_flow_imp.g_varchar2_table(513) := '4EFF5D23306A02BA6B604E13AC7C80DD40804D654EFFD3E91FC3DC9901E10CE0F0A7358C7F7677BCFF6CD1208080570299142776470EC70C0B3A76782CD90C7D3A0EEA3F81572FF9398DE18F13BC6D7C11FEE3685F79FD01020000E20DA77FBCA9132000';
wwv_flow_imp.g_varchar2_table(514) := '4078FDBD5618C356AA6DB0038043037E8E0700B15288D3BFF6FE59F1CB01DE77FD6CF9BBCF86BF0403F1F7AAF79535902E100A06C10CF5C4BF5DE2CB639FC3636EDE4FFDB98F0200A6FE21027C0600D0FDFFE3A9BF5A025700F0F82B610500BF01007A12';
wwv_flow_imp.g_varchar2_table(515) := '201BAE7CC26C2B80D8EB8B01F80B00609AF9665E879E9DACFC140B80A19C20401A079CE47B4640A6FF290E38920105080C007A2810BF1E42430181101DCA7A16BBE21617DCF7FA5A0314C55F40A08B040501C6DC80F4BB9548900F4031017C7C28B8C4FF';
wwv_flow_imp.g_varchar2_table(516) := 'DCBE383805B01E90D79F27796A033CF82B39D075B01B52CAC8118853A63FD74D71128FB93F40992878973FD96CE738E0359E006078D2398C436FE1D3BF8A7E58F2733A0C7F17FD38DFDFD1BF50FC63F8B3E9CFE13F15FC0316A132FE1588991B7A175138';
wwv_flow_imp.g_varchar2_table(517) := '15897BFFEC0178300A787F60D0A029F00AA0A5FC41F5DF637EE3D41F697EF7A1F677DB5F9EFCE3C4EFBC7FB6FD71F0D3FA17BBFF49FD6FDFFFFCB4BD37008078E0D0015808A83020AC4A330DF00006201201B70480FE3B6600800D803E60050007DC1C76';
wwv_flow_imp.g_varchar2_table(518) := '7CCA0A00DE0100F073BFB82E48965C5A80C60420AC63740728E54FE540DD0D307FCCD6407F3EDEF36D7B1DC06A589C4EBB43C07A80BEE3EFFEFF2E024C9740CF057060503B56FBEB3B00E8EB0691E554E843C819FD01C864A0821FA2409CFC08027A74F0';
wwv_flow_imp.g_varchar2_table(519) := '2F06062941B00F7F8BC6AA358E91B3374D0BD01B041FFF521E13E7FAF749D53FF6FE61E502E5CFC10F00E0F85E67FE33D98FEAFF6AF973FA5FB7FE1100004898DD897F0B939D6A3C09FCE6321E219436F8E99F5F8A063E8C01C073A6455936FDD1F34FC6';
wwv_flow_imp.g_varchar2_table(520) := 'C5297F1CEC3CF173C78FD01F31008AF88D9CFF01B839FDD1C97FFCBE5EE3E4F3A707BD83801500300DF0F100C0E540F2FDB710A05A07AC2B80C7DE375600F01B006014013EBC02C820A003570068B543A780A96ADE508F5B01F40B633F00E00DB42C6210';
wwv_flow_imp.g_varchar2_table(521) := 'EAEC5E070C5A8046FD9B193000C85540030006021C460EA0913DB0A50652E1DF5B045BA4706A059A06201D03CBB6C12D91A11C1BB380D0A3848D62AA2B955D103BFC9B1B0707F954E8E16FEA5FD4F18F4D0AC7FA4A20F3E301021A0B606B6002B6058BE0';
wwv_flow_imp.g_varchar2_table(522) := '839A8F854FC0A391213FCEF93F93D54F76BFEB56E643F19FDF98FB8F3FFBE48F8F23F6F792D63F020083B85189CF109EC376FE8F05009908182F90CA15A0FA1FBA0B802EEDFB65E343D2DF976FCCFBEF053F16FA6D9FFAA9FAB7AB23E9FF29DCA9F34B5C';
wwv_flow_imp.g_varchar2_table(523) := '633DF6D6FCE7BFEE25AD008A01E8ED800601C500782D80CF878B2A9254571BE0C117CF0A00FE2400B8399B52005B1990EA80DD058014C0AAB46C51B60D001C9204385F09FD6B66BA395D01181841CB531FE07500FCBB14F559E4371705B912D86542F094';
wwv_flow_imp.g_varchar2_table(524) := '9B09A89A6016C35817C05540A8D2E5A4B030D0ACC00004A62A61FAFD9B685043BD34044D54D8F202FCDF69412CC0603030AF03AC05C0CD65760658FDCF212FFA1FC33F4E9BF48E73EF4C3AD945429913209FFA523EC040EB2FBCACB7E68BD876131FF892';
wwv_flow_imp.g_varchar2_table(525) := 'D9EBBF65F5B3E0AF37FD0900A001B00302D701BBE90F0C82D5FF2EC3C2D5DA7DF83D8AF7E13ADFB91C683F0390CC4113401874D06D31D2FF18F02EFA89709FF0F9DFB3E0470C80C581BDE6B7DB39012A86DCFF29EFFF5D310041F9B710A05D22400900C1';
wwv_flow_imp.g_varchar2_table(526) := '04ECCD019008900060AC0606D54F4BE00800BC025801C0C1733F3F710500470080E806D869032C06E0D706253EA08EBB0D10172FC47F3D078062C0D906E836C00C016A39009D01780C00F07A78E926C5A151AB0052F20401D03830D447390110F9691580';
wwv_flow_imp.g_varchar2_table(527) := '533E07BD0180073F8580F1F7600014131CEE801007D64A2003830C042058CBEC789DFCB126D0C97F3CB54F22C01DAE81213028810401C0CC349436A02707F6D0200B03DB2A208480CC0530F5EFE218D6C7961E207CE4C8076815B2CEA837EB90614166CC';
wwv_flow_imp.g_varchar2_table(528) := 'A7D7F72C1A9C5FFEFEEFD1F0A78C7F2AFEA9DC0F9A3FA8FE3AE187BDAF45FC0200B80D30DEABF4A7827F66FABF04081EC4BF0B00CC0CCCE53FF97DF3E4CF49ECBC7FD3FF38FDBBE50F823F9FFA23EB1F0C801AFEF85C91FE77E1533FF5BBE7218285C40C';
wwv_flow_imp.g_varchar2_table(529) := '0DCF51D370F8B978CB0C400D7E1600B90760D106082D0086FF230140E6FF0B007C9706A0BB005600B00280BD8F40577D8F3BD2ED28E09E04B83F084888360627070900004564BB0100C27FBEC812F8FDE779B4012207801496DA00176C804F0100760D8A';
wwv_flow_imp.g_varchar2_table(530) := '0400E91BE72A9702473101CA03CFC02081806800D4A0E7C0671850010300010EFD14074A18385805B516E856C10CAD6983BA4EF8010944B5F263EFF8176D834D1B50A7FF29A258008264B6008042836208C45E994C00BCE53D2C28750001026C27233070';
wwv_flow_imp.g_varchar2_table(531) := '87BCC583184CB152688972CE080830D0874CCDD542EF4271F390E9C0C0614B4EFA8BD33F6C7E1745F347A46F88FBA8F4B7C73F4EFB6DE8B3EDEF34BE9E99FF3CFD5BC3111DEFF18F8F413C4F05003A10E8277F0E6153FF2DF54F014CB6FE59ED6FEA3F2A';
wwv_flow_imp.g_varchar2_table(532) := '7E23EBBF3401788EFCFCE0EB08D07EB5A6C75F9BBB79F82F21713D4BEF02000C4140F79B4BB701AA091062E9B81FAC00E0F809FDCC5FB13200073000A8038E0C80AD286024011E08006E3F6C30E8DD04D899008081EF37EC01782809F0A901C040213701';
wwv_flow_imp.g_varchar2_table(533) := '174FDA8E6FAD8C006705100098C6677F80C37FFC710EFF04021CFE06000604B340B00B059152779A4D72E3A06654504505D7F05FD6006C750E88FE4F71A1014646B98DFD0B58CB70F7CBF72E82C995404B08F469DF6B802E2CF37EF9079C05F2941B4C64';
wwv_flow_imp.g_varchar2_table(534) := 'B98CE86B6705E07DFC4FEF9BC121F7CCF95CB6F803FCCE3EFD43A817AA7F9FFEAF30F0B9DBA7C54F00E0A354FEAEF98D963F35FD0100283780C2BF0200E5FBAF44BF1ACC0F07FBCC1A00A704F6BFAFD5421718C2F6D78A7F5AF25F16FDFC2418FBAABD7F';
wwv_flow_imp.g_varchar2_table(535) := '34FB810140D39F7400B9AA69563F003CEFFBA9D7184B9D66DDC616B87EC31A0033005908B418057C572240B5011EB4028888DF7105D0457F7601AC0CC0EF21841500EC000087950175005003D30C005600A0F36903240018A38005089004787B5665404E';
wwv_flow_imp.g_varchar2_table(536) := '027C8236C0872E8F190084CCD027CB16DFCA26370A037B60107BDE5B847020FD52FF9B0DE0E0E72A204B83F4F13EB740CF0E0826602B3AB84EFC8F05004333616B1B8CEFD78497250A3410A0129C11C218E67408040B80758076FE58072403A08FD34208';
wwv_flow_imp.g_varchar2_table(537) := '00105F477740E4047446C0FA00590547E6AAAE3932223A806375E255891BFEA0FCC7E9FF9C213F38D9FBC4DF13FE10F71B62BF56F213C35F8E8110FCC9F36FE15F3D2FDDE6379ECA7D4A3F4603500080C8C7053F63CDAF297F352EBAED2FAC7F6457A2E8';
wwv_flow_imp.g_varchar2_table(538) := '476C0C00400C7C55FD9205183500A6FFE379C0D08F0E07270B8E11CE2B00B8DBEC2E03E2F0EF5D00E7C818D9530684044E76719C320D309A381D04D44480EA005845800FDDE1F7FFF7150008007C3841AD2FEC2A77D1F4B708002EC8026CD701DF47D779';
wwv_flow_imp.g_varchar2_table(539) := 'E9CF2A076037004035F04524034203F05D00205600010058076C5FFA63EB800FB93C1641404C148D54BD67BCAB40802C823318C8E0208100BB00E81A2008F07B0C7E7FECD5800182F501E9189050B003803AFD9708F09015C078E2AF15C25635F1B40A60';
wwv_flow_imp.g_varchar2_table(540) := '39535F09A856D820C059016202CC02A42D5081327604F47C804C0C545A5D560B67AD7032EBF1940E0C4D2341BA9532C57F58AB60F85BF92FD11F004094FB64C90FCB7EC00684D21F6F41F7BBE84701424EFC739F4027614C53D802A8385E9FDC7F0B00B4';
wwv_flow_imp.g_varchar2_table(541) := 'B640030AEFFB19AAA4AA5FB5FD797F1FE13F0100B8FF8F81FF8DD47F6700FAFEBF7BFDB75A1C2DFA73BCC124027C8DFBFF805802BB63A4B13541BD0E988DA04C02D4EEFF62BB0E1889805906E4144054A79FDEC76182070D0736B10E380080A280B9F79F';
wwv_flow_imp.g_varchar2_table(542) := '6C806DF79F8C4034A9B2127875011C72C7AFCF5901C02E0070761BC3DE6D801600E2FDD5F94D845D002C4417002E6A5FD071513F0000C004FC0000A020F0DB8DCA80862860EB082AA8C661230EAD79AC0870D7253253C8FD463658044FBB509059019119';
wwv_flow_imp.g_varchar2_table(543) := '10439A2E01170A51FCC7937F04040900F063FF9D8140FD996B02EA06AC11B02EC06D82FDC4CFBDF7011A00DB07F3A4DF4480AD6C48F582DEE46AAC8D2B810004AA828D9C804C0C1CBB02BA3B2098800C081A1303437CD65C0269391B62839D56401450CD';
wwv_flow_imp.g_varchar2_table(544) := '8A63DE7F1FFEA0E9F3F42FDB1F027E22DA17053FFFB8E5EFC3E6DF60000000C000B47D3F9D1BD51F4046689B81C83ADED6C6378AF776ABFA77AE00349D466701297F0A274DD3D3F6E7E09F4EFFBBE1CFFBFFA0FF63FF4F409002C04EFF477D306DA07EED';
wwv_flow_imp.g_varchar2_table(545) := '49DE90EB983DEBFFE3EEC42FE0B36700C060AA6D007081BAF00400F79BAB4B97019510D071C0FB0180EDA15CAB51572306602108888080ED7F7317C00A001E7701AD006001005CA00E7806003AFD7FBCB86119D0F9EDE6E2835600A2B46883E210C2C97D';
wwv_flow_imp.g_varchar2_table(546) := 'E70A2056016509A408F003CB80863640B8099859EFF21ADE0439AA9F1A00F864B97482E9012FA69A5D2464B78093E0C22E183D024C0FA43BC0A77F320009002243807FBEBC2010F0FB6E21ECFDF2BD4EB89FF8CB12B8470390F901B207EEB101767B211F';
wwv_flow_imp.g_varchar2_table(547) := '133FEEB6652A4238B501E50CC0F08ECCF90C08AA615FAB01DA0487F54013A1F904EB363BDEA0CBE7C7CB4D014AC1CE684502DA1FBB7FB126DCFD57DC2FC47D0000ACF62500F8F7A7B3CDBFE23DB50050FF232008A7FF700E0C62BFD6E008E03BDC7BEA58';
wwv_flow_imp.g_varchar2_table(548) := 'CC96BF79E01F0100743AB4A8B07FBF2852C2E00708085B9E1B1721DCDB2EFD71EA5F3000D00148FC471B2043812C008C750C76FF065EAEFA3D2097E171B7E197F1551D00F8574D00A07870EA7BD80C1AAA7F9FFCE3E3020266087A1D30F452559E169CA6';
wwv_flow_imp.g_varchar2_table(549) := 'ECA2870180B90E18F74C56038B0158EB808FBE905600B0A001806AF5EAEC66640066007076BBE951C0D883DB4AB604007091E2A46FCA3F4FFF0203B306E016F47F6A004600B0912D700904FCAEE668EBEBBD57F659383ABC2BE084276F590565DB736E00';
wwv_flow_imp.g_varchar2_table(550) := 'E97BEDFD6D15F4B0CF812F001091C29B7843AD304181048328176A11C25D0B600050FEFDED7AE0E512A106007CF26F79001EF83D17A0525D6AE510834800CD7A007707546BE00404901190B4B4F20286143A65CE2B72D6A98104818D7776C4AF4EE27E5C';
wwv_flow_imp.g_varchar2_table(551) := 'AAE94FA97FA1B5209DEF9C7FD3FF18FC6600FC1E55BF0009970AFA89E18FD37FD35F94BA7D9A8A0EFD6951BF8F66003A00981805E7FC030440A58F533FDE133429F92F4A7FF8068F7F24FE7500D0D6012CFC1103A3C77DABE677E083920438FAA6FB52BF';
wwv_flow_imp.g_varchar2_table(552) := 'C000A0F71A3C0C00A801A00EC00CC05D6403641530E8FF5C01DC87662856003AC2E0BA360380FD3F5880A518603604B644C0C60480FE477600D6A76B10D0E157D80A001E0000B9064800C015403000BAA863A7D52851EEEBB9C7A7060008F52CAC7E7601';
wwv_flow_imp.g_varchar2_table(553) := '8418502B00FC7DD800E715406A00AAAC866CA85F3ADB2CC0EF02809905C84BA97DE3FAD7EB8E88FF9C2241580665179C0581A503E8277F9EFE31FCAF31FC2720105902F1FDF07D1D18D4520115F0D3CB812A2740BF5113F7F548613336F3E7F7C13F0008';
wwv_flow_imp.g_varchar2_table(554) := '229E61143836D8EB802A0F5246402B0F1A7401B6092A2C8821351543CB3A6159D17A5850B200CC45E0B5E7229E8AFB8D9A5FEFFEC10040FC0707C05529FEF3F40F2600A77FBC81FE0700B86051908598C1BC243DA40FCC4A9893B20EF0890040F6050800';
wwv_flow_imp.g_varchar2_table(555) := 'A4CF1FC02B4FFEEDD4AFE1FF330A9AC0BA54D56F38001CFF0B31A04EFF6005CAFE5759FFD47B8C549B9F7EBC7F4BF43FEF2BDB49A31D0020AB234EF1D0F39CC1EEC7C17F7DA9D3BF41807B00D206C8937F38A6B0327D000060D04307B0580414FFAD0101';
wwv_flow_imp.g_varchar2_table(556) := '810003801BDC73D724C08311C00A00120080B6E64E9F2B809BCDF5E5CD262D800D00500408810B5700AECF75125A6CCE7600000F7ED702E3CF1104942E0009590611A076CF1908F4BC00A05F3DBB0045DDFC8A11F006A4AC829B080F8A4AE1D8E72F6B01';
wwv_flow_imp.g_varchar2_table(557) := '70E2BF3ADF6CAE2EC502E83D5701040A61158C129BEA0EA028710EF2A93FF77C801CE893CABF770D8C790273EB60A7BDC772A1AA15A62B80A719AE03B23740FD01BD29D07BE9AA9E656A20808003854C473384863BE989046087829BFE54F483C7CA7BFF';
wwv_flow_imp.g_varchar2_table(558) := '50FEC7EE5FE13F5801A8D90F431FD4BF8580CE018053E012F4FF7959FDB8FAD1B597277DDBFBC4472541B1ABEDEFB81540D71438E697BBFFB1E92FF2185CF57B73CF937F14320150D9E7CFF78EFEB51E60005D01B8B84E88C7BAD36C73BBF4C1B7D9D7F1';
wwv_flow_imp.g_varchar2_table(559) := '89CB00C0C25F0481D1ED130000963F880063F85300D85980D000C4AAC0A77FAE0ECE4E79BFE4FAD07911B8B6A901080700867C26013AFDCF831F1A8011008463A031002B0038FC7A5B01C04E0070BBB90E11A03200000002044000B8AD0108112006927C';
wwv_flow_imp.g_varchar2_table(560) := 'E90C02DA66001200341D0045806009BA06E0348A68B806F0A9BF3EEEF7A5A578DFC32F81C77D66A7092916E28DC2D901E13DB716008E80961370E95C802608BC0208B8040BF06B731DEFB90A88F706006E14445AA0B2E72D762BF5FB0808B8AE108C99A2';
wwv_flow_imp.g_varchar2_table(561) := '801FA319C835CF0424B80AA02B205601C809802B402542B6F9754D4007002EA7F9FA6DA3FEF9511098D6403101034DEBA63F0124EFFC7BD39F873F4B7EE8FD4FF53FC0C0278700C90130D1FF11CB5C87FE56F4330200FE5C16772DBD7F4200D068FF9F1E';
wwv_flow_imp.g_varchar2_table(562) := 'FAAEFB6D277FECFFCDAEB8F8271EEF2802AAF43F322EB461BAA3617E6DF9FA7EDCABE6657FD5A100809A1E0F7E8000AF01EC08501BE0000070FA078080638A2B00AC0E71A910CC8D0080437EF90DD1BF430E00340001004EE8A05A1980832FB415000C00';
wwv_flow_imp.g_varchar2_table(563) := '8036403000B00296F2BF4000048021023CBBDDF432A0A0B50C0020028C36B90E001805EC13FF0C044606000982FC7AEF9779CAFCFB00601EFC4D9326DBA054C301009641404F09B400300000A8FF4B03000D7FFC9D04842146D32AC01EF44CA153A32005';
wwv_flow_imp.g_varchar2_table(564) := '82CBD1BE1D08F01562BDC0E1A2410380D27B5010613F785837E50CC073D8D701C108A8529671C10AA711F5CFD3A93B04C80280CA8ED860ECB6B34190C13729D492F8CF6A7F9FFC41E1F7C1EF485FECFFED0220E54FE57FFC3DF6FF38FD8BFEA7F88FEB05';
wwv_flow_imp.g_varchar2_table(565) := 'FFAFDC2815F8C3FFD65BFF0A18FC8E06A01FC1990350CA7F3EB6F711A614824B9FF8BFDFAB87E13EC09413000304880DE0C7CAFF577C732F69F2FEBF1EE4B25E664ED4C1B7D9D7F189C7008060007CF2BF94064040A0D701876050D47F3AA6B402C8C448';
wwv_flow_imp.g_varchar2_table(566) := '01005800A3034039000600CCFFE71B0E49732E401C9C6C030C00AE1E957B897687F0ACCA39791DCFCAF3FE942B00780000E0D4DF5300F1E72B0100D05B4C0204ADC51D38868CFBE5EFB506A00600172EF6FE6714038615903A00ECFF7F740D4066013807';
wwv_flow_imp.g_varchar2_table(567) := 'A0DE9B0DF85B0CC000009A1E8DE354D9014D14C814BA0202C5046825D059804B6A009209081680AC40B808D216C85500D701A57667481194F00B89817D779F0AB6E30180730848F414B3E0C0200F8E4A0D646CF0A80B9023A0038048A98306406B007507';
wwv_flow_imp.g_varchar2_table(568) := '30304815C256A70B601804700540C11FBCFEA1F897DD2FAA7D51ECE3C29FCCFDE7B0AF377E1EDE92FE87F5EF0CC39FEE82E70600D9EA971759050B095E8408D27EFF54FBFBD48FE18EC7110040A53F6456CAE60730C074466A2D60C9A4F5B255FD2AF827';
wwv_flow_imp.g_varchar2_table(569) := '7E8C92C367F6C2BB06005905EE15C0DDE62376FF130B102E80B33B8AFFA61860AF00960000F7FF530AE0CF99F6C7E70808C4BA6005008F85092B00D80700B4F70F00E010209401EDD10078D74CEB5E3100374802C4E0BF39130B2030306B006ED91F9085';
wwv_flow_imp.g_varchar2_table(570) := '404D08682BA05D00665B93A69C14FB8FBD28F67DDD0C000C44BA382CB5000A0DE229DD65426E13B4CFBFC480740110000410F09F05047A48101D060D08481CC8D36A2506F266DD22F226119F35007D55B0CF35300080FE7D63563426C019017A1F11BF5A';
wwv_flow_imp.g_varchar2_table(571) := '09040BA062200FA3ECA7EF00C0964081809909F08EDA42409EFC19D99B59FF71AAE789FF2312FEA2D6573D00000031F48BF68FE18FD3BFAD7F1F4600D0AFB931E3FFF71980250060E3A5570B59F423C5BFF7FE11F4132A7F08FD18F453A23F0D7D092CA1';
wwv_flow_imp.g_varchar2_table(572) := '0BE0E35F6B16322CCCFD47F21F5F6BC3FC2767B4157AF41CAFB2BFF33D0F6100DCF9C11020EDFE8301B80B3D808381AC01B0FA1FC0BFEBA532363A001DA87BB039A4F1F7D1FFF86F0408A30510C08140BB7A54F07DE3AA5C19809D17D40A00F60080EB85';
wwv_flow_imp.g_varchar2_table(573) := 'D3FF3E0D0045693C062F0280DB1AFE0904220868660018218CBD982B8129FEF21A403E744DDF614FF91436803DF79FA515C0F0E9430EFD680FCCD4C0D004348B605A03B5026883FFFA52AE005902930968BA00D7D1A23760D0068809E8E23E4628948AFF';
wwv_flow_imp.g_varchar2_table(574) := '5800902B004D83EE16A89E8666DB84C5096F77EA0F4861A0EC69AA0DE6C9B53100D84D4BC816834A963683009612997227133217FDC4E047BE7F9CF405040402C80C7C086680897FCEFB67EA5F3CA649FFBB6C89CFB4AF813F0D0062011059FCA5FAF7E3';
wwv_flow_imp.g_varchar2_table(575) := 'E2E10F8FBF93FEC2EF1F39FF05003CF80D1CFAE3D985960600BBAEEDBF33A29FF75F3D0600B0078043FF631BFE210A8400504E80BE02808890AB528900752DE1DE867599438090473F38000020004944415448F52306F854F5BF4D0B1000801A00DB022B';
wwv_flow_imp.g_varchar2_table(576) := '04680500C75E212B005802001F18050C00D01300B1FB0713501A00075BD8DAC27434E5676D3300B002E2C41F2B008201AC04F07740B45D0438C601D36BFECBB900EDA4E913B89FF8F2671F7B291CF6F91D00F82B46411AFFD63F87233F4D530324853850';
wwv_flow_imp.g_varchar2_table(577) := 'AD7FE90E90EF9F5A805F9B6BE9019C0DE03540CF07C0A07291506704BCB37630CE3E00503A8065D5FFCC0C58091FBFDF941BE0489C0A6A2ACDC66C116467005701230BD056005921CCFDB68180AB8423A806932A9A1A0900A8F6F7B0AFA85F96FE90F6F7';
wwv_flow_imp.g_varchar2_table(578) := '5A00BB7E9FF8A1F8BF40F25F3CA654FE8361A1BBA001009D8A7D22E74ACA10F41934000D71B85ED89EFF10EDDD80CEB7BA1FE97EF79BCF5F08020806E8FFC74A20837EF475EE0AC802A616BB6C4D477F55F48DCF61AF96D7F559870200C67A97F8EF23E8';
wwv_flow_imp.g_varchar2_table(579) := '7FB300B202661090C27F68019C638009265DB0E5D37FB700C6FE1F2B80E1D4CF950080801D036103C4E93F80F6AA0138F4CA5B01C0E402C03E3F6C8006002D002886FFE50D57004D04C80B5BE116529A8737BCAF00EEB00280DF5FD9FF6E06C4DFC106A8';
wwv_flow_imp.g_varchar2_table(580) := '3A60AC0AAA0F802E8064010C02FE2200E827C07D1759DE2C63829209307D4A10A05540740670BFEF34C01404362080C16F470074018C11EEED820403A90B901EC0037B88F66D1A80C7028087560B82416283CA2110EE80280E7238504503070300466008';
wwv_flow_imp.g_varchar2_table(581) := '05E2E007C5CD0C0169026E690BC4CD13FF0300B0DD2F92FE54ED0B9BDFBFADF01708F87855423F17FD9C2BEFFF0C15BF5B2D7F4DEFA027BD847D4F0C00BAEF2EAD86E4E3C369A1BCFF2CF9899A6552FF18F8FFFB72BFF9AF0040800100003100780C091A';
wwv_flow_imp.g_varchar2_table(582) := '4651252D7F52FEB7AA5F5FEB0369D4C0EDA137D9D7F2794B00003F3BF33D64018C186001808BBBCD473000B1FF1F57000C02BA0B01E048FF233325A172B09A59AF1D3D001EF6278D01E8C2BF1AFC5E07A40550F47F0000DD37FB01C9EBA4E73E24BD96E7';
wwv_flow_imp.g_varchar2_table(583) := '3B6ECDFFF7FFFCBF6F2DCF62E7E3EF001D9FD0EAD4CCE17D764A5F7FB8000000CE9103A00220D900C305600D00A2809BB7D56140B902D8E0E2C66E8AF63E0C799CFE31F03B0B308B008964996A453B618180D10DC0DFE04FAE00FA83BBC406F4D3FF7C7A';
wwv_flow_imp.g_varchar2_table(584) := 'EA7D0216078209E05E5131C0E756FF8F1A804C09548260070368AA8BB020018018601D00B455001F2F9F68E3189F62BEBD89818EDDD52F38070775A64076087E6FF9E6B348C800E04E8E00B10021480B51602503564430077F08D7BCB76E76B51900D0E6';
wwv_flow_imp.g_varchar2_table(585) := '771AC13E0CFA61E4AFD7005DE8E7A21F0CFE4CFC8B558A8285525059CF66AE0074F1FD2E0330D4FD0A00949D70AC160E26E58E0149704820E887EE099EFAFFFBE52E000080C01600688E8A6CFA539E40A6FE45ADB05E573BEE8C6F75801C030022032086';
wwv_flow_imp.g_varchar2_table(586) := '7E03014D038035C01803CCD3BF0F4AB6009201A81E8079FFFF7D5803E8C4EF15C120002CFA7F050087439015007406A0038033AC0018071C024051FF0300882020BC1503907D0018DC0600F750A9626FC5D3BE598070020810E40A604A03EC74169B01BB';
wwv_flow_imp.g_varchar2_table(587) := '1DF0EF0280C32FB3F133E9DD2F61607606342D80D5FFB502502E8098808A0D2633606D004B6BEC3C98DC00C3C9DFA7DAE300401FF4BB0003A80E6E080830A25558164E7644B833608E086637402AD463E0A356588AF550ADDFD31E78C384407C2FDC4431';
wwv_flow_imp.g_varchar2_table(588) := 'B05DF50B611F6C7D18FCFF0F004094FD88FE87001042BF08FA016B729AF5BE4C592CDADF414BDD01B00D004B8770AC0D7018FC3A6EF7950281057303A88119237F23E257E23F00009FFEFFF3E58E00E08B72FFC500E0F34DFB33B0898542705378E7DF77';
wwv_flow_imp.g_varchar2_table(589) := 'FF4B00F7AD0E7FB31DA563A9677A8901600810867F070095078015C0000030FC759F8CBC906C769C3200C40080FAF7DB8F9FC50090F2FF202120697F0A002D021C0F4C5B0CC05677C563EF626FE3EB5600300000ECA92A07C03BFFA4FEE500B8BE604E80';
wwv_flow_imp.g_varchar2_table(590) := '73004ADD5A9DEC1907FC8B277903801F3AFD77162018002701B65ACB1002FE622D3080004F910D00F804D6AEC5977683DA7513C5CFE99C0008F7200A1C4B8364018C72A0EA09B033C06141B40CB6754088D7984018A758CC5F85D8CC39003D3AF890C17E';
wwv_flow_imp.g_varchar2_table(591) := '0843307F1F2715C628736F805900090269F5D3A0EF4D812A0AA25DADAC6B060051597B470AE854164006FDC0D74F06A000001900EFFF63E71F62BF4EF97BDFCFD37FE836B843990A7FFA09F9F70000074F0506190074816159FF78FA87523F447C3F29EE';
wwv_flow_imp.g_varchar2_table(592) := 'EBF4FF7FB002F8CCD33F4080858091F31F563F3E660CFA31BB508AFF79F73F5FBF2FEDF5F59463E82006A0C500C3FE1700E08A20200041D700F40E009DFEB72C806200B0FFEF0E8018FE3F99020816C04540DEF9E7EE5FF74B56012B03A031A62B00D87F';
wwv_flow_imp.g_varchar2_table(593) := '85BC530010B7E97C64A2E33EFAED190484C17E8928E010FD95F00FA24032000D007805A04AE0AD38E00600DC0730B0006000C205502240F75ADB0980F77D159081402F1C000C8E8129522D5880F4AFAB3E18497F8A0B7655B0DB01232A38330236911608';
wwv_flow_imp.g_varchar2_table(594) := 'A1205C0200018C0D860F9E9A82DE1B1062C04C69E4735F413E0F4407B724C16300C018467402E7E606FF87953D55CFB20566381045810808B2521DA7FF8C0E8E1501075E01000E44804DFC7E176714F539E90FBBFF5801FC83ECFF02003DE697EB1253FE';
wwv_flow_imp.g_varchar2_table(595) := '7E2C6CA37461D20200D88AFCE5C558D4FDEE20A01AFAFE269DE6E7D7F1648EF7DACFB7DC7FE827000040FFDBEF0F0600D47FBC09008410F0AB720144FF17F52F56A1BD86CADD30DE34FDF76F79F83FC40044DCB96380CF14027479BFF9942C408100D803';
wwv_flow_imp.g_varchar2_table(596) := 'C900305ABD6B004ED19B12AF05360172A573B241081055FDA5FCC7E0FFA6D33F8080ED7FB00B8E0080F47F0080B6FFC73D7305002B00C847601BE1C695A893CE0C00A801082740A4FF69F85F380A985D002EB9E87D00DE0F53BCA72C00AD00A003C0C087';
wwv_flow_imp.g_varchar2_table(597) := '0BC0B9004B1A00E806784163F88FDED66D00C0DF83A7CFA73C13FCDEF75ABAA1566CB04B6CC404844F5899FF06011119DCC5812A0C525A608000BD0533E0F6C004011C8C187031F01B13F05C00A083840E027823A27D931DF30A077267C00D340114A899';
wwv_flow_imp.g_varchar2_table(598) := '11E8EFCD02580CE8D8DA00006000C205400060116054FD7EA213000000A77FBCC12900C53FFA02B8EB27088828EB9EA468DDC37C4D7947AEA951D8EE1000E089DB9D03FCB80F7D0C7FD81C439CA7533F4EFE3DF31F19FF060016007611206A7EF1F7EE56';
wwv_flow_imp.g_varchar2_table(599) := '88B5493BFDF7A29FFC69DE8D226AFBB5BD8F013000C818E0739FFE3B08286740E6006409D0EC00B0A8D3415955FE93F43F1880D000CC2B000200A7FFB10590A77F1E9A5CA1BE028087EEE0EF8C01D86EBBF2D0DC6600E004100B705EC31F0C00BB000C00';
wwv_flow_imp.g_varchar2_table(600) := 'AC0190C0254E9A3C65CE4E00D856DCFC87E14F202006C036406B00320D50C33F638119359BA133B160AEA73903361E7AE6FFC07FDF0500EA312F1680A24081801908748B609EFC379BEBAB5F9B8F979B78F32AA0B40028213A8955808B7222215043CE81';
wwv_flow_imp.g_varchar2_table(601) := '3EBD0C683EE11F520EC4DF45CFB886A7FF6E06008E0CDE551FECA86003818C0D0EBA9B2B82C1CAD63AEB0900D4F8A735C0BF3E7AF837FB9FF6FF480CEC3E7F2728DADD60C7463D06ED82790A00E08B36F7FC3AF9CBE71F14FD34F8A9FCBF17FD3F96FC84';
wwv_flow_imp.g_varchar2_table(602) := '0640B43FDE7F89A63FE600F8312BFA9FCCC24E86EA0FBC365EE23FF110007011907B0040FF8301F8742530203D40D4024B034006C08569A30380EC0E01C040FF8BFAFF86E1AF8F4307309DFC7BF88F0F4B60000A00F83ECC479B6E0E3B105EE233F0E77F';
wwv_flow_imp.g_varchar2_table(603) := 'A67709009C5FEF879BBB4E22546A00A80300D57FEDE12F3000260016C1AA03DE0600164D6D018048AF2203106F2102E4C7A306A0590113D54E7640F702BC6200C0C77D0104282360140792E67754304EFE9FAE30FC7F6DAEAFB80E885580C002F301180C';
wwv_flow_imp.g_varchar2_table(604) := '8480A0539407B932B74505BB3BA047FBA65660700B1C9A13606741B507C6F7CB7C089F4E5A715024D0C91E88B4C0580B50B096AC0028EFEE020063A07D366EDC60370200B408605B01910190A7FF6CF9E3EE3F5313F11869D95F8086B7CD81556A609382';
wwv_flow_imp.g_varchar2_table(605) := '7D52B9FCDF7E0660FEEF44AE65F1EB31BF38FDE3E41F435B4D7F99F92F2164B6FCC5A02FDFBF330018ADCCB5093416F85EF49CD7EEFFCFDF725FEEBF782800700F4000802BBED90E484BA05700D50330380074C56C0180A0FF3F6C62F0FBBD5800E60070';
wwv_flow_imp.g_varchar2_table(606) := '0DE0E09F38F95BFCA7122016A8D56B8C07B11500ECBAEADE2700686966751A3500C0454B006006A08300F4001400F08E4B08573A008BBF71F17905004A1FEA55D3FD0601E102080040A700C3807C61737D10764009019D09506B8017CC0070266834CC7E';
wwv_flow_imp.g_varchar2_table(607) := 'C52A57B17DD29A00D28DDCE3E3CDE2C0C802504CF0C718FE9B4DBC07000010506470E4044494ADBFC7D417604D4094E8340DC0625B609E1D0EB20BCE8C8203838A15327BC3B44037A1B94110EF31F8417753B15E20C016C0C8AE8FFFA6DA5A0080131425';
wwv_flow_imp.g_varchar2_table(608) := '9D04B58F28E058035C8DD63F97FCC0FA67CBDFDC9D30321AFD771F9FBF1CFABF0900A8062F0D40E6FC6BF847446FA620D20181C14F3664D4001004FCDA7C0103A00E003B2A022C856B822080C36E59DCF87247F4F3FE648F0100FF1800E0BD8480510B2C';
wwv_flow_imp.g_varchar2_table(609) := '1B2057A46501DC76009001C8FDBFF6FE3EFD1B0C54195001805BB4FF9929D5FE9FAE2905A7E5455A2BD2B7DAE3F0D82BE3DD02001D5E480D0D0C00858050F95FE2D4EF3751FF5C01880108C1A00B8130B4580AE4031F77BECE02406735C57E05022A0678';
wwv_flow_imp.g_varchar2_table(610) := '66006610406A6BCE03E03079B12B803A180E590545C73510B01014D4EB84193E620D00077E3000576402BA16C04141910BD03A0386E2A010203E3D0070AE401FFC9D01F089C49914AE7B76FD6C3CCFCAA48FC0A0D4084820089D40D8D9081022C44600C0';
wwv_flow_imp.g_varchar2_table(611) := '5640B300E108D0DE3F867F9EFEC91638E5CFE549DB2B8F02003B6F30BF010032D0DA213FB0F9B59DBF93FEA0F6A71892833F77FF0100980380933E00002B7EABFCA772130800003032E75F08E005C9661E7B1F7F92AFDB0B00623D87BC0E870091F6C7E9';
wwv_flow_imp.g_varchar2_table(612) := '1F20C01F871BE08251C0B0010E1AA9284B33EBC3EB9696D8020018F810FE81FAAF8FC90894F08FAD81718F8CD70BD7A4A300705CF1E403F407FA529EE4C9F843DFE47D018098FA4509756AA8560055097C156B809BCD95EC7F4C07C4FE9F2E801001FA22';
wwv_flow_imp.g_varchar2_table(613) := '6F3ED7C10990590065059C5900AF00920198750028B9300B90564079CBF53BF97A79491A804600341AA0AEEC4C0B9CBA7A029029329889811407222910623F0FFB8F570502BC06C07FA32380C1405E05049B204D80436E280E1CDB031311F283EC76184F';
wwv_flow_imp.g_varchar2_table(614) := 'C6B5F3DFFEFB3157C040A0BE6FF5105430559D582810E48D71692D002B5BD6D60200E8F3F17BB80E380B812008D41BC4810EFD3987FD2FE9FF6517445D4FFBC7638500F1D9DEE70298FF7B070056FB634093FD28AB9F4FFD11991CB1BE1EF0FED820A028';
wwv_flow_imp.g_varchar2_table(615) := '7FBB25001A7ADE7F00003100F53BFEA1BBED0BFF671601401E8E08001C038C3D3F4EFC0100AEA905A01D902B003000BC375609D0E9091C0065F97409D06DECF64FC2F287E1FFED87DE0708B0107089FEE77D91A09987231F92663BE7FA5C2F5F7C2B0010';
wwv_flow_imp.g_varchar2_table(616) := '0DB80500C002E8F41FAB8000023CFD070330038014BA2036B3D4F82E05C2851A95C0B78CFD8D5020EFFFB50260AD25D7004C0F54B845EEB7EC0668C540AF09004C88A003807E793A663F418001004080E28131E849FFFFE27BBB015A2E00A382AB2F20DA';
wwv_flow_imp.g_varchar2_table(617) := '03C5083083C03B700DFA2758016C250BF6DA600A0D8632227937484967585081805809481F9031B6D0070433E0F85A0E69E7F77BD0BB17C0AA7FE7FCCFF4FF185C349EFA4B0FB17C03390600845A80C28172AD0483D0627E31FC0500E2D41F74BFFCFE6A';
wwv_flow_imp.g_varchar2_table(618) := 'FB63DDAF86BE58807003682DB0159BACC70B9A020FFF2E007C49CE99BF89110C00BA462A28FBC8ECF815C31C431D401CA77C88FF3E5DDD0603601D00DECF0C00038038FCC989D2F141278C2D8027C3A9FFDB8F0F9BAF60037E1004B82088EA7F7C8DD352';
wwv_flow_imp.g_varchar2_table(619) := 'EBE43F32A4CB0CC0FA5C8F57D8BB0600BE15E1824C00A02C009CEE010038F00500F4E76D068042C00C046AF7F90E00220E3800805201D5020820808C8048B8CA6EEB510B1054973CAE10BA6422E004005EA2CA75CB591594F5FE5B9D55E86053C27F0C2D';
wwv_flow_imp.g_varchar2_table(620) := '4073039805E01AE057B2020E08CA5C00F7054813504981DD21A0BEFB270600315825FEF3FB0100C4BF67468AAB1C0606757D007CD25E05601F2EF19FE87FA6D97168C78A4335BEC80480168059FFA71B9CFA010CD89C28FB5F13438E83DE0CC70806969E';
wwv_flow_imp.g_varchar2_table(621) := 'B1A300404EDDA2812D02340310563F05FD04E51F831DC35E55BF41F3EBCFE84C08919FDAFE949838B427C6AA84DF138F638431A93F61009DEB1EA0EA8F9B6EC7AF4334F99D853D97023F9CF2C30170CD154088018305585E01449AA0570091F3602BAC00';
wwv_flow_imp.g_varchar2_table(622) := '004EFF786B83FF6BB0010500000248FD77DF7FB74893496358DA0A000E01932B009819807002A810A8E90030F40104CC00402448B740650138129869571C723300586201A20828D8013200C102A8DD8A2A57BE79CF350000DDFCF3C97EA53697B40CEA17';
wwv_flow_imp.g_varchar2_table(623) := '4916001464AB0EB6CA3F1A039B10D0C14014092A45D0A2C0C6049438B00B039D7CC708DF4227BFB702E800A05C06E512E86C41C9D1448CEB0639B408A630507EF68CB3E5F4C24E3F588E0FAA068EB43F35FC49F8E7FF5E2D7FE33A83FD055D1DF7742B00';
wwv_flow_imp.g_varchar2_table(624) := '47FB066695FD2F7E7045FD76E53F561DDCF573D863BF9F6F21F2E3DFB33849DA80569664FD80B512CC14E0F0EFC3A103D18740E92137D4D7FC3916468EE5223A1C455A27EE8B4D0320FA3F01C0B40200588883114EFF2E4B6BA2CFEC00B863068077FE5F';
wwv_flow_imp.g_varchar2_table(625) := '010230F8030C500B601BA04FFF4CFDABE15FA7FF62D2E614C7E1A5FD9A9FA827FCD95700B01300300DD00C40B2012A0A9A01408801671D403C51632BA001403A02DA4AC0A77F3B01020C1808349B4B8F05E6A9D11AF3D7E9731D867F5767F7B440950699';
wwv_flow_imp.g_varchar2_table(626) := '05B025700803D2F08F5020AD0222261827E1600F700AA63DD0F5C1701BC42AC054FD44D9E7C9FDE044C0D200EC020063DE406709346CF59CFAB44AEB5AD904A90DC089F66473178A675E67644B0402CE908AC8933F0282C87C8CDE7F87FEF0C6380301DF';
wwv_flow_imp.g_varchar2_table(627) := '659E1E00F4F220BA0099FC67F123ED7EDBC39FC97E05046CF13300607052B5FD51F9AFD3FF34FC77A5FBBD6710B095DB216DCE49D4779706E0EA820C0076FED8FF77000016803640960155068063B0C8FED8FD4207C04958FC20FCFBFAE334867F7F0B1D';
wwv_flow_imp.g_varchar2_table(628) := '809200E37E78CBC10F56348AD25AFD6F083CA7B6D495E9D98D18DE3D00F043E31500775D38D5630570BBB912083000A03BA06B004A08188A5758D8C00044E5256F9E69050C1D002D7FF13EB500FC735F01FC840620E8AEB60AD852BA9A367EBD002057C2';
wwv_flow_imp.g_varchar2_table(629) := 'B266E69F35779C15E0BE00AA90B90ED8EA059040D00080D90027FABC0202A50B50715068019A6F3FBD42CFC3006CA50536FF7DDA05DB3AC00E018B0263F8072870E8890080428F907B10AB80600244FB3BF3BF652254EA5F0DF9ED9DFFF300802E16A430';
wwv_flow_imp.g_varchar2_table(630) := '8F0E804CFA53CD6F9CFA31F8BFB1E0A783800E00E6E16F8B24815255FDA2F847A403E1F9F4EBAD00A0A8733E16D434C57D512B802B68001400F40F34001001C61AA0AA811D04546BD17B39000CF8E876019D8F53BDB3FF31F8BF2C01809F95FE07D060F1';
wwv_flow_imp.g_varchar2_table(631) := '5F0DFF12D2A6B8963FFEF0BFF7FCFC2EC1801500E851E90020C280D20A483B201C0104040E016A2B80667731E2E58992DF3CD4A9E804502DB04180018057000600A0FF2D0834E2BD090680B6975E0FFCDA19000FFCFEBE9FCE82308F1B100B7EA8EAC72E';
wwv_flow_imp.g_varchar2_table(632) := 'B2D4FE5807B03D506F99167852F6C0CB13AE06222CA898807007080080169F77F63B1980381D8DA7E6B95CC87ED0F8BC641666978054F89A460DCAE549A6F202A807B0F29F9A900C8196588BC246EFF979F23F0D66A0B7FD1158F1229D837FA65BE65EC2';
wwv_flow_imp.g_varchar2_table(633) := 'F1580D4035FCF53C7802801EF5CB9A5F0D7F9DFCFFF79555BF6601A005A88AE452FB434468CF7FD824B353A0865B5C63B325EC9D5BC41629F325002006C00E800200CA026836400280FBCD87DCFF4B00080B601300C60A601AFE5F7E9CE52A201800C5FF';
wwv_flow_imp.g_varchar2_table(634) := '12004CA7FFB6F7DF0900DEF9F3BB028040846503EC2427D4AE4CAB2295CF42209EF47DE2A7FADF31C0DB00A0622FB1F35A70022400F8B0F97177B6413470B9022800E4C9DF9E579CFECD048C3A008B5DDE04001052A7006E7BFC942D5096C07005FCCA0A';
wwv_flow_imp.g_varchar2_table(635) := 'E0580BC8FAD74FFFA3466004036011FA2A806144537D70EEC36BD06F89FAB6E8F37105E068DD63008007F26013C4693F8383D427209D40DA5923E0C8D9FE78AC38F85DF893BE7F77236408D23ED1DFD332000CFD29BBA0AB7E33EFFF96F43F94FC99EE87';
wwv_flow_imp.g_varchar2_table(636) := '7ADF88F9BDCBA29FF0FC2BE52FCA919C8D20B19F599279F82F0D395201BCEEDEB3167079670EF11EAE2530A3F71BE471B00AB82C80FF4A0660D906C80220AF0054EBDC4A807EDC4003C05DFF97EF600038F8830DF82E2B20720020020C01A033FF2996FD';
wwv_flow_imp.g_varchar2_table(637) := 'E5A6540968534CBB30F1DEF3F3BB028063008022813DFC1D0C4450C0F5007300C0160030303F0088172F16766817C4604905C28030D02DFA6BEB0039009205688E007C0D4480B4BE8C81406F0600B4E13F58B432A889D900ACF97536006849B2025D1BE0';
wwv_flow_imp.g_varchar2_table(638) := 'AC0027057EBA3AC9C440A606421DDFD3022908340310D4F88E9DFFB6AA7F66028ED300CC7B788B10F11E00807475B5085A3DDDFBEBA36A508C04D8920201E5F74FCBA3B20F78F8AFF6BFBC52B738D2A70100A6FC3B0060DBDF58F803EA1E743EF6FA0100';
wwv_flow_imp.g_varchar2_table(639) := '3CF8BFB0DEF7BF9F0906F0F77007F47224EEFB99F667F124F505A3F06F6BD0B55FF13D0F88BE8E231852519A340004DD0500B0FB0F0D400300A101B894064045404B0E006A5A48FFE3648FD21FD8FEBEFE388BA1CFE17F16EB003003C9002CB4FE750BAD';
wwv_flow_imp.g_varchar2_table(640) := 'F7FF0BECFFBB07782B007808009C38D2971A80B0024E2C80FDFFF13E0B81AAFAF2CC62C050BD660345E800A8E6E7293FDED2FF6F20502C4000015504B3F4026C00ED2FDDEFFADA01407FA10E2EB146CF7018B33380FE7D8280580B9CD122D841400200A4';
wwv_flow_imp.g_varchar2_table(641) := '045E9F4452E0A76B75075C9F4466806D82D919E0D6C05616E420A07167CF1FC654FDF68AE0780040F67F5C05E479741235758B53ACB393D12AF6829D07D5F217EC86FE3CB4FD4DE545FE397E670540C052612FFE336FD23EFD73E853E438D1FF01002800';
wwv_flow_imp.g_varchar2_table(642) := '74C10F687F9FFE0100FE2B212018000000872305DDDFF7FD6DF8F3E7E06F3600805903B074977C6F7F97EB916A4AED29809D01C0E97F4B037089FB269300BB03C0F90F2500640A20058025FEF3E02710201BE01C80E11E18165859A27523E900600904BC';
wwv_flow_imp.g_varchar2_table(643) := '6780B702800701004EED2C040ABAEB034FF95E0340F96F401016400100320056BDBA1C882C803D554CA9F249FE8C0040A77CC700DB0AD859005063B60522310BE21720E7BCF067178050FB6BBA670DAC7FF6CCE70824721700E8EB008A934C4F0A04A816';
wwv_flow_imp.g_varchar2_table(644) := '984141279B7F30F8AF37F91E80205800B903CC209026370BC061CA1D394FF875627E460060AD40132172623933AFFCCD8E807690D0002274BAEF51BF2572ACE4BF25178049F022021EBA659ACEAFDB6D17F80D277EA9FDE3E49F6F3CB1E3F47E735B4D7F';
wwv_flow_imp.g_varchar2_table(645) := 'B6FEC5E0C7C95FF47FBCFF4270C09A5FC60423163973FE6330B0A46871E8FBEFD7E1BFF336E1D33FAE03ECEF3B00B884030039001AFEC1046418509501D919050B20BF1F01600700700080DA4706409EFA630DF061F3150C40AE00980498F1BFA2FDC7D3';
wwv_flow_imp.g_varchar2_table(646) := 'FFF28AB727BEBEA6FBE29FF8595711A00EE9A10108DA9EA8B5B70282F2F7F0CFF71EFEB102D0F01708B0F2954D7784D3B31010BB7D0EFACA00B006208040E8033A0B506E00DABF1C0634D9005F2100F0859E40608772D7D90A06036E12EC71C1E77607A8';
wwv_flow_imp.g_varchar2_table(647) := '2D1000A083807F3E0A00C82698B900680E4C168096BA5913E07ADFA76400FAE0AE13F8761E010799560284440A0EDA1622C6CFA93D7F2F3BE28A83B4545F01186ACD43BFB31BBB6F463EED8FCF626701BCF337DD5FC35F0AFD10EDA1E088BB7C0B0083FE';
wwv_flow_imp.g_varchar2_table(648) := '97F00F40E03F9F6B055000C0D1C852FA8359E8A7FC0950FE899BEA4BFF3774C0AF1F734B1C4763315F67A501C0893E56000000EE01E80CC0A55D000C0B0A4134DE5A074007004CB33CCD0C00EFFC3B03808F1D079CF5BFB14E6D7E7FD9FE3A587EE9CFC1';
wwv_flow_imp.g_varchar2_table(649) := '4BF9F95600D000404F03240B506B00570417102806E052A540FC1C95035907A053469602C5095EE23E8180CE009805C0F00F10A090A052C09205882C00BCB55DB16D3B6FD5EAC2FD78952DE9809EDA80A80F963B0027FC8F1AFE0601FF7C041838094620';
wwv_flow_imp.g_varchar2_table(650) := '13035B547057C9B3D4A9EC81CE0978D82570DC0AA086BEBDF84D953F33012951F3D1B52FAFBD4228C78101CBF87E74216CFFFB0534FA7F7B0800E4F86F476E5E9B9DF6F77EBE06BFC57FFDF4CF9A5FEDFF1B00F82F0000D6015A01402710CD8837041031';
wwv_flow_imp.g_varchar2_table(651) := '1444444C18F2A5DC6FFFFACFD11F977C3DB59F2AEE2802044CEEA30570EC0168224077013809F0F27E839E00020045008B016017041900A8F8D1E6171900A8018600507BFFCF620030FCBF4A0F502B800A446370512568C6532FDDCC5F7FA05FC90FB002';
wwv_flow_imp.g_varchar2_table(652) := '800500002700B300F0BED4FE9D05700A20D901BF490B70262D41D3013811D0F5BEF4F7D71AA0E700E4F0CFFAE01E114C2D8103303A00E00B972FDAB7FCBFFEFBE1574D6D803B03640704D59FC31F60A00100FC3768059009C07020249D95552E44810200';
wwv_flow_imp.g_varchar2_table(653) := '7EDF07290FE1A505184EEF0DA9E4297A870D701F00D8554654347D01810226B6F67190FBA4EF7F677FF8CF987BF0180050853F95F6C77D3F7DFED8D1DB9B6FDB5F7AFF6F38D09DFEF7F91B77FF10FF9909B00DD00E00E805101CE456C435FD6DFF2B7F1F';
wwv_flow_imp.g_varchar2_table(654) := '0060552FAF2E7CDCEBB90900D80380019F2E000C7E95012107003D006008A001801E0AE0A11C005C17458685320058037C12A77C0CFB18FE12FF8523000C401301D201C0B7AD7D7F63C9DEF2FDEF297FB77709007448C8C7B12EF8C90A18277B53FC0602';
wwv_flow_imp.g_varchar2_table(655) := 'F57E18FEE716BE381AD805188A04F61A406E80CC0448DB1FAC81A4FCDD17800A4C360716500065D685802E90E1407A1F00209F38DDCD784AA13030C4806001A001B89CE8FFD0039001C07F435AA01302B13AC8B4BC0002950F40057D0B0A1202A9D09CD2';
wwv_flow_imp.g_varchar2_table(656) := '0A0C43BB0DFD5D36C04301C030E039DA539FD0AD86FCF7CDE96EA70CFE0900C093185F65660022E847A13C1EFC8CE9C509FE3EA8FF10FF7500F0F58E2E8050FD73F71FA7FF7000302A98CD88041508F9A901E7DFFDE1DE89A7BCA1BEF4EFB50B00E4F0D7';
wwv_flow_imp.g_varchar2_table(657) := '3D84B6583A993205302AB9D1F40706C06540AA03560C30B401D008040050411ABF771C55B2023800C054034C00704610203660660032125DE559FDF15E4FFFC75F7DEF16007410D0018016C024D200002000494441543500C502100050E4472D80DF7700';
wwv_flow_imp.g_varchar2_table(658) := 'C0E84BAE00BC0600FA8D54400DE7F0EE1B00B455400902E90630F51F00E0275A034B0FE05C80AABDA430ECBD00807EC2EB8141F42ACB1E281D0068FEEE000827805C018E1066610E41436FCBE3F7922E40EF674ABDCCE3CB4C8017A9FB8280F601800E30';
wwv_flow_imp.g_varchar2_table(659) := '38D3174EF7031018F5002E1EB2B5706EFDDB8EFF7D1A06C0B7A159F51F277F0DFD1CFC88FD95908FAD7F15010C06C0C97F7C7FB7C1DF7DF9469BA0E97FB622F27489B7AE65B06EE4F85BE3DBFC8AB4FA15464CD63076FE0AFEF1F027FD3FF6004414B0F6';
wwv_flow_imp.g_varchar2_table(660) := 'FD4C0054009063802FDA3D50FB7F0000FCDBAE631E2C80376C02C4897F1703E0154032000AFEA967E98DD39ECF7439BE2B00C093C9F28542CA0B6FA4ADA0018840A0C6021004D44AA02C81D4031420B0004600402F36400150F74805C42A00C39CFE7ED8';
wwv_flow_imp.g_varchar2_table(661) := '021D0CC4BD3F86FE37BC0700882C6C47055343303B01DE0300581AFE7157B14530F30178B2C709DF5900A0FC690554268018802B01806C0F4484AE7501AE0F46B4EE87910118A8FDBE9B6F09816E84FA5D00304707279DBF87054856A0E908E681FF1C00';
wwv_flow_imp.g_varchar2_table(662) := '00AFA3990148ABDF34FC23BE175E7EB4FEA9CAD7F4BF5D0031F0B5F3E7F0A73E80F6BF7B9DFE69FF632782B0B05EE629DC7CA61BE86BFBB643C646E049EEFC115952B43FEE5BDCFDE3BD6B805D043403808F16FFB5FDFF05F6FF8300D011C04AB39400D0';
wwv_flow_imp.g_varchar2_table(663) := '1A800C011203D01D015E0104FBD9E2D0BB03E6B53D0F2FE5E75D0140DE300C00DA1A20750014042600C89020BB030A0010043018A8DC00A31D305800E702DC3BED8FA7FC880716F5FFED2714B0670104C80A941680C142A307F6ADAF00664B57BF99D1EB';
wwv_flow_imp.g_varchar2_table(664) := '5E71C1D9152010E054403002D700010900AA2F0011C16004C0045C42132020D02D82CC7658A8F935026B0142CF0E005A7D719EF2FBBF6FC5A47EB6E7060016A1CE0C40CFF9C7BE1E943F867F3FF1F7937F56FF2A0B8060E0172B81D50008D600AE8138FD';
wwv_flow_imp.g_varchar2_table(665) := '2BFC671E6E0994D6C361036523480A7A5EC25A2BFECD5C92052B01E0C539D5FDB1020827000B81E008002310FBFF73380570FF530BA0BE3FE97F5900A3CC8A2140C800080D8092FF660600564080031C822A03A0FCFF896F5FCA447D653FC70A00F60200';
wwv_flow_imp.g_varchar2_table(666) := '5802B5D39716809A00E70378F03B1D10EA57AD029482852E7BAB69B5A15767355900330060010A0060E82301EB7CF3552020D6006001900BD0EA815309EBDFE30D8B00B700401C35F98BA760492C407605A020482541D91C78C55E807002C41B0B839010';
wwv_flow_imp.g_varchar2_table(667) := '188C40000175069C216C88A541F4D5B7FD7B72CDA32A3FA97BDD59FF0403B0C54878EFF407198074A1F869910360CEF9C7F0F6F0F7891EB9FE1CF47739E8BF7AE86B2DC0EA5FDA04A3EE576D7F2C4BEA79045E035804F9CAEECACFF0E326F5DFBE372F4F';
wwv_flow_imp.g_varchar2_table(668) := '87FDE0FAAE93BFF7FEF6FFFBF40F0080370000AF010004200C04339000400E00AEAE6AFF1F19002100A405100C001C0018F23EF5030460F71F91C02D0780FA275AA0F17D720527CBE2333C6C6FFE5BAE0080D8B8795E9905E04E0046FBDA15B02D0A642C';
wwv_flow_imp.g_varchar2_table(669) := '30C382AEF03EFA02D810B82B16186B083000D004DC66385017FF91FAC7F0FF0A10F0032B01AE021C12944E801604C497C4DB75012CAD00BCF3A567592C4017034E1D014E09C4D03700B8BE504F4030030401BD4638C48167636D70F7C847EF630EDCAAD6';
wwv_flow_imp.g_varchar2_table(670) := '7D0E06A04EB5B5EF37C0E802C4C1C31F7F581604FAFB89381F7E8FF1BFEDBA1736D99D6FF6F8E7E2BA8430AF92FEA2E617C33F857E14F961E83BF7FF2BFE8C937E14FD54DC6F54FEC6CA80C97F21FC9BAA7EED40E88D86AB0660BB5FC3CFA4014057FBC7';
wwv_flow_imp.g_varchar2_table(671) := 'FA53E15A1CFED8E7330218CC26063C447E4E038CD33FFE1C15C07CA3068A4CAA0140A43EDA022806C02140DFAD0150F67FB8001C070C07805C003CF85419DAA8F758C59E8F412B2B005802001909EC5020A703563640D90039F03DFCA330E89C4021EB81';
wwv_flow_imp.g_varchar2_table(672) := '930570900B82810800C802281A5802400C7B50FF5F7F9E6FBE18008416C08E0039017E9D4AF85405476F190004546B7BDE99F25D6201221740F5C1736320067DB0025A0960F8233D106F2C153AD95CC5D73600D04A837CB6996D799D0170F0CE635C00FB';
wwv_flow_imp.g_varchar2_table(673) := '29FB03067A5B11D430DF9D0330DB0E7F1B00340680A23FEEFC63B0C3E7FFED6EF35916BF000212F9990D88B50006BE40439CFAE30DA7C7AAF9ED02C07E133441F3D66DB1FB6EFCB32DB2E985854F69F7F3CEDF947F3FF93B00C8031EC33FDE82F6D7E9DF';
wwv_flow_imp.g_varchar2_table(674) := 'C35F40A104D03CFD1300E0F4FF6BC800080600498060009A053019007401A00A1829809306A00399A58F1F3310DFDBD7AC00401C7251619508182C4020595BFB9A1620EA82B74FFF0400581198358018A6D600B8A9D3BF5AE98088088E442C69001200FC';
wwv_flow_imp.g_varchar2_table(675) := '0000200B603D80750083153026A3554F721DBCD12BF9200030140651E19F40202280990100CA9F6B010A0321102C91E049AE06A00BC0D7DB0E18897A9C8E7A9447F5FD1600186C830F05F13CF4DF8B61A854BF3DFF7EFB391FFCFC89C9783400E02D3F58';
wwv_flow_imp.g_varchar2_table(676) := '00DBFFACFA77C80F863CBCFD51F083C1AFC63F0BFE2006CC533F6C821AFE88FCEDA53F9DFE9F87DD0A0026C0DCE97F5DBE16FE39529BAD7F38F9E3C48F933F4FF4F0FF1B00840E402C40BC6FA77F96A251FCCCD527AD19E1FF0F0080FD3F5600D200DC6C';
wwv_flow_imp.g_varchar2_table(677) := '27014604B03401580B80F9840BC04D80AE435F01C0EFDFE4DF2100C8CBA616C852C09246E6858BE1CF9D586301000434D8AB2888B43F18000CFF02000BA98059116CF19E1800390218014CBADFF43FF760DB00209A01EFC1222812731845BF7F61BCD4EF';
wwv_flow_imp.g_varchar2_table(678) := 'B075A2297D659C64D086F701271A9705691D30B4060A0424F57FE9C2206404F063B00006080600635F80B4001D08F416C13EF4FF3000C880A229AFE0580030829C875700F150085093FE27ED8B53DF8D437E74FA07ED9FF1BE11F6C37500AC7E8CF915E5';
wwv_flow_imp.g_varchar2_table(679) := 'DFF6FD31FC55F71B9902B1FB57EE7F8FFC1DAC80EF9B1A1E00F3F41432DD9259FF38A4D0EEE7E1CFD8DFEDE1CF3640AF019CFA679600BD28E5FF8F9349FCAB69FF1B5A00AB09D06540EC00A812A0AF3F280084581000E02EEE7B75CFDB4A33DC8A357EA9';
wwv_flow_imp.g_varchar2_table(680) := '77B297F173BD630030C2E1ACBE4C3B20B40063301077FA950BE05AE03EFC0D027A5320043581881B008817C5466B005801EFB9DFE7AE9F2B00D3FF78FFED87DC005803A81D109618A0E1210D9077E138A12EA5A2BD8CCBEEF13FC5BEDFC937349704C57B';
wwv_flow_imp.g_varchar2_table(681) := '8902E3E6D6AA8383E2D70A80D43F63829116481050EC003E2F828214101462C00CF9E103CE357BD406B58FF398D51883874EF80FFDF7DD0C401FFC4BAE80DF0100B390BE3631FA28EC98F5316B78B5FF37FD8FA01FD5FC82EE47B18FF3FDF1F1000054F5';
wwv_flow_imp.g_varchar2_table(682) := 'EBA01F87FD50F15F95BF51FAE3E1BF23FF775D01F0F536080153F95F0080AD9A1CFA18FE3CF1FF62B04FD0FE130B20DADF7BFF3CFD37FB1FEF4D9B0083AC00EE35C072013411204EFCFDCD16C0B8E7690540D0575724750675025A4D1F87DF5F5700D006';
wwv_flow_imp.g_varchar2_table(683) := 'A6B300FC9EE5403308505360B401DE6EAE620DC093FFF505DF5F5D50170096207400781300E815C1910B90990050C4920180ED2F34005801041DD61900EA00C8002812B3B5C56DDDA877DC140FBF445ED667EE02009ABF1473C69E5EEF5B7DB041002C82';
wwv_flow_imp.g_varchar2_table(684) := '91133003808F6C0F4461506701F0798C0B661EC0900C68DB9D00C10000A6137806F32C9ECC17BA00F67EDEF6E7EF3FF93FFCFDB7A287C56E0CD754FB43A5FDF91AE124C6E9DF27F3D8F92AED0FEA7DD7FC46B2DF670280FF7C260380750074011600F6A0';
wwv_flow_imp.g_varchar2_table(685) := '9F3CF9435418AB05EE945D34B4A472EFE4CCCBBA8AFFDC4F333300CE41B1382F40726BFBB3E0AF0F7F53FC330088CF09B0C03501D883D1FA5CE14C6C00F4F06F2980587D0A00380ED800007FB605105A01DFF39600806EE379F8F9738FF0EBFE975600E0';
wwv_flow_imp.g_varchar2_table(686) := 'D579AE017E452846ECAFB4C7C21A607405900508F57FA3FFAF2F6E1208382488A8B80180480624FCEE3A8010024A04380000AD006C07744E006B31D109307562171626EA7F2F0040CFA359801908782530B200B40382EE6762E0C9E65FE80B3000B8D61A';
wwv_flow_imp.g_varchar2_table(687) := '409D01C805086FB4EC80D6022C96ED348660D004346FFEB2C8EF6918000EBF256DC0E12240B308FD74D56F771D008C1F2BF71F35BFA0FFA3E58F813F18EEA0FF71DA0700F8FF3E0308B0EE1782C00E00FAE9DF5EFF18FA1EFE12972503508C73FE98EFF9';
wwv_flow_imp.g_varchar2_table(688) := 'F43FBFFEBB65988099ACE458F7AB53FE05A97EEFF8AF2EC6D37F3003C3F06FAE27DC3765FD4BF11FCA7FBCFFC7306F31C01001D20AC8D3BF33013CFCF1DFDD041809A80B0CC00A001E0744DE1D00185E14ED34E31744BE302460E99A008A0239D0110C14';
wwv_flow_imp.g_varchar2_table(689) := '96BFB6FB0700F80816006F480C8C4C0033002AC6908A9CF7AA620030CC0D004611206D8000004C05645C70CF02001DD65FDCBC19CB71F0C600C04E50231AD0B62FDB02BB3DD0EB00509DC1024446809201AFEAF4FFAF0600C216189D01271B5407C30E38';
wwv_flow_imp.g_varchar2_table(690) := '07036D57EF2EAC0172208B7B7DC4807E68A03F3B0330D14B71CDF5537853FD4399EFA63FF8F5EDFD370040A63F190032012CF9B963CE7F24FDB59CFFF08E93558881922D833BDAFF74CDBFF7E1DF5F2BA6E2BB773E837F5AD88FC57E1EFC0CF801109800';
wwv_flow_imp.g_varchar2_table(691) := '401308C6FD50C13F297856F46F88FFE4FD8FF09FD601F0F3A65600E10400FD8F53BF94FFD8FD03048400D01900000079BFD36FB3AE001E37FD710FFABFFFE7FF7D8323E2F0C74349B2F1055588E13E6CAA582D0AA4B5A59A023B00C0F0C70AE0A3DE8301';
wwv_flow_imp.g_varchar2_table(692) := '702890D70050DA62A5106B003AF637BFB002502A607402440A206380B9022000B00B20CA810000621FC6358055B1510CA45F7D1F08E856A0C31FA997F799F3859B6B00E11FEF06877540089D0400222E98BB7EECFC4DFF9B01081D009203232EB8D60000';
wwv_flow_imp.g_varchar2_table(693) := '006002BA2BC06541680ECCF8D9C5C4C0570400749D5A6855B092C9EE1D0098F2CFD8DF68FD63546FD8FF44FF7FFD4E911F287F0CFD18FEB1022801200000E9FF7B9D1A6BA5D0F7FD34980D5ADE977791FEC59FA83F36B98BD7C1A00E3A4CFB037DEFBD3F';
wwv_flow_imp.g_varchar2_table(694) := 'A87EC7FD0600C05B13FE5918E8C4D34EFD47F789CA7FEAF42FEA7F1AFE8E01761D30297F0080D3B807821588EC1330002100E4CAD300A0689E82352BE83BEE827BF700A03F5CBCD1B5E1DFD602B4B59423800C0059806BEDFD31FC0D00061DC0D91D2335';
wwv_flow_imp.g_varchar2_table(695) := '430750000097EDFDC64E000EF514020600282160D9000900488909002053C0AB800015FCAD0C02F629815FB3606609005800D9D5C1030B10212788F96D3A8050FD73050021E0BFDC18A87C00B8019C0C081D005B0321301C350114071600702B5F0FEAE1';
wwv_flow_imp.g_varchar2_table(696) := '9272899A7F7847FFC719000380B626F3CFDE4FFE1EFA51F72BDA1F7BFF9B5B020064F63BF98F0C802C803AF90300A40030A27E090052F8D792FE3CD446A07BDC4DEFBD7CF6D2631577379D7A7ADB9F6D7F79F257D42FD3FEC80258F9CFC2338A05E3E41F';
wwv_flow_imp.g_varchar2_table(697) := '3A27B79FDA865C5A0D9CFC6DFD73F8CF0FAC006401441430FB4EB806F0E0C79FA10FC0BD0E2B038B9E6700D087FE0A008EBBBA5700D01E2F91E669EFEE8C005F2C2A0A020B00F15F040091F2BF3EBFD95C5FDE6C3EE1636901CC107065701F561BB000A5';
wwv_flow_imp.g_varchar2_table(698) := '5A25004037004EF3510AD4C28082FA5710903B01C65220EB002C06941E40206006004B54CF6B0600F3E1AF0FFD01D82925302C4F7206B0FD8F790060013A000013C03C00FE3D23821908146F8A07B62B208040B03B880A3608D0409FDC02160292713A6E';
wwv_flow_imp.g_varchar2_table(699) := '47FFD0E73FF90A600600EDEE6A0010C0B30DFEB0FCE1E41F697DA4F1A3ECC70C001AFE90FC87158058005B002306F8DB58F493BBFFA1EAB79EDDB7A67139EEF6BDFFB30F01000E00C220A7BFFFD710F3FB490000A13F61FFCBB43FA6040EC23FEFFE4F14';
wwv_flow_imp.g_varchar2_table(700) := 'FC13C23FEFFE61F9E35B34FB81FE4F00409ADF3A8018FCFA33863F8042808881EDACDF7D05008FBF6A5600303D76060115A14E443B6B019C04980040F4FFC74BB200A31D5000C076C0E0DFBC06502470C45C3211906540D505E01540D0FFAE06BE659320';
wwv_flow_imp.g_varchar2_table(701) := 'EB31B146182332631D306504BC45006010300319DC143C1C0CB87A4600C480EE0B080080D22031001604B2495091C16D0D4010504C00BA02082C38FC431CE8C1FFAA0180038FF822E911BB1D00D093EF685E0EFF9FB7F771F2778ADF77C4FB220340B1BF';
wwv_flow_imp.g_varchar2_table(702) := '00000E020A00802E0037FDC1FBFF930242BC59F8D75757E1027BD7CBCB876FFAFB0000AF4F1E489CFA67D15F15FDDC47D5AF1900BB01164FFF164D733944AD8654FF55FCE353BF87FF0802280664E84F08FF24FE036848B63345CFFAFD27DFFFCA003C7C';
wwv_flow_imp.g_varchar2_table(703) := '5D0C87A3F7AE01587AB84AF5CC3B4C1706820500958F15004080ED7F1400DE6C02005C1600B00EA06832390C681C971090431C0C404F04A41590FBFFC806D80100662D40690224D26A6B81E1F77D47A119A907506BA075006401A4035008105601FDF41F';
wwv_flow_imp.g_varchar2_table(704) := '9D01E807B018106541AE0C9E570262010C00F834FB8A32FDFF5A560005006A8D51EB2587BBE4F0C7895F963F36FE89FAD7E9DF55BF5801180074EF7F34FDD9FF7F7B1FF641320CB2FB4D20E4B85BDDFBFCEC5C07DA8FDF3400D4361100C45E5FA7FF18F8';
wwv_flow_imp.g_varchar2_table(705) := '97779B4F5700005801B0ED8F0C0099823AFD57681ABE9F778FB4FD617053F8C7933C073EB2FFE3F41F02BF02013CF91300C0F7CFF85F38067A0DB059CEC6007416F7B5539A7FF8325D1980031E7087047541A035003EE94300F8E9F2270100180065028C';
wwv_flow_imp.g_varchar2_table(706) := '424047646A260804542780D6003AE5671D300080028218174C0D809D0001002490713AE0000276018037DEA2B52BF804A240ECF0B90670EE3F4FFB8E040EEA3F6B83691704530031606F0B841E6070078005E841416F8201189980605D1CF32BB53FF6F5';
wwv_flow_imp.g_varchar2_table(707) := '55F5EB933F07BA637D5DF39B5640AC0390FE1727FF3BA6FF29FB1F40C2697FF6FA8B87283C75C06BF7BD7FCAA0FF69C561D4C5F07E440050C2BFA8F9BDE4F0070380F7BDF0C7BBFF5A6B2AF6D729902EFD010010ED6FEA9F7B7DE6FF13008C2080F737B6';
wwv_flow_imp.g_varchar2_table(708) := '04521325FABFB50076B1B30F687E9E5706E0B82B7E05000F3C5E7609F4A440DA01AD01400D6639000002A005B03070090020AAD676B570022011102F16B00012F8FDBC6525B0530193FE0F1700C5827881380F205601910D50AB008200DA0D77ED4ADFF2';
wwv_flow_imp.g_varchar2_table(709) := '0BA6FBC3BB3EC03A00AE0130D0590BEC4E0058FF42FDAFD5406800B236B89A021910444D4014068528B0F40029027CF50CC0360060188F867444FD52B58F5D7FAFFB8D53FDF756F1ABA63F80000CFEAC03D6E91F5F1B6D7F37952560B781D7106FF99A3D';
wwv_flow_imp.g_varchar2_table(710) := 'EEF67DD8678F22601E91D302680000E5FF3907FF479DFA03005CDF6DA0032806800240B69D123C401C4D868DBE8C3AFD57E00F4EFFF6FB87C86F60010404C412045BA07B9BC57F71C0510DF07C3FEB87FEF5DA38EC9A48C0B4AE00961FB05C2F364F3141';
wwv_flow_imp.g_varchar2_table(711) := '005173AD000400CE6F93FEEF0C006282231130F300E802801BC03BD50E00B0EB0208F0493F4EFEF1C694C0D2000804840EC028B99C01B6CB047D6A5160ADCD06FEECADB26643408C7F770902A3F234A28109005810E476C0B128C88541B0031A28B03258';
wwv_flow_imp.g_varchar2_table(712) := 'EE000001AD02BA3320E97FB7F2A503E0B5AD00160080C47F14FD716073DFEF13BF863E847D18FA1EFC52F9E3CFF3F0875300C33FEC7F600026F53F411C7F96F5467FDC8DDE9F9D079A10C4D60A00A13E5797BF08002EEF02040000FC030D403000B8CF21';
wwv_flow_imp.g_varchar2_table(713) := 'F98F0541B3F82F3B2074FA37FD4FAFBFA8FFB0F5B1F9EFFBCFFA3B9EF8EDF7673F000E362CFFB1CE8987998A3E371F343E0EEB7571DC75B132000B8F571FFE36B5F435C087138AFAA210A8C5005B03E04C00570353305891C0432FC0D21A205E00160312';
wwv_flow_imp.g_varchar2_table(714) := '0078F02700501C7021650381CA072008705260FF45711335B2E9D120C75D3C2FFDB3BB67BC53847603301A98FEFE740478C8F7616F7640EF59122430207160160685457016026AE0BF6200A0D91B0FA34FE40EFBE9497FAEFA05A56FAA3F06BD80807500';
wwv_flow_imp.g_varchar2_table(715) := '6406280CB4ED0FE021D2FF6E28FE0B00A0ACFF7CFEB2B170050187BEFE0680EFC02C0CFF28CD62060076FB18F0660070EA0FFABF3100DD01604D13DD51E4317D6D50FCA7D3BF4EFED8F563F0C75B14FC50E867274017FC39F42786BFE2CE7B02E0BEEC87';
wwv_flow_imp.g_varchar2_table(716) := '15001C7A550840AD0CC0F603B615A613B0B9DC00DC9B090044E00F7B002C04BCBE54368092026117CC4860D8015B2F40A8D52D06D41A606401E8FB770D7077012034E8E79D7DB216110A35EB85037DC1E89BADDB014F546FB73E780E8D895F57A747AF01';
wwv_flow_imp.g_varchar2_table(717) := '30ACA32E58B90018E42C0A2AE1DF581B0CC70057047C6F26600C0A8A3E02E512F71C0017F270A0BE741BE0F4F3E901B4C23B0180837EA0F2FFD1073FFDFD28FEF169DF7A80AE0DE0DA8081418EFFB5B360007131BC94B2B8B2000FDEE94BCC3C06E58C11';
wwv_flow_imp.g_varchar2_table(718) := 'C05500E4D09FB0FEB5FD3F350038EC50045895BF6C4C35FD6F601800E016C2BF12FDF9E48FE16F2040C5BF6C81A6FDA5F8677600EDCD9DCD7409D07B5C693EF8843FE2135606607AD0BAB388371F0667D809C0D3230381B6AD808C02760E801980040060';
wwv_flow_imp.g_varchar2_table(719) := '01041E585803F46CE32177F710F1410B0010803D7FE402DC9E4542600400C57BC506EBCFDE99852E20560842CEDE9BC912389366EF1900B83130B2FD41DF2B1D9045416D2D80218FC8E01004963B207202E416987302A8054035B173F73DB4E8FC581EFC';
wwv_flow_imp.g_varchar2_table(720) := '2F3108680400F952095609FB7F9CF2E8F777D04F28FC23EBBFBFF1EF7CEAA7D29F82BF18FE18FC38FDC7F7A29D70A6FF1D5EB30280C3EFF25DF762DB5F5C81519025FA1FEB4C65005CC30510C39FC23F80805801C00180386094FEE0CDA53FB1FFC7CDB1';
wwv_flow_imp.g_varchar2_table(721) := 'BA98B3F4C79EFF9F279B6FF2F4A3DA176F04010CFC490640A2BF2DDA1FF74453FF62335938B5FCBF950138FCFA083CBF3200E30376100088F62C460223EF1FB1BFB403520C4800408BA04580A5036022608402A98CC38319608388970080B6408300BE27';
wwv_flow_imp.g_varchar2_table(722) := '20603CE6C00C848086EE00A7049A3E9BBB029A29ED7D3000C14DD6F34C0534DB02A324E80301809D01C90600083828A8850561F84765B0DEB22F40A2404705330F808A4FEFAF0525B5C36E7901AD2B603F4038AC0EF8310CC3561BA0EFA63A79FB114C07';
wwv_flow_imp.g_varchar2_table(723) := '808B7E10F683D3FF7786FC60F8D3E38F821F7ECC8CFFBBCD370C7D0100E604D4A9BF863FC145B6FDE55337EEFFD79BFDFE9BBDADAF39FCF3BAE7F0A796C900A0050075116007001712002AF98FA9A614FE75FA3F80E11D3CFF48F8A3E08FC31F653FA79B';
wwv_flow_imp.g_varchar2_table(724) := 'AFDFDDF237FAFD39FCEBE4CF03513198BC1E78205BCC3479AB62A6E366FA519FBD0280A318008567400868003024021200D81A18024080006900BC06C0F00F10D02B82B31CC8C9807821F844AFE1AFA440B300F4CC7ED87CD78A20D60421A8C1D7557806';
wwv_flow_imp.g_varchar2_table(725) := '1034AD33DE45372EE08DAF00A6D99F5D89C1CEAB2A184000A2C02C0B0A6B9F0B83B812C029DF031F71C1F116F5C164029C15003740AF0D662F406300A4F9E0F07A250040AF11C198A8E08D6A579DD821DAC3A91EA7FF18FE91F037BE3703804020260352';
wwv_flow_imp.g_varchar2_table(726) := 'EC67CA1FDF0B7B63AF15AAEE777C812626596FF645C84CE0569B9A4C9D8E66D385E19F1D004E01BC1403300901210A640890E27F23D1946F5827702233FC270E30E1FBB7C88F200083FF0B00C077BE67DE3FB500796851DC6F65FE4BF4176BCCDD99262B';
wwv_flow_imp.g_varchar2_table(727) := '103C6AE60F9FBC0280470000205FAC008656C08C05760850B5057A5540212050B7B3B3C75C00AAF58978EF5510944C405B09382E180C0033B42B3DD0411ACC0898E2335944DCCE536F5B03E053C9FCF2C89391629901067822E21BC581D00570AF4F7700';
wwv_flow_imp.g_varchar2_table(728) := '0180073FFA02FEF984FA60FC3D33046C0B746D30CB8282B4AE64C0A90B80A7B34EB53FB422F8730C4067116ADAF0647E1FA73C08F6788A0700F0C93F863F9AFE00043EDF0620A006000CC0FDE607BCFE378A0B46DADF2D4463B6FD11045867303F87B6CF';
wwv_flow_imp.g_varchar2_table(729) := '3EFE96F7B6BE726917EEC78874BF5C47721EF9E41FAB2FDD8B5C02E41500F3FFA9FE672810570051FF1BD9FFDDFEC7E338D2FF18DA54DEFF2EFC0B00F0FDC3E6CB7732005F55F4C3C43F2AFFBDF3B78D90F7421D5E5600F02C17EE0A00161ED659048817';
wwv_flow_imp.g_varchar2_table(730) := '59D169A4BD4205AB4E807003C41AA05C019DFE0F06E0FC8E80A1E567B340C3FD0018FF72D20A007815E07C000CF5BE066063160000920209041CA50971605A6870FABFB74EF7FD880017018055D03A26F96414EFA31B7D6202A40980E82F1A033F72E8E3';
wwv_flow_imp.g_varchar2_table(731) := 'FDBFF1F1277E6C00E0D64067024434301800800D0DFF3EF05F3A00183C22A25E7F85CA9BBB7AECED63FF2FFA3FF2FDA3E4E76EF39FFFDD32EFFF3300003500B4FAF593FFF6A9DFCA7F8BCAACFA5E4FFFDB37ABBD0040613F14A492F20FA64BD4FF5914FA';
wwv_flow_imp.g_varchar2_table(732) := '2805102E0095FE3809D000C00541F4FFFFDA9CAB1305E022EE2AAA8426656FEF3F19008BFE00003E0B0000085807C0D43FA5FDDD81FDA46B29CBCD4CFBB724C3FE3BAFA7FFDFC3052B00380000F8532C04AC042D0EF58BB35B5902EF365772054453A06C';
wwv_flow_imp.g_varchar2_table(733) := '82B601BA3E332D81D32AC0A3192F2BBE08D0F657A24047055B07107D019112C81A4D860639496B5C03B81BA091FF14EFB896E0F7AEA397FDD53D44BE33207AC0FBAE34D9801007F6A020320018FEF90606402C003B03A819F01AC07640F603F0E41E6F2A';
wwv_flow_imp.g_varchar2_table(734) := '9AF06AE0EF3200B59EA89BE9C8AFC7DE35ED7F3CE90100D0FE47215FECFFBF72D8FBE4FF1F7CFC3F6901BE29E94F41415DEC07C53F3DDE8AFCCDD35EF53974DA6A65FFF968ECB2C3990170DEC830FC65FBF3EEDF0240DB00C30970C153FF70FA0F01A0D8';
wwv_flow_imp.g_varchar2_table(735) := 'CB6C3535FD2F56C8D9FF700028F2178A7FEFFF03007CD32AE0875AFFC400E07043DDC734FC25C2E6EF3AD69DAFC3FFF76FBB2B00D8F1185691C67862AE3860AE01CE60F1532F80073EDF330008CC004EFFACD0F47BAE0F4CC14113102F568AC4D911A055';
wwv_flow_imp.g_varchar2_table(736) := '4014FD7410D084803EF13332585DDA020491A3DDCA824A0838FEC2EBCDB4FCE4B608DA21004D80838210038C92A01900FCDB00207400C806703A602503620DC01648EB016A256006C09A80875D024FBB02980587FDC49F39F21EC8A1C206FDCF7D3D6D7B';
wwv_flow_imp.g_varchar2_table(737) := 'DCFF030078F78FC10FEA9F00A0AF00981218F4BFA27E9DF59F823F0BBCCC36E4A42BA4BA5EB3870200B28BA700B34AFC8B009F00B61CE6A4FFDD0458C31FA77E83017C8CCFF30A93D5E8160012B4056D1F69A4640070AAB7F5CFC2BFCE00D40A80054145';
wwv_flow_imp.g_varchar2_table(738) := 'FF8FFB7EABFDECC6DAA5FEFFFD51F83EBFC30A00F63CEF816F75FAF149D900C03A00440293DAF7C06FEFCFC50C68F813140008F02D4080AC81190EA49FA7F4000400DD1910A959B9FF3FDB7CF5F08FE2203201B00A3250A3E281F74502BFCFCB7FFBB71E';
wwv_flow_imp.g_varchar2_table(739) := '40808382CE1815DC570001043ED51A00FF6DCC0438097B61AC0282765547809C015C39943BA0448189021FB00B6EDB061F5307FC1000486F37067214BC94FD0F8D7F60002C0084DA3F1880CFB77A2BD4253A0000200049444154CF8FAD0160E00FEC7E0B';
wwv_flow_imp.g_varchar2_table(740) := '497F02197D6D93ABB8CEDAAC176A3E027548A907C5D72FAE27DF5338FCE9F7F71BA97FA6FAC5E93FAA80EB2DB2FF2F190E14F63FDCA7B4FF877B29AAD265FFA3F80F0000CCD0C9E646E97F010064FD83030000E0334480CD05E01440740638B86C6E315D';
wwv_flow_imp.g_varchar2_table(741) := '02A5EB65F0348FC00A001E0000A69DD2ADEF1ACD880456BA5F730474C15F7D4C46C06E800E041C119C5A800C38110B807540630198FFDF2A8363F873F0B339907F1EEC8077AC1CB692960CC3D35C40AFFDBBECDAA1062393D640A6FE81E6A703404C8000';
wwv_flow_imp.g_varchar2_table(742) := '00C480910B0021602B0C027B9020208000DF5C173CD406371BA06F7887D9014B34F85800D06B7EFD6F3B800743DFB9FFA6FE23E54D7B7CA8F9B1D7C78EFF7F5FEE37FFF9C2E1DF8100800152014300F893A7FF10FDDD51ECD799867E3DAD0060FFAB6B31';
wwv_flow_imp.g_varchar2_table(743) := 'EA5AF70F03805EF78BE1CFA1FF4B91BE75FA47C8CFD58506BE818040C1D2E99FEA7FAD6CD4FCC7D3BF18007BFF0502A0FCC7E00700281160C5FF2603D0324B185B3CAFA35EFB1DE765FDFC2B00380000D4A728F54AF417038180AEEF940B202620560215';
wwv_flow_imp.g_varchar2_table(744) := '14C4C8606B0298A815E040C8BABB02141EA77F926E00B705B232B8BA0242F8A7D3FFD70602EC0A704C304A820A5D73F87BFBFF9E8140DFA1F6D354CF09B023209C0000001003CAFEE775004480D0075444301B03530B1041432A0A1210705260AD007A3A';
wwv_flow_imp.g_varchar2_table(745) := '43CF0DD89518F8740C00750915AD97E23BEDE57DEA77ED6FECFE6F91FDFFEBFF6FEF4DB41BD9721D5167569DB16EF7E7747F40FFFFBFBCFBBA8633672F120089BD2364CBE9B4E581A7964BB653B224462808922070F76BAAFFF50A200880040124000637';
wwv_flow_imp.g_varchar2_table(746) := 'C00980020098F957CB6BF924EEF814C960FE5B00D2362E71E19F9AFB93EDDF153F923CDAFEDEFEEF3100FE5D5F6CFD47F5BFCFFE030044F28F0E80AA7F01004AFD4AF8471D80DC02883540FA02A05389DDFF362F13C141241D1CFB8F7CAD7AAE337F00C0';
wwv_flow_imp.g_varchar2_table(747) := '130080C60052068438104080BC0234F7173F009B02FA8AD99A7C02F80133A740E7024417201502E918181F9C58F9ABF9FFAF1A058808B85A06434BFB6C9F76ED0678527CEF249BBD85EA1718090509004442D71860D103F8F9AEB4005210284601F207F8';
wwv_flow_imp.g_varchar2_table(748) := 'EE334000B501B223B03906E68600FBB62E198CD3D2D7031F960E7E4C07004FD99C04F0129B64A53D7CCDFB93F52FD7BF24FF61975F1B00FF2207C03500E2FBA8FE0300A4D5AFB4FE35FFB7EAFFB92E70EFF9EF2E5B12553280D32200900257ACFC45F4CB';
wwv_flow_imp.g_varchar2_table(749) := '4A3F127C56FCFC9E5E0099F853F0C7F6FEB9BE8CD93F56878BF9FF05737FB1FF23994303801C002AFF45D2FF1757010500B2FDFFFB276A96F4F5293B0B9B66C97B3E8EB77C6F03001E88BE7300A49BAFF91794FC380AA03C304C321A08A813100020D501';
wwv_flow_imp.g_varchar2_table(750) := '53280800E0C7D0D76627A0BCB5E51448A6788C20BC0B9012C12908B40280E804641720C600D405C80E009DB5DC4EB3088164D5FA7BDC51F67B0601F70100750120151CF2C0AD0710ADFE9F7FBABBFBAF50048CEA9FED7F6D02C41820BF0208B013F03DC1';
wwv_flow_imp.g_varchar2_table(751) := '806487437D304600EB18C0BB002F0B009A8488EE90245DA34D0FC19F68ED627D4F0A7E90FFFD92D5BDE47F3DE9FFF35F7F2500F0F67F740E52EA97CC7FF491F19CAA606F79417C2BCF5DE7AE750184190BBC4677D2927F00809F38D78F9D7FCCFC35E7FF';
wwv_flow_imp.g_varchar2_table(752) := '92891FDDC926FD95ED2F897F384FA8D350B3FFA8E07BFD2F1D000500CA00881A0054039411900880D90128C13253EEE4DAEE5B392E6FED750E0078020000731FE63EF88AEF0D00D828200140586A867BE072CB5180890341625309401B0168E367076001';
wwv_flow_imp.g_varchar2_table(753) := '00BDFE17DD802004A61600D501CB592B7804E6A90D10A0714077013E3A0048CD0776C3CB2F2059D36119AC367F2B0346D28FED804CFE5C05D436C08F3F7C4E1000DBE0DE0E805220BE2417EC09D8AC5B704D5F8482BECD16808F1E6A04C0AA4B0000BBFE';
wwv_flow_imp.g_varchar2_table(754) := 'D2FB87DD6FE8F6A7ED2F93BFDCFD020084D84F56FC21011C3FFF1BD2C06AFF0761300980B1EEF51798E3FB7FEF19707ECBE42000104953204A3312ACB236F12FDAFF59FDD3EE176B7E90FE0D0010B7D10DC8E49F0040863FD1CD5C55FFD08A37D5BFD8FB';
wwv_flow_imp.g_varchar2_table(755) := '8FF67FEEF277F51FD57DCA009303E0EB806AFF43B594F2BFEC502EA3385E0267F4F32DCF9CF56F0D00780800B04251418E7372E5024817E0330532723D505D80F40B08152D54FFF00A4017001EDBE11710061BC123A0C21601809CE36A25F00B92784804';
wwv_flow_imp.g_varchar2_table(756) := '87D04FCA0093F4272D80E802400C08A641EA00481428C53A72D7B61177696C9FCCD9DEF30579E700F83CBADBA810060A65C034094A10806E00923E5C0155FD3B08E8EF3FE7E34A2930380104010F010007060FB9073E6A044005C2D62620EAD1AA9FEFFA';
wwv_flow_imp.g_varchar2_table(757) := 'D3A52F12BFB4FCCBCD2F2C7DB303C02E40267E808152FFCBF63F56064FE7FFFE199C8AEFAAABFDA103C04745B24C0090D71230FFC5F28FA40FBB5F48FE3A10D02A6025FF64FC83E324CDFFE87C6233AA3B442939CEB97F247354FF716DA20F003B009203';
wwv_flow_imp.g_varchar2_table(758) := '46F20FD132ACFFA94081F5B3F393F086A4D1715550E64E8F8EC000806B00807DB8AA2EA786BEAF05C2DD0F1D018180650460002092BFC080B602B2DD661E01BE1B2E7960AD0382E54F009040802B80E40560BDA67900F141CB0E022D3601008EBC80DD68';
wwv_flow_imp.g_varchar2_table(759) := 'E33D0380C476ACA0F671C04E044CA3A072094432974740008224005A0720DD037FFC9CE301FDFEC7EF0104DA2FE0D3DDE7E802B857002E7B75C6BD180028FD09C4A49DFEA2E50FB2DF7F0200FC822F39FBC56D7E110004172055FF52FA17CCFF54FFA3DB';
wwv_flow_imp.g_varchar2_table(760) := '9FDAFFF0A7E80F5F55790300AEBE88D7A606E3A8A621944AEF56A31F4BFEB2FB5517203B00B1E76FD57FAB94020050A314C99F9AFF68FB6FADFF342543F23F030145FE63F29701505C9B764E83931AAF0ECADCF151111800F0950000E894FBB089BAF13D';
wwv_flow_imp.g_varchar2_table(761) := '38011807C02B008CFF9CF97FF7C7DDCF3F74170000805D00E902843C306D36A3052DF7B85407CCA42DA7407400B20BA0AF00019203CE11401B039526400200800158AECA7B80176453DB12027FD419F5C6EEEC49689718F52E00AA29780308080804E46D';
wwv_flow_imp.g_varchar2_table(762) := '00000301391A9063E08F9F1710F07D8080E800C497F100F6D6FFB392004F3A00125B890B3C94FE42EC075AFF72FB53B247E247A28FA48F848F76FFD1F6D7A47F4DF37F67FACF05FF711F9E7D0DB0465702009CFF6BCEFF8F1FBFA4CD6F5AFD0620F8115D';
wwv_flow_imp.g_varchar2_table(763) := '80DE0A40CB3F3B9159F9FF85E49FA0ACE7FE580785E31FCE91B5F59F1D80DF3EA5D9CFAF59F1E37B3803E277D92DA0FE7FB896AA23E905C89C0F8F3B1FBEE6DE03009E08000A081010A00B208D8050DB02CB3F4600AAF8CF40406E039040181FC05C13E3';
wwv_flow_imp.g_varchar2_table(764) := '46804000BA00C1BAC53AA024810B04C80F80C0206D833906904570AEDC880F20BBCDA5FDB66E057C940E807703AAF5586C6A9A04E53A1F0080DC0231DF6F826056FBC90B0800F03937040208FCFCD367AE0976172008810000CDC867E373E9393D070720';
wwv_flow_imp.g_varchar2_table(765) := '9EE06CFC10E32677FACBE49FAD7F55F9A8F0B3BDCFAADF933EAAFE3FEF7E91ED6F54FE9AFD070130CE35120007007CCD257B7D8C62D8024061334EA31FB6FF63BE1FA43F25FFFFFA89A38032FAE1FC3FD501D1FA878810C57E76C11F4AFE46F28F2A5FAC';
wwv_flow_imp.g_varchar2_table(766) := 'FF48ECF1F3020098F8F57B37FFC1B528AE675D840C0078FA39F198BF3000E08A689DED20BB30D019080009075C00480263E69F20E087DFEF7ED638203A02DC0A905DB0DA6F0001DD0E561740D2C051D527D9CFEC80CB1D30927F1A6D4037A0370262ED86';
wwv_flow_imp.g_varchar2_table(767) := 'D29BEE16284EC02612F49100804040551E65A14AA7C0BF0100C82320BB0124075617C03602E01CF839CD82B029804E408C02A20B102B81D159E844BC6E013C4508C8F7FA77AF01B7215EAC8AC9FE8F0A2F885DC9F867F28FB6BF487DFFFC374140DC66F5';
wwv_flow_imp.g_varchar2_table(768) := 'FF676A01E478C05AFEA91360AD7F88FFB4DBDF0080FB2F3EA7F1B187F86713DD48CEFF49002CF21F497F0100FE8B5D8076FAEB35C085F12F00903E7F2DD894E0D018FF48EC9FACE2EFCABFC0003901E84862F6FF5B729964594EDBDF8D83341D802B92D3';
wwv_flow_imp.g_varchar2_table(769) := '13EF3200E009011408004190D23A74E0F23100D66AFEBCFBE93BB6FF3906281010EB80F40E28049E4E816B17C0ED826113DCA2405A0B9408104041F300C0B805E9269D02937D0B99E0DA0ED05CD6C700EF7C267B9FB8882EA8E1E42797C0A8D803000410';
wwv_flow_imp.g_varchar2_table(770) := 'D847021A01E49A603A077EA673E0678C030802A4169844C0E8006C3C80EB12FF5108A814FD36619F56FA936AA07B1134C75AF6ABEA0054F5CFB67E24FE60F86BB7BF897E96FC6353C01CFF9CF8A7E42F8D81FDA337177C44E4F49C6C4D9CBC4F91E3A84C';
wwv_flow_imp.g_varchar2_table(771) := '2A2F91DAFFB7F53FD9FC2E238068FFD7268098FFE02E79F59FACFFF89F09FEA8F5EF893FDAFC68F7479B5F5D0038FD69DF1FBC256BFDA77740909209004AA0CCFA60EFFCFAF384F4F34D1E3A00E0C961ECC42FF90AB970390F001C803FB3FAD728206E7F';
wwv_flow_imp.g_varchar2_table(772) := 'AE4D80F60910FB36018081008863605E164C7E800054F765139CED7F76067EE7BFF1E7BC1F8100D66FE2F1FC10920B70D0E17EE71FC08700409101350EA0B6BF04821204A80B401E0074023EDDFD8FE800FC8320E02780006C0E7CCE8D8210088257808D';
wwv_flow_imp.g_varchar2_table(773) := '01CA32382FF3B8D05FB90678D0F5DF80401B0DB5C090488607767756FFD0F9D7DC3F127FEEF9C79A9FBA00E40048E82757058DF1EFB2BF05002E08000D0038267F6FF16B1349C91FE7468F0B4BFB3F1CFFE29CCC110056FDC4FE770E406C0240EB1FF2C0';
wwv_flow_imp.g_varchar2_table(774) := '67AC7F00129AFD6CD57FCEF66BBEDFAC7FFDEE2CF147DBDF5BFF4781B2BE20CFF9F0E4E4F4E01F1800F060881EBAC3DAA8D38732448234060822602A011AF3DF41800481E2C3EA63006C045817A098DA00006D10D46D7ECCFDBBFA571700AB39FC221040';
wwv_flow_imp.g_varchar2_table(775) := '07A19DB88A89EB63800100D55A95C04A6AFAD32720B7030204180F4004407500FEC73FC805F8B9B7026264505E016614A455BE56E9BB4F015020A1133AAA43958BABC4AFB824BE5DA2BBAAFA97DEFF6F31DFCD5D7FCCFAFF193BFE21ED2B0090BBFECDF8';
wwv_flow_imp.g_varchar2_table(776) := '97CE7F6C0CA8EA97E35FB6FE93708A44D29E14EB676B2EF82B00388C00F859C43506C4E372AEE4B52208C4E84EB5D4AFD6FD02042401D0D600031CE406C0A2F62772B3D6FE70FC24F79BE706DBFEC1EACFAF5F41F66B963F2B7F56FC4AFC3E7ECCBFB914';
wwv_flow_imp.g_varchar2_table(777) := '1E92289F0EC04359E75BFDFB00806F12C923081000F89B6D024809307500B801204D00370B0213972B817F8BF6333EE86BB526367F6F05ACDD006C09683490C21CD11D201317BF379D80452AD88880EF1C005C6CB95A9B55175C5F0D741010D5561003C5';
wwv_flow_imp.g_varchar2_table(778) := '038038D02758074707200000FD03821828D7C05A074C40C175C0740B4412F7F5C0BD13E0B2C10F8D0CA835CC33FDB862B857FFB2FA15F33F5AFD51F1270008A73F81800000FF06FB3F487FA110582D7F19FE847BE049F23F084EE973F801CEB74B979C5D';
wwv_flow_imp.g_varchar2_table(779) := '97E26C4452C93F127E0AFEF4CE3F744490FC35FF4F02607401B406B8B0FF63FE8FF53F8C1EB5F3FF17AF3568D560EDCF67FF77C5EE97D6BF400000007800D80E80D6BFD6FD30F7671793BCA356263D89CC073E1FBE496A7AE08F0C00786294FD43DB2D3A';
wwv_flow_imp.g_varchar2_table(780) := 'FA65A71E007CB7C31F2001C0A204C835409200B50900AB60AEE3241760DF0AC0B0A1D60293D5FFF9EEF7F4095895028B1B40010EAC096A8510BC801C077033A0E438ADF7F85194B8CE54109D10D86B56D25A4727409B01DA06F00EC0FFFC0740000000C7';
wwv_flow_imp.g_varchar2_table(781) := '003F412130C70014048A5100A481D7E4BF7702CEEC7B1F1A11AC1ABB2BD110C91F800F1519D4FFA2922F95BF48FE61F54B739FFFFE27D5FE28F8934A7FC9F66FA11F54FDACF8B3EA47228959F24173C13F831FF882BFC7C5C1A9B7FDA5149A5D28B7FA55';
wwv_flow_imp.g_varchar2_table(782) := 'F2A7C94FB4F523C16B0D5042402E03FC03657F7BEF3F92BF94F883FC876318DB1B22FF89F85756BF61F063D6BFD200D0B545663F2962C64243C23F7EBDB9C47DF828D79F27A6A2AF7AF80080AF0A5B3FE8ECA4557B4E44406C02601BA00180F902D013A0';
wwv_flow_imp.g_varchar2_table(783) := '6C8213300038481D107C00EDE4A2F59B2020C57C62AF9F6641B522C835C16CFB23E9C32A18E241D816C09640EDE3721D4709E189A179730FBF2483BC10AE24135C2B8260F2E7CC956A7FC5016007E07F46F2CF31C0E7F40E806A20790065191CD55CFB03';
wwv_flow_imp.g_varchar2_table(784) := '6803E41C00D040881C81FBF502FABE64AB98F8112EADB0FB95A73BF6FF6396FFEF5FA0F3DFD5FF9F7791FCFFFB9F7F2C3C806CFFFFFA573A0486D08F27FF4C209CF9BBCBE0A593E3BD6F9DDCF7A1B8060054F2FF8C553F55FCD98562DB3FED7EF595663F';
wwv_flow_imp.g_varchar2_table(785) := '000150FF6BED7F2894065F00C5467096A46792E043BBFF010AE9F6A7F6BF94FDFEFDCBE7BB70F82B3090A300ECFB77DBBF794672257525D25DD068C18393FD9FF53A3A00E089E1BD04000245CB232098B531DB7741209102FD363A0089C813001C410092';
wwv_flow_imp.g_varchar2_table(786) := '821CB9400844B20E4E407B0524B98FC440CCFD2116F49F30E20810F02B000104847A3BC00539D2206863E53E31546FE2E1BB185042ADED22143FA646436D0744250FA9600802DD41032001408C026C1B200100340176CB607501440ACC8E4039F66DEE7D';
wwv_flow_imp.g_varchar2_table(787) := '19CD4EEE789D675C0031FF557953D38DC7B695DD34E38D197E0300B4FF83F8F757B6FFFFBFB0FBFDA78880D003D0FCFFF7DF63CFBF8D7EBEFCD5D2B1A5B8F88003E00080750E2E6F8AE8E280E98F6E609A5491EC27ABDF4CFA9CE9FBF79AF34BFB3F9C00';
wwv_flow_imp.g_varchar2_table(788) := '0512A2D318D71A5DAB0ED5FFD2FEBFAB9DFF48F8F115C91F16BFB0F98DDBDC0890CEFFA2F50FB9DF48FE02837FC51BD3B908D4B1FCF791CF8797B8600E007862942F03007C5861151CAE5CD0FBD7BA9F27FEB207E6BA60760BD83548749E5EDCD10DE80B';
wwv_flow_imp.g_varchar2_table(789) := '00CC82BC13F0192241D10958BA00D2DE2600082FEEF4E3FE1B5C03631CC0F5C05C09942987AA363E47DE7C10409017DD3DE9C775CA24579B8845AF80BF41E2372C8323B9D71A2001408E003806880D810400A10790A2422404CA2A989B06720B141760B1';
wwv_flow_imp.g_varchar2_table(790) := 'EF7D0000882F527E123C5B6ACB439AFF56FDB7FA5FDBFC06D14F1D80ACFEFF2F780058050409300040680688F49764BFDDA56E5B6FBBF4B979E2C7F1CD3FFCAC0B20102A0010DDC025F97F17E013C91FD5BECC7DE803405010FF968E7FC11130E25FE98E';
wwv_flow_imp.g_varchar2_table(791) := '50CD149F751CC338963EFFAFF6FF6F9FEF54FD270888E41F9D009202E37ED9FA97D80F5547DB808CA3A793B5C7FA9C4DF5FFECE7F300802786F87821C3599BADB424EA40DAF7BBCF7F5617409D80DC0C88361C350060C5C92E006D39BB13C01DDD1352A0';
wwv_flow_imp.g_varchar2_table(792) := '8F0324F30BDBE020E2602320927D76007EFD7B22F51E05900CA89540230306A080EFB780F979576059557A623CDFC4C3A90CA54E405464D204C831800040AC028610D03F3AF987381000007900DC06102130D702F515E4C0CD32582040E0AF19FDEA10AC';
wwv_flow_imp.g_varchar2_table(793) := '9D813300A096BFB7FEB3C5FB47B8F57D49E5BEB6F9ED0E40B4FE0100A80540CDFFD4FA8FEA3F857E5A34A68EA52EE43BADFD4D1CEC977D9115228F157911501805F12F2A7724F1183D75A2C7BC1F5F3506C87100F4FEC5F88FAE41161625FBDBCC7F7CE6';
wwv_flow_imp.g_varchar2_table(794) := '9BFC075F0854FFF125B67F24FC7FAA03F00BAA7F0100C903B7F7488BFDA090A072CA07292A5EF62CBAFED906005C1FABD37B5E02003009C2DC1E5D00ADF869DF5FDD0000806CFD1310C42DE673B0E7C46A607302D0AEA3188806D429DE03AF0098FE1000';
wwv_flow_imp.g_varchar2_table(795) := '24DB5FAE81F12165074020800021D9BAA60900C7C0268889298EB14387E221B5B22786F7553DFC8CB99E7C0FB6640304B465F0A79CF747C20F10A0EF010030024841A074184427201E5FAB81D4074830609B018F01004AFED1CEA8392BD7F06AE64FD73F';
wwv_flow_imp.g_varchar2_table(796) := 'D9FE42FD8FFBFFFFF99276BEC501F8173B00FFFA03D5FFBFA1FDFF1FEEFD47F2C79A1FAFEA99B834A6785587F26DBD186BFFEFD53FAAFE90A20EBB5FCDF88F00205BFE24FCA1EDAFB93F4695F23551F22F5268584287E67F2A4342F52F847E34F3AF1180';
wwv_flow_imp.g_varchar2_table(797) := '01008D006ADFBFAA7F85DDECC7DFD6917877AF7600C0130FE9830080DE006511FCF73FB91560D57E24FCF00BC84E40DC3618C0F7F85A4981BD19D06B5ED2D496C88FBA0098F767DB9F5D805CD7092E8000409076AC0B506641012C2E78059C1574EFB96B';
wwv_flow_imp.g_varchar2_table(798) := 'E7736CD4D9F8BF007A49C64AB740780344820F1E4088FFA41470DCA62FC0678A017DBAFB2936014806844BA0018190095E94022119DC623E48AECEF097ACEFC205C816C10A00C0F68F993FC85D70748BD93F927FCAFFFEF225657E8B03105B00CBFC3F64';
wwv_flow_imp.g_varchar2_table(799) := '80FFCC4D81B0FA95E08FCFFDB5BAA8ED89277ED43ED4C37D04A5F5D304FE8BCB1F5AFF48FED0FB6F75BFEE00A053802F2717476732378C28239CB43F6E6AC406875AFFD1C60FF29F34FFB30390337FE700C4B5051D80F8771414718E61ACA8997F1B5E1D';
wwv_flow_imp.g_varchar2_table(800) := 'C6FD1FEAF8BE96373B00E08947E2320040633E3B00B409066B57891C49BEE6FD95FC3502888D018081B60BE64A213FB87131D0C5418900822EE00220A183E4175D006D018004D84440090461857093082EB10EF3EB9654F00504F05E41405FC4D6934662';
wwv_flow_imp.g_varchar2_table(801) := '2C3E0688E49EA64072044C15C05603FC393A00B10D1016C1F13DAD827F7010B0AC08BA61D099C04F8F00AA4BC00A5C42D5D5F2CF0BF397BC4047E20EF2DEAFBFDFE51A5F24F3D8E90F6D7F98FD70041032C00401719B6640D4FE0FC090F37FEEFB779DE7';
wwv_flow_imp.g_varchar2_table(802) := 'AFE9891FB477F4F0FBBA668B185209FE904FC4B53F67FC87257524FF62F91308F4080032BF95FCB7CA7F61FD7F010068D19F180B75F20F7268CAFCE69CFF13887FBFFCEDEE5F24049606C06FBDFB0F4E11364D3CF9BFA3C3F9A6DFCA0080271EBE8B0060';
wwv_flow_imp.g_varchar2_table(803) := '73074C426089FB180820E35F55BE048120E1291000AE80BA00DEBE934090ABBB693530487D52FB9361103EA447005012C1B94100B18E782C7677A9D825C320EE8D6F63CA1EF9BE5304E000C0894A39EAC9CAACB70122A98B0C286F00BF0D70F0F30F1405';
wwv_flow_imp.g_varchar2_table(804) := '8AFB7EFF3947020002DD09882E00B603680C95F2BE6BE5EF6B80DE0570A31F67FBC7AC3E5AFE9AF747E5AFC41FF37CCDFF23C14BEF3F927E7A01E42D5BFFDCFFCFF97F02002490FC8F3C8916333A122B9FF8D17B930F5F7443EC1D98782304BF99FC3162';
wwv_flow_imp.g_varchar2_table(805) := 'C2C8EFEFF195EBC1213CD5B3FE5CED4BA19F63072093FF77D222696D116D137CCE03856D8D4CD4EC0EA93304F31EBAFEB1FD0F09E05EFD53E51FD7161900E11A22A5BF1E25D6A9FB268FDEFB7BD103009E784C1F0200E002B43090DA6E50FAEBD97E0805';
wwv_flow_imp.g_varchar2_table(806) := 'A9FDAF0D0128079E81005A7606219022410E00BC0B10023FDD05683E0094015B10086B3BED1520F52E49056343001F68C9C6D6859E31F48BD813C3FA2A1F7E0900C4FBC66C164641C1EA2F8BE0DCF9E7174D8290FCDB1D5040208881E113008BE1CFB51D';
wwv_flow_imp.g_varchar2_table(807) := 'F0B71C05000068AE1FCF29B996C70000EC7347D50FB19FA8DE61DD8BB97FB4FE55FD1700101050E5CFD53FADFF69FF3F18E395E04A8D38561971383FFA4AD719C3BF649936995F714B0E6B7F25F30BF25FB7FDB9E74F10901D00CDFC69F31BB3FF6AFBC7';
wwv_flow_imp.g_varchar2_table(808) := '75833B7765F6C3E48FCFFE1DCE9134F3091000F25F7200E801D012C0BDFBAFFB369F08C91F1D80B509F04EEB845779EDBAF4A206003CF1705D060014EDE16A4DEFF0722C902A8112FAE1DA1FC9800000D101A052A08180EC02984890DACFAA18A4F7AE7D';
wwv_flow_imp.g_varchar2_table(809) := 'DB0000090228F893C23F320C72004069607502B4C78BC7D1BAB3D604310EB8B4B3FB5E2FF407006017ED2402CA29D00D82B2452B7D801508C448005D81B8854F002C83A30BD09C80E0179454300F745C3C2F01005F1BECD150B7767FFF13F3FE35F1B7F0';
wwv_flow_imp.g_varchar2_table(810) := '8FDAFB0200690694B6BFBC8DCA3F98FFA1FE17DAFF51FD27019000C0AEF5DD851800F02000209FC4933FA47E5BF42758FFAAEAD1F63710B0750034FB8712295449030094968800C097D6FA97D39FE6FDBFFE86EABF92BFAC7FE5FCC7993FC6889FB8521C';
wwv_flow_imp.g_varchar2_table(811) := '76D25A29B6EA5FD75ACBFC03029E98809EF8F001004F0C60763B4F66E15D0DE3322DA24DAC06421FE04C2808A64148FEA8FEC332185D00AD0C6214901D84FC50A3452809594AC11075432028AA7789030908242F208C83CC20A8CC82A80DA09F03FD1737';
wwv_flow_imp.g_varchar2_table(812) := 'E0CF55CCC3C3F7913A00FBFB1610CB2E8059058314C88E003B01581344F24FA2206F43293036044A28882020BA0A39065007802E7F670020EF135B03516CF1361D244BD085423F090098F499D8D5EE4F00602E7F39EB0F00F0ABBA0594FE8DDDFFF8E2FA';
wwv_flow_imp.g_varchar2_table(813) := '9FD8FF55EC6D5B00EF15185E7B09790800B8A56FADFC59F2D7EC5FAB7F50F55B2BFF9F390EC0CA9F8A8533C63F2E5C180D058043CB3EC97E64FB7BB5AFAABFC1400BFEA0EA87F5AFEBFE63F6EF04C0B50B30C9FFDA33E7F9EE3700E0F962CBB6274D7C3F';
wwv_flow_imp.g_varchar2_table(814) := '5188D5D4BC16A1200AFF88F497D6C101007EF02E00D603C117D8C6005C47F3F9707601A8BC959D803FCD38881D019902C52D34BC251CD43FE7079CA61EB5D7BB7FB04DC3FDBD5EE84B0FE174479BC62C740A141F40464102015813C4EC3F123FE4812113';
wwv_flow_imp.g_varchar2_table(815) := '1CEE81F20BD02820D703691B1C5B00FB1A60F555996CCF0000D64357A5BF4CFEBF7EC18C3F057D20F8136B7FFA5924BF48FEC10B08BDFFB6FB0DE67F6BFF637E7CEC00B4BBE1337FD0DEC09FBF040034F397F57726FF729B74839FA8FE39FF0F0EC05EFD';
wwv_flow_imp.g_varchar2_table(816) := '87B52F7F877D7F5BF75B18FFB82649E71F0E904CFED1F24F339F4F77BFFC1AEE7EC1F8F7F6BFE6FC50FBC3B50189BF3A855A27CE8D82569EAC43F481FD1E5EDB693A00E0998F4870006AF455B3506A04901B10DD00B4E9B0FB9F2380ACFEFFBCFB890020';
wwv_flow_imp.g_varchar2_table(817) := 'C08046031803B0ADE76641B40ECE31407EC23FDD85D42674B7A51208E39F960BEED97F7002B41DF09FF89E6B3DBD252062E05DDA119F7906BCD7E4EF9D9E9DFCB8A80212008013008120818048E6120AD29A2012BFE48209027E4617207502A20B40BF00';
wwv_flow_imp.g_varchar2_table(818) := '49036752255D5C671792C8513A5823005DE483AD1FB3FF68FF67D28FAF7F39D31FDFA7C42F59FE91FC95F8C3F12F3707F815ADFFFC4ACD082301AAD8ABD7FACC1FB437F0E77700E0F3FFB69AA6D80FD7FDA2FB03D11F267FD9FCE6AA69740A390630F6BF';
wwv_flow_imp.g_varchar2_table(819) := '3600302AECEABF18FF714D92D80F937F0000A9FCD58CFFD760FA63E5CF3B0022FA49EC0763038E09491ACE6B8E7444BC4B3AC9FF559DA903009EF9700800EC4F83F5BD1E07402828883B68F5070088A41F002080408F01F0EF12075ACD82204A5332C129';
wwv_flow_imp.g_varchar2_table(820) := '00E3A64198CB412ED8B40248FE4B6F004A79967910CD3D44122C718F340E5AF5E59F399437FFF3F75DC0B58E99F14F053F1103D1BE771000BF00B4FFA3EA8757006C83F32B4701340CA26B606A02D418C068E284972B00A02F408D0ACCCE3556B928F413';
wwv_flow_imp.g_varchar2_table(821) := '493E34FEFF2FAD7EC3EE37BEFFE7BFFE4C0D802004CAE8274003E6FD7F25E31F6D7FAC138AFD1F177CED9227E8254879CFA0F03127E5A2F26789D05BFF31A387CE3F123FCE1B28FE61F67FB6FB0F20505F69875B1A250000200049444154F1BB89FDA477';
wwv_flow_imp.g_varchar2_table(822) := '85F4F7D8FA97FB63AE8336C14F557F54FEB0FBF52E00ABFEA8FCE31AB258FD8224ACD53F8C1736F5D001008F39659EFDBE03009E3DC47125E4473F3E0C5519F568203A00691B4CC11F780384AA17927F00811D00880CE8729ED13684AA9756C6AAF7C059';
wwv_flow_imp.g_varchar2_table(823) := '5C7702A416A835418D00A20B9032C192F54CC5408C0662CE27B4DFFBBD6E2EC3F7A7B7FB12B17DC1E7B86F85CBBB00A8E6B0BAA74E402470E90404CB3FC60010095A01C0FF24080870D06A819FCB36186300D704C031F6DFE5F7B62AA8DD6E09FE68CF1F';
wwv_flow_imp.g_varchar2_table(824) := '0A7F7FA5CD6F0281B0FBFD5758FD86C80F3A00715F27FBE50A6155FDBDFB2F9BDFE802F47F64A4CCB0F7F42CC571126867DB5F463FB9BBDF49BF647F53CF9FCA7FD1F26707408E7F9205AEEA3FF941E838A218E9B9BFBA4258098DD6FF1DA57C91F0B1E7';
wwv_flow_imp.g_varchar2_table(825) := '8FEF031494CDAFB5FDC1F60FBBE04EFC12FED1FCDF3D44060CBEE005EB8AA71A00704590BED55D9604520C727401D2DC631B0364074000204001C7009208C68C0F9B0458F101008075307789592102FB6B850F1F567002D0D61717A04600B9E78BE41FB7';
wwv_flow_imp.g_varchar2_table(826) := '000052F86A7BCF1497E19A0F58F2B8DAB77F00A2771F51F25BC5F7B9FFCEBD00E0B0BB0D10E6E4C0A8E6A416D81D00B6FFFFF1F92E92BF038020094A2028C60792056E2E009E5472BBA50190C99FC721631FC71A36BF62FFCBE6F7FFFF2700407EFD1320';
wwv_flow_imp.g_varchar2_table(827) := '20BA00FF4E931F1005B3F2A7D6BFAC7EA51417CA7F68F51E8F7983DDE73E32B7FDFB67E77677408EAF4D89BF40E3A2F1CF5DFF4CFEA8F655F5EBB64D7F54F5C3FC27CD7E54FDB3937054FA93C94F54EB5282C4AEBF14FE20F2F329CD7D3002080040853F';
wwv_flow_imp.g_varchar2_table(828) := '1204BBE5DF557F0A411D9443D7CFFE0080DB9EABFBB30F0078C1E3D149B197B8340AC82E8089024592CF31406901080060530064C0A812C8F435630FECFAD2B296D5A2D4E00402340A08F6AF00407501423298824112F9A88D8024FC7084C0399F7B7CAB';
wwv_flow_imp.g_varchar2_table(829) := 'EDE7EDF24B17C8FB2E922F78581EF55487F7B2911F8BD02515377602D0D6ED51408A04C508E0A768FB03042400F82F7404B41100D740AC0462C320400580C5EE0EB84B01E35843DC0524AFD5E807D57FD8FC0A00B01310423FB9EBDFD5BFA47E2369402C';
wwv_flow_imp.g_varchar2_table(830) := '4689BFCD7F76D0F7168FEFA34E860BC0D6FF86273C57F9D3AA1F6CC3B9EA97A6526CFBB3F5FF839CFEE2B60C7EF07DB8FEC1E1CF647F8DF8175D459C2746FADB1CFE54FD0700C82A3F257EAD03C04E8038003EF74FA19F5CF783D14F1702CDFCCF9E8335';
wwv_flow_imp.g_varchar2_table(831) := '8506003CF60C7BDEFB0F0078DEF82E7F1D1748DB9FE70753AE81675D801403A21CB04603A90AC86D00ADFA4025100E5FD90DE087BF77C2F372BC7401E203BB7001B812B890019303800E80B60192F59BDD83482CE215AC1702AF08EF03006F4D196C7F2F';
wwv_flow_imp.g_varchar2_table(832) := 'CB05DE046F5CCD4D9C805E0F8CCA1EAE800900D231B03B000104623C004D0076016816B4FA03F456408F00749C71E1ADF53F56FF31CB4FB19F5FD8FE0F8B5F818070F9AB0E0056FDC21B6021FC25B39B556490FEA2FACF164F5FE89721C03B6FFFDF7B6E';
wwv_flow_imp.g_varchar2_table(833) := 'E350602553DFFBAE7F4A846BCF1FBBFE68FBA3F59FC93F933B5AFED1FA2F87BFC5ED0F4E7F011ECAE54FEBC1F9C420EBC4BA5F82C1F481002844570804C04B000045400B0269D52F392054075D57FE56A7BF01002F98641EF95403001E19B0A7DCFD0800';
wwv_flow_imp.g_varchar2_table(834) := 'F0E1946B6020767905C438205702DD32D87E4EB7C0720C8C3621D703090260F3D9A4C04C54D516E62820E676A113C02E4054F6A505901B01BD1590BF4FB260AF04EE24201180BA22B0A4B02981ED79E12D5506BAA0EDAF5917795EEB1739D770F483914B';
wwv_flow_imp.g_varchar2_table(835) := 'ACF5C5051D093E0C8272FD8F1D001101B3034061A052068C75404A039F8D036402946715C732D27517FB1F4E7FD800D0FCFFBF33F1772720B8010110D4FE8F5D7FB4FE914400EE000256BB684A004B09F8BD277FE656BB592E0FCEF2F7B63F88BA18D9C9';
wwv_flow_imp.g_varchar2_table(836) := '4932C1BFDAFE24FB81D4C76ADF3B005EF1A7CB1F4D7E04FED90154E51F074C3E107FB0EDDFC91FEB7B31FFAF11C0D601480E90000057FE5CE617D5BFC640C711A0AB43BEF353E229E9E1268F1D00F082612F0060CF9935393702E0F6058540F101521E98';
wwv_flow_imp.g_varchar2_table(837) := 'E4C0EF651BCCC4FFC3F7320BEA5B69044435203EC0C13AD8B800F1E12DA12072014A0D3000808482780B4FF0AD1BB00980141398CE62EA7AC496F89E242FB54B5FF0B07CD3A73ABC3F8E021200D86A6012014B008864C02000721B400241A1078031C0E7';
wwv_flow_imp.g_varchar2_table(838) := '741AFCEE3B100263149020C036030400BCF24F2FF79475EDF5BF020069EE63230012010300C0E50FF3FFA812A5F487CD0FAEFBD516C8C774763BDBEB5FD43137795FADFA41FF0395BF54FE94FCABF24FADFF36FAC9EF97C44F7E4039FC71DD8FDD3F000E';
wwv_flow_imp.g_varchar2_table(839) := 'A06E5934D7B92007C83080E2DEBF047EC4F8C726003700A8F1AFF6BF3A7F9EF801009C77828FD5AE913600E09B5E6E9EFCC706003C3984D7FF015C30F4B1C4E30400300B347540730EFCFE601844BD004A04C72C10AB83720E04370012B2CE07F0FDF195';
wwv_flow_imp.g_varchar2_table(840) := '1018495B1B01AD1608B10F570B4C95B0920D8EEF791F8100AE05614B409541FB7FFB5AE4D9C5E02D7502EE3BF2F5DECCD14D5D007805D02C8816C1EA044407006240F8828F8034010402824BF0B9ED82B97A284F00B1FED1E68DD53D90FFA2FAD70640AD';
wwv_flow_imp.g_varchar2_table(841) := '00260170DD04900640DAFC2E4A7F548FF3B9AE40C0F51F837773CF330050DD21B681F6ED9002E55BF26F873FADF921E187D4AF923F008088812EF483F181AE1F0130A8F4D3EE7EE48164CB9F6DFFBCDDF4FDB30B905C8026FE15FB7FAFFEE9F2E77A207B';
wwv_flow_imp.g_varchar2_table(842) := '4C0600BCEED37D00C00B1E9F8700804601F8208759904602B89563A04C835A3218C91FE6410003C509E08546FA00DACD2E52600804A55AE0AA0D80399FCC8194E4310690100854035D110CBE0162086B3ED8DB01268A7412F7F792FC0F6F8D735F7501A2';
wwv_flow_imp.g_varchar2_table(843) := '82CFB92E258161190C45C0E800D4CFE400A472A0BA00340A82C0D0DA05D0F3AE8E6E2DFD8BF63FE47FA5FC572B80FFC618C04580822F50EDFF3F29F4636FEEC1F9F70B7EB66EF154BE15B227BACCFFCB9A1FDAFD20FBF6DC3F77FD25F2932CFEBB24F621';
wwv_flow_imp.g_varchar2_table(844) := 'F9A30320C9DF1C0790E58F0D20680594C10F3B8901B245BE0B75C69AF7071134AB7EB9FB51FC87E63E22FAF52D058028F59B6BA4A91FD216BF4AFE97623100E01667E6F5CF3900E0FA583DF99E8B1008207A9384B8A7EBE24042F4A9FBAF3541930CCEA4';
wwv_flow_imp.g_varchar2_table(845) := 'FF7DE805C4BAA0C483D0051029A82F10DC0A903EBCF800920BA65220EC7FC90BA0FCEF6F0904D8FA270F004441FBCAF520DD0FDE01EA02DCB722C642E9C9B17D6D7F605FF994D84BB4EC61E7DA0641B10D203F00C902B749508C0AA80940CBE0D52EF833';
wwv_flow_imp.g_varchar2_table(846) := 'D73E357BC5C5395AF6DDFABF43F5FF9B5BFD7E29C25F10FF52132024814305B0F6FF410074B19FD716E75BBF9E4B89AF923F25BAB50E2A0010C9BBE6FE09009AE4A78A3F8D7E7EB82B000002A08481A4F0872E9FAE1B888776FD8DECE7C99F063FBF06F9';
wwv_flow_imp.g_varchar2_table(847) := '6FEB00A40C30A5807FCD11209C00E507A2BD7F700A7ADE8F673DFF6FA3FFDCFA90CDF35B040600BCE0E970E9032296709276521D90063FC912466BCFBB01D5014881A00600500ED4D600D604D3058C6380E402481FC00080EB03C487BA9402831F1020E0';
wwv_flow_imp.g_varchar2_table(848) := '4F247FCDFF9317B02806AA52904A181E13B342AD070904E802850BC62A1CF48287E2599FCA2B631DF3967A6DB3A0E001A00B40732075021697400300DE09303E0078008052DDFEC7EC3E2D7FADFD1FF37FB9FC4106187BFFA1FF1F3FCB08A8E7FFA82045';
wwv_flow_imp.g_varchar2_table(849) := 'FECBC0D9EC6666BA7D2A2D898E5D9F3EEE128542E58E8D1093F8E5CC3F92BC66FF65F51B9D00ADFBA9F2E7E7DA457E6AE64FB67F114039F3CFCE5D267F24FE48EE49FEA3C35FFF0E8C7F8083EEEA05A0C4D60F3ED7676B9FCFFAC19A3FFECD233000E09B';
wwv_flow_imp.g_varchar2_table(850) := '87F4FE3F78DA2AE443C4DA05086872607CC865E5296B4FE9043800F8F907A906C63800AB825A0DCCB6E3B615D0A4B15E0F8C961E4602B200FE5C729F0201D9FA6707403A01D00D205B78310EC2AAD0DE05509214712801C12584F4C2C7E8294F7748FEF1';
wwv_flow_imp.g_varchar2_table(851) := '9EBC151C96C1F408C01800F3FD9FCD21108E80F13BAC01CA3C485C80784C1002A38B10FA00315A880A335DFF24EF1AED5A0180ACFEF12557BF7FFFE74B1AFF44E5BF27FF181368FE2FD53FB1BC95FCEF23733E257E6FF1B10B08E20FA9BC172D7F760024';
wwv_flow_imp.g_varchar2_table(852) := 'EFABAA3FDBF754FBCBCA9EED7DB1FE7F4AADFF36FC693D0082FA2411F67582D44CEA3EB8BD2F647EB1EAC7C46F49FF17B2FF3BE1F7BA5F19FD941B68740709EA6DFD53D5BF9F136FF1387EC4D73C00E0858FFA7D33B1320E923E40F905A02390BC008E02';
wwv_flow_imp.g_varchar2_table(853) := 'E01A18D5BF3A0051FD77376019034824E814047449A74EC00A023E67022F4E00497F0500522930F684350E60CBB0C482B82BECD6A0520AD41A192BD73C146F9C54B600007B2FD8F4E01CD8C600690E44426024F848FC6AF9CB1638BD033806381002B911';
wwv_flow_imp.g_varchar2_table(854) := '105A03114EB4FF29FCE3D53F098091DCB30B40BB5F39FF45DB3F7E87F5BFE81AC8E9EFEEEEAF3FB1465615AEF40E78EA7CE42E40EDF71788C7ECBF18FFB1F961F2BE31FE812264EFFA87CCAFEFFA4BD33F404070009AFD2F7F006E11A4EC373E44B59A99';
wwv_flow_imp.g_varchar2_table(855) := '0010BBFE21F213557BCEFD734487553F257D7DAF3180CC80D4F2179F079F7D29FEAD807EBF7CBE5B1ECF0BE789977ABA01002F15697B9E4B33315C4C9A28E71D0154EF4D0A5CC60009041A00801028B120C805C78507BE01B2AD953EB874E4D942E68A60';
wwv_flow_imp.g_varchar2_table(856) := '820032F9B12688B93EBA0068F58740504A055BF28FD140550E240CE55A60B40EA94AA735B5DC55978C2C05924E57AB18BB4B1D82D774D1B90F00283160F50B2E7FE510C8718058FFF20150C21711F0C70002490444F52F89608D00A0FA0789D762FE87FB';
wwv_flow_imp.g_varchar2_table(857) := '1F014024F7040191F0F59589BF7F1FF74DE9DF3FBEDCC5DE38D6C8B4DC6FA23696F46EF0317AF6A7BCD891DAC57D76196801BD4DE407557F5BFA4AEAB7047E22E12F5AFFDBEA1F79031AE929F9472024F29312CD2EF263D57F93FB040400066AC75FF37E';
wwv_flow_imp.g_varchar2_table(858) := '5AFB3AE94FADFFB3F6FFDE01F9C880F0D94FCA6FFC040300BE7140BFC59F5B2C84C32C845C001089D0D66FEBE0750300C641AE0B4067B07C8C3801AB67008C42E820C7D93C8464300A806F8040000140EE0F33F99313A075A1756ED88FCD99245B88B875';
wwv_flow_imp.g_varchar2_table(859) := 'EDF00B3E028FE808BC0620702F0088444183202703260808522041400AFFC46880DD8168F90310F42D000040447200A20340809504C05CF7C2EA5FDAFFC66D68FB7313208180EC7EF316BAFF79BFD8FF8FE4FF471C230100C2563A0C265C5427E08D5FF1';
wwv_flow_imp.g_varchar2_table(860) := '0F9327FBC5A58EDD51CF9F55FF43C9BF487CC1E8A7B25F29FC6DCA7F25F38B6E01AC7DDBF02BD9FE14660A00A0C42F911FADFC69F6AF8A1FC63EF892009076FCBBEAC7BC1F5FC7EA3F01E1F6DFDE0DF916D7C2F91BCF1B810100CF1BDFAFFEEBEA061441';
wwv_flow_imp.g_varchar2_table(861) := '30460004021A0348FD2FA58259F52FAB80291804002042A013037531E91541D30908BD021AFD48D827CC837ECF71008841520D0429B07FEE8BC9678E0E041EA01D8E0B0ABE1708509579DF4EB182794989CF93D25707FE890FBC0F00C49F7652583A0446';
wwv_flow_imp.g_varchar2_table(862) := '27A0E6F9911050DD43FD8F0240F973BB031607E07BEA01FC8DE0EDCB5D76590000D6F5BF0402E4014482EF8E00047FE4FA27D26056FFD1FA4FA046E19F8C8DCE91F70100AE4AFE7EA78BE23E5AF3731BE836F6F1CA1F4CFE93E46F2CFF65DF3F647EB36B';
wwv_flow_imp.g_varchar2_table(863) := '244D0FF0834AE12F923F473F707CA4C46FC9FC6AF61FBBFD5EFD77070004DFF86CC7E800DD3E48064BEABB017BF14106003CF16A71FB870F00B8FD31B8F71524003042A0AF0682454CA54072020200881F80E40F9D70288CC558C06543FBA2021BE1B695';
wwv_flow_imp.g_varchar2_table(864) := '956A21DAF4ADF71FE3000806491110AB7FD207481541FE8CFBB47470AEA5FD0100902DC58399085ACD3B08D893AA07EC20C77BEB6AD43A16FB2AA00040BC6628C10100FC3D5BC30202581114C90F80E03340417401B40AB8A8024667411D0054820000DC';
wwv_flow_imp.g_varchar2_table(865) := '00E0168046020203EA0E042088C4FF5BB6FE7BF60FF5BF7503C0E586DF4307E04100E0DC07E01F68FB6BBD8FC75292BE65FFAC59BF58FB99F0DDDDAFAB7D5FEF4B7050A01DDF6B7497E63E65EB4B3966913E97B63F66FE45FC2BF21F01C0AFBEEA274D00';
wwv_flow_imp.g_varchar2_table(866) := 'CCF95BC3039FD1E494705427E7CF75A3A73F8DD30178E5C9E4E4E50D007803C7CCE5825B4C8484C0940986F29F7801BA55C28F8D015C64601B0A3B610201AF2CB615C164953321C73860E904947F007901D409C884CFD5217D1F6A81B9475C55062B0D76';
wwv_flow_imp.g_varchar2_table(867) := '03EA42C36D010701BA40F7D6C049EBD1D7D26E0D00B66D8602017BE598A300F803C0E50F20009522447EBA33D0DD007506F46F12038A84D42380207F41C447157D24F74CF217BE0418CAF58FDAFF69F6136DE60A3B027C6682F4063E4AA72F710101FCE1';
wwv_flow_imp.g_varchar2_table(868) := '8C8BE2094E5DB392F42D9967ADF869DE0FA11F55FDA5E6E76D7FB3FC9522A05C01D1F6A769100B81DEF307D88BEADF2BFF20FBC9E00736BF6EF6631D00AE01EE12BFA5F3AFE44F49EFB4FABD20FF3C5B216FF3EC1F00F0068EDBDE05286D005E1CB41AE8';
wwv_flow_imp.g_varchar2_table(869) := '4A81F9BD923EBB002207C645085506B5025C329836B3080B98E5A8C8C109281050BC00B5F9D51530CD0073103C67187747007F57BA016D2CA20B8E57D3DE1178751D009E4FFB3AA070C9220DCBF53D548D0D06A0F00610F01D5D00351AA8D93FC7067207';
wwv_flow_imp.g_varchar2_table(870) := '4C00505B00E00078174089DF13BDEE13ED7E25FEF81EED6432FFCBE4E558E9E937AF817BF1D48F7181800700801FBFB2F14D1017C7CC19FE040095DCA3E217A98FDFDBFA5F1002BFCB56BF740290F8638340CE9EDAF34F2F06B1FD49F86C895FB0FD1304';
wwv_flow_imp.g_varchar2_table(871) := 'D4BA5F277D8D0030B2B3EA3F5AFF6CFBA3E3077E4E9274EB1A70EEF8B8C7FE1560F0A79E0E1FE6F10300DEC8A196B9473989C937202F12DC0E48A2D05FDC2F6E4960308BA51A28CF008E0464217A513218823DED2DBF03014908D32238AAFCD816601740';
wwv_flow_imp.g_varchar2_table(872) := '5B01D81A908CB05605D109D058005B070D02B07AD63E025E7D5C3A6CAF29199DB1C89540B41110AD7BED8AC3E10FC9045D01740404047C2C206010002008807ADFBE05101D80AAF899E465ED1B043F6C0B606320D5FEB29A8CB67F33FF2FB57BDF53F2F7';
wwv_flow_imp.g_varchar2_table(873) := '73E954C7817758C11BD6FBE0F018B37E257CB1FC6DCE9F4E7E6BD297ACAF3600A40B20E54E4FFCD204715BDFB3997F57FE12FAD96E53E7BFF900EA1288ED2F7B5F25FFD6EE583F838AD7996CC724FF379250744EFFEFFFF57FCE8EE3DB7A171FE0D51EBB';
wwv_flow_imp.g_varchar2_table(874) := '00B2145D95022134F2E52E0C8454E16B2B009A017FDDFDF803D6043516C871C0D605F84C9A335A7B6AFDA113D056B39FAB2BD08C612907B64780400098C7E720406CE3A5FA308BD14548E8119B01B73E35CEBA154AD6B57D119D00B1C773A6BC8E06922C';
wwv_flow_imp.g_varchar2_table(875) := 'E823017606600D0C2E81FE930C3098E00D002AF133E143E087899F443F6D66A4D56F557EF76B33BC26C0F59CC75A737FCDFE9759BF55FE6AF583E447A29F030059FC96BD2F19FEE40AC81114A01033FF5260A0ADEF71D5AF5BFEABD25F0BFF0080A313E0';
wwv_flow_imp.g_varchar2_table(876) := 'D53FC672D08DD0AAEE179978B1F2AF847F92292E6D493CE7B198BFFDED22301D806F17CB67FF4BAD0BE052C1A136D68620D9368CE4AF55418E01DA37E0AF140C8291501304936C94C622AD1858AB8139BF560352AA7E5C13DC498241104CBD007E514F5C';
wwv_flow_imp.g_varchar2_table(877) := 'BAE2F00FA0D4A834C69D1898ADCDAD0549205062343E8BF4EBE3B31F81AF7C82B84A6EA55175026A871C55FC2A1DEB63810601EA0A64FB9F5D83E200E41600AA7B257DDC06BBDB2AFED81767E29716036EBBF5EFA24C97BA195F199157F3B04BEA7575B8';
wwv_flow_imp.g_varchar2_table(878) := '2EB0FE5BD90F157FCEEE6DD68FCA9EA4BFDCEFB711007F96009013FDD0EE27D98F56E15AF58B5BADD24AE4E7F79AF7BBC46F247E267B53FF93E52F3A05EAC269DD8F2BBA39EA63AB7F732EBD74D02EE99ABC9A833C2FE462040600BCF293635F79F38D00';
wwv_flow_imp.g_varchar2_table(879) := '240C5C2C74E1C038005FCE0350C2975A20D4C62418044E002E6AED552E39D3AC42B4FFCD920F12BEB858B45E00550383202800502B82477BD1120C729BD1C31CD266910E04381EA82465E424C30438BA57740C2E2582E73A3D7612DD52617EB28E408C02';
wwv_flow_imp.g_varchar2_table(880) := '622C10D57E7401420C861D01F1063402281220C5600A0044D59FC9BF2B7EB4FA491C4C92573BC8DD47B87CAE783CE5EF9EB630CFF6D4771096DD2DC366FADE927EDC459D1A27FEE58826B91A48FCD175ABF5BE4AFE30EEC9D9BF0380020AD2E8C0BAA0AC';
wwv_flow_imp.g_varchar2_table(881) := '8205F455F9A70F0367FE71DC963D7F49FC7AA24F9D7F09FC9CDC16F0C6F80D2A7F1BFFC6466F1FA5CBF39473F0AD3E7600C02B3F72C71632768095FCAB6A2CE32080818518180623ACF8C32C08CE8191FCB919603A01000F9843E705CFFD03822058574C';
wwv_flow_imp.g_varchar2_table(882) := '5C4D9D2058A241920EE646406C01C06884A641520BCC7541CA0C73F718D52B3A00E2046026B95EA054A5941DA9AA1663E1DFA72A78E9B0BFF4C56E674F73F292824131866996393A005A198CCABF0000459CA0DBD0B37C8D0134EB5F5AFE4C2A45B2B4F8';
wwv_flow_imp.g_varchar2_table(883) := '5D03985ECBC7E6BE35BEB3D77806BC7CB5CF391ACBCCBFD6FD307629D25F59F9AE33FFEFAD03804E007900040401E47C13272D7D83E59F9F31BC2B55FE026B007090F74DD2DF92FCD10158E57D91FC35EBEFCA3F44A2D64D9CE2DF6C6D7F8FE14B7F365E';
wwv_flow_imp.g_varchar2_table(884) := 'CB39F69E5FC70080577E742F01802C5E6432C32EC0A7140B92E778EC0FF78A205CC6E41ED8ED7F710174318AD141ED1D4B78846301808D553A5897AB5C1172BD80EC02D04190895E63802206DA7A608C0D168D80DC32A06010C981AE1E28E1A004029A59';
wwv_flow_imp.g_varchar2_table(885) := '6E8CF5220D3EF218DFF24227405055E7CE09B0B9BFDAFF300242A723E2A1D63EF41624E90B4D7F80A9AEFE9168F8F037C6067A6CF2D769A0E35B60AB943065996D5AFED26C20E12FF8190500D8F647323F0700D5E6771D00DE3F57FD6CCDCFC97E3B982B';
wwv_flow_imp.g_varchar2_table(886) := '795F26FF68FD8BED8FB9BFCFF8ADEAA71E0056FDD8FAA75050A9FCB94CB74B72EF1D926DFDF3911FABB9FB2B8CC00080577850FC25ED6232ACBB1719D6F85DB9070A04900B00C731ACFC6517C054035313806A81120B925260DA08D758006CE7F423A0CB';
wwv_flow_imp.g_varchar2_table(887) := '99B4E7F15A7B4D50E380920EA61010340134FB9792E0A60D205D80E40440894CDD809223B576657706AC3BC06E0156972A2F5E362BAFACA077C25FB8B6C0339F230BC8B38BAEC73A933DB70394F8E502182300AF18E508A8753EC4AE55FDBA7BC2B0BCB1';
wwv_flow_imp.g_varchar2_table(888) := 'C44FACB31CD37D8DEFF4909DB4F8F1D98144B31BF864E7A592BE6F6670D52F887F5BF59F20E0EF2DF653A060B1FD95B80F8C7D30726B811F9DB70269DAD2A8993F2BFF48E64DF8EB99FFD2FAB7E48F35C175EBC6257E310E3AB7F8DDBB26CFFC71983FFF';
wwv_flow_imp.g_varchar2_table(889) := '82111800F082C1FE9AA7BAC4B2CD362193142A195D44E41C888B0BF68AE91DB0E80240263813BFD402E3DFA91F002080D9668201AE090A0444D5B98C03823C14AF22ABF1DD3FC03801D1153051A0D21E6707203DC72545CA71802A1557106C995255BC3D';
wwv_flow_imp.g_varchar2_table(890) := '328879A908830B08B8E700EC1C80D375A6B319F2D71C547BCC29B94E2060F19487E56F25FFD4FF4747061C0D692780C457206049FEADEAB7AFF79DF0149FF8CEBEDDC3CF627409245F02025EF567786B8CD6AA7EB2CB962E8357FA106AEAAF146B5A0040';
wwv_flow_imp.g_varchar2_table(891) := '00ED2602CAEA17FC0031FD051E025CC71A21937FA87002C2B5960367FD48FCD27590B39F57FF9AF78BE18F6E40B5FBB9662BA120FF2CB5F6063D39127D1CB1F200806F772EBFB6BF3400E0B51D91EDF5DCB766730904A092C166800881B820492DD00882';
wwv_flow_imp.g_varchar2_table(892) := '26175C6A81090A020C90A44430B06C09701C80F92932505610E949BF8280B4138E8A9E89FD98F49D07405D00DEB71CC9F242D832C239DFE6EA9266A3CE1B400BB52BDC6B8ADCBDF5FF1220E05272DBDBD3E062801310B738C60001055EF49EC9E487A642';
wwv_flow_imp.g_varchar2_table(893) := '57FF6A2B7BF27FED6B5C0F257F743EACD353ED81F583B4B4FDB796FFE2CFC04E8B27FBD6F117E33F541AD9F697B5AF247CABBD4FF02CE090B746B40D402D932F3A8082C489314D005C6D6FC40CDF67FE3EFB2F37BF14FD595BFFD2D868573F6E88C4E733';
wwv_flow_imp.g_varchar2_table(894) := '3E3B048AA5F077320A3A7C2666D1FF95678CC7BDBC01008F8BD78BDFFBE10B348D41764E0015C41204C466C022122430A0F1409301632400B952EA04946A60930383952E7220D8EB0400598622F923D9B472A03B0ACA5A58B760220B0488996CA040550C';
wwv_flow_imp.g_varchar2_table(895) := 'B5CA7541CBD5B6EA12E0E2B68300B554AF01007E705F22F97BF2DA4F2C25F5B55255D58FE42F02A82ED2F55E6B5B426DFFB53BB0ACF76D4FFC1AAFEF5F0502EC7DE93DED04BF4CFCE6DE57024C8B6DAFAFF7854743277E8100AD001E2B7D6CD5F4CA60BB';
wwv_flow_imp.g_varchar2_table(896) := 'F949D02B46772DED0B007074F393B113897F39F377919F75E52FABFF4BEDFE3F090A5DDE9720EA8C0B3200E0C52FF92FFA8403005E34DC5FF7640FEFD99E8000CE15935DACD5C0D80EC82A4412C0ED14088E00150309021208705B402301F1026A144052';
wwv_flow_imp.g_varchar2_table(897) := '204809DE09389710960B60980AB5C5707707244CE2BE01A880DAADCC2F6E0003181B602CD020C0C5834E47010FA1028D58BEEEB05DFDA8FB76EC8F443554FFC91667F7C52FD2D2EDD77BD7AA5FED929F7915F095BEC6E47F29889740C1C299D92C8B9755';
wwv_flow_imp.g_varchar2_table(898) := '4BCDFC09002E25FF7464D40A5F31F9BB0380E4AF7199E480E5DE07EE4CB6FA69E38BCF8D9BFAA04D95DB1B72F4939DF309CB1F895F8C7F5FF18B0E4033FE5D61B3B76AE4E8A7F54F697AB083F2C0E7E196E4D8AB3F4C73C747456000C0A3C2F57AEFDC1F';
wwv_flow_imp.g_varchar2_table(899) := '4E80015437301129EF008D050804C40F689220B501724D10DFFF94B7ABA570F10178F12C17410280540ECCF2B62584CB4BA08483680DEC40C0CC829AB14CFE00AB1A900905086C9D892302B1A5CB669863804A18DB8CF39AEAF29647FD9CB10E369B125A';
wwv_flow_imp.g_varchar2_table(900) := 'BCBEB8DFFE1E010260E5BB90221F023EB77CC3DFF8B9974ECA09E1AFC97EE1CC6833FEEFC27951E23DBAFD54FBFC3502E08C1F8CFE5E0F44E7EDEEEE33137F6975D0CDAF66FE3C3EAEEE17E77E24F0306F428BDF123E0140B5FBB901D0BAFE60FA1730AE';
wwv_flow_imp.g_varchar2_table(901) := '955A24FF656D96E3123F1DEE03A3DFF8D0CC9F7B05111800F00A0EC2B77C099D305065140808B540AA8CA5B08C8C84C40D28C5C02FA51310C93F550373248071010C4B5A2700154DDB08E3F9A54D5FCDD7D2F4DF390239EFCCD93EBEB2BACF95257E6D89';
wwv_flow_imp.g_varchar2_table(902) := '5FCE6501020406F231D905D855CDB822A8AA774F847E01DC92E2698EBCE63EDFF2605E70DDAB638C50EF228387B5BEB79EFCAFA93C0FDD8B0248BDB6DAC0B8475802004EF2831D7327FF9FA20BF04318F9E84B1D80B5F2AF763FB70700BC61E72D1B5F0D';
wwv_flow_imp.g_varchar2_table(903) := 'CB00907B33231DFD36B25F4AF72AE1A7B29F5AFF64FDD3CC67D9EFE7BA5FFB6B1839566BB23C475F3BF8FDC61FA5F97327111800F00E4F0B5D306B359036A279412241104E63E406C436406E045020C8AA7F0180581F6D05A0830000200049444154EC56';
wwv_flow_imp.g_varchar2_table(904) := 'A7BC037A3550C4B46C4B733E1DE440CC5D55EF684440753F7603B48E945C007E150060C5AF35C2759F19DD00544C0602428F20669D272427AF864B27E09E2E81B3CA7786F94B16D26749F06262B41776FAFADFD0397F4ACCF4D18C7DEFC00813A9952751';
wwv_flow_imp.g_varchar2_table(905) := '6B7E25EA03209BACFF60F553D52F57F9B2FA4717E0A74AFE61CB0C10A095BF1801F8BA2C98FD0418FCDC49BDB328F6ACFABBED8FB97F00D8DFC2BF21AB7FADF621F1AB132040A08A3FBA030584B7E45FB6BEFC1CECE39137741ACC4B7DA6080C0078A6C0';
wwv_flow_imp.g_varchar2_table(906) := 'DEFACFEE204055883A02901DE5AA20B502B40500DF007502700BCD001A0DE9A247E73A5F9F6A863A123F2A1FB5AC710B873FCC1FA14016F37B7601B63140490A6F40405C010102DF16F015C1120CFA4BC44493BF35E1A03360E0A42825D2FCDDC63A7FCE';
wwv_flow_imp.g_varchar2_table(907) := '4AEA72F5FB10FC389FE89FBE56DDF5A13FF99227F5B6B3AF31876ED7D6BE55F9EC9AB47C2F414054E546F83BECF8D382B976F9A9E4F763267F00018D044404D4A680B663E0E0D7263E25E91B443F1BC768C73F1D18A3034667C604B291F8FFF8626D7F09';
wwv_flow_imp.g_varchar2_table(908) := 'FCD8DEBFF100962E98ADFCE933E082593A6FFD305ED35D79C9C33ECFF5B2111800F0B2F17E9667DB2FEA871671B520D58EA4DE3F4100669FAD07A04D80E200A47850AF06963640008124397525A50BAB0381B31141D90BD3733CB704E24B1A001780C091';
wwv_flow_imp.g_varchar2_table(909) := '24880A484229FB9EF3B2EE149D0155435C99D305B248731B2858F404BC85BA770D3672DDBD077ACBCD8F23DF3D364B3FEEAF5F77829EBF86075FD98377B0914601002E996A756F334F12B35F8CFE6CF39BBB626A27041035511F6FFB435C49FBF9EB6EFF';
wwv_flow_imp.g_varchar2_table(910) := 'C2013810009DDD1F643F7EA634E3A73607A64CE061C86659F3FE00001A5DA573A3447E48FE53E5BFB4FECDFCA7F930EC80D9AAECBAE36FFC101E603F2B06045C77D6BFC77B0D0078E347F5BE3DF2B56AA28740080691898C0B212E644508349BE0D80A90';
wwv_flow_imp.g_varchar2_table(911) := '6320BA032B19504241EE8C2640D0AE82C7D5354DAD571070140F42523F6A04604C7077F79BAD0E6275CA7402B411602428199E4841B0A485CB6B8063835A91BAAE5BC0716E9F4967E6434F4AFA7E925E9345971AEFF2197E091BDCFB14D73DFF83F7DAEF';
wwv_flow_imp.g_varchar2_table(912) := '7062CAB3B4F195F86DFDB115FCD069DA3B514AF441C4FB3B351494F0BBF56FBAFE69B2D4EDFDD6EFBFBB93B67F3AFF05F12FFEA6C47CE89B915AFEE4DD20E84CFC36EB972113123F047E54F967FB9FC93F6EABF54F611FCCFAED8B64C11E7F6913865E1A';
wwv_flow_imp.g_varchar2_table(913) := '761EDF57FD0F0078E349E0092F7F00C01382F71A1E7A5FFBD919E40003501CCB71C00602D405F8CE94004B0BA0923FD403C505D06A60AD08A6EAA06453D11908E5BA3614A2704D5D71B02D901B0265038C51808B0741F407BFF724EF0227F83D0140110B';
wwv_flow_imp.g_varchar2_table(914) := 'B916C8DF97952A39020200FA7D09E71477605B9B72F7BC13DF810310383B419E080482D5FF98FFC4BFB8F8981D043CF8E7EFBFC3931EEE6DFF8DC4B724FB92ED65652FBD7E5A23A30B45E96456FEE9DEC76ABF6FC35C890098E76D89FE98BEBFC60252F5';
wwv_flow_imp.g_varchar2_table(915) := 'D3395EDD2EFB3C61DA8528C85A39C57DE4CB904095CA7EC95F59937E76017EFB429DFF56F94B60C00E8154FDD6553F1260E9EA27905BABB03C306795FF0080C77CA2DED77D0700BC83E3F95017A03B01EA02340888AA051732EF04C844C8750276F540EC';
wwv_flow_imp.g_varchar2_table(916) := '3F63859032A8251DCC0A49F2C1F211606B3649827A51B4F5458B345AF4E004FC695E000908DC1B60F9B766FEF736C12A10E46241F97D7607683624DD80D20F908E8054F49C4CA8552AAA0C6EE3821D009C25C3BA003F1208F4317E30C5AE6734AFEE1707';
wwv_flow_imp.g_varchar2_table(917) := '01FE0F57FDE9C7B5FF77E2D919DEF0982CB3FDE29048B08709DF541151E5B74FC292DC95F069A0A456BF9CFCD262D994FAE0B4A86E18257CB5E6C78A3F80B23E2BB2075EF7FA8F953F365DC29429AA7756FDBF2BC9E37720F361CEEF5D8024FB59E22F17';
wwv_flow_imp.g_varchar2_table(918) := '3FE95FD02150BBFE09A4538C2B36602800859774F86F2F10DEC1A570DEC223233000E091017BCB77C7075E76C25A13944E80044BB4E6470F81BF71FDAF123DB900EC0AACA30118A18023D06D5288A15827C0B6041209A45E003B01EC06C85A58B34CDCB6';
wwv_flow_imp.g_varchar2_table(919) := '4D30047F3436C0F74B0780E30048100310E8FB6CBF4A41B0D40491F8DB81D045858E602001CB4E2234E9E10BD7DCC3CADEE9F97496AD4FF3EE7D197BDD0FBC0A006C2FFA51B5FE853B9F74FA2F7F844CA2B709A49DFCBBC58F84DFCE7CEED0A7A4DED6C9';
wwv_flow_imp.g_varchar2_table(920) := '7E2E96C46F267E30FF95F857ED7FE8F56BE515230329F939D14F824C7AA7D1F6971F03497E6CF763C62F829F13FD94F8010AD4E657E26FE12BE803E0DCB5739563AE4B5B2F87CED4B63A3A1D80B77C557FDA6B1F00F0B4F8BDB94747FB5FC577AF09E2E2';
wwv_flow_imp.g_varchar2_table(921) := '9644A9B8C8554760371472E96024FB140C3A0103AEA5EE4642A5654F3321E906109A40B48672C225E653E43DC80CA3552F425F03038D0E7471047F40DE02F25137911491A6AC9A120090BF80AB0B624C616301990E110CE842EB1D994725C0E7389B9E83';
wwv_flow_imp.g_varchar2_table(922) := '03E8AFF390F8D75F3CE6FD8BD057C9DF5AFD3A6F72658F2DFE4CD855C54BC80773FCEFBEE3EDDF3FA5490F7EC7AA7E33F6F1CE00460550EE134F405C197D3EA427502CFF8C078C7C20BC84FDFE20FBF57A5F27FF5F08027EF915423F4EF2D35AABDFB6A8';
wwv_flow_imp.g_varchar2_table(923) := '0F37066C84E5E76309FD98B4EFDE81D94FB149FECFF1A17B3B7F7300C0DB3956DFE895FA18804E68A51300E1205DF07255302F84EE2A28CD8090096E0000D96010055B3448D2A89444E58CD639019899DAF0979D00750404065071B7C7001CFF1A1044DB';
wwv_flow_imp.g_varchar2_table(924) := '333B02E60DE000A0C856A5918E6A6AE90A38105037802D56F1042E11076BD6CA2ABA3406BEF6A83DD08EBFAA5B9F48EFEB5EC0573ECC9EECD22BE4F847F7DCF6F8A123D12E873A57B2CDCF763F00E5B1D247A287484FDE120888B8970E7EE9CC2797CBB6';
wwv_flow_imp.g_varchar2_table(925) := 'F64D421F475522B0FA3EBF38339AF157E28C845F0957C9DF2AFF45D61755FF7F62C6FF6BDCDEDD090494B5AF19FFE89CED8A9F63AB0D88B6DCB3566C115C5F63BD74160C00F8BACFC77B79D40080F772241FF53E8E2040EC65DD3A49B00D4DBC0380CA5F';
wwv_flow_imp.g_varchar2_table(926) := '92C1520B2CD540F202209402209017565D6435122815C11508A0728194302E663D268099CD6A3A04E3218E05080294E0A12E4847356D1038835A23821A15588B957FAB008099A9D40AA175020EE2420404CBE139DB12A81AF2C281BC27E32B46F79E0257';
wwv_flow_imp.g_varchar2_table(927) := '64F42BEE72788AE363B6176A77D0B7EAFAD4BC9F40A52BEB75956FA9FE8BCC87167F54ECE83621E1878A5F018034EE5981407503CAEE7AE3ABD42E3FDAFC94B028026D0FD3C1F0978E3F006A54FE91FC45FA6BC21F847D50F1FFE7D7A8FABFDCFD622000';
wwv_flow_imp.g_varchar2_table(928) := 'C23EDDFE5F3C2ED4F2F7C46F9B2BAD61D1C1DE794123F1FBA80BE487B9F300800F73A8D737DA5A0134122AD6F5D14B006D57390A020464A59F624102015212F475C15E992AE6F40E0228CED25A015470CBA45029632D65376080CE408F04A26D9F7C00B6';
wwv_flow_imp.g_varchar2_table(929) := 'FF35439562A0EC55B53E55B6A954636B8E00E7AC24084625E66380D2143801004B47C035022CF97B7BF698DFF99B0B60A15729AF28BACFCEF10BD9FEF4D756A5E34F1DEF459856FFB4DC63A9F2F183126B367FF855E23DDCDB3F56FF5DF967AB9EE23D05';
wwv_flow_imp.g_varchar2_table(930) := '00D2925732BD96F8F97B77ED9376BF6FAD54C54F23ADE2CC0082D2DF82DE0A9CF3A313E592BE91FCDDD1CF95FD2CE9FFF6258100C0C049F2DF67FD3C070574770E0A5FE219D7EF835EE1E66D5F13810100D744E99DDEA74180AEE95A13E4CA60D9A5622C';
wwv_flow_imp.g_varchar2_table(931) := '105A01D12615F33FE481D10140D29766409B07B5B9CA72A13DCC575B2BA06484A920A811C15A353630705541F103202A247194B6192E00B055FF3506B8B203B0AC0D6EC242BBA010BA1766C673E247B033FCF7B96D810343092B60603CAE9E0BD8097D0D';
wwv_flow_imp.g_varchar2_table(932) := '10D801004BF7FDA10E2A8513BACA3FAAF5F5CC5FA3A84F6CFF434A37DAFEB8E51747488B731F8140B5F7D9017020D06D7FF10148F0B3CE142CAEB51E4B1CF38955BEEDF3EF091F7C1439F97DB9FB23AB7FAEF9E579D66B7E98F723F1EFDFD77E3FCF4D11';
wwv_flow_imp.g_varchar2_table(933) := '575DD16F17B15207E26B0EFB3BBDA4CDDB7A640406003C3260EFEEEE073399D55AD80D85A20B50AA81D505F8ABC880EA0AE42D8D83BAE54A7D804D27C089569FA519A0AE4089BE98D950568FAA223522686E0098D02D08D442429CF93B07802441E80B68';
wwv_flow_imp.g_varchar2_table(934) := '53C0DBFF3D73F5ED80850CA8EA5F2D596E06F886C0A56D019FD11687BC0AFF2EFD0F9D82FC45D5DCC753F2DA8C7048FE8CABFEE289388FCAF77AA8DD67A9EAD5C031D742B4F81B0874C56F737FE9E89F2AF869DD4F5A13CD03F031401000F7B9BF4080C6';
wwv_flow_imp.g_varchar2_table(935) := '512B20A57EBF3BF5C51B54956FACFE3CF694F0F5FDFE26FC45F52F819F2F90F6656B3FDBFE24FDF5EDCAFC3FB2FCA591B1ADA0A229D10E903C6633D37F7757E8677D4303009E35BC6FF48F533048AD5AA9ACC93BA0BA005C0D74C1A0D0041009B0855376';
wwv_flow_imp.g_varchar2_table(936) := 'D7B4E60568F5AAB4D9B9DED5ED5890BF92194E56B84C863022C09748830200BBCBA066AA29186492A995FC53931D9D83DA00286D00F20BF6F9BF6D04B4E7C0514D503BD9020267E0C03B05715517B18CD7F9F291597C08C88BF0B3EC21D6F7E18CDC57C2';
wwv_flow_imp.g_varchar2_table(937) := 'D4DE3FD1E20757534E8F3DA1E939391E9489BD247BADC52F1D881AFBC8348733FF9ABFB7C08F3A014ECC139744E23E58D5DBD9FF5CF36395AF84BF085549BE97D57F011856FC5AE78BE4EE893F12BCDAFCF97D9E4FD8F387A31FAA7EDD6AAF3FEC7DCFAC';
wwv_flow_imp.g_varchar2_table(938) := '7D63355016C0317E8ABFF750E5BF8342C7720302DEE875F7062F7B00C00D827EEBA73C2B10CF3AC16ADFB6A5306D84930F8051407A08E86B110642D2974AA06483B593EDE4405FC3AAF52BC9B74A66B54883ABFDB00380F85E00206E211E64FA00520AB4';
wwv_flow_imp.g_varchar2_table(939) := '4D0169074047802240120BA2EE802A7E49094B31B0F7AED7F540FFF77D4DCB81C2C17FA0D6C8EE1919A843509D8287895F7E6CE3615EBDAB558F9E4277009C7EA12D0D257507029DFC95E8650085E42E62DFAECF1F3FBB390FB4FAD5F277C11F98F82420';
wwv_flow_imp.g_varchar2_table(940) := '2C02696B00B8B4AF40809CFDB026D852BF5A47CD35BF1A2DA0ED2F763F80586BF727907425BF3FB4DAA739BFDAFD4CFC69E8235D7FD7F7DF14FF2E28FBE5160B65AC775059737F55FFDB85A4C72DB7BEC2CCF3BF95080C00782B47EA1BBDCEABBAC35FAC';
wwv_flow_imp.g_varchar2_table(941) := 'BA2B0D760807B94E803801320712200028E855AB1504DCDD7D4FC960D70AD80559E2DF1A0C6805CC14E1E4329815A9DAE118056075B085823AB94BFD6FD34C2F8121A900AE6DD7742C943C70B1AFFB779ACD9694303B03FBEAA04B0F6B754B7FB7C180AF';
wwv_flow_imp.g_varchar2_table(942) := '953DC01FF8B28E010EFA030F1C6CAF146BAC62DCCB1EB5C8A4C7E6F8D60D28F63ED7F7F2E713B95ECDF363D4D30998B2BD36E7AFAA9FE3804CFEE6E4B7F202A40BC0353E6E09EC9AFFA9DE57CF81755757F2C3C70B014BD39E049031D36F15BFD4EE8F0A';
wwv_flow_imp.g_varchar2_table(943) := '9F6A7E92F40D39DF68F5C72DDAFD48F6F57B55F8B4AEAE6ABFB828BBB08FA94FBAFCF4CE271900F08DAE8A1FF7CF0C00F860C7FE41006077285257B1B42916145A01A58C860B6B68AAEF80A0FD057AF7BA67B3EA10882828D0E0C4C156783BAE0F622C00';
wwv_flow_imp.g_varchar2_table(944) := 'AB61D4AEBE32988955B2C2F21A286320B4F45D4C0812AAFE3B3DDEA580010C5489C5E31D18E4E3774961FF59CFAF19B21308375121DF22703DF77DCD50A383C3A840E7F5E9015F597DCB71562760D1E57702DF0A0234D3AF6ADF9CF87C7DEFD0CAB70E0F';
wwv_flow_imp.g_varchar2_table(945) := '7820ADEED746526DE1DB800260C08D7FDCF4A74649461E0C725FDD870C7F780BB43706564BBFA47C6EB0FAA13489EA1E337DE9F74755DF091FE4BD4EFC58E7230008A0202060C95E0E8047453F7692CC8BE2AC4B84D77AFC6F3A001FEC62FE0DDEEE0080';
wwv_flow_imp.g_varchar2_table(946) := '6F10C4B7F627EE05019700C06222D415548A05A51D70DCCA2255A6403DFB77E32098AB1000E4F7DA2C80135BB3B6F17D8BB458274072C204014E5FCBCD80F81208907AA0A908164070812125F4121CEA6E02E6F6F70080EC38704D9032C50755C11A3180';
wwv_flow_imp.g_varchar2_table(947) := '35BE2B0B2EE0E2CC96D8DAFF2E345464C2BD357C5FF2E749DBC97F5DCF03B862E5BF55FB8B4CAF889A7BC56FF3FC32E7916DF462CCE3C43E1E5F178CAA6E424B574328A8BB02C9DEDF3A04FAB9FE8D2E7DC08BED8C09E0888CAA753EECF1AF2D7E247D6B';
wwv_flow_imp.g_varchar2_table(948) := 'ED4BBFBF34FD5BE2F7B75CEB331E40808883767F7B4E9C9D0B67A0EF41619F03A1F7AD5D99E6F5BE74040600BC74C4DFE0F37985D8F2C1677A010D065A575DAB83300FCAF1000180BBAC813808001036ACEEBCB63B0CAA9A94625C25AB7D1C4010502242';
wwv_flow_imp.g_varchar2_table(949) := '4CF01A110824D4AD890D21C1D254A57EDF800095E2DA25C8967F25F926143AA95076B075BF3322E185D5C24357C012FE0E02CA93EE02DA6BF5C5DEC9F7963F12253A2BBDAED7DB18EDCED704BE4EC26B2277DDFE54F0A3804F733FD4E96907BF568BEC71';
wwv_flow_imp.g_varchar2_table(950) := '42256FBE266C1120F96BECA0E4AE7F6B8E8255FBDD2BE2C8C867FE52F1DBC97C5DD5679BBF1CFB98F8C9F017D16F19036C7E1371EC9D3F52825267FE12978EF1A50EC01BBCBECC4BBE5D040600DC2EF66FE699D716311BED596DC858689DA9AA23E02040';
wwv_flow_imp.g_varchar2_table(951) := '84C0720EB4849F4020B70790FC13001028EC9E026A17A325DCF6C295B054B9DA764027431AB52AA1D72A1D67E939536F3E01DAEBDC30209840A5C8DFF3FBF226A0529B4C85CA9C88D564ED766F0E84D509D85ABFCE0FA8CD01890A999E8018E13D02E1A9';
wwv_flow_imp.g_varchar2_table(952) := '554441FCBC89F0DA3A25FFFDDEA4CF4D0CD36740DBBF4D9E24D5AB197D184081B1BF25780AF848C8C701418D03B4976F424145D4D39601CFBF36B842B674429FAC795DC12FB72CD4F24FD7BC2F1CFF60854FCE7DC9E227A31F099DAE7D66E893223E0106';
wwv_flow_imp.g_varchar2_table(953) := 'B8E30F967FAFF66974A06E5011FBBCC3E3DAFD6628D5C7B52F15678A7E6FE642322FF4D5456000C0AB3B24AFEC051DD6C48221B86AC1AD40C0DC0529F853AA6B651B6C16C24CFEAAFC0100D42550274023052492B28025490C4908D52966D26A5FB75E80';
wwv_flow_imp.g_varchar2_table(954) := '52E072EBC8A652A4FADECD2958008427DE1A2DA89D2F39E2D5B1AD66BD5E096E5C81363E5AABC35DF1CD45853C41747BF8F256C001061CD6FA58E157D5BF91FECA9E57823DE6F0982D7823F7D95C5FEB7A05041C00C891CFC87B3DAFB7EE834DBD4F937A';
wwv_flow_imp.g_varchar2_table(955) := 'BEB95253680454891E07AECD7A58F59B714FB5FD73A58FAB794AFC36D7AF242F239F0B00000A93E00E2C26524AFE7A950ED45C29F2A47B3300E0955D1FDFF8CB1900F0C60FE04BBCFCE35EF1565A9AB46BB6648D80251F815E0354ABBF497FAAFE0102D0';
wwv_flow_imp.g_varchar2_table(956) := '09A8F1400A0AB5B5702513538A43BB38D6CFA41580042520D0AD6C03049EFC1C34D818012D71A51B750910F1EC0CA803209221DBF9B17A0853A2CB5FB1A27898FD9ABE3BC60B4D385CDBFFEA64D8BAA09BBF04427B60FE0FC258B7F8B33FB054DBE7EDFF';
wwv_flow_imp.g_varchar2_table(957) := '12F231B25FC4C949794EF873E73E30F35BC21736BC4DF45CAB7F7495568CD6CA7CD4E56D795ECEF193C8A70A9FCE7C881D74FAE32B7EC66E7FBBF6F95E3F76F9B5CED7ADFF22FBA9CA57F56F3AFFD2FC6FA63FB804BE1ABA6835D88EE643C9FDA17F7F89';
wwv_flow_imp.g_varchar2_table(958) := '6BC13CC7FB8AC00080F7753C5FF6DD50B006ED65AD8AF5CC3656AF300E808CB06B01F46A60CFFE351E6800600242B4747527B8A513101567B5A355997227BD0468B6197624402313B64A1D9BE5CA88EC0E54708D13004742590433A9D72EB714090904C8';
wwv_flow_imp.g_varchar2_table(959) := '11000F40002092907C0C98F00F1B019FEEFE3A69FDB3E1DD224105021A20F409D124BFEA045427C793FFA5B9FF0AA8C001507C57B67E3BF799F99311FFA213D0BC0E7102B80920F220E7FBDE6D8A24DE2249ADC9BF277C082FC52A1FBF98E865D4F3576E';
wwv_flow_imp.g_varchar2_table(960) := '611CE57B5DC847D5FB2AE8C3310095FD92E8471D7F9FFD0708C0E383FC8755420180EA515090E14C7FE3653FC4F36C1F390203003EF2D1FFDAF77EA14D5920808C6BB0BFB91950AB82B260951E7B0B068904280D81850868A22EA5054F63A19A352B7914';
wwv_flow_imp.g_varchar2_table(961) := '8B5C95E9DA19583B0548621821346068129CEDC319101049B05AF42418D67A211505A5E8B66C04444228731725070289A5EA1709517A00A8EC5D257027FB250FE0B026D669061575039C12F7593A00D781804B223FC76E406BF997F2A3BA01F28530911F';
wwv_flow_imp.g_varchar2_table(962) := '31FC17CFA1ADAA8FE49EC76049F4FC3967FA47831E67F7A3E217DBBFE57B4BD18FADFBA8FAC105D8047ECAB94F1D82BBBB5FFF680D8096F4C54A616E78B82954A1E606CFCB14C3BDB0BEF6733A8F9B083C10810100738A3C2A028BD8CC36BB54B5A6C259';
wwv_flow_imp.g_varchar2_table(963) := '2B8279CB0BBDBA01FB9600C484B402B84A07EBF75276936890C601E205C4CFA51740F2D9DA2590FA9C7508726E7D5FC70063801E83F88C1D9536DC08B72E805B138B1C583A046B4B383A003D4E50DB5FA246EDF1BE93FD648BEC07304613E80CE83FA3FE';
wwv_flow_imp.g_varchar2_table(964) := 'D92C4763911E03AC12BF353E39F0018C2750BC0BCAFF723DAF649C77F19EDCFD972DF4A7FA5EC7AF8579CC0892B2BCF18EB026C9D6BD2578D9F04A9BBF2D7965CD6BE4BE226442D4272B74DBF3978E7FEDFD6BFFDF6FCB5A5A7BFE21FAD30041B2D31A2B';
wwv_flow_imp.g_varchar2_table(965) := '54F5BF8F6524C7B0CA322C9FC7E3F8ED511FD7B9F344E0DE080C009813E45111B80800F857941E7131773E00C5589804D0CA6FDD80032060C50F31A136123A2806D65AD9EAEBEEC433CD9EB58FEE4A73909FDD3A05363210A9B05BD10600B466E89A039B';
wwv_flow_imp.g_varchar2_table(966) := '5220D4007DDE0F2D8166F877F247879B557F31C33BA17772E76BC884B2BE9EBDE5BFFC6C2DFF45CE976FAE418156037B34B0720476BE000180EFE6DB6A5EC6DBC040BBFBAD823E2DC98BF5BEEE7684400FD4F934C7D70CBF6E29DC93463DA9E0B756F77B';
wwv_flow_imp.g_varchar2_table(967) := 'A24782DFBF40DA8B6E4DDE9AC67F7DBFFC9BDAFC24FBE5BFB99954EB3D3887A38EDA03006092FFA32E4D73E7AF88C00080AF08DA477EC80200ACD4E44813A1898B7DDC6C202000C17EF15777405C0149B60A10F8ADFB075457805D03070A452CB37D7375';
wwv_flow_imp.g_varchar2_table(968) := '07BA4BE0CA7362AFAF5AF41A0B78357CDC7FB00A7D17104A75C1952320B67FB3FB59E91BB1D02B7DC41BF741B895F0F75B07033659D65CA6781AEB660492BE8BFE345760F500D0D8C099F940141A05684F5F7BF9FE7B8C5936C11E53F4EBFB5A99EC6E7C';
wwv_flow_imp.g_varchar2_table(969) := '24ED6176FFE50E737C39F31DDBF9090228DDEB12BE29E893AB7DAEE6674A7F9BD63F889C68E32FDF6BC4A37FB3C42FEF8083EF83B766BCEA3F11F099E4FF91AFB22FF7DE0700BC5CACDFC5331D00C0C9BBD25CD9134229B3994E7C247F09BE685CB06E10';
wwv_flow_imp.g_varchar2_table(970) := 'A042C42681AC5F5D2A982303AA07BAD1508F0D8264D67BE8BE732EF9D9040534A359E56BC50B582BE1DD4DA7E7EEED458004EFD5BD66FCED5C281E4155BACBFCFE9AA4CF646DA0007841BFD7C161A2F67FE3860376E625A96C64CEFA1BFDD8C51B60F10C';
wwv_flow_imp.g_varchar2_table(971) := '703121EDE1F3654417C8C4845CBCA7DC1DC919D1CB83325F8BF32C6C7D56F63DCF67F2672B1F3BFCDDDE973B1F54FC90F8FD4BDAFDDEF2DF937E818DD2799054709B4795EF435905738B83D2D187F9BF7D6E3CD94FE27F1797C937F3260600BC9943F53A';
wwv_flow_imp.g_varchar2_table(972) := '5EE8D92A928F36AB2E95588B64576513ABDB45CEB52B43AF14BD5BD023820600ED2B7097AB8290143E7A096447C076CF9B3B2019DA5D87DE470272B7EBD9771302D62ADCBD0870C1B764BF54F86CEBD7BCBEFF8EAF8851BB8E07DE9E8B49BBDA2D6CBBA0';
wwv_flow_imp.g_varchar2_table(973) := 'D85FEF577D01FB3D723F2B7F3EE6CCF807FF6404428D0A22419FB5AF4DA0A747262B2070CD8854EDAB15D2DEE1CFD889DC970CFA9EE5EF895F097FBFDDDBFB9EFC43B8072B7DADE12F995F8C0ABAEA5FE59ABBA5BF7840F8FA668D2A48DCDC489BFEF939';
wwv_flow_imp.g_varchar2_table(974) := '4BF603005EC775EEA3BC8A01001FE5487FC3F779CD3EB2EF6F2F17FD455AF672FBD8B5DD050490C40D0028E95338C83D04BEFFEE53DD37ED61B573CEB1007805AD431FDD00AD18B6A25D0301B4A8550D77CF5614BB4C65F1EF36972F40E0EA8204053D4A';
wwv_flow_imp.g_varchar2_table(975) := 'D08CDFFBC0676D7E5B4DF4845F49794FFC56F5FB7D3812E8840F2050095B95BF77110E1D85A61E143C8899BDE928F6E9D6516830728C0CEEBFAEF621F976CBFFD25C3F2B7E7500B6B97E6BF84BC9CF927F69F67324C099FF9FD1CECF4D0DF10E44F0ECA4';
wwv_flow_imp.g_varchar2_table(976) := '5E3A0DB5B2D9F75D351BF8CE4E7519D60FE524FF6F78919A3F75550406005C15A6B9D359042E5DD36C02BDE803F84EB73605040E960D02CAB9B6A10BD8E3B50550DB0226184430A04EC06A28C40E008180C468962D0229D1B92B9D8B0DA56680EBE3AFB3';
wwv_flow_imp.g_varchar2_table(977) := '74AFBCBB6A3E49CA4BE97CACD67D45AF2B7C31F4B7F9BDFDAD6AFAFBCC7F4BE672F7C1AFFB6F3A18E826828D17FC809E7E14FC4C1059C12AFA45F9E6E4DF33F7B780CFC2EAD79C9FBBFB67153F087BB4EAD5F794F1DD5BFF5DFD53C2979D8070ED130150';
wwv_flow_imp.g_varchar2_table(978) := '33FFA36C2F85881635C863A52FB5C67D1DF30C38DBE19A8BCC44E0C5233000E0C543FE319F70BFD0E9E7AE2057CD3D01840504A4A010DC015D2B60D10F1010D84601D501C8C7A33B203E40AD281E2C694F74044A6E986D74B5E3EB96F3746B9FAF09B666';
wwv_flow_imp.g_varchar2_table(979) := '23ADCD4F45BE6576CF16BD4AF3AED2AD0BA18D7E25F4CEDEA5F2A735BFFADB9CFDFBEF353A584104A1C892FCF98365B24AFDFC9D9CF5AA9AB779BEFF2EEF9E425256F5B37D9EDAFC46FAF37D7DEDEFF79C1F623B9AF5AB1BA01140750098E85BCD4F2300';
wwv_flow_imp.g_varchar2_table(980) := 'B3EE8DD6FF1F6D050C41A1DEDFAFB77DA283D1244DEC605E51F07FCC0BC1BCEB5715810100AFEA707CCC17B3B43EE34ADA39326BDC260A22692F6300330DAAF9FF420A54FB1F2D7FB5FE6531ECCA824D068C8E436F040440D8658617D5C0ECFED383C057';
wwv_flow_imp.g_varchar2_table(981) := 'EAEAF79AA5B747C1BE877F9A908D88B78008E300B4AB9F75090EA044C9BC07F70BA02070380500DB29B9721494EC90EEA0D4077BDD4AF096E44BBCC7447D20CD0BC5BE7458F4E46FEB7C95F8B5E6572B7A22FC35107010B08F0042D94FF3FFF81EB6BD90';
wwv_flow_imp.g_varchar2_table(982) := 'FED5FC5F2A8199FC0FC24B16902DCB4FD2FF98D7AFB7FCAE0700BCE5A3F7865EFB35BC817E3B9C270B08708F5C223FB2916DA740C809435BBE014255FAA52980514069D29B0A9DD4040502A461DF9A01E762418B0951F90F6CC441F31A105058F6F0AD55';
wwv_flow_imp.g_varchar2_table(983) := 'DF043D070D2E4DDC9539A7F7CDFA37E24535F0B799BFC87F9ACD681C000C7018DE1CCEB05E51B44A7777D7DB34F897042F019F4CF82ED54B825DC9F4628F3FBFFEDAD7FC40D2D36E7F92F66C0B407C80DAE5F771400080E8181008243990A63D6ED5AC19';
wwv_flow_imp.g_varchar2_table(984) := '7F55F38FCCEE33CF7F4317A70FFC5207007CE083FF526F7D4FFEFBB534D2CE3226D60B230090F7BC560551B55BA297581093BFB802AB968011FE4A914EC43F54FC090C6C1DF0B81A78D409C8B541F2036048248BDCCD778052C360BDF7BF61D4D16D7DFD';
wwv_flow_imp.g_varchar2_table(985) := '7C24E9F9CCBE8D7CD659FE3ADBF7A45EC95DA385B3B141C6FD8C8CD8D2820500E803814A9F2E7BEC0248B4A712BFABF65183FF4CD027923DD4FC98F06DFEEF044037EE51D22E1BDFF45990A56F4BFC96DA1F67FD4AFAD2FC9771321ECF3500000FD84944';
wwv_flow_imp.g_varchar2_table(986) := '4154135E431B312D80C76597EAA43565888D2B3120E0A5AE30F33C5F1B8101005F1BB979DC551178686D10BDE3BDF6C7CFE209B4A850E80298A2A0E485A514B854F46D44E3AD7DEF227882C7F70D044A4258B6B6BB4E80FDDE95046590539D01BA147A62';
wwv_flow_imp.g_varchar2_table(987) := '1748A86A7F1B15000FAC24BDD311C0C5567F5109ABAAF75181BA0F15E0854BD0E86B016A9B4F3D98EE9ADFFBF76CE75BA5AF3DFEB5BD4F86BF2A7ED3E557D5DF408073F945E14F8FE7CA5E0207FCAE39030203EA18E0166A7D52FAF3D6BF46102BB1EFEC';
wwv_flow_imp.g_varchar2_table(988) := '443FE345CE5ADF559784B9D32B8AC00080577430DEE34B790A001008580981BBDDB0B4E54D67DEEC88DDA3FEB319CE64E55E3F9FFBD80B04B84D6D48070344988600ED882522E4F6C450438455B15B149F7308AC3B60AB7BDE21C0B6E1B60D70E9E76D45';
wwv_flow_imp.g_varchar2_table(989) := 'D0BB0082583E0228D8A5EC96491F3F14C94D643F59ECCADBDE847B5AAF9FD2BD5F50D5E75A9F25FCDD8C6737E85142EF3180838606009AD92F2E7FA91668208100E154D54FC64CF1DAE8E9504CFE0B1FCA0100EFF16AF5F1DED300808F77CC5FFC1D5F33';
wwv_flow_imp.g_varchar2_table(990) := 'FF3F90CB368BE10308706DF920E92D491FDAF46AC94B71AE4C6AE41A68E6356908B401844CF6ACFC575F7B8E0E5C3B80A0409C010701D0B8375E80C6066795BFC603352AB0646FDB020B739FBFDF81819B182D1D80D20B521A53DBBFD35A1F8FB61616C3';
wwv_flow_imp.g_varchar2_table(991) := '9F047E92F724DAC32E40B6CF65D87342EAF3167DB6EAFF5AE6F745C4B3F93F00C09AF0A511E0B7F20A8023637B07E067818FB8ED4A1F20C3EFDFEDFFAD39B574A5FC4374694B7246002F7EA999277C640406003C326073F7AF8FC08147758158A55F2F94';
wwv_flow_imp.g_varchar2_table(992) := '34EAECC445555AF3E51E275541DEA2EAEEFB5DF318018822FD191828C1A048F84922346961DADA7A57607517046F2001C00E04C4175880C0CA11C82E88CDED0FD5FF26F27364F7F738A0887F3E5FE9B4C603CB8A9F3F9D91FEBCFD2FF63EA48FD7C4BF48';
wwv_flow_imp.g_varchar2_table(993) := 'F8AAF2BF44D6A3231FD6F0BA8DDF891F091DEB81725374A11E7C5FAF832B7CDA3CE8C7E875B6B84F838523EBFF8CAFF2D0276012FF43119A7F7F2D111800F05A8EC4BC8E8A805F740F20E05E25C14D5990890EC4BBF5DF442C1450D0AAA17712B2CD2F6E';
wwv_flow_imp.g_varchar2_table(994) := '80848294FCA5254037C20405EC162C5D0026FE220A1A01D0B9004D0CD46B6DA2A04040DD9EAC0122F19B614F89041900C01FD0BF18E1CF2B7FA9193635A3DBFFDA89EFDDFDB2E8CD846B8E7D4AD6D5F237721E13FCEF7FFC558E7CAB9ADF3A2A50858EF6';
wwv_flow_imp.g_varchar2_table(995) := 'FCAAB887354223ED692451FA022B5741BBFD020B202A5E90ED3DF94C5EAAF6E7E33B11788B111800F0168FDA077DCDB5E5A616B6EB05F48A7BE9CB2B4C0200CC7FF783011B0FA41191C87F221C1A00C03A624B082F5C01EA082419B078006B2740C4C076';
wwv_flow_imp.g_varchar2_table(996) := 'CF5BFD069A380824B32AF89D10FD4C37A0B3BC1ED7D1E80AD54600C5C5B40E8044FB644D7C29A9561216839E9D806ADB4BCBDFD6F522F947D59F3BF8AB904FAFE34910C8AA76CEE85B53C092F7AEBB6F8A3C0779DE33A0A0AEC72357FE3EE8C771DEF63B';
wwv_flow_imp.g_varchar2_table(997) := '88C000807770103FD25BD066405562B6B5E6ADD7FA3E2EE60207271D81653C604E8559C59F8D01A82498C99FD5BF24858B3360224295FCB3FDCF9541BBBD58F96B2F5FE301AFDE2BD16FC0A0DEDFF6868D4FB1D8195FD8FB0F1323FD974C7F4B8C67EC7F';
wwv_flow_imp.g_varchar2_table(998) := '54D5ACCC9795BFD6F2C74E3FD9F772ECB30E4080819CFF93A10FD31FE31018390F15BB6F20F41AE99EBB9B7F120F229F41A2454E6E8CF7380A7E1FE95232EF35AE0BFFFB7FFD9FC1BB732ABCC908080CEC2FFEA1362DD6EF900ACF46030B69502080B3FE';
wwv_flow_imp.g_varchar2_table(999) := 'D616200F401D0011022BF9838498495FB7C5037052A033FFF9BA8CD457AB8227C97D69E63B28386DF3234A4D06E41FACE0ADB3FFCC87EA00D40AE09E7451F17B1BDDC97758FB7337BF1D00D0C4C7EC7B8BA54F163FFE5EEFE6AFEDFA559B7FD5DF8DF773';
wwv_flow_imp.g_varchar2_table(1000) := 'F9D276463A7D931F8279D1138127446000C01382370FBD5104CE588255B2E29B7B51AD91DE05028A5828AE806D08683B60910D8EF1C0DFD755C0E80464E7401B080BF9CFAB7F27FA6D337F4BF41A01D4DEFE81BD2F11406D0A548A57B677E99A1A21AC47';
wwv_flow_imp.g_varchar2_table(1001) := '6D61592CB16B0220257EABC5BE0101CDD1A5E56F1A0005006A258F223DD5053027BFDA106896BE00458B0BADDAFC788DF79D1097857A2A0EF73FFC4627F93CED44E0F9233000E0F9633CCFF00D23F0D04AE1AE2878B8BFE53B08EE2047A6D89013056DB3';
wwv_flow_imp.g_varchar2_table(1002) := '40EB83AE14A879BF54094518740260B5FC17F6FF3A0AC8A7F72D800D0088B4B7EFEB77F7A3DF50710414EFBD4552E392BD47B2ADFF69F79F3DF1730D806EC31F0975CE0558937932FCB992D7863E62FD6FAB7E6AFB0B58888BB0CCFAD905E07BF6AE8862';
wwv_flow_imp.g_varchar2_table(1003) := 'EBA7DF430CFD87FEFD1B9ECAF3A72602378FC000809B1F8279018F89C0A96430FF8027FBEA001891ED52221010B8340E88397E56F58B4EC02A08A4AA3FC002DAFE5DF12F02405BC2770050DF1B0870D5BEC3686369F5AF0CFFE6489C0D445CEE77894A17';
wwv_flow_imp.g_varchar2_table(1004) := 'C5AECE281E4011E764DFEBD5B8B3E9F97D690290BD2F52E022CAB3C9FEF23E5ADB3B63E96B568FE3BD1D60CBE0FB0649E1A24B33A24B6179CC093AF79D08BCA1080C007843076B5EAAB5F64F7AFC9EF4977FDEC95DDB85FE5227A0088227DD00AFF4BDE5';
wwv_flow_imp.g_varchar2_table(1005) := '8FB542B2F90906F0F7B5D6C78ABF58FDE5E5630A7FDD9958C57C96D27EE5F3ADCB7DC7BEF7BDC488F38E40BAFB2DE08AAD7FE6DDF8D722057A75BE91F4565E8076F929EE63223F2EEAE32D7F7518F2693DDFDF43DA5BDED1C9F13E7C969C37391FB489C0';
wwv_flow_imp.g_varchar2_table(1006) := '0789C000800F72A0DFCBDB3CE4FDED17F726FE9320A860F4ED027502040C5C33C0458654E5972051C9FD2AC9F75841F6BFF57C22ED2D2389DEE35737002F796B6C1F2AD5F5176B3A7F4C59BB3ED219F4CD07C02BF2B1C05127A0814114E862EDC364671D';
wwv_flow_imp.g_varchar2_table(1007) := '0FECAA7D452A9415EFBEDAE79D096B002C87D663BA1DF3438B7FC33E0F1148DFCBE768DEC74420AF2CB3053027C25B8AC04300E034275CA8143D19EC004009D837057C6570551B94CCAFCDF391B731DFD7F745E2DBD9F8EB7D8E8A7D8201FB913A26F743';
wwv_flow_imp.g_varchar2_table(1008) := 'F2E7735F778CB7F4577143D40F1D77DF0EE01DB22BA0EF393208B4B0F304040424E223411F29F9D5DE3EFFA01FF79DD77146F83C1D7C5C9886786C06005C77A6CCBDDE47040600BC8FE3F8A1DEC53520E052717816A89E9777E7BC2BF55E17DC57071740';
wwv_flow_imp.g_varchar2_table(1009) := '5092BC5DF557EEDD40809EE58C7056BF3302DFFD49E9BEEAFFBED4B647F1FC596C0870BA275FC9D840967704E24132D639EEEE6F2A7C363A58E7FC46F4B7B77491107A6D557FEDFD3ED4A76BDEEC478AC000808F74B43FC07BBD161C2CA1B830FF7510A0';
wwv_flow_imp.g_varchar2_table(1010) := '8E8092FA0210162F9D6ED79F75182E16E4CB28E0B135693FF890C69F5AD2DE33673F1032B7FBCA3C28C118EF2CDE807ED7E080C442BEF51544E0970F6D805C737A1BAEBAE6EE739F89C0BB8EC00080777D78E7CD3D25029712B8FEE6CE1FA8DF6F4FBA13';
wwv_flow_imp.g_varchar2_table(1011) := 'D22EBD26EF44E03E8FC9DE8FB9EF53A2B23DF62240A07680DDBD35054D756F070D3BA7E3ACBFFF0D5FFEFCA989C0478EC000808F7CF4E7BD5F1581AB76C3CFDAC98F495E4FCADF4F7AF0553178F04EA7EFF54B6198AFE9CC7C8B8AFFC1D73D7798087CE0';
wwv_flow_imp.g_varchar2_table(1012) := '080C00F8C0077FDEFAF34440C96E49CBF78081FAA77AC0B5C8E11524FE08215FEEA5F1832AFF5DA4E779A23F7F75223011B836020300AE8DD4DCEF4347605F2FBC148C070AE1FB258AF38F6ED9F45A2C70715C70F51FF8CAE37B09849CA3828B20E031DB';
wwv_flow_imp.g_varchar2_table(1013) := '8A5FF94AE761138189C01A81010073464C041E88C0356B675764F6C3B39CA7E6E74ED8CF7FB81FDC5AB075C8FB5ECD55A397E77F3BF30C1381771B810100EFF6D0CE1BFB1611389B433F34CF7EE8DFCF5ED7B26EF72D5EF80BFF8DD3A47FBA66671B0B57';
wwv_flow_imp.g_varchar2_table(1014) := '4C300604BCF0819CA7FB50111800F0A10EF7BCD9AF89C03564B4B3A47FF6BBC8795F1EE89A3FE065F8356FE1791FA3F7734A7E58658DF542AEC8FD742F7CDE973E7F7D22F091233000E0231FFD79EF8F8AC03595FD35F779D493BEF53B5F21B63355FE5B';
wwv_flow_imp.g_varchar2_table(1015) := '3FC8F3FADF6A040600BCD52337AFFBD5456092FF8543720508787507735ED044E003446000C00738C8F3165F2E020302B6584FF27FB9936F9E6922F0C8080C007864C0E6EE13816B22F0E181C024FE6B4E93B9CF44E0A611180070D3F0CF934F04260213';
wwv_flow_imp.g_varchar2_table(1016) := '8189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0';
wwv_flow_imp.g_varchar2_table(1017) := 'A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E03611180070';
wwv_flow_imp.g_varchar2_table(1018) := '9BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F';
wwv_flow_imp.g_varchar2_table(1019) := '042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E0426021381';
wwv_flow_imp.g_varchar2_table(1020) := '89C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036';
wwv_flow_imp.g_varchar2_table(1021) := '111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3';
wwv_flow_imp.g_varchar2_table(1022) := 'F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E04';
wwv_flow_imp.g_varchar2_table(1023) := '2602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189';
wwv_flow_imp.g_varchar2_table(1024) := 'C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611';
wwv_flow_imp.g_varchar2_table(1025) := '180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8';
wwv_flow_imp.g_varchar2_table(1026) := 'CFB34E042602138189C044E0A611180070D3F0CF934F042602138189C044E036111800709BB8CFB34E042602138189C044E0A611F87FDB1E39DDA51BAE6E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26045835229745057335)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/logo_green_modern_marketing_logo_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C8000000320806000000195194E1000000097048597300000EC400000EC401952B0E1B000004F969545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D';
wwv_flow_imp.g_varchar2_table(2) := '27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D65746120786D6C6E733A783D2761646F62653A6E733A6D6574612F273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A';
wwv_flow_imp.g_varchar2_table(3) := '2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323273E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A4174747269623D27687474703A2F2F6E732E61';
wwv_flow_imp.g_varchar2_table(4) := '74747269627574696F6E2E636F6D2F6164732F312E302F273E0A20203C4174747269623A4164733E0A2020203C7264663A5365713E0A202020203C7264663A6C69207264663A7061727365547970653D275265736F75726365273E0A20202020203C4174';
wwv_flow_imp.g_varchar2_table(5) := '747269623A437265617465643E323032352D30342D30353C2F4174747269623A437265617465643E0A20202020203C4174747269623A45787449643E61636337383637612D353965352D343364662D386138622D6234393234623763373530663C2F4174';
wwv_flow_imp.g_varchar2_table(6) := '747269623A45787449643E0A20202020203C4174747269623A466249643E3532353236353931343137393538303C2F4174747269623A466249643E0A20202020203C4174747269623A546F756368547970653E323C2F4174747269623A546F7563685479';
wwv_flow_imp.g_varchar2_table(7) := '70653E0A202020203C2F7264663A6C693E0A2020203C2F7264663A5365713E0A20203C2F4174747269623A4164733E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27270A';
wwv_flow_imp.g_varchar2_table(8) := '2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C64633A7469746C653E0A2020203C7264663A416C743E0A202020203C7264663A6C6920786D6C3A6C616E673D27782D646566';
wwv_flow_imp.g_varchar2_table(9) := '61756C74273E477265656E204D6F6465726E204D61726B6574696E67204C6F676F202D20313C2F7264663A6C693E0A2020203C2F7264663A416C743E0A20203C2F64633A7469746C653E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264';
wwv_flow_imp.g_varchar2_table(10) := '663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A20203C7064663A417574686F723E4C756369616E6F204C6F676C697363';
wwv_flow_imp.g_varchar2_table(11) := '693C2F7064663A417574686F723E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A786D703D27687474703A2F2F6E732E61646F62652E636F6D2F';
wwv_flow_imp.g_varchar2_table(12) := '7861702F312E302F273E0A20203C786D703A43726561746F72546F6F6C3E43616E7661202852656E64657265722920646F633D4441476A6675306871464D20757365723D5541457058616469583938206272616E643D56616C656E74696E61204769616E';
wwv_flow_imp.g_varchar2_table(13) := '6E656C6C69262333393B73205465616D2074656D706C6174653D477265656E204D6F6465726E204D61726B6574696E67204C6F676F3C2F786D703A43726561746F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A3C2F7264663A5244';
wwv_flow_imp.g_varchar2_table(14) := '463E0A3C2F783A786D706D6574613E0A3C3F787061636B657420656E643D2772273F3E028D742900001C7B49444154789CED9D799C1355B6C77F95A4926E9ABAA480A6692A3AA454E804144CB05B1085B1D171430701D1617041147DA2E3FA5074DCC6A7';
wwv_flow_imp.g_varchar2_table(15) := '33FA9E1B20B80C0C0F61449171C105140401A15BD3EC49839880E4B243855B804D553A797F540543E84E87A605DF7CF2FD7CFA135275EE39E7DEDC53757738E4C993A751B853ED409E3CBF66F20192274F16F20192274F16F20192274F16F20192274F16';
wwv_flow_imp.g_varchar2_table(16) := '7ED1007960A4B7B5CD6A2BB158AC82C562E5AC56EB218EC3EE45DFFCA82C0E6C4F9E88EE21FD6D6D90ACEFBE7E737259684B4B799C27CFD1B46880DCFEC7CE450F5D7FD660BBC331C0C6F37D78DEDED9C6DBADBCCD0E2BCF83E7EDE0C025F5B8B637AE6B';
wwv_flow_imp.g_varchar2_table(17) := 'D5BA7678C9E2155B66BF3C65EDA6C5AB6339D9E8D11978E2B6A21189FAF8F3BAAE5B662F4A94BCBFA425739127CFCFB448804CFAF359257D7B168FE16DF63B6CBCBDBDCD0C069EB7276DBCFD27DE6657AD3C9FE0797B2B0E9CA0C7354B5CD7A0EB3AE2FA';
wwv_flow_imp.g_varchar2_table(18) := 'E1783CAE7DB424B063FC7F4F0B2DFA364BA03C32BAB0E482330B5F8EC7F561715DDBBDE6077DF0D3D3124B5B220F79F234C4090588AFACC83A79DC99236D76FB733CCFB7E36D76D878FB1E1BCF7F6EE36C8B5F9EB969C97E8DDBF4E6DBEBEA01C0EF2FC5';
wwv_flow_imp.g_varchar2_table(19) := '957D4EEFD0BB47C7BE17F8DA5F188F6B97C475CDABEB1A17D7F5443CAECFA85EB96DDC0DE3D646336DCD79A943DF22CE324DD735391ED7F7ACF9FEF0A0C7A768F9E0C8F38BD2EC00997677BB765DCEEDF08695B75F6BE3EDE0793E5C537B70F2A2B53F4D';
wwv_flow_imp.g_varchar2_table(20) := '98FACEC69F72D1E1F7B7C663B7F4BABCBCBBF8605CD7FBEBBA6689C7B5BD05A2704DE70B3F5E0600FE2EADF1E20325B7C5E3FA84B8AED9E3BAB67FD5C6BA6B1F7DF3D0C2E6FA9E274FAE589B93E8D5075CA79579852F2D166B3F8BD5AA59394C9AFCFEF6';
wwv_flow_imp.g_varchar2_table(21) := '418F8EDFB878D5BABDF15CF56CDFAE61D6A79B372D5FB9E77FA59282A0D4C151914824E2CBAAB6BFF1C1573BF7F8CA8AF8F1634F1B9F4C269F4A24EA6D89447D5D5CD5868F7AF1C0E78DE99424777F9724FFE1F0E19F56695A9DD69CFC1D2F92E4EEEDF5';
wwv_flow_imp.g_varchar2_table(22) := 'F84732A68434ADEEE0C9B099E7E4603BDE048FDDD9A65337D9B200C05949606F20B87FF89BFFDA33AFA6F640B39D58BE7A0F96AFDE33FB9EE1F2178964B268C2CCC8B61B87C864CCD5ADFF19AFD72F87F1A64B589296BB9E9CB9FFA36CBA5C923C154067';
wwv_flow_imp.g_varchar2_table(23) := 'A28AAAAAC6C637DBA9E3C025C993019CE3F5F8AD55D50B9E381936F39C1C8E2B40CE3E836F7D61D7C23900CEE290DCB1B2F6C065639EDFBABAA59C797546783F80FD931EF1B6AFE8513437AE6B15E6AD24C7E1A9075FDB3375F5F74DAA29C8F83C199C0A';
wwv_flow_imp.g_varchar2_table(24) := '9B794E0239074837B7957BF4F6C2BF24817200ACA6F6D0C07B5FDCDE62C191E2EFCF9E5D5CDE952C8CEB7AF7D4358EE366DEFFF2AE67577FAF353A77E229F35D4B883804401B007049F2709724FB016C0986028FAA6A2C0E0092E4EEEA92E4BB019C0FA0';
wwv_flow_imp.g_varchar2_table(25) := '10C0AA280D4F22825848883824180A3CAFAAB11F0040109CC425C9B71122F607F01BD3548431E5F3280DBFA5AA313D5B5E3C65BEEB0811FB074381BFA86A6C7B2332230811CF0B86028FBB24F90242C45100BA023800607994865FA434B2C5F4FD4A9724';
wwv_flow_imp.g_varchar2_table(26) := 'DF08C00BA01E40C0BCBF3E53AF20383997240F26441C0EE02C00071953BE60AA328108E26D8488D66028F094AAC69282E0ECE2F5F81F624C792F4AC32B5D923C8610710080B6002863CAFB0DE557109C852E49BE8310F12A009D006C634C99C354E54397';
wwv_flow_imp.g_varchar2_table(27) := '24FF2763CA8A506DCDCC3479AB4B92FF4888781D80CE00F602F8364AC3935C927C2B63CA8E506DCD2BE93624C9ED7749F268003E00AD006C654C996BFAF3539AEE541E663255D9E592E451000A82A1C013AA1ADB95ED77CA46CE9DF4254F175CB8BFB0D5';
wwv_flow_imp.g_varchar2_table(28) := '221B6FC7FA48FD4D1FADDAFDF6E2C5CD35DB30EFBCD0BDB867D7F68B755DF7C4751DBA7E187A5CFBEEAD0F76544EFD5061D9D25694577E03A07703B792511AEE4A69E47B4F996F1821E234008E4C1900753002E66F55D50B1E9624B7D725C90B01943462';
wwv_flow_imp.g_varchar2_table(29) := '72753014E8A7AAB1FD15E5951B007401F07C55F582B100E029F38D25447C0E0017A5E13F511A79B511BF190001401046C5CF24C698721921E27D00863570BF8E316550A8B6E648BF4C109C36AFC7FF0E80C10DC8FF64E613511AEE46692458515EF91280';
wwv_flow_imp.g_varchar2_table(30) := '7B016C036001D0B18174F383A1C095A9078D20383B793DFE2F0178B2D8D85955BDA0A329DFCAEBF17F04A0B201F9846917511A2EA134B20B385286CFA6EE65B02E180A5CA2AAB11D0050515E3901C05D00B6026807239810A5E1A194466637903E271A32';
wwv_flow_imp.g_varchar2_table(31) := '7C0CDDDC16DB1E9BED55001624F1C9B44FF6CF6CE9E0F8ECC50BDBF6EADEE92B804B2F707565E8D075533F54D8D0FED9D3476978489486070388010063CADB511A1E1AA5E1DE9446BE9724771742C47FC0088E1D8C29774469F80AC694C7CD3485A62A1E';
wwv_flow_imp.g_varchar2_table(32) := '005C92FC3F3082631F63CA3D511ABE304AC31733A63C03E3E9DDC325C92333FD1004273C65BEBF1222FE15C603E853C69437B3B8CE9B9F5E1895FDD9280D5FC698F2100006C04988B8144670E88C29FF13A5E1CB1953EE04B003400121E2344170A6FC87';
wwv_flow_imp.g_varchar2_table(33) := '4B92C7E1E7E0981FA5E16BA3343C04C0ACB47C023FB720529F9D6004474D9486FF18A5E16B00BC63DEBBD425C9635209BD1EFF7418C191604C996096E52D00AA33CBD2947F1E3F07C79C280D5F1DA5E16100E6E2E87A5800009E32DF40F30163015015A5';
wwv_flow_imp.g_varchar2_table(34) := 'E1EBCDF27F00C01E00DDBD1EFF5B0D94E36930CAFDAD280D8F624CF9F098123F0E726A623D7D8BED528EE37A023838FD7376EF9A4D5AE2448C66F2F035EDDA78CF6E334FD7B56E6997EB57D61E1832E6F92D911E5DECB63BAF2B19FEDEA2ADD31AD34169';
wwv_flow_imp.g_varchar2_table(35) := '641B80392E499E08004C55D6A43F395C927C2F8CC23F14A5E13E944622004011F9CC53E69B4D88F82D80A23495A9A7F93F42B535473AFB1491AF3C653E4A8878035395CCA166ABD7E39F0C60B4F9FDEFC150E08ED453B709EA1953AE0CD5D62C34EDCCF3';
wwv_flow_imp.g_varchar2_table(36) := '94F9B61222BE03E3774A32A60C0ED5D67C6CDE8724B957BA247939800E848897AB6A6C8E2038EDE6DB06003E0D860257A96A2C6996D1FB9E325F8810F1C92C7E7C160C0506AA6AACDE4CF3514579657B000308116F02F0B224B9CB015C0C008C29E342B5';
wwv_flow_imp.g_varchar2_table(37) := '357F4BF92408CEB7BD1EFFA7002E49299424775B00A3CCAFFF1B0C056E5255634298D2C8BB15E595AF00B827DD0942C4C76154F46F83A1C045AA1AD34C1B5F49927B994B92BF01708524B9BB521AD9909E96316578A8B6E65F39947993E4F4064982BBD3';
wwv_flow_imp.g_varchar2_table(38) := 'F84CCE5DB3490BB784E1147D7A16B7BAFBFE8BDE07D0EBA81B5CF2D9BF7FB46D7E3F00E31F3C6D7632C98D1F7129719E80A9DF9A9FEFA6822345A8B62604207345576A3860544579E5DB15E595CF4992FB6E49725FC154655655F5827E944632FB60A3CD';
wwv_flow_imp.g_varchar2_table(39) := 'BF2463CA53C15060548EC10100FF4C05470AA62A1FC368FE01C047A9E0484169A40AC06E0020827836001022FA003801204AC32FA482234DE767597CD0A3343C32151C29A2343CD7FC6777417072441053655917A5E197D3655535168FD2F017197A2F80';
wwv_flow_imp.g_varchar2_table(40) := 'D9AC8DD2F0DF52C191A6FFA8CA2C49EEF600FC00C098F22A21A24592DC05A93F00AB016C8411407D336CED8ED2F00759F2785C34F90619D28F3B3D095C0120F1CD86432FAFFD21E7698E26E9EB2BB6CC197FF1245DD78E6A9772C0E289B3763E5BBDF627';
wwv_flow_imp.g_varchar2_table(41) := '74EF62E700EE5C00C21F07165D397D3E9BD14C732500C098B2A1294153EE4142C4B9002400C301C025C9A9DB7197247F1A0C056E56D5989296ACB5F97910C0ECCC8A908D280D57655EA33472C825C90701B4664C59DE48D25D30DE20C4FC9EDE67AACDD9';
wwv_flow_imp.g_varchar2_table(42) := '018330A5911D0D5CDF6D7EDA08110B0811533636AB6AEC700E7A53F209C6948D39C89F0EB37F4C88389D10717A16D9E28CEF5B331F0A2742936F9021FDB8BE002CC9643212D98CEA96320C009FCEB8F4710023322E2B93DE8DDEFCD69C1FEB0060DD462D';
wwv_flow_imp.g_varchar2_table(43) := '0924E70340B23ED950072F570E02002162BB5C8443B535AB82A1C019511ABEC4ECA7BC09E0130011180F96ABCD76753A8760BC895A1322CE1304A7FB38FCCBBAFA80A94A5D8E7AD2272A73CA6B0E3EA457380E463E8F477F6A92CC428828E6209F3E5AB6';
wwv_flow_imp.g_varchar2_table(44) := '19C60046437F5500BECC487B082D48936F904432D9C39C6E5FB97DD3E116EB7BB0C0C8A17135FE67209E3E9256FFED5AE5CE89B3B66C4E975D5DABCFF39E81511C87CB860DE42DB33ED6B3F9711800882016521CD5925A0FC005E00A41708E55D5D8111D';
wwv_flow_imp.g_varchar2_table(45) := '82E0740038EA87AB28AF7C12C0D9C150E0164A235FA6C9C2EBF1BF0B6028800A1CCD2473C87219804E5E8F7F5E3014B85055633BB397468BB20E4685E688205E4571F4103011C48646A88E8B280DAF33DFA6C592E43E9FD2C88A0C1BA5194956A7DD1B48';
wwv_flow_imp.g_varchar2_table(46) := '11999221EF4AFFCE98F23D241C0450C4983223545BF3D889FADC5C9A7C8370400F008035195CBCF9D8FBFE6EAD2DA3079716F6F214E53C645CB77C644FCEC2CD38C63EC7CD9E386BCBBB99F2DF6DDC370F808E243ADA0EF3A737A17E1B001062B4C925C9';
wwv_flow_imp.g_varchar2_table(47) := '5D2208CE02C694D4688CD7EBF14F9424771BF37E57AFC7FF3E80CC1F750C806BBD1EFFDF25C97DE4494988E88131260F0099731BF594467E604CB902800AE02CAFC7FF992038094E126613E96BD3D7719E32DF2041705A05C169F394F97E4F8838F9446D';
wwv_flow_imp.g_varchar2_table(48) := '30A67C0A63840D2E49FE8724B97B08821382E0143C65BE070811EFCAF0290463740B84887FF594F92E1104A745109C764F99EF7A42C4CC7E4C1D80B74DF9B19E32DF184170F20020496EA9A2BC72724579A52249EECB4F342F4D91CB28D61900F0CE3CED';
wwv_flow_imp.g_varchar2_table(49) := 'A8B6FBA8811D6C2307B5BBDBC6DB1FB2F1F60E3C6FFFD166B3BDB62AB0FB1F373C1DDCD398B22FA75C539C141CB3A16B7CC62D3A6146F8AE156B9463DA8FD3E61E506FBCBCED6E009DEEBDC6E699311F9B1BD3CF98F23E21626F00432ACA2BB703288184';
wwv_flow_imp.g_varchar2_table(50) := '2F82A1C0155EE2BF05C04500EE7049F2ED2E493E00A0C1CACB98F20A21E2D30086B82479904B92B702B0C308240E80C698F25C436943B535359E32DF1042C48F019CEBF5F85FAEAA5E70CC90F02F459486EF7549F252008410718E97F80FC1F8ADED2DA1';
wwv_flow_imp.g_varchar2_table(51) := '5F5563CCECA3BD0EA0AB4B925741820A63EEA1C1F57D511A1EED92E4AF01141322CEF712FF41D39FCC7A00000886020F7B3DFE3E00CE26441CEF25FE1700EC07D001A9FE8920B6CB6825B438B98C62A53A9EDBD22F26B8FAB300BC00A3C25881A49B03F7';
wwv_flow_imp.g_varchar2_table(52) := 'C279E7BBD6BFF342C525DE06A6BCFA95BB6CFDFB747E1D66D0A511AF5EBBEFAE954BB4BD59FCD803003B0F5A3B6473364AC31301CC81D1CCE8086312AA4A5563F5C150E04A00AFC3686B5B6004470CC0F3005E01B09F316589A9E72F8C297703D860E40F';
wwv_flow_imp.g_varchar2_table(53) := '9D61CC1324012C614CB938545BB3C834FB2500C69872647628545B339F31E52600FB70EC08593A5FC198510E34727F9EE9E3B78DDC5F006396FC9BD4054A23ABA234DC1FC00AD3DF56302AE33AC6941130DAEF1B1853220060E6F92080C6B60FAC843118';
wwv_flow_imp.g_varchar2_table(54) := 'B08C31E59099BF374D5DA9BC09302AEE7CC6945B4DF9F9193EF505B008C66F5204233882005E4BB3A50180AAC662C150E002002F0150600CD1979836C28C29B7846A6BDE4E25624CF91A465F27B34F724234D92CFAE79FB99D36DEDE61F6A244DF590BF5';
wwv_flow_imp.g_varchar2_table(55) := '65A9EB3DBB16DA46FDBEC31DE5DD9D8FD9787B09CFF330F783C0C6F3BAC55678CF907B164EAE5EBB0F00D00FC0C28DF73E984C245FD0E31AD2364C418FEBB306DFB3F88615ABF7363AFAB060E2E9DFC675AD577D3C7EFB150FEEC936F106009024774718';
wwv_flow_imp.g_varchar2_table(56) := '159A521A39AA0F2008CE56848832CC5195A6866225C95D0223D8920036531AC93AABFF6BC22C875200BB288DD096D62F084E98654960944D83437782E0741022FE8E31651121A21D467F701FA5911F3D65BE970811EF057020180A3833879905C169356D';
wwv_flow_imp.g_varchar2_table(57) := '080076531AD9DAD2F9688C5C9A58A9CAD326FDE2AA0D3FC5DFFBDB9609B671FC2715E7D8BF0420A7DDE6AD5CFD848F27F4C7753706262FDEB2058F4DBDA64F2291F82FEED898DC3E6751DD986CC1615204001C92F54DC80138D2166F68C812AA1A3BA4AA';
wwv_flow_imp.g_varchar2_table(58) := 'B175B9E83175ED0470323BDA2D46B6726809543506558D353937E6F5F81F06F024244418531E67AAB2068054515E791F7E9E249C95191CA68D7A558D35BD4CF5172097008901E8D4DDCDB96765DC580C60F1B39B226F3EEEB9E4FC1EE2D730E60C525839';
wwv_flow_imp.g_varchar2_table(59) := '1BFFCA0363BBD00BD7B7FDAAEF799DA6E2D83670F29B55BBC7CE5E186EB4CF0200679F5908186D4F680E5DC9269BE7D70963CA6242C48300DCE6DC46A6C8DA602830F614B896955CFA201B00A0FB19F68616A501006E7B3A140EACDF3F18C78E41DBFBF6';
wwv_flow_imp.g_varchar2_table(60) := 'EA3875EC28FFCC6432D925331D072C7861CABA198B1B1A1E4BC35F56701ACC61D877E7C6739968CAF32B23545BB3284AC3BD004C8731FA9780D1DF58CD98322E180A54A86A2C5B1FF494D0E41B8403B70AC0200EF08EB9CA8A09731B6EE14C7C676B55EF';
wwv_flow_imp.g_varchar2_table(61) := '733B3C02A3B39B4E3B2493031B48A256ADDA71C7B2C0AE26E756FE34AAF0CA7D141670DCFE8D51FD94BC6AF39C3894466A298DDC0818CBF101248F67B5C1A9A0C93748DC821A000007DFDEC37CABC6E4BE0D324C78373C1EC6A84BD386AD96494F4E0AFE';
wwv_flow_imp.g_varchar2_table(62) := '908B2CDB5938C0F857F2F36FD7EB27651B6D9E5F16558DFDEA8303C82140E62C4A2CE1808300D7E6EE8B6DB764931D3F7D4B72CD2A369A3387641B830336FC6ED487E356AC3CE6F09263B8EF778584E338234038EBA74D26F87F8024B98B1ABA9EBE64FD';
wwv_flow_imp.g_varchar2_table(63) := '781104A72D359976B23127FD9AED7B16BDADCC37CD29A3E900598CFD4924DF0480BD36FB6DC32A0BB31EF470EDB8155B12C6BC426324AD45DBEE5F5ABDABC9D1A87E00865ED7791C80361CB0F7EDCFD4135ADB7F2A9124B72C49EE52007049F2AD99F705';
wwv_flow_imp.g_varchar2_table(64) := 'C159E092E42B9AAB9F10D163CEF29F740811DB13225EF30BE8BD9E10B1C187C9C922A7534DBABBADDB3AB6B3DD61B5584B060CB0FEF0D67B756BB2C95707F72DBFEEB2DF5C6DB5584B2D562BAC162B2C562BAC562B388EFB803F73DA33B9D81D30A87D07';
wwv_flow_imp.g_varchar2_table(65) := '5F59D11B8944A22899AC7FE6FE5776B5E824502682E0E48A8B4BFD84889D016C77380A0A1C8E82D69A567764A1A024B94B5535764092DC2E42441F21E201558D1D120467517171A9C3BC664F5FE52B49EE52228857391C859D1C8E028D10F14CC694B5C5';
wwv_flow_imp.g_varchar2_table(66) := 'C5A5171322B656D5D84E4DAB8B1F3EFCD33E87A3000E4781A3B8B8F41C42C46E00A8A6D5D59BFE91E2E2D2F3CD11A03A87A34048F3EDE0E1C375B1E2E2521140325D775AFE0AD3F323084E381C05259A56775092DC6E42C49E00144DAB3B2C084E87297B';
wwv_flow_imp.g_varchar2_table(67) := 'D894B53B1C05C4E12868E37014D41717979EAFAAB11F01C0ACC46E42C40421622F003B5327CA0882B3A0B8B8B43721622180BD0E474189C351D0DAE128D08A8B4B7F6BAE0C8E6A5A5DAAAC5C8488E702D8EF70147A00AC4FED053915E4B41FE48929DADA';
wwv_flow_imp.g_varchar2_table(68) := '4432391900178B163C37E2B2D68D6D4305002C0FEC4D7E13D8F5108C918A74D4BF4C0C3C928BCD073CADB9D1D7769A046378373A7D9E7AC26B88B221084EBBD7E31F07632569CCEBF13F4C8858E0F5F88F2C119124774F00DD3C65BE6144107D007E2082';
wwv_flow_imp.g_varchar2_table(69) := '78B9A7CCD79F10B19B4B929F02607549F2E0547347109C7049F23018B3F787606CED6DE592E42100561141ECE829F3DD0A008488C30811BB793DFE4761CC6C47BC1EFF3382E0B47ACA7CBD5C923C02C08F00CEF07AFC7712221ED90B4188D88D10B1BB4B';
wwv_flow_imp.g_varchar2_table(70) := '926F6948B7899E9E1F42C4BE8488A7559457DE4E04B10CC01697245FEF29F3F521449408112F4893ED4088F85B42C4EB4D1DFBD2CBCF25C917C3D849B8CEEBF18F1304671B497277F67AFC7F82310FD3D6EBF10F27441C6AEA180E63393EE7F5F81F0400';
wwv_flow_imp.g_varchar2_table(71) := '4F99EF7A2288E5A61F952E49EED1EC1FB485C82940006075487B06C0CE2407E9A681E2B41197B7C9BAAE67E8FDCB16701C37F3A88BC9E46B4FBDBAB4C9FD18FEEEAD71C3E39EDB016E10802407DC35E543E5179DFF20441C14A5E1299446D6501A090543';
wwv_flow_imp.g_varchar2_table(72) := '8109000631A6E8E66A5FB824B93F8C8580ED43B5351F511AD91AAAAD996E6E52429486BFA034B22C4AC3B35D927C8DA9B75F9486173255D9CC54256C1EC0D02A4AC3D3298DEC0CD5D6CC23443C6A2358948697531A09511AD914A5E14F09117B10225686';
wwv_flow_imp.g_varchar2_table(73) := '6A6B26521A89501A59C898D2D80047A3BA553516674CD152FD0597249F0B20CA985217AAADF98CD24824545BF33A21E2F9598A8A0F860253298D04D32F32A6ACA53412A034B2354AC36F102256BA2479483014789ED2C8F7944696476938D5F2B04769F8';
wwv_flow_imp.g_varchar2_table(74) := '5F944628A591E58C2909F381521AAAAD9943696473A8B6E67DFC3C497DCAC839409E9AAE6D5B53AB0D07A073E02EBD7148D16BBE2E85593B854B57ED1D07738F38802D036E9EF3E7A6EC78BDC5B86BE86FAEB25AF02A007049CB8BF74DF831EB59582D84';
wwv_flow_imp.g_varchar2_table(75) := 'E492E40115E595232ACA2B47783DFEAB016C66AA32C725C9D70882B335630A03D08610B17B4AAEA2BC72048C95BB8099574A2311B39906972477A33492D924DD93B1A92773D351FA291CFB60AC873BEA4411A6361A205975335599ED92E46B05C12930A6';
wwv_flow_imp.g_varchar2_table(76) := 'C4009CC6542573C55FAA62A677905375454B3F4D244DEFEEB4AF7B4D9F1319BE6C4AF94469647F5A5A8D10D199A103511ADE84534CCE010200FF5C54B760ED26ED5E00097B7DAB91AF3DE29EE22B2B6ADD98FCA0FFF8622BC7251F07B0DDD28A3EB8B88A';
wwv_flow_imp.g_varchar2_table(77) := '663D26A7BCBB1363FFD06950F9D9CE7791E4EC00E6BEFEC18E71DFAD39294DD0D5511A5E5355BD607A55F582E9511AFE0AC0214A239410B1934B927F1FA5E1398C297B006C4CC955552F988E9F1F024788D2F05A4F99AF0F6347DE7C099CD859C8BC2038';
wwv_flow_imp.g_varchar2_table(78) := '8FFC5E44107B65136E0C4A233B08113BBA24F9CA280D7FC898B221B55D17309A8430563CEC2582785A5AD2B38ED716634A5C109C473AD9D97C664CD9E392E4A3F685B824B959796C498EEBE0B8B53FC43163DE814995036C44DD657F26914C0E9FFCE819';
wwv_flow_imp.g_varchar2_table(79) := 'DD02ABE237BEF5F18FEB021B8F3D5DF1AAD1F3C75F749E34E59BCFF7653D92F3FC73DA3AEE1E2E8FF37B8487755DE3392EF9E19DCFFEF08740E8C049890E4A230BCCB6F8394C55122E492E098602AF0246657749F2056A6D2C75624A95A7CC771753959D';
wwv_flow_imp.g_varchar2_table(80) := '2E497631A67C81A30F7C0063CA7C97247F100C05869BDFD7793DFE7BD0F8314259098602D3BD1EFF23511ADE4404B11521A2C6D4E6B53AA3345CE592E44BD5DA586A8FCC664F99EF4EA62A7B5D927C7A3014784F5563FB5DE5323C65BE91005442446794';
wwv_flow_imp.g_varchar2_table(81) := '868F6BA63B4AC353BD1EFF9FA234BC8508A295107157633EAB6A2CC998B2D453E6BB9FA9CA569724B7654CF9B159196C419AF544EBD9B5801B39B0DD6DBDBCE4151B6F2FB0F1F643CED2436FBE38E9E0732B82FB777EB726F71FAE4FCFF6D6076FEE7281';
wwv_flow_imp.g_varchar2_table(82) := 'BF5BDB57745DEB118FEB0907F497863EBCFAB1EF826A2EFB9D5B144170F28488164A23596D9BAB588B288D3418F8E6CEC3FBAAAA17BCD4127E4992BB98D2C86E49721731A61C22443C0780486964513374F506004A2347F6B90B829333F3732043B61040';
wwv_flow_imp.g_varchar2_table(83) := 'A2A9F268C25E2BC694BAF45D9C8D61FAD1AAB1723DD934FB95DFE38C02DC3EB4A4F779DD9CD36DBC5DE6799EE36DF618CFDB3F5FBB7DF394AF9758965A6DF5752FBCF5FD31AB741FF98F732DA8479BDEE7160F3BFF6CF1665DD77AC575DDAAEBDAB66F56';
wwv_flow_imp.g_varchar2_table(84) := 'EEBC6DC2CCC867D5EB598B6DBC3F154892FB220007298D34B6CFE378F59D4704F1F4506DCDFB82E0B47A3DFE8783A1C07FE77868C251549457DE5F55BDE0C596F0EBDF9D139EA5BC7960719B47EF6B7B679DD2EE31DE662F32F7832479DEAEF0BC7DA38D';
wwv_flow_imp.g_varchar2_table(85) := 'B76FE3797E9FCDE6D06C3CDF8AE3B8F6BAAE9D1ED7B533755D6F65EE0751977EB7FDBF5604F6BCF1D2CCEFFF2D56EB4A92DB4769A4A685759E4304D10FE3B4C84F5435B6BBC94427C9B77F575A641ABF5F3F60504559E9E57D3B0CB1DA0A46DB78DECBF3';
wwv_flow_imp.g_varchar2_table(86) := '768EE78D0D5419FF051BCC0D53095DD7961DD6B469CB6AB67F38E49EAFB32E4FC993E754D0E2EB5C7A747572BF2D2FEEF29FB7763FD7C6DB5D369BBD8D8DB7DB78BB1DBC8DD7C0616F42D3373F31A1AA66C977D1E8D240B3CF15CE93E71727FFDF40E7C9';
wwv_flow_imp.g_varchar2_table(87) := '93857C80E4C993857C80E4C993857C80E4C993857C80E4C993857C80E4C99385FF03BEC70E4069CF93810000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26048648712146497603)
,p_file_name=>'logo/Green Modern Marketing Logo.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045426531899057321)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15616318043410
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045826822236057322)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15616318043436
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045827176048057322)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15616318043438
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045827423491057322)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15616318043441
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045827727173057323)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15616318043443
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045828065423057323)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15616318043449
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045828302328057323)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15616318043452
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045828661094057324)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15616318043453
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045828916333057324)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15616318043454
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045829225482057324)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15616318043455
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045829502186057324)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15616318043455
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045829880291057324)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15616318043459
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045830123954057325)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15616318043459
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26045830407732057325)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15616318043463
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(26045838104446057340)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15616318043751
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(26045838259652057340)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15616318043793
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(26045838348993057340)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15616318043799
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(26045837718292057338)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15616318043719
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(26045837916551057340)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15616318043745
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(26045838020885057340)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15616318043746
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(26045839126755057342)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_version_scn=>15616318043806
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(26045839431687057343)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15616318043831
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046248259633071661)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15616318221242
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046136078550070861)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15616318207037
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046255618617071669)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(26046255618617071669)||'.'
,p_location=>'STATIC'
,p_version_scn=>15616318221375
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046255980010071670)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046279670076072024)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(26046279670076072024)||'.'
,p_location=>'STATIC'
,p_version_scn=>15616318229507
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046279994255072024)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046280361885072025)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046280728039072025)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046292141639072036)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(26046292141639072036)||'.'
,p_location=>'STATIC'
,p_version_scn=>15616318229670
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046292441380072036)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046292893425072036)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046293224695072036)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046293621469072037)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/project_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26045949735348068263)
,p_lov_name=>'PROJECT.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PROJECT'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15616318186118
);
end;
/
prompt --application/shared_components/user_interface/lovs/project_milestones_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26045952036658068265)
,p_lov_name=>'PROJECT_MILESTONES.TITLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PROJECT_MILESTONES'
,p_return_column_name=>'ID'
,p_display_column_name=>'TITLE'
,p_default_sort_column_name=>'TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15616318186131
);
end;
/
prompt --application/shared_components/user_interface/lovs/task_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26045991032438069473)
,p_lov_name=>'TASK.TITLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TASK'
,p_return_column_name=>'ID'
,p_display_column_name=>'TITLE'
,p_default_sort_column_name=>'TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15616318195323
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046165425448071562)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15616318219290
);
end;
/
prompt --application/shared_components/user_interface/lovs/users_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26045909069354066949)
,p_lov_name=>'USERS.USERNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USERS'
,p_return_column_name=>'ID'
,p_display_column_name=>'USERNAME'
,p_default_sort_column_name=>'USERNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15616318176487
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046136896648070864)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(26046136896648070864)||'.'
,p_location=>'STATIC'
,p_version_scn=>15616318207049
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046137105352070865)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(26046213898843071622)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(26046213898843071622)||'.'
,p_location=>'STATIC'
,p_version_scn=>15616318220376
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046214310054071622)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(26046214766826071622)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(26045839707857057343)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(26046348833820072707)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(26045831342096057326)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26045831558204057326)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26045927935399066970)
,p_short_name=>'Project'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26045944081176067621)
,p_short_name=>'Users'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26045965199425068276)
,p_short_name=>'Task'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26045985374615068845)
,p_short_name=>'Favorite Project'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26046005190444069486)
,p_short_name=>'Comments'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26046021073751070112)
,p_short_name=>'Task Checklist'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26046037708733070766)
,p_short_name=>'Project Milestones'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26046319021052072068)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(26045832224079057327)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(26046524451713355070)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>70
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26046524451713355070)
,p_theme_id=>42
,p_name=>'Redwood Light (copy_1)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-pillar--pebble rw-layout--edge-to-edge rw-mode-nav--dark rw-mode-body-header--dark rw-mode-body--dark'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-pillar--pebble","rw-layout--fixed t-PageBody--scrollTitle","rw-layout--edge-to-edge","rw-mode-nav--dark","rw-mode-body-header--dark","rw-mode-body--dark"],"vars":{},"customCSS":"/* Modernizza le cards della home */\n.a-CardView .a-Car'
||'dView-items .a-CardView-item {\n  border-radius: 16px;\n  box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);\n  transition: transform 0.2s ease, box-shadow 0.2s ease;\n  overflow: hidden;\n}\n\n/* Effetto hover */\n.a-CardView .a-CardView-items .a-CardView-i'
||'tem:hover {\n  transform: scale(1.03);\n  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);\n}\n\n/* Rimuove i bordi standard dei pulsanti nel menu laterale */\n.t-TreeNav .a-TreeView-node.is-focused {\n  background-color: #2c3e50 !important;\n  color: whi'
||'te !important;\n  border-radius: 10px;\n}\n\n/* Migliora lo stile del menu laterale */\n.t-TreeNav .a-TreeView-content {\n  font-size: 14px;\n  padding: 8px 12px;\n  border-radius: 8px;\n  transition: background-color 0.3s ease;\n}\n\n.t-TreeNav .a-T'
||'reeView-content:hover {\n  background-color: #34495e;\n  color: #ecf0f1;\n}\n\n/* Migliora il titolo */\n.t-Header-branding {\n  font-size: 22px;\n  font-weight: bold;\n  color: #2c3e50;\n}\n\n/* Personalizza lo sfondo principale */\n.t-Body {\n  bac'
||'kground: #f8f9fa !important;\n}\n","useCustomLess":"Y"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#26046524451713355070.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A0D0A2F2A204D6F6465726E697A7A61206C652063617264732064656C6C612068';
wwv_flow_imp.g_varchar2_table(2) := '6F6D65202A2F0D0A2E612D4361726456696577202E612D43617264566965772D6974656D73202E612D43617264566965772D6974656D207B0D0A2020626F726465722D7261646975733A20313670783B0D0A2020626F782D736861646F773A2030203670';
wwv_flow_imp.g_varchar2_table(3) := '782031357078207267626128302C20302C20302C20302E31293B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E327320656173652C20626F782D736861646F7720302E327320656173653B0D0A20206F766572666C6F773A206869';
wwv_flow_imp.g_varchar2_table(4) := '6464656E3B0D0A7D0D0A2F2A204566666574746F20686F766572202A2F0D0A2E612D4361726456696577202E612D43617264566965772D6974656D73202E612D43617264566965772D6974656D3A686F766572207B0D0A20207472616E73666F726D3A20';
wwv_flow_imp.g_varchar2_table(5) := '7363616C6528312E3033293B0D0A2020626F782D736861646F773A203020313070782032357078207267626128302C20302C20302C20302E32293B0D0A7D0D0A2F2A2052696D756F7665206920626F726469207374616E64617264206465692070756C73';
wwv_flow_imp.g_varchar2_table(6) := '616E7469206E656C206D656E75206C61746572616C65202A2F0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233263336535302021696D';
wwv_flow_imp.g_varchar2_table(7) := '706F7274616E743B0D0A2020636F6C6F723A2077686974652021696D706F7274616E743B0D0A2020626F726465722D7261646975733A20313070783B0D0A7D0D0A2F2A204D69676C696F7261206C6F207374696C652064656C206D656E75206C61746572';
wwv_flow_imp.g_varchar2_table(8) := '616C65202A2F0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E74207B0D0A2020666F6E742D73697A653A20313470783B0D0A202070616464696E673A2038707820313270783B0D0A2020626F726465722D7261646975733A';
wwv_flow_imp.g_varchar2_table(9) := '203870783B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E337320656173653B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E743A686F766572207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(10) := '726F756E642D636F6C6F723A20233334343935653B0D0A2020636F6C6F723A20236563663066313B0D0A7D0D0A2F2A204D69676C696F726120696C207469746F6C6F202A2F0D0A2E742D4865616465722D6272616E64696E67207B0D0A2020666F6E742D';
wwv_flow_imp.g_varchar2_table(11) := '73697A653A20323270783B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A2020636F6C6F723A20233263336535303B0D0A7D0D0A2F2A20506572736F6E616C697A7A61206C6F2073666F6E646F207072696E636970616C65202A2F0D0A2E74';
wwv_flow_imp.g_varchar2_table(12) := '2D426F6479207B0D0A20206261636B67726F756E643A20236638663966612021696D706F7274616E743B0D0A7D0D0A0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(26046524857903355073)
,p_theme_id=>42
,p_file_name=>'26046524451713355070.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A2A2F0D0A0D0A0D0A2E612D4361726456696577202E612D43617264566965772D6974656D7320';
wwv_flow_imp.g_varchar2_table(2) := '2E612D43617264566965772D6974656D207B626F726465722D7261646975733A20313670783B626F782D736861646F773A2030203670782031357078207267626128302C20302C20302C20302E31293B7472616E736974696F6E3A207472616E73666F72';
wwv_flow_imp.g_varchar2_table(3) := '6D20302E327320656173652C20626F782D736861646F7720302E327320656173653B6F766572666C6F773A2068696464656E3B7D2E612D4361726456696577202E612D43617264566965772D6974656D73202E612D43617264566965772D6974656D3A68';
wwv_flow_imp.g_varchar2_table(4) := '6F766572207B7472616E73666F726D3A207363616C6528312E3033293B626F782D736861646F773A203020313070782032357078207267626128302C20302C20302C20302E32293B7D2E742D547265654E6176202E612D54726565566965772D6E6F6465';
wwv_flow_imp.g_varchar2_table(5) := '2E69732D666F6375736564207B6261636B67726F756E642D636F6C6F723A20233263336535302021696D706F7274616E743B636F6C6F723A2077686974652021696D706F7274616E743B626F726465722D7261646975733A20313070783B7D2E742D5472';
wwv_flow_imp.g_varchar2_table(6) := '65654E6176202E612D54726565566965772D636F6E74656E74207B666F6E742D73697A653A20313470783B70616464696E673A2038707820313270783B626F726465722D7261646975733A203870783B7472616E736974696F6E3A206261636B67726F75';
wwv_flow_imp.g_varchar2_table(7) := '6E642D636F6C6F7220302E337320656173653B7D2E742D547265654E6176202E612D54726565566965772D636F6E74656E743A686F766572207B6261636B67726F756E642D636F6C6F723A20233334343935653B636F6C6F723A20236563663066313B7D';
wwv_flow_imp.g_varchar2_table(8) := '2E742D4865616465722D6272616E64696E67207B666F6E742D73697A653A20323270783B666F6E742D7765696768743A20626F6C643B636F6C6F723A20233263336535303B7D2E742D426F6479207B6261636B67726F756E643A20236638663966612021';
wwv_flow_imp.g_varchar2_table(9) := '696D706F7274616E743B7D';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(26376157147657219731)
,p_theme_id=>42
,p_file_name=>'26046524451713355070.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045830788229057325)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15616318043466
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045835431376057336)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318043694
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045835575834057336)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318043703
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045835697819057336)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318043714
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045835877559057336)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318043690
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045836195424057336)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318043715
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26045836215781057336)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318043715
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26046349057920072707)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318244707
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26046349391857072708)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15616318244710
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(26045831015708057325)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15616318043471
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'TASK MANAGER'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #373643;',
'    transform: scale(0.95); ',
'}',
'',
'/* ---------- REGION STYLE ---------- */',
'.t-Region {',
'    border-radius: 12px;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);',
'    background-color: #fefefe;',
'    padding: 20px;',
'    margin-bottom: 20px;',
'    transition: all 0.3s ease-in-out;',
'}',
'',
'.t-Region:hover {',
'    transform: translateY(-4px);',
'}',
'',
'/* ---------- REGION TITLES ---------- */',
'.t-Region .t-Region-header {',
'    background: linear-gradient(to right, #373643, #818184);',
'    color: white;',
'    border-radius: 12px 12px 0 0;',
'    padding: 10px 16px;',
'    font-weight: bold;',
'    font-size: 16px;',
'}',
'',
'/* ---------- CHARTS + BANNER ---------- */',
'.t-Region--chart,',
'.t-Region--banner {',
'    background-color: #373643;',
'    border: 1px solid #eaeaea;',
'    border-radius: 12px;',
'    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);',
'}',
'',
'/* ---------- HOMEPAGE ICONS (es: Progetti, Users, ecc) ---------- */',
'.t-Body-content .t-Region .fa, ',
'.t-Body-content .t-Region .t-Icon {',
'    font-size: 36px;',
'    color: #373643;',
'    margin-bottom: 10px;',
'}',
'',
'/* ---------- HEADER PRINCIPALE ---------- */',
'h1#TASK_MANAGER {',
'    font-size: 60px;',
'    color: #373643;',
'    font-weight: 900;',
'    text-shadow: 1px 1px 2px rgba(0,0,0,0.1);',
'}',
'',
'/* ---------- H3 STYLING (es. Progetti, Users) ---------- */',
'h3 {',
'    font-size: 18px;',
'    color: #373643;',
'    border-bottom: 2px solid #373643;',
'    padding-bottom: 5px;',
'    margin-top: 10px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045906498104066778)
,p_plug_name=>'Project_Cs'
,p_title=>'TASK MANAGER'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-256-rounded.png	'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26039458256170898018)
,p_plug_name=>'Menu Bar'
,p_parent_plug_id=>wwv_flow_imp.id(26045906498104066778)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_template_component_type=>'PARTIAL'
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046122749920070844)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--stacked:t-Cards--hideBody:t-Cards--animRaiseCard'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(26046119572288070841)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26372564583928113337)
,p_plug_name=>'Progetti In Corso'
,p_title=>'Progetti In Corso'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(26372564628756113338)
,p_region_id=>wwv_flow_imp.id(26372564583928113337)
,p_chart_type=>'pie'
,p_title=>'Progetti in Corso'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_legend_font_family=>'Arial'
,p_legend_font_style=>'italic'
,p_legend_font_size=>'12'
,p_legend_font_color=>'#ff0400'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(26372564766855113339)
,p_chart_id=>wwv_flow_imp.id(26372564628756113338)
,p_seq=>30
,p_name=>'Progetti In Corso'
,p_data_source_type=>'TABLE'
,p_query_table=>'PROJECT'
,p_include_rowid_column=>false
,p_series_name_column_name=>'NAME'
,p_items_label_column_name=>'NAME'
,p_items_short_desc_column_name=>'NAME'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_items_label_font_family=>'Arial'
,p_items_label_font_style=>'italic'
,p_items_label_font_size=>'14'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::#ID#\#NAME#\#NAME#\'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26372565093398113342)
,p_plug_name=>'Calendario Progetti'
,p_title=>'Calendario Progetti'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody:t-Form--slimPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'START_DATE',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'END_DATE',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE')).to_clob
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(26039458395374898019)
,p_region_id=>wwv_flow_imp.id(26039458256170898018)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362317865359806322
,p_label=>'impostazioni'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(26039458572372898021)
,p_region_id=>wwv_flow_imp.id(26039458256170898018)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362316605839802174
,p_label=>'Crea Task'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-plus-square-o'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(26039458603060898022)
,p_region_id=>wwv_flow_imp.id(26039458256170898018)
,p_position_id=>362316004162771045
,p_display_sequence=>30
,p_template_id=>362316605839802174
,p_label=>'Crea Progetto'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-plus-square-o'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(26039458445604898020)
,p_component_action_id=>wwv_flow_imp.id(26039458395374898019)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Refresh'
,p_display_sequence=>50
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(26039458821630898024)
,p_component_action_id=>wwv_flow_imp.id(26039458395374898019)
,p_menu_entry_type=>'SEPARATOR'
,p_display_sequence=>30
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(26039458944653898025)
,p_component_action_id=>wwv_flow_imp.id(26039458395374898019)
,p_menu_entry_type=>'ENTRY'
,p_label=>'I miei progetti'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-card-holder'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(26039459036847898026)
,p_component_action_id=>wwv_flow_imp.id(26039458395374898019)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Le mie Task'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-file-text-o'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(26039459183234898027)
,p_component_action_id=>wwv_flow_imp.id(26039458395374898019)
,p_menu_entry_type=>'SEPARATOR'
,p_display_sequence=>70
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(26039459269627898028)
,p_component_action_id=>wwv_flow_imp.id(26039458395374898019)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Log Out'
,p_display_sequence=>80
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-box-arrow-out-nw'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Progetti'
,p_alias=>'PROJECT1'
,p_step_title=>'Progetti'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045920978705066962)
,p_plug_name=>'Progetti'
,p_title=>'Progetti'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Project'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26045921033805066962)
,p_name=>'Project'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26045921033805066962
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045921862187066964)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045922264056066965)
,p_db_column_name=>'OWNER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Users'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045909069354066949)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045922592529066966)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Titolo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045922977139066966)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045923385092066966)
,p_db_column_name=>'START_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Inizio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045923703393066967)
,p_db_column_name=>'END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data FIne'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045924108486066967)
,p_db_column_name=>'CHECK_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Stato'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045924586310066967)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045924951295066968)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045925332695066968)
,p_db_column_name=>'UPDATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045925710468066968)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046039689993070770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260460397'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OWNER_ID:NAME:DESCRIPTION:START_DATE:END_DATE:CHECK_STATUS'
,p_sort_column_1=>'OWNER_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045927481290066970)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668161460439007007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045920978705066962)
,p_button_name=>'VISUALIZZA_OBIETTIVO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Visualizza Obiettivi'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372561089076113302)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045920978705066962)
,p_button_name=>'ProgettiPoreferiti'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Progetti Preferiti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:3::'
,p_icon_css_classes=>'fa-heart-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372560904483113301)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045920978705066962)
,p_button_name=>'Commenti'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Commenti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:3::'
,p_icon_css_classes=>'fa-comments-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668161363526007006)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045920978705066962)
,p_button_name=>'CREA_OBIETTIVO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea Obiettivo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:3::'
,p_icon_css_classes=>'fa-certificate'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045926282390066969)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26045920978705066962)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea Progetto'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045926519198066969)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26045920978705066962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045927023841066969)
,p_event_id=>wwv_flow_imp.id(26045926519198066969)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26045920978705066962)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Project'
,p_alias=>'PROJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Project'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045908249373066947)
,p_plug_name=>'Project'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045916542086066958)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045916918676066959)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045916542086066958)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045918372753066960)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045916542086066958)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancella'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045918701281066960)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045916542086066958)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372562438457113316)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26045916542086066958)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Visualizza Progetti'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045919122315066960)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26045916542086066958)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045908526381066949)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045908989176066949)
,p_name=>'P3_OWNER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_prompt=>'User'
,p_source=>'OWNER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045909628168066951)
,p_name=>'P3_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_prompt=>'Titolo'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045910044197066951)
,p_name=>'P3_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_prompt=>'Descrizione'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045910490056066952)
,p_name=>'P3_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_prompt=>'Data Inizio'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045910857574066953)
,p_name=>'P3_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_prompt=>'Data FIne'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045911237760066953)
,p_name=>'P3_CHECK_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_prompt=>'Stato'
,p_source=>'CHECK_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Completato;Completato,In Corso;In Corso,In Attesa;In Attesa,Terminato;Terminato,Da Iniziare;Da Iniziare'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045911637660066954)
,p_name=>'P3_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045912018336066954)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045912445524066955)
,p_name=>'P3_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045912864342066955)
,p_name=>'P3_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_item_source_plug_id=>wwv_flow_imp.id(26045908249373066947)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045917055139066959)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26045916918676066959)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045917872797066959)
,p_event_id=>wwv_flow_imp.id(26045917055139066959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045919958042066961)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26045908249373066947)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045919958042066961
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045920392964066961)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26045920392964066961
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045919510868066961)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26045908249373066947)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Project'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045919510868066961
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Users'
,p_alias=>'USERS'
,p_step_title=>'Users'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045939865780067616)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26045939924594067616)
,p_name=>'Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26045939924594067616
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045940600537067618)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045941092524067618)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045941492175067619)
,p_db_column_name=>'EMAIL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045941899227067619)
,p_db_column_name=>'ROLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046058071018070786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260460581'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:EMAIL:ROLE'
,p_sort_column_1=>'USERNAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045943507463067620)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045942306740067619)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045939865780067616)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aggiungi Utente'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045942628848067620)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26045939865780067616)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045943185842067620)
,p_event_id=>wwv_flow_imp.id(26045942628848067620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26045939865780067616)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'User'
,p_alias=>'USER'
,p_page_mode=>'MODAL'
,p_step_title=>'User'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045932331650067608)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045935463762067613)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045935883336067613)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045935463762067613)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045937237851067614)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045935463762067613)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancella'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045937607199067614)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045935463762067613)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045938018864067615)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26045935463762067613)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045932677806067610)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_item_source_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045933012110067611)
,p_name=>'P5_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_item_source_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045933451704067611)
,p_name=>'P5_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_item_source_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045933878380067611)
,p_name=>'P5_ROLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_item_source_plug_id=>wwv_flow_imp.id(26045932331650067608)
,p_prompt=>'Ruolo'
,p_source=>'ROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Manager;Manager,Collaboratore;Collaboratore,Utente;Utente'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045935985769067613)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26045935883336067613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045936732589067614)
,p_event_id=>wwv_flow_imp.id(26045935985769067613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045938842925067615)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26045932331650067608)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045938842925067615
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045939244908067616)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26045939244908067616
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045938468789067615)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26045932331650067608)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045938468789067615
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Task'
,p_alias=>'TASK1'
,p_step_title=>'Task'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045959347544068271)
,p_plug_name=>'Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TASK'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Task'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26045959451087068271)
,p_name=>'Task'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26045959451087068271
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045960154997068273)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045960565630068273)
,p_db_column_name=>'ASSIGNE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Assegna User'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045909069354066949)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045960991379068274)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Progetto'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045949735348068263)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045961387502068274)
,p_db_column_name=>'TITLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Titolo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045961766075068274)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045962181064068274)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Scadenza'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045962562821068275)
,p_db_column_name=>'CHECK_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Stato'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045962971279068275)
,p_db_column_name=>'MILESTONE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Obiettivo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045952036658068265)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046065080533070792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260460651'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGNE_ID:PROJECT_ID:TITLE:DESCRIPTION:DUE_DATE:CHECK_STATUS:MILESTONE_ID'
,p_sort_column_1=>'ASSIGNE_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045964684927068276)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372564313132113335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045959347544068271)
,p_button_name=>'VisualizzaSottoTask'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Visualizza sotto task'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26607960672406031928)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045959347544068271)
,p_button_name=>'CREASOTTOTASK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea Sotto Task'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372561183054113303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045959347544068271)
,p_button_name=>'COMMENTI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Commenti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:7::'
,p_icon_css_classes=>'fa-comments-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045963468010068275)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045959347544068271)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea Task'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045963762663068275)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26045959347544068271)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045964296579068276)
,p_event_id=>wwv_flow_imp.id(26045963762663068275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26045959347544068271)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Task'
,p_alias=>'TASK'
,p_page_mode=>'MODAL'
,p_step_title=>'Task'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045948518778068260)
,p_plug_name=>'Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TASK'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045954956032068268)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045955363455068268)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045954956032068268)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045956763573068269)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045954956032068268)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancella'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045957165393068269)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045954956032068268)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668162754730007020)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26045954956032068268)
,p_button_name=>'Visualizza'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Visualizza Task'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045957585678068270)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26045954956032068268)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045948804640068262)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045949249829068262)
,p_name=>'P7_ASSIGNE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Assegna User'
,p_source=>'ASSIGNE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045949622853068263)
,p_name=>'P7_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Progetto'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045950387564068264)
,p_name=>'P7_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Titolo'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045950763568068264)
,p_name=>'P7_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Descrizione'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045951172418068264)
,p_name=>'P7_DUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Scadenza'
,p_source=>'DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045951571583068265)
,p_name=>'P7_CHECK_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Stato'
,p_source=>'CHECK_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Completato;Completato,In Corso;In Corso,In Attesa;In Attesa,Terminato;Terminato,Da Iniziare;Da Iniziare'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045951917992068265)
,p_name=>'P7_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_item_source_plug_id=>wwv_flow_imp.id(26045948518778068260)
,p_prompt=>'Obiettivo'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT_MILESTONES.TITLE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045955422902068268)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26045955363455068268)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045956231011068269)
,p_event_id=>wwv_flow_imp.id(26045955422902068268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045958355205068270)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26045948518778068260)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Task'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045958355205068270
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045958784293068270)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26045958784293068270
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045957920251068270)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26045948518778068260)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Task'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045957920251068270
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Favorite Project'
,p_alias=>'FAVORITE-PROJECT1'
,p_step_title=>'Favorite Project'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045979917414068840)
,p_plug_name=>'Favorite Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FAVORITE_PROJECT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Favorite Project'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26045980059631068840)
,p_name=>'Favorite Project'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26045980059631068840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045980744465068841)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045981181589068842)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Progetto'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045949735348068263)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045981587400068842)
,p_db_column_name=>'USER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(26045909069354066949)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045981959975068842)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045982347815068843)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045982755355068843)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26045983188016068843)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046076938098070802)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260460770'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_ID:USER_ID'
,p_sort_column_1=>'PROJECT_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045984898964068844)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668162625996007019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045979917414068840)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Ritorna'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:9::'
,p_icon_css_classes=>'fa-box-arrow-in-west'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045983666321068844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045979917414068840)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aggiungi Preferiti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045983996143068844)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26045979917414068840)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045984458212068844)
,p_event_id=>wwv_flow_imp.id(26045983996143068844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26045979917414068840)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Favorite Project'
,p_alias=>'FAVORITE-PROJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Favorite Project'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045970248247068830)
,p_plug_name=>'Favorite Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FAVORITE_PROJECT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045975551229068836)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045975978506068837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045975551229068836)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045977306029068838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045975551229068836)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancella'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045977700435068838)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045975551229068836)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372562363877113315)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26045975551229068836)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Visualizza Preferiti'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045978110959068838)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26045975551229068836)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045970528398068831)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045970903829068832)
,p_name=>'P9_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_prompt=>'Progetto'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045971369825068832)
,p_name=>'P9_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_prompt=>'User'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045971736081068833)
,p_name=>'P9_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045972237969068833)
,p_name=>'P9_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045972626669068834)
,p_name=>'P9_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045973023014068834)
,p_name=>'P9_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_item_source_plug_id=>wwv_flow_imp.id(26045970248247068830)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045976039605068837)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26045975978506068837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045976870531068837)
,p_event_id=>wwv_flow_imp.id(26045976039605068837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045978982052068839)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26045970248247068830)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Favorite Project'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045978982052068839
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045979370381068839)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26045979370381068839
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045978594751068838)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26045970248247068830)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Favorite Project'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045978594751068838
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Comments'
,p_alias=>'COMMENTS'
,p_step_title=>'Comments'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045999701297069481)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'COMMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Comments'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26045999824557069481)
,p_name=>'Comments'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26045999824557069481
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046000587669069483)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046000991801069483)
,p_db_column_name=>'USERS_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Users'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045909069354066949)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046001310809069483)
,p_db_column_name=>'TASK_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(26045991032438069473)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046001789320069484)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Progetto'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045949735348068263)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046002190458069484)
,p_db_column_name=>'COMMENT_TEXT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046002593171069484)
,p_db_column_name=>'CREATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creazione'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046002930309069485)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046090676796070814)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260460907'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERS_ID:TASK_ID:PROJECT_ID:COMMENT_TEXT'
,p_sort_column_1=>'USERS_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046004688333069486)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668162500654007018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045999701297069481)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Ritorna'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:11::'
,p_icon_css_classes=>'fa-box-arrow-in-west'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046003470154069485)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045999701297069481)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aggiungi Commento'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046003726104069485)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26045999701297069481)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046004272190069486)
,p_event_id=>wwv_flow_imp.id(26046003726104069485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26045999701297069481)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Comment'
,p_alias=>'COMMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Comment'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045989850199069470)
,p_plug_name=>'Comment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'COMMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045995348779069477)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045995753752069477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26045995348779069477)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045997172420069478)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26045995348779069477)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancella'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045997505981069479)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26045995348779069477)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372562253442113314)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26045995348779069477)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Visualizza Commenti'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045997943775069479)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26045995348779069477)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045990107805069472)
,p_name=>'P11_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045990508657069473)
,p_name=>'P11_USERS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_prompt=>'Assegna User'
,p_source=>'USERS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045990975997069473)
,p_name=>'P11_TASK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_prompt=>'Task'
,p_source=>'TASK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK.TITLE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045991637287069474)
,p_name=>'P11_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_prompt=>'Progetto'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045992019264069474)
,p_name=>'P11_COMMENT_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_prompt=>'Descrizione'
,p_source=>'COMMENT_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045992433736069475)
,p_name=>'P11_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045992823161069475)
,p_name=>'P11_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_item_source_plug_id=>wwv_flow_imp.id(26045989850199069470)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26045995847459069477)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26045995753752069477)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26045996636941069478)
,p_event_id=>wwv_flow_imp.id(26045995847459069477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045998719225069480)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26045989850199069470)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Comment'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045998719225069480
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045999144655069480)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26045999144655069480
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045998315969069480)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26045989850199069470)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Comment'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045998315969069480
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Sotto Task'
,p_alias=>'TASK-CHECKLIST1'
,p_step_title=>'Sotto Task'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046016843248070107)
,p_plug_name=>'Sotto Task'
,p_title=>'Sotto Task'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    tc.ID,',
'    tc.TASK_ID,',
'    tc.TITLE,',
'    tc.IS_DONE,',
'    tc.USER_ID,',
'    u.USERNAME AS user_username_task',
'FROM ',
'    TASK_CHECKLIST tc',
'JOIN ',
'    USERS u ON tc.USER_ID = u.ID;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Task Checklist'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046016915441070107)
,p_name=>'Task Checklist'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046016915441070107
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26607962208746031944)
,p_db_column_name=>'IS_DONE'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Is Done'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26607962305340031945)
,p_db_column_name=>'USER_ID'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26607962849250031950)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_is_primary_key=>'Y'
,p_column_identifier=>'S'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26668160873805007001)
,p_db_column_name=>'TASK_ID'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Task Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26668160934685007002)
,p_db_column_name=>'TITLE'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'Titolo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26668161017534007003)
,p_db_column_name=>'USER_USERNAME_TASK'
,p_display_order=>80
,p_column_identifier=>'V'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046103256156070825)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260461033'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_sort_column_1=>'TASK_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046020547625070111)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26372564472025113336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046016843248070107)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Ritorna'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:13::'
,p_icon_css_classes=>'fa-box-arrow-in-west'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26607958582876031907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046016843248070107)
,p_button_name=>'Modifica'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modifica Sotto Task'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:13::'
,p_icon_css_classes=>'fa-scissors'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046019375116070111)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26046016843248070107)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea Sotto Task'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046019631753070111)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26046016843248070107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046020194607070111)
,p_event_id=>wwv_flow_imp.id(26046019631753070111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046016843248070107)
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Task Checklist'
,p_alias=>'TASK-CHECKLIST'
,p_page_mode=>'MODAL'
,p_step_title=>'Task Checklist'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046009397641070099)
,p_plug_name=>'Task Checklist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TASK_CHECKLIST'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046012436622070104)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046012804361070104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046012436622070104)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046014218758070105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046012436622070104)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046014660760070105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26046012436622070104)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26607960501592031927)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26046012436622070104)
,p_button_name=>'MODIFICASOTTOTASK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modifica Sotto Task'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046015072046070106)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(26046012436622070104)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046009632347070101)
,p_name=>'P13_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_item_source_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046010042609070102)
,p_name=>'P13_TASK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_item_source_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_prompt=>'Task'
,p_source=>'TASK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK.TITLE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046010425767070102)
,p_name=>'P13_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_item_source_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046010834026070102)
,p_name=>'P13_IS_DONE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_item_source_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_prompt=>'Is Done'
,p_source=>'IS_DONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Completato;Y,Non Completato;N'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26607962749904031949)
,p_name=>'P13_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_item_source_plug_id=>wwv_flow_imp.id(26046009397641070099)
,p_prompt=>'User Id'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    u.USERNAME AS user_username_task,',
'    u.ID AS user_username',
'FROM ',
'    USERS u',
'LEFT JOIN ',
'    TASK_CHECKLIST tc ON u.ID = tc.USER_ID;',
''))
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046012984939070104)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046012804361070104)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046013783157070105)
,p_event_id=>wwv_flow_imp.id(26046012984939070104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046015899467070106)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26046009397641070099)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Task Checklist'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046015899467070106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046016279132070107)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26046016279132070107
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046015469354070106)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26046009397641070099)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Task Checklist'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046015469354070106
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Project Milestones'
,p_alias=>'PROJECT-MILESTONES'
,p_step_title=>'Project Milestones'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046032750532070761)
,p_plug_name=>'Project Milestones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT_MILESTONES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Project Milestones'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046032867209070761)
,p_name=>'Project Milestones'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046032867209070761
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046033548088070763)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046033968973070763)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Progetto'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26045949735348068263)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046034364071070763)
,p_db_column_name=>'TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Titolo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046034708575070764)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descrizione'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046035159246070764)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Scadenza'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046035593969070764)
,p_db_column_name=>'IS_COMPLETED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Avanzamento'
,p_column_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6,RR:IR_MILESTONE_ID:\#TITLE#\'
,p_column_linktext=>'#IS_COMPLETED#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046110299789070833)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260461103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_ID:TITLE:DESCRIPTION:DUE_DATE:IS_COMPLETED'
,p_sort_column_1=>'PROJECT_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046037256386070766)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668162020878007013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046032750532070761)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Ritorna'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:15::'
,p_icon_css_classes=>'fa-box-arrow-in-west'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668161583691007008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046032750532070761)
,p_button_name=>'MODIFICA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modifica Obiettivo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:15::'
,p_icon_css_classes=>'fa-cut'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046036076653070765)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26046032750532070761)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea Obiettivo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046036355109070765)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26046032750532070761)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046036940103070765)
,p_event_id=>wwv_flow_imp.id(26046036355109070765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046032750532070761)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Project Milestone'
,p_alias=>'PROJECT-MILESTONE'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Milestone'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838348993057340)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046023806757070751)
,p_plug_name=>'Project Milestone'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT_MILESTONES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046028357886070757)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046028733481070758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046028357886070757)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Annulla'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046030146792070759)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046028357886070757)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancella'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046030578148070759)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26046028357886070757)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applica'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046030921148070759)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26046028357886070757)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crea'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046024134216070753)
,p_name=>'P15_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_item_source_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046024539397070754)
,p_name=>'P15_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_item_source_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_prompt=>'Progetto'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046024988362070754)
,p_name=>'P15_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_item_source_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_prompt=>'Titolo'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046025303456070755)
,p_name=>'P15_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_item_source_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_prompt=>'Descrizione'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046025758301070755)
,p_name=>'P15_DUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_item_source_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_prompt=>'Scadenza'
,p_source=>'DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046026197427070755)
,p_name=>'P15_IS_COMPLETED'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_item_source_plug_id=>wwv_flow_imp.id(26046023806757070751)
,p_prompt=>'Avanzamento'
,p_source=>'IS_COMPLETED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Completato;Y,Non Completato;N'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046028847594070758)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046028733481070758)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046029695856070758)
,p_event_id=>wwv_flow_imp.id(26046028847594070758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046031774111070760)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26046023806757070751)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project Milestone'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046031774111070760
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046032178948070760)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>26046032178948070760
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046031369833070760)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26046023806757070751)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Project Milestone'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046031369833070760
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'tASK cHECKLIST'
,p_alias=>'TASK-CHECKLIST4'
,p_step_title=>'Task Checklist'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26618969730496995774)
,p_plug_name=>'Task Checklist'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'TASK_CHECKLIST'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26607959047217031912)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26607959193209031913)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26607959271444031914)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Titolo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26607959365256031915)
,p_name=>'IS_DONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_DONE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Completato'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26607959409600031916)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26607959550721031917)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(26607958924120031911)
,p_internal_uid=>26607958924120031911
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(26619034347393269173)
,p_interactive_grid_id=>wwv_flow_imp.id(26607958924120031911)
,p_static_id=>'266190344'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(26619034580544269173)
,p_report_id=>wwv_flow_imp.id(26619034347393269173)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26619035041207269175)
,p_view_id=>wwv_flow_imp.id(26619034580544269173)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(26607959047217031912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26619035956785269177)
,p_view_id=>wwv_flow_imp.id(26619034580544269173)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(26607959193209031913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26619036806632269180)
,p_view_id=>wwv_flow_imp.id(26619034580544269173)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(26607959271444031914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26619037969767269182)
,p_view_id=>wwv_flow_imp.id(26619034580544269173)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(26607959365256031915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26619488685150009424)
,p_view_id=>wwv_flow_imp.id(26619034580544269173)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(26607959409600031916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26668161243340007005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26618969730496995774)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ritorna'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-box-arrow-out-west'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26607959659470031918)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26618969730496995774)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'tASK cHECKLIST - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26607959659470031918
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'project milestone modifica'
,p_alias=>'PROJECT-MILESTONE-MODIFICA'
,p_step_title=>'project milestone modifica'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Personalizzazione dei bottoni */',
'button, .t-Button { /* Colore blu per i bottoni */',
'    border: none;',
'    border-radius: 4px; /* Angoli arrotondati per i bottoni */',
'    padding: 12px 24px;',
'    cursor: pointer;',
'    font-size: 12px;',
'    transition: all 0.3s ease-in-out; /* Transizione per animazioni fluide */',
'}',
'',
unistr('button:hover, .t-Button:hover { /* Colore pi\00F9 scuro al passaggio del mouse */'),
'    transform: scale(1.1); /* Ingrandisce il bottone al passaggio del mouse */',
'}',
'',
'button:active, .t-Button:active {',
'    background-color: #1abc9c; /* Colore verde acqua quando il bottone viene cliccato */',
'    transform: scale(0.95); /* Riduce la dimensione del bottone durante il click */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53687783842966451892)
,p_plug_name=>'Project Milestone'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'PROJECT_MILESTONES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26668161653527007009)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Progetto'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26668161711780007010)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Descrizione'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26668161861568007011)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Scadenza'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26668161944144007012)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Avanzamento'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53676773159686488030)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53676773383913488032)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Titolo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53676773522069488034)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53676773663190488035)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(53676773036589488029)
,p_internal_uid=>53676773036589488029
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(26045838348993057340)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(53687848459862725291)
,p_interactive_grid_id=>wwv_flow_imp.id(53676773036589488029)
,p_static_id=>'266190344'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(53687848693013725291)
,p_report_id=>wwv_flow_imp.id(53687848459862725291)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27068579040560188096)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(26668161653527007009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27068579989606188099)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(26668161711780007010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27068580890431188101)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(26668161861568007011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27068581742797188103)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(26668161944144007012)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53687849153676725293)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(53676773159686488030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53687850919101725298)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(53676773383913488032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53688302797619465542)
,p_view_id=>wwv_flow_imp.id(53687848693013725291)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(53676773522069488034)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27068817944821456130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53687783842966451892)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ritorna'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-box-arrow-out-west'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27068818441411456131)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53687783842966451892)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'tASK cHECKLIST - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27068818441411456131
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Project_Cs - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26045898911715066769)
,p_plug_name=>'Project_Cs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26045901068522066773)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26045898911715066769)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045899443433066771)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26045898911715066769)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045899899736066772)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26045898911715066769)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045900202616066772)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045898911715066769)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26045900689230066772)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26045898911715066769)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045903249680066775)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045903249680066775
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26045903801699066775)
,p_page_process_id=>wwv_flow_imp.id(26045903249680066775)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26045904303728066775)
,p_page_process_id=>wwv_flow_imp.id(26045903249680066775)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045901363038066773)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045901363038066773
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26045901856235066773)
,p_page_process_id=>wwv_flow_imp.id(26045901363038066773)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26045902304319066774)
,p_page_process_id=>wwv_flow_imp.id(26045901363038066773)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26045902892498066774)
,p_page_process_id=>wwv_flow_imp.id(26045901363038066773)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045905245065066776)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26045905245065066776
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26045904839108066775)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26045904839108066775
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046318568019072067)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26045831342096057326)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046325258787072072)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046325689265072072)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(26046325258787072072)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(26046319252599072068)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(26045835877559057336)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046326146639072073)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(26046325258787072072)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(26046319940778072068)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(26045836215781057336)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046326548190072073)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(26046325258787072072)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(26046320615401072069)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046326996995072074)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046327376655072074)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(26046326996995072074)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046328115760072075)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(26046327376655072074)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26046328557423072075)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(26046327376655072074)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046329269992072078)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046329649118072079)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046330080139072079)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046339018709072393)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(26046327376655072074)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(26046323418095072071)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046339560585072394)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(26046326996995072074)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26046339996201072394)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(26046339560585072394)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046340604052072398)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046341062720072399)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046348403604072706)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(26046339560585072394)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(26046324596888072071)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046327731884072074)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046327376655072074)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046338136311072392)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046327731884072074)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046338617629072393)
,p_event_id=>wwv_flow_imp.id(26046338136311072392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046328557423072075)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835877559057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046123160936070844)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046123354654070844)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046123925228070845)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046123925228070845
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046124763473070849)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046125161973070850)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046125562398070851)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046125922536070851)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046126362581070851)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046126710918070852)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046127193150070852)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046129931348070856)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260461300'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046131534561070857)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046123160936070844)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046130871441070857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046123354654070844)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26046132345584070858)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046131979001070858)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>26046131979001070858
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045836215781057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046132697666070858)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046132704136070858)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046135219808070861)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046132697666070858)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046133801728070860)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046132697666070858)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26046135601351070861)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046135900170070861)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046132704136070858)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046136779183070864)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046132704136070858)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(26046136896648070864)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046133915981070860)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046133801728070860)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046134631090070860)
,p_event_id=>wwv_flow_imp.id(26046133915981070860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046137841814070866)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>26046137841814070866
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046138248430070866)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>26046138248430070866
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046138555858070866)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(26046138617367070866)
,p_region_id=>wwv_flow_imp.id(26046138555858070866)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(26046140837389070868)
,p_chart_id=>wwv_flow_imp.id(26046138617367070866)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(26046142048245070869)
,p_chart_id=>wwv_flow_imp.id(26046138617367070866)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(26046141488988070869)
,p_chart_id=>wwv_flow_imp.id(26046138617367070866)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046138791856070866)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(26046138820809070866)
,p_region_id=>wwv_flow_imp.id(26046138791856070866)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(26046145830944070872)
,p_chart_id=>wwv_flow_imp.id(26046138820809070866)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(26046146411588070873)
,p_chart_id=>wwv_flow_imp.id(26046138820809070866)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(26046147043605070873)
,p_chart_id=>wwv_flow_imp.id(26046138820809070866)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046138949653070866)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(26046139098909070866)
,p_region_id=>wwv_flow_imp.id(26046138949653070866)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(26046143387881070871)
,p_chart_id=>wwv_flow_imp.id(26046139098909070866)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(26046143934743070871)
,p_chart_id=>wwv_flow_imp.id(26046139098909070866)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(26046144597889070871)
,p_chart_id=>wwv_flow_imp.id(26046139098909070866)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26046139184549070866)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046148135059070877)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046148584543070877)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26046139279176070866)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046156344865071235)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046156766970071236)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046139344143070866)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046163640922071560)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046138555858070866)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046164002213071561)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046138791856070866)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046164470168071561)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046138949653070866)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046164896598071561)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046139184549070866)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046139470296070866)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046139344143070866)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046139509613070866)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046166539668071563)
,p_event_id=>wwv_flow_imp.id(26046139509613070866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046138555858070866)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046167086933071563)
,p_event_id=>wwv_flow_imp.id(26046139509613070866)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046138949653070866)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046167525029071563)
,p_event_id=>wwv_flow_imp.id(26046139509613070866)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046138791856070866)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046168020854071564)
,p_event_id=>wwv_flow_imp.id(26046139509613070866)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046139184549070866)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046168516773071564)
,p_event_id=>wwv_flow_imp.id(26046139509613070866)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046139279176070866)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046201720559071601)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046202882011071602)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046202882011071602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046203676930071605)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046204178644071606)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046204579247071607)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046204932984071607)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046205320550071608)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046205726964071609)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046206181321071609)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046206509642071610)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046209672981071617)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260462097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046201823286071601)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046202067615071601)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(26046202192586071601)
,p_region_id=>wwv_flow_imp.id(26046202067615071601)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(26046213368899071621)
,p_chart_id=>wwv_flow_imp.id(26046202192586071601)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046210508926071618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046201720559071601)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046202286967071601)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046201823286071601)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(26046213898843071622)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046202496325071601)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046201823286071601)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046201991275071601)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046211858591071620)
,p_event_id=>wwv_flow_imp.id(26046201991275071601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046201720559071601)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046215535952071623)
,p_event_id=>wwv_flow_imp.id(26046201991275071601)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046201720559071601)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046194799253071594)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046195304137071594)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046195304137071594
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046196033432071595)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046196426712071596)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046196887099071596)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046197227729071597)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046197605700071597)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046198043875071597)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046200561972071600)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260462006'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046201439770071601)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046194799253071594)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046180480392071578)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046181013087071578)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046181013087071578
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046181727578071580)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046182193750071581)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046182533291071581)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046182904497071581)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046183324988071582)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046183863055071582)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046184243739071582)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046184680947071583)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046185054794071583)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046185455663071584)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046185899835071584)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046186239211071584)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046186661772071585)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046187168444071585)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046192084824071590)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260461921'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046180585406071578)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046192971754071591)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046180480392071578)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046180389957071578)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046180585406071578)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046180674293071578)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046194265699071593)
,p_event_id=>wwv_flow_imp.id(26046180674293071578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046180480392071578)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046169076890071564)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046169653899071565)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046169653899071565
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046170303909071567)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046170768145071567)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046171144355071568)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046171526463071568)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046171947976071569)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046172356829071569)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046172709633071569)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046173179648071570)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046173577507071570)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046173931640071570)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046177627352071574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260461777'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046169102629071564)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046178591525071575)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046169076890071564)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046168999743071564)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046169102629071564)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046169282320071564)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046179933783071577)
,p_event_id=>wwv_flow_imp.id(26046169282320071564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046169076890071564)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046216035605071624)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046216616733071624)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046216616733071624
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046217580293071627)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046217960248071628)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046218333976071628)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046218788622071629)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046219107476071629)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046219590425071629)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046219967003071630)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046220327031071630)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046220734234071631)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046224176597071634)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260462242'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046225072574071635)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046216035605071624)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835575834057336)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046225640216071636)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26046228049416071638)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046228427475071640)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046228804662071641)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046229298596071641)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046229664949071642)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046226027886071636)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046225640216071636)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046226447060071637)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046225640216071636)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046226855927071637)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046225640216071636)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046227239366071638)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046225640216071636)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046227699250071638)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046227699250071638
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046231856086071644)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046231958713071644)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046233228316071646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046231958713071644)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046233528985071646)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046231958713071644)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26046234920557071647)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046235268641071647)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046231856086071644)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046233630308071646)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046233528985071646)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046234301907071646)
,p_event_id=>wwv_flow_imp.id(26046233630308071646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046235680236071648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>26046235680236071648
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046236155524071648)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046236916973071648)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046236916973071648
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046237763490071651)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046238134369071652)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046238535455071652)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046240284476071654)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260462403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046241484604071655)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046236155524071648)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046241861141071655)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26046236155524071648)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046242271806071656)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26046236155524071648)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046236218771071648)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26046236155524071648)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046242891213071656)
,p_event_id=>wwv_flow_imp.id(26046236218771071648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046236155524071648)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046243361996071657)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046243481923071657)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046246292002071659)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(26046243481923071657)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046246630288071659)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26046243481923071657)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046244497788071658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046243481923071657)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046245813987071659)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046243481923071657)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046246927810071660)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_item_source_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046247351089071660)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_item_source_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046247739706071660)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_item_source_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046248125229071661)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_item_source_plug_id=>wwv_flow_imp.id(26046243361996071657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(26046249426690071664)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046244550729071658)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046244497788071658)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046245244230071659)
,p_event_id=>wwv_flow_imp.id(26046244550729071658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046249725230071664)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(26046243361996071657)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046249725230071664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046250192830071665)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26046243361996071657)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046250192830071665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046250501452071665)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046250501452071665
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046250801949071665)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046250937952071665)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046251098834071665)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046250801949071665)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046253007359071667)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046250801949071665)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26046254369046071668)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(26046251098834071665)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046254726083071668)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046250937952071665)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046255174511071669)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046250937952071665)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046255531240071669)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046250937952071665)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(26046255618617071669)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046253101481071667)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046253007359071667)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046253801066071668)
,p_event_id=>wwv_flow_imp.id(26046253101481071667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046256682831071670)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26046251098834071665)
,p_internal_uid=>26046256682831071670
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835431376057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046251199552071665)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046251276987071665)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26046251465688071665)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(26046251276987071665)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046258665229071676)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26046259089706071676)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046251594922071665)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(26046251276987071665)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046251696172071665)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046268627476072014)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046269303778072015)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046251754213071665)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046251199552071665)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046270062207072016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046251199552071665)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046270443476072017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046251199552071665)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046271715410072018)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046251696172071665)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046272134379072019)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046251696172071665)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046272536702072019)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046251696172071665)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046270537297072017)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046270443476072017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046271200517072018)
,p_event_id=>wwv_flow_imp.id(26046270537297072017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046272936099072020)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26046251754213071665)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>26046272936099072020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046273324785072020)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046273324785072020
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046273712242072020)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046273811228072020)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046273906390072020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046273811228072020)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046276958489072022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046273811228072020)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26046284835108072028)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046278366038072023)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046273712242072020)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046278793436072023)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046273712242072020)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046279180743072024)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046273712242072020)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046279553267072024)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(26046273712242072020)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(26046279670076072024)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046281567788072026)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046273712242072020)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(26046284449413072028)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046277099363072022)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046276958489072022)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046277861594072022)
,p_event_id=>wwv_flow_imp.id(26046277099363072022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046281975204072026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26046273906390072020)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>26046281975204072026
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046282452499072027)
,p_page_process_id=>wwv_flow_imp.id(26046281975204072026)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046282994574072027)
,p_page_process_id=>wwv_flow_imp.id(26046281975204072026)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046283410426072027)
,p_page_process_id=>wwv_flow_imp.id(26046281975204072026)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046283980927072028)
,p_page_process_id=>wwv_flow_imp.id(26046281975204072026)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046274384495072020)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046274220147072020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046274384495072020)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046274425858072020)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046274220147072020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046286454181072030)
,p_event_id=>wwv_flow_imp.id(26046274425858072020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046275652749072020)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26046299312692072041)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'LUCIANOLOGLISCI86@GMAIL.COM'
,p_internal_uid=>26046299312692072041
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046300043874072045)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046300449568072045)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046300873310072046)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046301295212072046)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046301620605072047)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046302029723072047)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(26046279670076072024)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046302470080072047)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046302819042072048)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(26046292141639072036)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046303271584072048)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046303658531072049)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046304097498072049)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046304438709072049)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26046304823425072050)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26046309601245072055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260463097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046310506142072056)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046275652749072020)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046275538695072020)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26046275652749072020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046311221622072057)
,p_event_id=>wwv_flow_imp.id(26046275538695072020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26046275652749072020)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26045838104446057340)
,p_required_patch=>wwv_flow_imp.id(26045835697819057336)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046274962052072020)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046275070322072020)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046275145887072020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046275070322072020)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046288072605072032)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26046275070322072020)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046275337752072020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26046275070322072020)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046289698113072033)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046290069277072033)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046290472370072034)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046290898210072034)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046291245419072035)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046291678332072035)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046292033364072036)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(26046292141639072036)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046294300761072037)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26046274962052072020)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046288139083072032)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26046288072605072032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046288803040072032)
,p_event_id=>wwv_flow_imp.id(26046288139083072032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046294811088072038)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046294811088072038
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046295182063072038)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26046275145887072020)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>26046295182063072038
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046295623982072038)
,p_page_process_id=>wwv_flow_imp.id(26046295182063072038)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046296166912072039)
,p_page_process_id=>wwv_flow_imp.id(26046295182063072038)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046296625522072039)
,p_page_process_id=>wwv_flow_imp.id(26046295182063072038)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046297090764072039)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26046275337752072020)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>26046297090764072039
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26046297573710072040)
,p_page_process_id=>wwv_flow_imp.id(26046297090764072039)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046298053248072040)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26046275337752072020)
,p_internal_uid=>26046298053248072040
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26046298470385072040)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26046298470385072040
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26045839707857057343)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(26045836195424057336)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046312111252072058)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(26045836195424057336)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046312896808072058)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046313230660072059)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046312896808072058)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26046348833820072707)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(26046349391857072708)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046353924283072712)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046354325651072713)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(26046354848643072713)
,p_region_id=>wwv_flow_imp.id(26046354325651072713)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046355332244072714)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(26046352922303072711)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(26046348833820072707)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(26046349057920072707)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046350385920072709)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26046350799210072709)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26046350004812072708)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26046351261411072710)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26046350799210072709)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26046351520473072710)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046352010094072710)
,p_event_id=>wwv_flow_imp.id(26046351520473072710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26046352500323072711)
,p_event_id=>wwv_flow_imp.id(26046351520473072710)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
