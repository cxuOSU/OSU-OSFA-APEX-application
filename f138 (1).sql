prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>52428487018414616
,p_default_application_id=>138
,p_default_owner=>'OSU_FINAID'
);
end;
/
 
prompt APPLICATION 138 - OSU-Tulsa Stats Database
--
-- Application Export:
--   Application:     138
--   Name:            OSU-Tulsa Stats Database
--   Date and Time:   14:41 Friday September 29, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

-- Application Statistics:
--   Pages:                     16
--     Items:                  415
--     Processes:               11
--     Regions:                 46
--     Buttons:                 14
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              16
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   1
--       Shortcuts:              1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Excluded

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'OSU_FINAID')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'OSU-Tulsa Stats Database')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'138')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'55CDF966F67511F25A855CBBFB70DED583CFF7C2D9CC3B64E3B4749B80FC24CE'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2023.04.24.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(72184668868027972)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:OSU-Tulsa'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'OSU-Tulsa'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230815112010'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(72185479621027979)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(72323696783028272)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73883896956274161)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'OSU-Tulsa Finaid Counselor Stats'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73884430649295672)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'New_Date_Finaid_Counselor_Stat'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_parent_list_item_id=>wwv_flow_api.id(73883896956274161)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75043789445788162)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Specific Date Counselor Stats'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:::'
,p_parent_list_item_id=>wwv_flow_api.id(73883896956274161)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75029349269365295)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Summary Stats for Counselor Stats'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:::'
,p_parent_list_item_id=>wwv_flow_api.id(73883896956274161)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73885750844349242)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'OSU-Tulsa_Asst_Dir_Stats_Sheet'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73886022444357274)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'New_Date_Asst-Dir_Stat_Sheet'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_parent_list_item_id=>wwv_flow_api.id(73885750844349242)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75044795810809538)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Specific Date Asst Director Stats'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:::'
,p_parent_list_item_id=>wwv_flow_api.id(73885750844349242)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75045068072816038)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Summary Stats Asst Director '
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:::'
,p_parent_list_item_id=>wwv_flow_api.id(73885750844349242)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73886351103361644)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'CHS_Stats_Sheet'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73886663194366617)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'New_Date_CHS_Stats_Sheet'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:::'
,p_parent_list_item_id=>wwv_flow_api.id(73886351103361644)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75029846364386026)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Specific Date CHS Stats'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:::'
,p_parent_list_item_id=>wwv_flow_api.id(73886351103361644)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75050141489392448)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Summary CHS Stats'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:::'
,p_parent_list_item_id=>wwv_flow_api.id(73886351103361644)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(72313496723028173)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(72325169972028291)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(72325539716028292)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(72325169972028291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(72325951303028292)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(72325169972028291)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223354136384144222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(72314674663028209)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233541363841443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(72314930954028213)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72182535686027961)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72182827206027966)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72183107545027967)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72183439200027967)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72183712209027968)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72184065712027969)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(72184397202027969)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(72316255059028213)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
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
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(72318813980028247)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(72318813980028247)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(72319241522028249)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(72316831723028218)
,p_group_name=>'Administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(72184928305027975)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(72185183183027977)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72185654959027986)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72185998008027997)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72186215809027999)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72186551700027999)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72186848816027999)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72187139911028000)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72187463702028000)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72187797746028000)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72188029015028000)
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72188405273028006)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72188726373028007)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72189098549028007)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72189388460028007)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72189633101028008)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72189971914028008)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72190200739028008)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72190565782028008)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72190879323028008)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72191126027028009)
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72191538897028009)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72191853375028009)
,p_page_template_id=>wwv_flow_api.id(72191538897028009)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72192148839028009)
,p_page_template_id=>wwv_flow_api.id(72191538897028009)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72192475279028010)
,p_page_template_id=>wwv_flow_api.id(72191538897028009)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72193052767028010)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">#BODY#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72193313342028010)
,p_page_template_id=>wwv_flow_api.id(72193052767028010)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72193636645028010)
,p_page_template_id=>wwv_flow_api.id(72193052767028010)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72193841769028011)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72194157882028011)
,p_page_template_id=>wwv_flow_api.id(72193841769028011)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72194472413028011)
,p_page_template_id=>wwv_flow_api.id(72193841769028011)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72194759761028011)
,p_page_template_id=>wwv_flow_api.id(72193841769028011)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72195360650028012)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72195671221028012)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72195907717028013)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72196244079028013)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72196513799028013)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72196893282028013)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72197199204028014)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72197408132028014)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72197734933028014)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72198086567028014)
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72198481896028014)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72198723265028017)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72199056193028018)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72199375837028018)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72199676693028018)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72199962979028018)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72200216758028018)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72200507307028018)
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72200984658028019)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72201248819028019)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72201585887028019)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72201858972028019)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72202127002028019)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72202419058028019)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72202700507028020)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72203037785028020)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72203348101028020)
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(72203775423028020)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72204058997028020)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72204308949028021)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72204698485028021)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72204964309028021)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72205234621028021)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72205534947028021)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(72205823731028022)
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(72290579964028114)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(72291225190028117)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(72291340117028117)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72206292083028023)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72206587601028027)
,p_plug_template_id=>wwv_flow_api.id(72206292083028023)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72209989741028031)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72210117614028032)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72210482069028032)
,p_plug_template_id=>wwv_flow_api.id(72210117614028032)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72210756127028032)
,p_plug_template_id=>wwv_flow_api.id(72210117614028032)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72210951703028032)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72211227615028032)
,p_plug_template_id=>wwv_flow_api.id(72210951703028032)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72211502499028032)
,p_plug_template_id=>wwv_flow_api.id(72210951703028032)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72213186909028033)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72213489240028034)
,p_plug_template_id=>wwv_flow_api.id(72213186909028033)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72213748521028034)
,p_plug_template_id=>wwv_flow_api.id(72213186909028033)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72220330982028042)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72220654014028042)
,p_plug_template_id=>wwv_flow_api.id(72220330982028042)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72220989319028042)
,p_plug_template_id=>wwv_flow_api.id(72220330982028042)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72225702177028047)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72227757298028049)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72228039569028049)
,p_plug_template_id=>wwv_flow_api.id(72227757298028049)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72229812253028050)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72230195215028050)
,p_plug_template_id=>wwv_flow_api.id(72229812253028050)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72232169370028051)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72232755912028052)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72233057116028052)
,p_plug_template_id=>wwv_flow_api.id(72232755912028052)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72233225629028052)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72233503618028052)
,p_plug_template_id=>wwv_flow_api.id(72233225629028052)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72233887319028052)
,p_plug_template_id=>wwv_flow_api.id(72233225629028052)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72240050149028057)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72240363591028057)
,p_plug_template_id=>wwv_flow_api.id(72240050149028057)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72240668218028057)
,p_plug_template_id=>wwv_flow_api.id(72240050149028057)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72242606732028058)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72243693434028059)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72243903195028059)
,p_plug_template_id=>wwv_flow_api.id(72243693434028059)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72244961878028060)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(72245293207028060)
,p_plug_template_id=>wwv_flow_api.id(72244961878028060)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72267657840028082)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72271654790028090)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72277279423028094)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72278893747028096)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72281613492028098)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72282622830028099)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72283080371028100)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72284647268028101)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72286275629028103)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72287600607028104)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72288655628028105)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(72288855553028106)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72246806668028062)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72247033882028065)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72251062147028068)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72256474694028072)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72257662471028073)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72257833419028073)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(72257833419028073)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72260434316028076)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72262406267028077)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72264269283028079)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(72264603421028079)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72289869664028108)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72289968264028110)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72290089813028110)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72290109854028110)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72290200339028111)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72290324774028114)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(72290416685028114)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(72292610629028118)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(72292838576028127)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(72292723995028121)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(72294075125028141)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(72203775423028020)
,p_default_dialog_template=>wwv_flow_api.id(72193841769028011)
,p_error_template=>wwv_flow_api.id(72193052767028010)
,p_printer_friendly_template=>wwv_flow_api.id(72203775423028020)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(72193052767028010)
,p_default_button_template=>wwv_flow_api.id(72291225190028117)
,p_default_region_template=>wwv_flow_api.id(72233225629028052)
,p_default_chart_template=>wwv_flow_api.id(72233225629028052)
,p_default_form_template=>wwv_flow_api.id(72233225629028052)
,p_default_reportr_template=>wwv_flow_api.id(72233225629028052)
,p_default_tabform_template=>wwv_flow_api.id(72233225629028052)
,p_default_wizard_template=>wwv_flow_api.id(72233225629028052)
,p_default_menur_template=>wwv_flow_api.id(72242606732028058)
,p_default_listr_template=>wwv_flow_api.id(72233225629028052)
,p_default_irr_template=>wwv_flow_api.id(72232169370028051)
,p_default_report_template=>wwv_flow_api.id(72257833419028073)
,p_default_label_template=>wwv_flow_api.id(72290109854028110)
,p_default_menu_template=>wwv_flow_api.id(72292610629028118)
,p_default_calendar_template=>wwv_flow_api.id(72292723995028121)
,p_default_list_template=>wwv_flow_api.id(72277279423028094)
,p_default_nav_list_template=>wwv_flow_api.id(72287600607028104)
,p_default_top_nav_list_temp=>wwv_flow_api.id(72287600607028104)
,p_default_side_nav_list_temp=>wwv_flow_api.id(72288855553028106)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(72210951703028032)
,p_default_dialogr_template=>wwv_flow_api.id(72209989741028031)
,p_default_option_label=>wwv_flow_api.id(72290109854028110)
,p_default_required_label=>wwv_flow_api.id(72290416685028114)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(72288655628028105)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.3/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(72293084629028131)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(72293228868028132)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(72293467256028132)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(72293615130028132)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(72293868059028132)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72207002088028029)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72207481876028030)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72208072536028030)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72208481905028030)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72211806704028033)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72212206553028033)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72214024154028035)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72214802476028036)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72216012127028037)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72217288691028038)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72217668390028039)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72219622808028041)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72223026132028044)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72223455598028046)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72224296775028046)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72226211015028048)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72227000357028048)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72228306666028049)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72228947700028050)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72230879729028051)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72240991115028057)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72241375260028058)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72242171502028058)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72244202680028059)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72247362081028065)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72247730489028066)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72249719677028067)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72251536811028069)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72253339217028070)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72254192309028070)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72255599278028071)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72256736622028072)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72258117921028074)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72258796594028075)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72259183817028075)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72260782419028076)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72266343568028080)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72267993298028087)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72269181317028088)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72270397003028089)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72272188041028090)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72274116009028092)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72274725472028093)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72276153068028094)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72278398247028095)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72280515582028097)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72284906744028102)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72285516447028102)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72286591466028103)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72290797922028116)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72291767725028117)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72294279163028151)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72294612175028152)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72296294752028153)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72296643633028153)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72298217545028154)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72298657589028155)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72300256880028156)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72300696131028156)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72302250503028157)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72302672295028157)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72303093046028157)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72303415784028157)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72303842184028158)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72304254993028158)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72304635056028158)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72306099774028159)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72307470479028160)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72308454464028161)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72308864388028161)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72309269747028161)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72309612548028161)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72310274725028162)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72310855327028162)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72311256581028162)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72311652074028162)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72312073763028163)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(72312898415028164)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72188395908028006)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(72185654959027986)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72191400823028009)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(72188405273028006)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72192704791028010)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(72191538897028009)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72192958894028010)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(72191538897028009)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72195050956028012)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(72193841769028011)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72195201762028012)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(72193841769028011)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72198310670028014)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(72195360650028012)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72200842772028018)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(72198481896028014)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72203666848028020)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(72200984658028019)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72206153784028022)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(72203775423028020)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72206897819028028)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72207258093028030)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(72207002088028029)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72207673033028030)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(72207481876028030)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72207853909028030)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(72207481876028030)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72208229560028030)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(72208072536028030)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72208623169028031)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(72208481905028030)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72208849337028031)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(72207002088028029)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72209017663028031)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(72208072536028030)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72209275373028031)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(72207002088028029)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72209496913028031)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(72208072536028030)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72209613959028031)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(72207002088028029)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72209842453028031)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72206292083028023)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(72208481905028030)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72212077200028033)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72210951703028032)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72212400074028033)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(72210951703028032)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(72212206553028033)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72212681519028033)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(72210951703028032)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72212811327028033)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(72210951703028032)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(72212206553028033)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72213066066028033)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72210951703028032)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72214258208028035)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(72214024154028035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72214468647028035)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(72214024154028035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72214627375028035)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(72214024154028035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72215082704028036)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72215239170028037)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72215441481028037)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72215623881028037)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(72214024154028035)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72215823996028037)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72216259750028037)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72216427720028037)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72216614253028038)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72216896453028038)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72217044995028038)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72217494995028039)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(72217288691028038)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72217841293028039)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(72217668390028039)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72218055153028040)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(72217288691028038)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72218298419028040)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72218484631028040)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72218603125028040)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72218825759028040)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72219072537028040)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72219211315028041)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(72217668390028039)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72219402243028041)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72219800058028041)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(72219622808028041)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72220047602028042)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(72219622808028041)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72220234745028042)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72213186909028033)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72221219479028042)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72221435700028043)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72221625534028043)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72221875253028043)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72222089018028043)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72222291723028043)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72222481816028044)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72222683895028044)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72222853852028044)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72223266562028045)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(72223026132028044)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72223632996028046)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(72223455598028046)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72223884580028046)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(72223026132028044)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72224011904028046)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(72217668390028039)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72224446936028047)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(72224296775028046)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72224642562028047)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72224852807028047)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72225004383028047)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72225221400028047)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72225401819028047)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(72217668390028039)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72225694004028047)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72220330982028042)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72226045976028048)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72226445809028048)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(72226211015028048)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72226658784028048)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(72226211015028048)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72226899291028048)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(72226211015028048)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72227240274028048)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(72227000357028048)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72227431692028049)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(72227000357028048)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72227675321028049)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72225702177028047)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72228522989028049)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72227757298028049)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(72228306666028049)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72228750575028050)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72227757298028049)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72229159154028050)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72227757298028049)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(72228947700028050)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72229343717028050)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72227757298028049)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(72228947700028050)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72229500622028050)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72227757298028049)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72229732455028050)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72227757298028049)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72230471588028051)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72230651849028051)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72231097072028051)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72231201502028051)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72231488451028051)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72231624440028051)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72231803847028051)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72232015927028051)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72229812253028050)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72232455445028052)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72232169370028051)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72232653923028052)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72232169370028051)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72234171650028052)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72234367899028053)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72234587758028053)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72234726283028053)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(72214802476028036)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72234968880028053)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72235141519028053)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72235324395028053)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72235533976028053)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72235796446028053)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72235976836028054)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72236145867028054)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72236306995028054)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72236517723028054)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72236700800028054)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72236903259028054)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72237111935028055)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72237310734028055)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72237500927028055)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72237757920028055)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(72216012127028037)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72237936099028055)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(72217288691028038)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72238104893028055)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(72217668390028039)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72238321794028055)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(72217288691028038)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72238565430028056)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72238761207028056)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72238960533028056)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72239178627028056)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(72217668390028039)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72239365531028056)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72239588157028056)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72239728832028057)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72239909711028057)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(72233225629028052)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(72211806704028033)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72241169287028058)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72240050149028057)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(72240991115028057)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72241569074028058)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72240050149028057)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(72241375260028058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72241736937028058)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72240050149028057)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72241964456028058)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72240050149028057)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(72241375260028058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72242317493028058)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72240050149028057)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(72242171502028058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72242574385028058)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72240050149028057)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(72242171502028058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72242915692028059)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72242606732028058)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(72226211015028048)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72243199129028059)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72242606732028058)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72243392363028059)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72242606732028058)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(72226211015028048)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72243539707028059)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72242606732028058)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72244463556028060)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72243693434028059)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(72244202680028059)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72244608549028060)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72243693434028059)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(72244202680028059)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72244881345028060)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72243693434028059)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72245553982028060)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72245742517028060)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72245930176028061)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72246188914028061)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72246340666028061)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72246553810028061)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72246701594028061)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(72244961878028060)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(72230879729028051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72247520332028065)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(72247362081028065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72247928367028066)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72248141584028066)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(72247362081028065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72248351695028066)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72248554403028066)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(72247362081028065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72248715192028066)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72248987437028067)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72249102311028067)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(72247362081028065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72249377007028067)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(72247362081028065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72249511733028067)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72249979221028067)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72250128311028068)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72250340058028068)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72250557713028068)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72250761347028068)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72250955675028068)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72247033882028065)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72251306065028069)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72251736162028069)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(72251536811028069)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72251938703028069)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72252173158028069)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(72251536811028069)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72252361003028069)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72252589995028069)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(72251536811028069)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72252784353028069)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72252955503028070)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72253144447028070)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72253526791028070)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(72253339217028070)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72253720648028070)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(72253339217028070)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72253920188028070)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72254316313028070)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(72254192309028070)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72254545515028071)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(72254192309028070)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72254760036028071)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72254947836028071)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72255187688028071)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72255364606028071)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(72251536811028069)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72255710471028071)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(72255599278028071)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72255983578028072)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(72255599278028071)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72256165184028072)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72256363976028072)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72251062147028068)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72256941185028072)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72256474694028072)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(72256736622028072)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72257189643028072)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72256474694028072)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(72255599278028071)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72257399114028072)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72256474694028072)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(72255599278028071)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72257588532028073)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72256474694028072)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(72256736622028072)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72258394685028074)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(72258117921028074)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72258513739028074)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(72258117921028074)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72258940717028075)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(72258796594028075)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72259398444028075)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(72259183817028075)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72259533312028075)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(72259183817028075)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72259760110028075)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(72259183817028075)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72259997960028075)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(72258796594028075)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72260141581028075)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72260303216028076)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72257833419028073)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(72259183817028075)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72260954741028076)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72261184470028076)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72261346735028077)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72261535589028077)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72261705893028077)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72261998328028077)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72262120034028077)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72262384668028077)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72260434316028076)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72262786966028078)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72262901335028078)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72263112894028078)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72263328000028078)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72263533554028078)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72263755652028078)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72263992182028079)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72264147657028079)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72262406267028077)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(72260782419028076)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72264520945028079)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(72264269283028079)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(72249719677028067)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72264922098028079)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72265179169028080)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72265302223028080)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72265565087028080)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72265748091028080)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72265977684028080)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(72255599278028071)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72266111150028080)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(72255599278028071)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72266599387028081)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(72266343568028080)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72266788300028081)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72266913571028081)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72267188664028081)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72267355282028081)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72267535803028081)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(72264603421028079)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(72247730489028066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72268118273028087)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72268379315028088)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72268503051028088)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72268767953028088)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72268900347028088)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72269358441028088)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72269580782028089)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72269739943028089)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72269934530028089)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72270173993028089)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72270543651028089)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(72270397003028089)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72270757761028089)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(72270397003028089)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72270961560028090)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(72270397003028089)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72271184932028090)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72271354774028090)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(72270397003028089)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72271550116028090)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(72267657840028082)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(72270397003028089)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72271982632028090)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72272302136028091)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(72272188041028090)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72272599561028091)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72272744759028091)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(72272188041028090)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72272973850028091)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72273174988028092)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(72272188041028090)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72273310427028092)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72273519604028092)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72273730910028092)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72273959812028092)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72274323332028093)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(72274116009028092)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72274560561028093)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72274988875028093)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(72274725472028093)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72275111351028093)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(72274725472028093)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72275354033028093)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72275507018028093)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72275792289028094)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72275925529028094)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(72272188041028090)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72276308701028094)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(72276153068028094)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72276586365028094)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(72276153068028094)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72276702639028094)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(72274116009028092)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72276927656028094)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72277128531028094)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72271654790028090)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72277535209028095)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72277279423028094)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72277758171028095)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72277279423028094)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72277986695028095)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72277279423028094)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72278153111028095)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72277279423028094)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72278573499028096)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72277279423028094)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(72278398247028095)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72278740184028096)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72277279423028094)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(72278398247028095)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72279100094028096)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72279363954028096)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72279554833028096)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72279765645028097)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72279915177028097)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72280148881028097)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(72276153068028094)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72280326653028097)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(72276153068028094)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72280763491028097)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(72280515582028097)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72280927276028098)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72281188324028098)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72281383545028098)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72281596611028098)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(72278893747028096)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72281980732028099)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72281613492028098)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72282130365028099)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72281613492028098)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72282365573028099)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72281613492028098)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72282503363028099)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72281613492028098)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72282935059028100)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72282622830028099)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72283371675028100)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(72274725472028093)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72283526371028101)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(72267993298028087)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72283710583028101)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(72274725472028093)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72283942404028101)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(72280515582028097)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72284174414028101)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72284393714028101)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72284548917028101)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(72283080371028100)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(72280515582028097)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72285133084028102)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72284647268028101)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(72284906744028102)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72285330411028102)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(72284647268028101)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(72284906744028102)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72285744855028102)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72284647268028101)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(72285516447028102)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72285962334028102)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72284647268028101)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(72285516447028102)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72286149762028102)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72284647268028101)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(72285516447028102)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72286774761028103)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72286275629028103)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(72286591466028103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72286948889028103)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72286275629028103)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(72286591466028103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72287138115028103)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72286275629028103)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(72286591466028103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72287323261028103)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72286275629028103)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72287589931028104)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(72286275629028103)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72287928516028104)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(72287600607028104)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72288127211028104)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(72287600607028104)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72288349880028104)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(72287600607028104)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72288569086028105)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(72287600607028104)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72289138698028106)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72288855553028106)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72289367739028106)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(72288855553028106)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72289548789028107)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(72288855553028106)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72289730052028107)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(72288855553028106)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(72269181317028088)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72290941818028116)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(72290579964028114)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(72290797922028116)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72291164576028117)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(72290579964028114)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(72290797922028116)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72291530085028117)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72291951320028117)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(72291767725028117)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72292131618028117)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(72290797922028116)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72292319057028117)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(72291767725028117)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72292508334028117)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(72290797922028116)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72294455526028152)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(72294279163028151)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72294881581028152)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(72294612175028152)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72295013000028152)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(72294279163028151)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72295211239028153)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(72294612175028152)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72295477476028153)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(72294279163028151)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72295671927028153)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(72294612175028152)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72295815549028153)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(72294279163028151)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72296036326028153)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(72294612175028152)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72296460324028153)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(72296294752028153)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72296823726028154)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(72296643633028153)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72297083914028154)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(72296294752028153)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72297214392028154)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(72296643633028153)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72297490449028154)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(72296294752028153)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72297691164028154)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(72296643633028153)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72297874324028154)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(72296294752028153)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72298038815028154)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(72296643633028153)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72298468343028155)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(72298217545028154)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72298814912028155)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(72298657589028155)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72299071814028155)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(72298217545028154)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72299224418028155)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(72298657589028155)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72299481014028155)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(72298217545028154)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72299601487028155)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(72298657589028155)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72299847880028155)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(72298217545028154)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72300084413028156)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(72298657589028155)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72300476383028156)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(72300256880028156)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72300897347028156)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(72300696131028156)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72301083134028156)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(72300256880028156)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72301274086028156)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(72300696131028156)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72301454129028156)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(72300256880028156)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72301651855028156)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(72300696131028156)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72301868163028156)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(72300256880028156)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72302098057028157)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(72300696131028156)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72302445570028157)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(72302250503028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72302837088028157)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(72302672295028157)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72303243252028157)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(72303093046028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72303618206028158)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(72303415784028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72304011175028158)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(72303842184028158)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72304481639028158)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(72304254993028158)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72304822956028158)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(72304635056028158)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72305026703028158)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(72304635056028158)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72305256708028159)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(72302672295028157)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72305401324028159)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(72303093046028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72305651358028159)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(72303415784028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72305827202028159)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(72303842184028158)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72306208953028159)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(72306099774028159)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72306438043028159)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(72306099774028159)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72306617623028159)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(72306099774028159)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72306896438028160)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(72302250503028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72307047919028160)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(72304635056028158)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72307256409028160)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(72304254993028158)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72307623817028160)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(72307470479028160)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72307827575028160)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(72302250503028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72308026683028160)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(72304254993028158)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72308214765028160)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(72302250503028157)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72308633682028161)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(72308454464028161)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72309080798028161)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(72308864388028161)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72309494215028161)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(72309269747028161)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72309862312028162)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(72309612548028161)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72310097934028162)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(72309612548028161)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72310437555028162)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(72310274725028162)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72310605076028162)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(72308864388028161)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72311080863028162)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(72310855327028162)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72311463622028162)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(72311256581028162)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72311854302028163)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(72311652074028162)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72312232234028163)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(72312073763028163)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72312465477028163)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72312664583028163)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(72310855327028162)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(72313063773028164)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(72312898415028164)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/logic/build_options
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
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(72316677535028218)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(72184668868027972)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(72313779277028175)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(72185479621027979)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(72288855553028106)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(72313496723028173)
,p_nav_bar_list_template_id=>wwv_flow_api.id(72288655628028105)
,p_nav_bar_template_options=>'#DEFAULT#'
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
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230424111632'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'OSU-Tulsa'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230424111632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72324580332028277)
,p_plug_name=>'OSU-Tulsa'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(72227757298028049)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'OSU-TULSA-FINAID Counselor-New_STAT_Sheet '
,p_step_title=>'OSU-TULSA-FINAID Counselor-New_STAT_Sheet '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230808104850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72112616467433602)
,p_plug_name=>'Finaid Counselor New stat sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72347306252549103)
,p_plug_name=>'Stillwater Finaid Email Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73664129110955036)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74984332174135631)
,p_plug_name=>'Tulsa Finaid Email Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74984465925135632)
,p_plug_name=>'Phone Calls Answered/  Returned '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73665185158955046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73664129110955036)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72112748139433603)
,p_name=>'COUNSELOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_prompt=>'COUNSELOR NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS <> ''STW'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72112936432433605)
,p_name=>'ENTER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_prompt=>'ENTER DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113091186433606)
,p_name=>'CURR_HS_INC_FR_WALKIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113102488433607)
,p_name=>'CURR_HS_INC_FR_APPTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113249179433608)
,p_name=>'COMBO_OTHER_STU_EMAILS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113351424433609)
,p_name=>'COMBO_OTHER_STU_APPTS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113472395433610)
,p_name=>'CURR_UG_WALKIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CURR UG WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113520080433611)
,p_name=>'INC_UG_TR_WALKIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'INC UG TR WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113683663433612)
,p_name=>'INC_UG_TR_APPTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'INC UG TR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113720758433613)
,p_name=>'INC_GRAD_VET_MED_VOICEMAIL_PHONE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113806138433614)
,p_name=>'INC_GRAD_VET_MED_DIRECT_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72113998174433615)
,p_name=>'INC_GRAD_VET_MED_EMAIL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114018903433616)
,p_name=>'INC_GRAD_VET_MED_APPTS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114117846433617)
,p_name=>'INC_GRAD_VET_MED_WALKIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114243013433618)
,p_name=>'INC_UG_TR_VOICEMAIL_PHONE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'INC UG TR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114373196433619)
,p_name=>'INC_UG_TR_DIRECT_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'INC UG TR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114469238433620)
,p_name=>'INC_UG_TR_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'INC UG TR EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114568791433621)
,p_name=>'CURR_HS_INC_FR_VOICEMAIL_PHONE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114642602433622)
,p_name=>'CURR_HS_INC_FR_DIRECT_PHONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114745934433623)
,p_name=>'CURR_HS_INC_FR_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114874116433624)
,p_name=>'COMBO_OTHER_STU_WALKIN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72114916912433625)
,p_name=>'CURR_GRAD_VET_MED_DIRECT_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115006024433626)
,p_name=>'CURR_GRAD_VET_MED_VOICEMAILS_PHONE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115172756433627)
,p_name=>'CURR_UG_DIRECT_PHONES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CURR UG DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115204783433628)
,p_name=>'CURR_UG_VOICEMAILS_PHONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CURR UG VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115358134433629)
,p_name=>'CURR_GRAD_VET_MED_EMAILS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115457402433630)
,p_name=>'CURR_GRAD_VET_MED_APPTS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115569748433631)
,p_name=>'CURR_GRAD_VET_MED_WALKIN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115785298433633)
,p_name=>'CURR_UG_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115847827433634)
,p_name=>'CURR_UG_APPT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CURR UG APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72115968623433635)
,p_name=>'COMBO_OTHER_STU_DIRECT_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116034663433636)
,p_name=>'COMBO_OTHER_STU_VOICEMAIL_PHONES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116134814433637)
,p_name=>'FORMER_STU_WALKIN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'FORMER STU WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116247266433638)
,p_name=>'FORMER_STU_APPT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'FORMER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116370519433639)
,p_name=>'FORMER_STU_EMAILS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'FORMER STU EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116466988433640)
,p_name=>'FORMER_STU_DIRECT_PHONE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'FORMER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116563870433641)
,p_name=>'FORMER_STU_VOICEMAILS_PHONES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'FORMER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116656639433642)
,p_name=>'MY_EMIAL_IN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116730721433643)
,p_name=>'MY_EMIAL_OUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116828076433644)
,p_name=>'REPORTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72116952479433645)
,p_name=>'VETERAN_QUESTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'VETERAN QUESTIONS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72117038995433646)
,p_name=>'MISC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72117189851433647)
,p_name=>'VETERAN_PAPER_WORK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'VETERAN PAPERWORK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72117272380433648)
,p_name=>'CHS_STUDENT_WALKIN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CHS STU WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72117391297433649)
,p_name=>'CHS_STUDENT_APPT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(72112616467433602)
,p_item_default=>'0'
,p_prompt=>'CHS STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72117442948433650)
,p_name=>'CHS_STUDENT_DIRECT_PHONE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CHS STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347162654549101)
,p_name=>'CHS_STUDENT_VOICEMAIL_PHONES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(74984465925135632)
,p_item_default=>'0'
,p_prompt=>'CHS STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347230129549102)
,p_name=>'CHS_STUDENT_EMAILS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'CHS STU EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347408954549104)
,p_name=>'CURR_HS_INCOMING_FR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347511495549105)
,p_name=>'INC_UG_TR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347613400549106)
,p_name=>'INC_GRAD_VET_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347724999549107)
,p_name=>'CURR_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347886730549108)
,p_name=>'CURR_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72347905193549109)
,p_name=>'COMBO_STU_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'COMBO STU OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72348039382549110)
,p_name=>'FORMER_STU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'FORMER STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72348141806549111)
,p_name=>'CHS_STU'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'CHS STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72348261228549112)
,p_name=>'STW_EMAILS_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(72347306252549103)
,p_item_default=>'0'
,p_prompt=>'STW EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72348303980549113)
,p_name=>'TULSA_EMAIL_ROUTED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(74984332174135631)
,p_item_default=>'0'
,p_prompt=>'TULSA EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73664233404955037)
,p_name=>'COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73664129110955036)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74986101352135649)
,p_name=>'TUL_FINAID_EMAILS_RECEIVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73664129110955036)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAILS RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74986244350135650)
,p_name=>'TUL_VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(73664129110955036)
,p_item_default=>'0'
,p_prompt=>'TULSA VOICEMAIL RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75765823160101401)
,p_name=>'T_WALK_IN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73664129110955036)
,p_item_default=>'0'
,p_prompt=>'WALK IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73664885100955043)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO TULSA_COUNS_STATS (ENTER_DATE , 	COUNSELOR_NAME , ',
'	CURR_HS_INC_FR_WALKIN , 	CURR_HS_INC_FR_APPTS , 	CURR_HS_INC_FR_EMAIL , 	CURR_HS_INC_FR_DIRECT_PHONES , 	CURR_HS_INC_FR_VOICEMAIL_PHONE , ',
'	INC_UG_TR_WALKIN , 	INC_UG_TR_APPTS , 	INC_UG_TR_EMAIL , 	INC_UG_TR_DIRECT_PHONE , 	INC_UG_TR_VOICEMAIL_PHONE , ',
'	INC_GRAD_VET_MED_WALKIN , 	INC_GRAD_VET_MED_APPTS , 	INC_GRAD_VET_MED_EMAIL , 	INC_GRAD_VET_MED_DIRECT_PHONE , 	INC_GRAD_VET_MED_VOICEMAIL_PHONE , ',
'	CURR_UG_WALKIN , 	CURR_UG_APPT , 	CURR_UG_EMAIL , 	CURR_UG_DIRECT_PHONES , 	CURR_UG_VOICEMAILS_PHONES , ',
'	CURR_GRAD_VET_MED_WALKIN , 	CURR_GRAD_VET_MED_APPTS , 	CURR_GRAD_VET_MED_EMAILS , 	CURR_GRAD_VET_MED_DIRECT_PHONE , 	CURR_GRAD_VET_MED_VOICEMAILS_PHONE , ',
'	COMBO_OTHER_STU_WALKIN , 	COMBO_OTHER_STU_APPTS , 	COMBO_OTHER_STU_EMAILS ,	COMBO_OTHER_STU_DIRECT_PHONE , 	COMBO_OTHER_STU_VOICEMAIL_PHONES , ',
'	FORMER_STU_WALKIN , 	FORMER_STU_APPT , 	FORMER_STU_EMAILS , 	FORMER_STU_DIRECT_PHONE , 	FORMER_STU_VOICEMAILS_PHONES , ',
'	CHS_STUDENT_WALKIN , 	CHS_STUDENT_APPT , 	CHS_STUDENT_EMAILS , 	CHS_STUDENT_DIRECT_PHONE , 	CHS_STUDENT_VOICEMAIL_PHONES , ',
'	MY_EMIAL_IN , 	MY_EMIAL_OUT , 	TULSA_EMAIL_ROUTED , ',
'	VETERAN_QUESTION , 	VETERAN_PAPER_WORK , 	REPORTS , 	MISC , ',
'	CURR_HS_INCOMING_FR , 	INC_UG_TR , 	INC_GRAD_VET_MED , 	CURR_UG , 	CURR_GRAD_VET_MED , 	COMBO_STU_OTHER , 	FORMER_STU , 	CHS_STU , 	STW_EMAILS_ROUTED , ',
'	COMMENTS , TULSA_FINAID_EMAILS_RECEIVED, TULSA_VOICEMAIL_RECEIVED , WALK_IN)',
'    ',
'VALUES (:ENTER_DATE , 	:COUNSELOR_NAME , ',
'	:CURR_HS_INC_FR_WALKIN , 	:CURR_HS_INC_FR_APPTS , 	:CURR_HS_INC_FR_EMAIL , 	:CURR_HS_INC_FR_DIRECT_PHONES , 	:CURR_HS_INC_FR_VOICEMAIL_PHONE , ',
'	:INC_UG_TR_WALKIN , 	:INC_UG_TR_APPTS , 	:INC_UG_TR_EMAIL , 	:INC_UG_TR_DIRECT_PHONE , 	:INC_UG_TR_VOICEMAIL_PHONE , ',
'	:INC_GRAD_VET_MED_WALKIN , 	:INC_GRAD_VET_MED_APPTS , 	:INC_GRAD_VET_MED_EMAIL , 	:INC_GRAD_VET_MED_DIRECT_PHONE , 	:INC_GRAD_VET_MED_VOICEMAIL_PHONE , ',
'	:CURR_UG_WALKIN , 	:CURR_UG_APPT , 	:CURR_UG_EMAIL , 	:CURR_UG_DIRECT_PHONES , 	:CURR_UG_VOICEMAILS_PHONES , ',
'	:CURR_GRAD_VET_MED_WALKIN , 	:CURR_GRAD_VET_MED_APPTS , 	:CURR_GRAD_VET_MED_EMAILS , 	:CURR_GRAD_VET_MED_DIRECT_PHONE , 	:CURR_GRAD_VET_MED_VOICEMAILS_PHONE , ',
'	:COMBO_OTHER_STU_WALKIN , 	:COMBO_OTHER_STU_APPTS , 	:COMBO_OTHER_STU_EMAILS ,	:COMBO_OTHER_STU_DIRECT_PHONE , 	:COMBO_OTHER_STU_VOICEMAIL_PHONES , ',
'	:FORMER_STU_WALKIN , 	:FORMER_STU_APPT , 	:FORMER_STU_EMAILS , 	:FORMER_STU_DIRECT_PHONE , 	:FORMER_STU_VOICEMAILS_PHONES , ',
'	:CHS_STUDENT_WALKIN , 	:CHS_STUDENT_APPT , 	:CHS_STUDENT_EMAILS , 	:CHS_STUDENT_DIRECT_PHONE , 	:CHS_STUDENT_VOICEMAIL_PHONES , ',
'	:MY_EMIAL_IN , 	:MY_EMIAL_OUT , 	:TULSA_EMAIL_ROUTED , ',
'	:VETERAN_QUESTION , 	:VETERAN_PAPER_WORK , 	:REPORTS , 	:MISC , ',
'	:CURR_HS_INCOMING_FR , 	:INC_UG_TR , 	:INC_GRAD_VET_MED , 	:CURR_UG , 	:CURR_GRAD_VET_MED , 	:COMBO_STU_OTHER , 	:FORMER_STU , 	:CHS_STU , 	:STW_EMAILS_ROUTED , ',
'	:COMMENTS , :TUL_FINAID_EMAILS_RECEIVED , :TUL_VOICEMAIL_RECEIVED, :T_WALK_IN);',
'         ',
'     '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Sucessfully submitted '
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'OSU-Tulsa Assistant Director-New Stats'
,p_step_title=>'OSU-Tulsa Assistant Director-New Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230808112249'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73271140520397014)
,p_plug_name=>'Phone Calls Answered/Returned'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73271285900397015)
,p_plug_name=>'Tulsa Finaid Email Answered '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74984653480135634)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144610478899656241)
,p_plug_name=>'Finaid Asst Director New stat sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144845168684771742)
,p_plug_name=>'Stillwater Finaid Email Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73665444414955049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74984653480135634)
,p_button_name=>'Save_Details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Details'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72453676486091204)
,p_name=>'CURR_HS_INC_FR_STU_EMAIL_OUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72453723186091205)
,p_name=>'CURR_HS_INC_FR_FINAID_EMAILS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72453810363091206)
,p_name=>'INC_UG_TR_STU_EMAILS_IN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'INC UG TR STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72453950414091207)
,p_name=>'INC_UG_TR_STU_EMAILS_OUT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'INC UG TR STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454043349091208)
,p_name=>'INC_GRAD_VET_MED_STU_EMAILS_IN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454155532091209)
,p_name=>'INC_GRAD_VET_MED_STU_EMAILS_OUT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454228753091210)
,p_name=>'CURR_UG_EMAILS_IN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454300176091211)
,p_name=>'CURR_UG_EMAILS_OUT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454489577091212)
,p_name=>'CURR_GRAD_VET_MED_EMAILS_IN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454509958091213)
,p_name=>'CURR_GRAD_VET_MED_EMAILS_OUT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454698209091214)
,p_name=>'COMBO_OTHER_STU_EMAILS_IN'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454776841091215)
,p_name=>'COMBO_OTHER_STU_EMAILS_OUT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454892277091216)
,p_name=>'FORMER_STU_EMAILS_IN'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'FORMER STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72454925576091217)
,p_name=>'FORMER_STU_EMAILS_OUT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'FORMER STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72455058028091218)
,p_name=>'CHS_STUDENT_EMAILS_IN'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CHS STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72455185932091219)
,p_name=>'CHS_STUDENT_EMAILS_OUT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CHS STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72455201149091220)
,p_name=>'IN_PERSON_CONTACT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'IN PERSON CONTACT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72455369560091221)
,p_name=>'EVALS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'EVALS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72455465124091222)
,p_name=>'PROF_JUDG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'PROF JUDG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72498445297222677)
,p_name=>'ASST_DIR_COUNSELOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_prompt=>'ASST DIR COUNSELOR NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS <> ''STW'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72498826102222680)
,p_name=>'NEW_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_prompt=>'ENTER DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72499595086222681)
,p_name=>'CURR_HS_INC_FR_APPT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72499918929222681)
,p_name=>'CURR_HS_INC_FR_STU_EMAIL_IN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72500315337222681)
,p_name=>'CUR_HS_INC_FR_DIRECT_PHONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72500794612222682)
,p_name=>'CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72501542346222683)
,p_name=>'INC_UG_TR_APPT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'INC UG TR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72501990150222684)
,p_name=>'INC_UG_TR_FINAID_EMAILS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'INC UG TR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72502354393222684)
,p_name=>'INC_UG_TR_DIRECT_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'INC UG TR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72502706834222684)
,p_name=>'INC_UG_TR_VOICEMAIL_PHONES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'INC UG TR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72503532962222685)
,p_name=>'INC_GRAD_VET_MED_APPT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72503989242222685)
,p_name=>'INC_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72504367479222685)
,p_name=>'INC_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72504766565222685)
,p_name=>'INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'INC GRAD VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72505511392222686)
,p_name=>'CURR_UG_APPTS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR UG APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72505994198222686)
,p_name=>'CURR_UG_FINAID_EMAILS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'DIR CURR UG FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72506334485222686)
,p_name=>'CURR_UG_DIRECT_PHONE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CURR UG DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72506737763222686)
,p_name=>'CURR_UG_VOICEMAIL_PHONES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CURR UG VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72507593483222687)
,p_name=>'CURR_GRAD_VET_MED_APPT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72507996304222687)
,p_name=>'CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72508386132222687)
,p_name=>'CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72508704722222688)
,p_name=>'CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED VOICEMAILS PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72509507482222688)
,p_name=>'COMBO_OTHER_STU_APPT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72509991019222688)
,p_name=>'COMBO_OTHER_STU_FINAID_EMAILS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72510398503222689)
,p_name=>'COMBO_OTHER_STU_DIRECT_PHONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72510756945222689)
,p_name=>'COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72511577181222689)
,p_name=>'FORMER_STU_APPTS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'FORMER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72511916099222690)
,p_name=>'FORMER_STU_FINAID_EMAILS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'FORMER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72512301867222690)
,p_name=>'FORMER_STU_DIRECT_PHONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'FORMER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72512793023222690)
,p_name=>'FORMER_STU_VOICEMAIL_PHONES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'FORMER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72513529596222691)
,p_name=>'CHS_STUDENT_APPTS'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'CHS STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72513946885222691)
,p_name=>'CHS_STUDENT_FINAID_EMAILS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'CHS STUDENT FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72514369165222691)
,p_name=>'CHS_STUDENT_DIRECT_PHONES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CHS STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72514730730222691)
,p_name=>'CHS_STUDENT_VOICEMAILS_PHONES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(73271140520397014)
,p_item_default=>'0'
,p_prompt=>'CHS STU VOICEMAILS PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72515115634222692)
,p_name=>'EMIALS_IN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72515511838222692)
,p_name=>'EMIALS_OUT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72515941873222692)
,p_name=>'TULSA_FINAID_EMAILS_ROUTED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(73271285900397015)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAIL ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72516378652222692)
,p_name=>'VETERAN_QUESTIONS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'VETERAN QUESTIONS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72516762240222693)
,p_name=>'VETERAN_PAPERWORK'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'VETERAN PAPERWORK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72517183892222693)
,p_name=>'DIR_REPORTS'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72517534662222693)
,p_name=>'DIR_MISC'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(144610478899656241)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72518240549222699)
,p_name=>'CURR_HS_INC_FR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72518612622222699)
,p_name=>'INCOMING_UG_TR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72519007073222700)
,p_name=>'INCOMING_GRAD_VET_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72519498934222700)
,p_name=>'CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72519846736222700)
,p_name=>'CURRENT_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72520279047222700)
,p_name=>'COMBO_STUDENTS_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'COMBO STU OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72520601702222701)
,p_name=>'FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'FORMER STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72521058351222701)
,p_name=>'CHS_STUDENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'CHS STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72521474657222701)
,p_name=>'STW_EMAIL_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(144845168684771742)
,p_item_default=>'0'
,p_prompt=>'STW EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74984740605135635)
,p_name=>'COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74984653480135634)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74985746022135645)
,p_name=>'TULSA_FINAID_EMAILS_RECEIVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74984653480135634)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAILS RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74985971355135647)
,p_name=>'TULSA_VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74984653480135634)
,p_item_default=>'0'
,p_prompt=>'TULSA VOICEMAIL RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74986062096135648)
,p_name=>'TUL_WALK_IN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74984653480135634)
,p_item_default=>'0'
,p_prompt=>'WALK IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73664971573955044)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO TULSA_ASST_DIR_STATS ',
'   (	NEW_DATE , 	ASST_DIR_COUNSELOR_NAME , ',
'	CURR_HS_INC_FR_APPT , 	CURR_HS_INC_FR_STU_EMAIL_IN , 	CURR_HS_INC_FR_STU_EMAIL_OUT , ',
'	IN_PERSON_CONTACT , ',
'	INC_UG_TR_APPT , 	INC_UG_TR_STU_EMAILS_IN , 	INC_UG_TR_STU_EMAILS_OUT , ',
'	EVALS , ',
'	INC_GRAD_VET_MED_APPT , 	INC_GRAD_VET_MED_STU_EMAILS_IN , 	INC_GRAD_VET_MED_STU_EMAILS_OUT , ',
'	EMIALS_IN , ',
'	CURR_UG_APPTS , 	CURR_UG_EMAILS_IN , 	CURR_UG_EMAILS_OUT , ',
'	EMIALS_OUT , ',
'	CURR_GRAD_VET_MED_APPT , 	CURR_GRAD_VET_MED_EMAILS_IN , 	CURR_GRAD_VET_MED_EMAILS_OUT , ',
'	PROF_JUDG , ',
'	COMBO_OTHER_STU_APPT , 	COMBO_OTHER_STU_EMAILS_IN , 	COMBO_OTHER_STU_EMAILS_OUT , ',
'	VETERAN_QUESTIONS , ',
'	FORMER_STU_APPTS , 	FORMER_STU_EMAILS_IN , 	FORMER_STU_EMAILS_OUT , ',
'	VETERAN_PAPERWORK , ',
'	CHS_STUDENT_APPTS , 	CHS_STUDENT_EMAILS_IN , 	CHS_STUDENT_EMAILS_OUT , ',
'	DIR_REPORTS , 	DIR_MISC , ',
'	CURR_HS_INC_FR_FINAID_EMAILS , 	INC_UG_TR_FINAID_EMAILS , 	INC_GRAD_VET_MED_FINAID_EMAILS , ',
'	CURR_UG_FINAID_EMAILS , 	CURR_GRAD_VET_MED_FINAID_EMAILS , 	COMBO_OTHER_STU_FINAID_EMAILS , ',
'	FORMER_STU_FINAID_EMAILS , 	CHS_STUDENT_FINAID_EMAILS , 	TULSA_FINAID_EMAILS_ROUTED , ',
'	CUR_HS_INC_FR_DIRECT_PHONES , 	CURR_HS_INC_FR_VOICEMAIL_PHONES , 	INC_UG_TR_DIRECT_PHONES , ',
'	INC_UG_TR_VOICEMAIL_PHONES , 	INC_GRAD_VET_MED_DIRECT_PHONES , 	INC_GRAD_VET_MED_VOICEMAIL_PHONES , ',
'	CURR_UG_DIRECT_PHONE , 	CURR_UG_VOICEMAIL_PHONES , 	CURR_GRAD_VET_MED_DIRECT_PHONES , ',
'	CURR_GRAD_VET_MED_VOICEMAILS_PHONES , 	COMBO_OTHER_STU_DIRECT_PHONES , 	COMBO_OTHER_STU_VOICEMAILS_PHONES , ',
'	FORMER_STU_DIRECT_PHONES , 	FORMER_STU_VOICEMAIL_PHONES , 	CHS_STUDENT_DIRECT_PHONES , ',
'	CHS_STUDENT_VOICEMAILS_PHONES , 	CURR_HS_INC_FR , 	INCOMING_UG_TR , ',
'	INCOMING_GRAD_VET_MED , 	CURRENT_UG , 	CURRENT_GRAD_VET_MED , 	COMBO_STUDENTS_OTHER , ',
'	FORMER_STUDENT , 	CHS_STUDENT , 	STW_EMAIL_ROUTED , COMMENTS ,',
'    TULSA_FINAID_EMAILS_RECEIVED, TULSA_VOICEMAIL_RECEIVED , WALK_IN)',
'VALUES ( :NEW_DATE , 	:ASST_DIR_COUNSELOR_NAME , ',
'	:CURR_HS_INC_FR_APPT , 	:CURR_HS_INC_FR_STU_EMAIL_IN , 	:CURR_HS_INC_FR_STU_EMAIL_OUT , ',
'	:IN_PERSON_CONTACT , ',
'	:INC_UG_TR_APPT , 	:INC_UG_TR_STU_EMAILS_IN , 	:INC_UG_TR_STU_EMAILS_OUT , ',
'	:EVALS , ',
'	:INC_GRAD_VET_MED_APPT , 	:INC_GRAD_VET_MED_STU_EMAILS_IN , 	:INC_GRAD_VET_MED_STU_EMAILS_OUT , ',
'	:EMIALS_IN , ',
'	:CURR_UG_APPTS , 	:CURR_UG_EMAILS_IN , 	:CURR_UG_EMAILS_OUT , ',
'	:EMIALS_OUT , ',
'	:CURR_GRAD_VET_MED_APPT , 	:CURR_GRAD_VET_MED_EMAILS_IN , 	:CURR_GRAD_VET_MED_EMAILS_OUT , ',
'	:PROF_JUDG , ',
'	:COMBO_OTHER_STU_APPT , 	:COMBO_OTHER_STU_EMAILS_IN , 	:COMBO_OTHER_STU_EMAILS_OUT , ',
'	:VETERAN_QUESTIONS , ',
'	:FORMER_STU_APPTS , 	:FORMER_STU_EMAILS_IN , 	:FORMER_STU_EMAILS_OUT , ',
'	:VETERAN_PAPERWORK , ',
'	:CHS_STUDENT_APPTS , 	:CHS_STUDENT_EMAILS_IN , 	:CHS_STUDENT_EMAILS_OUT , ',
'	:DIR_REPORTS , 	:DIR_MISC , ',
'	:CURR_HS_INC_FR_FINAID_EMAILS , 	:INC_UG_TR_FINAID_EMAILS , 	:INC_GRAD_VET_MED_FINAID_EMAILS , ',
'	:CURR_UG_FINAID_EMAILS , 	:CURR_GRAD_VET_MED_FINAID_EMAILS , 	:COMBO_OTHER_STU_FINAID_EMAILS , ',
'	:FORMER_STU_FINAID_EMAILS , 	:CHS_STUDENT_FINAID_EMAILS , 	:TULSA_FINAID_EMAILS_ROUTED , ',
'	:CUR_HS_INC_FR_DIRECT_PHONES , 	:CURR_HS_INC_FR_VOICEMAIL_PHONES , 	:INC_UG_TR_DIRECT_PHONES , ',
'	:INC_UG_TR_VOICEMAIL_PHONES , 	:INC_GRAD_VET_MED_DIRECT_PHONES , 	:INC_GRAD_VET_MED_VOICEMAIL_PHONES , ',
'	:CURR_UG_DIRECT_PHONE , 	:CURR_UG_VOICEMAIL_PHONES , 	:CURR_GRAD_VET_MED_DIRECT_PHONES , ',
'	:CURR_GRAD_VET_MED_VOICEMAILS_PHONES , 	:COMBO_OTHER_STU_DIRECT_PHONES , 	:COMBO_OTHER_STU_VOICEMAILS_PHONES , ',
'	:FORMER_STU_DIRECT_PHONES , 	:FORMER_STU_VOICEMAIL_PHONES , :CHS_STUDENT_DIRECT_PHONES , ',
'	:CHS_STUDENT_VOICEMAILS_PHONES , 	:CURR_HS_INC_FR , 	:INCOMING_UG_TR , ',
'	:INCOMING_GRAD_VET_MED , 	:CURRENT_UG , 	:CURRENT_GRAD_VET_MED , 	:COMBO_STUDENTS_OTHER , ',
'	:FORMER_STUDENT , 	:CHS_STUDENT , 	:STW_EMAIL_ROUTED , :COMMENT ,  :TULSA_FINAID_EMAILS_RECEIVED , :TULSA_VOICEMAIL_RECEIVED , :TUL_WALK_IN );',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'CHS-New-Stats-sheet'
,p_step_title=>'CHS-New-Stats-sheet'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230808112435'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72455514123091223)
,p_plug_name=>'Tulsa_Finaid_Emails_Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72455651451091224)
,p_plug_name=>'Tulsa Phone Calls Answered/Returned'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73664398862955038)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(217259505739766403)
,p_plug_name=>'CHS Stats New stat sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(217494195524881904)
,p_plug_name=>'Stillwater-Finaid-Email-Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73665374021955048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73664398862955038)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72649540254110205)
,p_name=>'CHS_CURR_HS_INCOMING_FR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72649930094110209)
,p_name=>'CHS_INCOMING_UG_TR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72650360968110209)
,p_name=>'CHS_INCOMING_GRAD_VET_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72650756233110210)
,p_name=>'CHS_CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72651124510110210)
,p_name=>'CHS_CURRENT_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72651553293110210)
,p_name=>'CHS_COMBO_STUDENTS_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'COMBO STU OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72651991746110211)
,p_name=>'CHS_FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'FORMER STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72652380033110211)
,p_name=>'CHS_CHS_STUDENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'CHS STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72652749934110211)
,p_name=>'CHS_STW_EMAIL_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(217494195524881904)
,p_item_default=>'0'
,p_prompt=>'STW EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72653424821110217)
,p_name=>'CHS_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS <> ''STW'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72653815222110217)
,p_name=>'CHS_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72654239275110217)
,p_name=>'WALK_IN_PA_STU1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (8am-9am)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72654669499110217)
,p_name=>'WALK_IN_OTHER1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (8am-9am) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72655475332110218)
,p_name=>'CHS_CURR_HS_INC_FR_FINAID_EMAILS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72655822667110218)
,p_name=>'CHS_CUR_HS_INC_FR_DIRECT_PHONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72656237544110218)
,p_name=>'CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72656668048110220)
,p_name=>'WALK_IN_PA_STU2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (9am-10am)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72657025936110220)
,p_name=>'WALK_IN_OTHER2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (9am-10am) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72657869736110220)
,p_name=>'CHS_INC_UG_TR_FINAID_EMAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'INC UG TR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72658218408110221)
,p_name=>'CHS_INC_UG_TR_DIRECT_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'INC UG TR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72668627006110221)
,p_name=>'CHS_INC_UG_TR_VOICEMAIL_PHONES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'INC UG TR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72669099925110222)
,p_name=>'WALK_IN_PA_STU3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (10am-11am)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72669426753110222)
,p_name=>'WALK_IN_OTHER3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (10am-11am) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72670242061110223)
,p_name=>'CHS_INC_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72670698679110223)
,p_name=>'CHS_INC_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72671000095110223)
,p_name=>'CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'INC GRAD VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72671423349110223)
,p_name=>'WALK_IN_PA_STU4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (11am-12pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72671853592110224)
,p_name=>'WALK_IN_OTHER4'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (11am-12pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72672630738110224)
,p_name=>'CHS_CURR_UG_FINAID_EMAILS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'CURR UG FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72673068502110225)
,p_name=>'CHS_CURR_UG_DIRECT_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CURR UG DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72673410797110225)
,p_name=>'CHS_CURR_UG_VOICEMAIL_PHONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CURR UG VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72673871937110225)
,p_name=>'WALK_IN_PA_STU5'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (12pm-1pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72674274088110225)
,p_name=>'WALK_IN_OTHER5'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (12pm-1pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72675062076110226)
,p_name=>'CHS_CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72675477206110226)
,p_name=>'CHS_CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72675807224110226)
,p_name=>'CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72676215844110227)
,p_name=>'WALK_IN_PA_STU6'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (1pm-2pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72676639572110227)
,p_name=>'WALK_IN_OTHER6'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (1pm-2pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72677487928110227)
,p_name=>'CHS_COMBO_OTHER_STU_FINAID_EMAILS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72677807309110228)
,p_name=>'CHS_COMBO_OTHER_STU_DIRECT_PHONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72678292621110228)
,p_name=>'CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72678673935110229)
,p_name=>'WALK_IN_PA_STU7'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (2pm-3pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72679027254110229)
,p_name=>'WALK_IN_OTHER7'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (2pm-3pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72679812534110229)
,p_name=>'CHS_FORMER_STU_FINAID_EMAILS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'FORMER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72680291051110229)
,p_name=>'CHS_FORMER_STU_DIRECT_PHONES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'FORMER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72680677730110230)
,p_name=>'CHS_FORMER_STU_VOICEMAIL_PHONES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'FORMER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72681098506110230)
,p_name=>'WALK_IN_PA_STU8'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (3pm-4pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72681488696110230)
,p_name=>'WALK_IN_OTHER8'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (3pm-4pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72682249312110231)
,p_name=>'CHS_CHS_STUDENT_FINAID_EMAILS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'CHS STUDENT FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72682638576110231)
,p_name=>'CHS_CHS_STUDENT_DIRECT_PHONES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CHS STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72683078104110231)
,p_name=>'CHS_CHS_STUDENT_VOICEMAILS_PHONES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(72455651451091224)
,p_item_default=>'0'
,p_prompt=>'CHS STUDENT VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72683431894110231)
,p_name=>'WALK_IN_PA_STU9'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (4pm-5pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72683888287110232)
,p_name=>'WALK_IN_OTHER9'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (4pm-5pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72684249312110232)
,p_name=>'MY_EMIALS_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72684669279110232)
,p_name=>'MY_EMIALS_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72685429603110233)
,p_name=>'WALK_IN_PA_STU10'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (5pm-6pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72685854517110233)
,p_name=>'WALK_IN_OTHER10'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (5pm-6pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72686255037110233)
,p_name=>'VOICEMAIL_RETURNED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'VM RETURNED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72686691177110234)
,p_name=>'OTHER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(217259505739766403)
,p_item_default=>'0'
,p_prompt=>'OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72687097362110234)
,p_name=>'CHS_TULSA_FINAID_EMAILS_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(72455514123091223)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAIL ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73664418465955039)
,p_name=>'CHS_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73664398862955038)
,p_prompt=>'CHS Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75765916531101402)
,p_name=>'T_FINAID_EMAILS_RECEIVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73664398862955038)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAILS RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766094479101403)
,p_name=>'T_VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(73664398862955038)
,p_item_default=>'0'
,p_prompt=>'TULSA VOICEMAIL RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766143410101404)
,p_name=>'TULS_WALK_IN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73664398862955038)
,p_item_default=>'0'
,p_prompt=>'WALK IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73665055309955045)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO TULSA_CHS_STATS( CHS_DATE, 	CHS_NAME , ',
'	WALK_IN_PA_STU1 , 	WALK_IN_OTHER1 , 	WALK_IN_PA_STU2 , 	WALK_IN_OTHER2 , ',
'	WALK_IN_PA_STU3 , 	WALK_IN_OTHER3 , 	WALK_IN_PA_STU4 , 	WALK_IN_OTHER4 , ',
'	WALK_IN_PA_STU5 , 	WALK_IN_OTHER5 , 	WALK_IN_PA_STU6 , 	WALK_IN_OTHER6 , ',
'	WALK_IN_PA_STU7 , 	WALK_IN_OTHER7 , 	WALK_IN_PA_STU8 , 	WALK_IN_OTHER8 , ',
'	WALK_IN_PA_STU9 , 	WALK_IN_OTHER9 , 	WALK_IN_PA_STU10 , 	WALK_IN_OTHER10 , ',
'	MY_EMIALS_IN , 	MY_EMIALS_OUT , 	VOICEMAIL_RETURNED , 	OTHER , ',
'	CHS_CUR_HS_INC_FR_DIRECT_PHONES , 	CHS_INC_UG_TR_DIRECT_PHONES , 	CHS_INC_GRAD_VET_MED_DIRECT_PHONES , 	CHS_CURR_UG_DIRECT_PHONE , ',
'	CHS_CURR_GRAD_VET_MED_DIRECT_PHONES , 	CHS_COMBO_OTHER_STU_DIRECT_PHONES , 	CHS_FORMER_STU_DIRECT_PHONES , 	CHS_CHS_STUDENT_DIRECT_PHONES , ',
'	CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES , 	CHS_INC_UG_TR_VOICEMAIL_PHONES , 	CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES , 	CHS_CURR_UG_VOICEMAIL_PHONES , ',
'	CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES , 	CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES , 	CHS_FORMER_STU_VOICEMAIL_PHONES , 	CHS_CHS_STUDENT_VOICEMAILS_PHONES , ',
'	CHS_CURR_HS_INC_FR_FINAID_EMAILS , 	CHS_INC_UG_TR_FINAID_EMAILS , 	CHS_INC_GRAD_VET_MED_FINAID_EMAILS , 	CHS_CURR_UG_FINAID_EMAILS , 	CHS_CURR_GRAD_VET_MED_FINAID_EMAILS , ',
'	CHS_COMBO_OTHER_STU_FINAID_EMAILS , 	CHS_FORMER_STU_FINAID_EMAILS , 	CHS_CHS_STUDENT_FINAID_EMAILS , 	CHS_TULSA_FINAID_EMAILS_ROUTED , 	CHS_CURR_HS_INCOMING_FR , ',
'	CHS_INCOMING_UG_TR , 	CHS_INCOMING_GRAD_VET_MED ,	CHS_CURRENT_UG , 	CHS_CURRENT_GRAD_VET_MED , 	CHS_COMBO_STUDENTS_OTHER , 	CHS_FORMER_STUDENT , 	CHS_CHS_STUDENT , ',
'	CHS_STW_EMAIL_ROUTED , 	CHS_COMMENTS, TULSA_FINAID_EMAILS_RECEIVED , TULSA_VOICEMAIL_RECEIVED, WALK_IN   )',
'',
'VALUES ( :CHS_DATE, :CHS_NAME , ',
'	:WALK_IN_PA_STU1 , 	:WALK_IN_OTHER1 , 	:WALK_IN_PA_STU2 , 	:WALK_IN_OTHER2 , ',
'	:WALK_IN_PA_STU3 , 	:WALK_IN_OTHER3 , 	:WALK_IN_PA_STU4 , :WALK_IN_OTHER4 , ',
'	:WALK_IN_PA_STU5 , 	:WALK_IN_OTHER5 , 	:WALK_IN_PA_STU6 , 	:WALK_IN_OTHER6 , ',
'	:WALK_IN_PA_STU7 , 	:WALK_IN_OTHER7 , 	:WALK_IN_PA_STU8 , 	:WALK_IN_OTHER8 , ',
'	:WALK_IN_PA_STU9 , :WALK_IN_OTHER9 , 	:WALK_IN_PA_STU10 , 	:WALK_IN_OTHER10 , ',
'	:MY_EMIALS_IN , 	:MY_EMIALS_OUT , 	:VOICEMAIL_RETURNED , 	:OTHER , ',
'	:CHS_CUR_HS_INC_FR_DIRECT_PHONES , 	:CHS_INC_UG_TR_DIRECT_PHONES , 	:CHS_INC_GRAD_VET_MED_DIRECT_PHONES , 	:CHS_CURR_UG_DIRECT_PHONE , ',
'	:CHS_CURR_GRAD_VET_MED_DIRECT_PHONES , 	:CHS_COMBO_OTHER_STU_DIRECT_PHONES , 	:CHS_FORMER_STU_DIRECT_PHONES , 	:CHS_CHS_STUDENT_DIRECT_PHONES , ',
'	:CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES , 	:CHS_INC_UG_TR_VOICEMAIL_PHONES , 	:CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES , 	:CHS_CURR_UG_VOICEMAIL_PHONES , ',
'	:CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES , 	:CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES , 	:CHS_FORMER_STU_VOICEMAIL_PHONES , 	:CHS_CHS_STUDENT_VOICEMAILS_PHONES , ',
'	:CHS_CURR_HS_INC_FR_FINAID_EMAILS , 	:CHS_INC_UG_TR_FINAID_EMAILS ,  :CHS_INC_GRAD_VET_MED_FINAID_EMAILS , 	:CHS_CURR_UG_FINAID_EMAILS , 	:CHS_CURR_GRAD_VET_MED_FINAID_EMAILS , ',
'	:CHS_COMBO_OTHER_STU_FINAID_EMAILS , 	:CHS_FORMER_STU_FINAID_EMAILS , 	:CHS_CHS_STUDENT_FINAID_EMAILS , 	:CHS_TULSA_FINAID_EMAILS_ROUTED , 	:CHS_CURR_HS_INCOMING_FR , ',
'	:CHS_INCOMING_UG_TR , 	:CHS_INCOMING_GRAD_VET_MED ,	:CHS_CURRENT_UG , 	:CHS_CURRENT_GRAD_VET_MED , 	:CHS_COMBO_STUDENTS_OTHER , 	:CHS_FORMER_STUDENT , 	:CHS_CHS_STUDENT , ',
'	:CHS_STW_EMAIL_ROUTED , :CHS_COMMENTS , :T_FINAID_EMAILS_RECEIVED , :T_VOICEMAIL_RECEIVED  , :TULS_WALK_IN );',
'',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Specific Date Counselor Data'
,p_step_title=>'Specific Date Counselor Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803111743'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74404370286311540)
,p_plug_name=>'Specific Date Counselor Data'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74404758191311544)
,p_plug_name=>'Specific Date Counselor Report'
,p_parent_plug_id=>wwv_flow_api.id(74404370286311540)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232169370028051)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select	* from TULSA_COUNS_STATS where ENTER_DATE = :ENTER_SPECIFIC_DATE ;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74404834125311545)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74404834125311545
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74404960630311546)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74405019600311547)
,p_db_column_name=>'COUNSELOR_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Counselor Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74405173357311548)
,p_db_column_name=>'CURR_HS_INC_FR_WALKIN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Curr Hs Inc Fr Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74405242283311549)
,p_db_column_name=>'CURR_HS_INC_FR_APPTS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr Hs Inc Fr Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74405384458311550)
,p_db_column_name=>'CURR_HS_INC_FR_EMAIL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr Hs Inc Fr Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74470763293897601)
,p_db_column_name=>'CURR_HS_INC_FR_DIRECT_PHONES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curr Hs Inc Fr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74470883978897602)
,p_db_column_name=>'CURR_HS_INC_FR_VOICEMAIL_PHONE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Curr Hs Inc Fr Voicemail Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74470908395897603)
,p_db_column_name=>'INC_UG_TR_WALKIN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc Ug Tr Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471090135897604)
,p_db_column_name=>'INC_UG_TR_APPTS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc Ug Tr Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471131059897605)
,p_db_column_name=>'INC_UG_TR_EMAIL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inc Ug Tr Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471224725897606)
,p_db_column_name=>'INC_UG_TR_DIRECT_PHONE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inc Ug Tr Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471356732897607)
,p_db_column_name=>'INC_UG_TR_VOICEMAIL_PHONE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Inc Ug Tr Voicemail Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471497153897608)
,p_db_column_name=>'INC_GRAD_VET_MED_WALKIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Inc Grad Vet Med Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471574443897609)
,p_db_column_name=>'INC_GRAD_VET_MED_APPTS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Inc Grad Vet Med Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471635651897610)
,p_db_column_name=>'INC_GRAD_VET_MED_EMAIL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Inc Grad Vet Med Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471728384897611)
,p_db_column_name=>'INC_GRAD_VET_MED_DIRECT_PHONE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Inc Grad Vet Med Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471822824897612)
,p_db_column_name=>'INC_GRAD_VET_MED_VOICEMAIL_PHONE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Inc Grad Vet Med Voicemail Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74471995930897613)
,p_db_column_name=>'CURR_UG_WALKIN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Curr Ug Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472041255897614)
,p_db_column_name=>'CURR_UG_APPT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Curr Ug Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472112763897615)
,p_db_column_name=>'CURR_UG_EMAIL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Curr Ug Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472280779897616)
,p_db_column_name=>'CURR_UG_DIRECT_PHONES'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Curr Ug Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472361202897617)
,p_db_column_name=>'CURR_UG_VOICEMAILS_PHONES'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Curr Ug Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472478855897618)
,p_db_column_name=>'CURR_GRAD_VET_MED_WALKIN'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Curr Grad Vet Med Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472552969897619)
,p_db_column_name=>'CURR_GRAD_VET_MED_APPTS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Curr Grad Vet Med Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472666486897620)
,p_db_column_name=>'CURR_GRAD_VET_MED_EMAILS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Curr Grad Vet Med Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472781672897621)
,p_db_column_name=>'CURR_GRAD_VET_MED_DIRECT_PHONE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Curr Grad Vet Med Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472869301897622)
,p_db_column_name=>'CURR_GRAD_VET_MED_VOICEMAILS_PHONE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Curr Grad Vet Med Voicemails Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74472962733897623)
,p_db_column_name=>'COMBO_OTHER_STU_WALKIN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Combo Other Stu Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473061290897624)
,p_db_column_name=>'COMBO_OTHER_STU_APPTS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Combo Other Stu Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473149413897625)
,p_db_column_name=>'COMBO_OTHER_STU_EMAILS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Combo Other Stu Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473209547897626)
,p_db_column_name=>'COMBO_OTHER_STU_DIRECT_PHONE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Combo Other Stu Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473385060897627)
,p_db_column_name=>'COMBO_OTHER_STU_VOICEMAIL_PHONES'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Combo Other Stu Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473428972897628)
,p_db_column_name=>'FORMER_STU_WALKIN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Former Stu Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473560316897629)
,p_db_column_name=>'FORMER_STU_APPT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Former Stu Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473663707897630)
,p_db_column_name=>'FORMER_STU_EMAILS'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Former Stu Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473714095897631)
,p_db_column_name=>'FORMER_STU_DIRECT_PHONE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Former Stu Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473835263897632)
,p_db_column_name=>'FORMER_STU_VOICEMAILS_PHONES'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Former Stu Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74473978821897633)
,p_db_column_name=>'CHS_STUDENT_WALKIN'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Chs Student Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474058720897634)
,p_db_column_name=>'CHS_STUDENT_APPT'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Chs Student Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474117320897635)
,p_db_column_name=>'CHS_STUDENT_EMAILS'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Chs Student Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474268822897636)
,p_db_column_name=>'CHS_STUDENT_DIRECT_PHONE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Chs Student Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474351247897637)
,p_db_column_name=>'CHS_STUDENT_VOICEMAIL_PHONES'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Chs Student Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474484436897638)
,p_db_column_name=>'MY_EMIAL_IN'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'My Emial In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474507292897639)
,p_db_column_name=>'MY_EMIAL_OUT'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'My Emial Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474608679897640)
,p_db_column_name=>'TULSA_EMAIL_ROUTED'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Tulsa Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474721993897641)
,p_db_column_name=>'VETERAN_QUESTION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Veteran Question'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474868187897642)
,p_db_column_name=>'VETERAN_PAPER_WORK'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Veteran Paper Work'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74474986963897643)
,p_db_column_name=>'REPORTS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475011316897644)
,p_db_column_name=>'MISC'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475179076897645)
,p_db_column_name=>'CURR_HS_INCOMING_FR'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Curr Hs Incoming Fr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475254354897646)
,p_db_column_name=>'INC_UG_TR'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Inc Ug Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475375503897647)
,p_db_column_name=>'INC_GRAD_VET_MED'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Inc Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475469946897648)
,p_db_column_name=>'CURR_UG'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Curr Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475501423897649)
,p_db_column_name=>'CURR_GRAD_VET_MED'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Curr Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475657092897650)
,p_db_column_name=>'COMBO_STU_OTHER'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Combo Stu Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475736283897701)
,p_db_column_name=>'FORMER_STU'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Former Stu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475866739897702)
,p_db_column_name=>'CHS_STU'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Chs Stu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74475984758897703)
,p_db_column_name=>'STW_EMAILS_ROUTED'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Stw Emails Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74476014418897704)
,p_db_column_name=>'COMMENTS'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74490715898898202)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'744908'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENTER_DATE:COUNSELOR_NAME:CURR_HS_INC_FR_WALKIN:CURR_HS_INC_FR_APPTS:CURR_HS_INC_FR_EMAIL:CURR_HS_INC_FR_DIRECT_PHONES:CURR_HS_INC_FR_VOICEMAIL_PHONE:INC_UG_TR_WALKIN:INC_UG_TR_APPTS:INC_UG_TR_EMAIL:INC_UG_TR_DIRECT_PHONE:INC_UG_TR_VOICEMAIL_PHONE:IN'
||'C_GRAD_VET_MED_WALKIN:INC_GRAD_VET_MED_APPTS:INC_GRAD_VET_MED_EMAIL:INC_GRAD_VET_MED_DIRECT_PHONE:INC_GRAD_VET_MED_VOICEMAIL_PHONE:CURR_UG_WALKIN:CURR_UG_APPT:CURR_UG_EMAIL:CURR_UG_DIRECT_PHONES:CURR_UG_VOICEMAILS_PHONES:CURR_GRAD_VET_MED_WALKIN:CURR'
||'_GRAD_VET_MED_APPTS:CURR_GRAD_VET_MED_EMAILS:CURR_GRAD_VET_MED_DIRECT_PHONE:CURR_GRAD_VET_MED_VOICEMAILS_PHONE:COMBO_OTHER_STU_WALKIN:COMBO_OTHER_STU_APPTS:COMBO_OTHER_STU_EMAILS:COMBO_OTHER_STU_DIRECT_PHONE:COMBO_OTHER_STU_VOICEMAIL_PHONES:FORMER_ST'
||'U_WALKIN:FORMER_STU_APPT:FORMER_STU_EMAILS:FORMER_STU_DIRECT_PHONE:FORMER_STU_VOICEMAILS_PHONES:CHS_STUDENT_WALKIN:CHS_STUDENT_APPT:CHS_STUDENT_EMAILS:CHS_STUDENT_DIRECT_PHONE:CHS_STUDENT_VOICEMAIL_PHONES:MY_EMIAL_IN:MY_EMIAL_OUT:TULSA_EMAIL_ROUTED:V'
||'ETERAN_QUESTION:VETERAN_PAPER_WORK:REPORTS:MISC:CURR_HS_INCOMING_FR:INC_UG_TR:INC_GRAD_VET_MED:CURR_UG:CURR_GRAD_VET_MED:COMBO_STU_OTHER:FORMER_STU:CHS_STU:STW_EMAILS_ROUTED:COMMENTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74404672085311543)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74404370286311540)
,p_button_name=>'Fetch_Results'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Results'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74404421126311541)
,p_name=>'ENTER_SPECIFIC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74404370286311540)
,p_prompt=>'Enter Specific Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Specific Date Asst Director Data'
,p_step_title=>'Specific Date Asst Director Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230626113044'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74476142376897705)
,p_plug_name=>'Specific Date Asst Director Data'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74476507610897709)
,p_plug_name=>'Specific_Date_Asst_Director_Data_report'
,p_parent_plug_id=>wwv_flow_api.id(74476142376897705)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232169370028051)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select * from TULSA_ASST_DIR_STATS where NEW_DATE = :SPECIFIC_DATE ; '
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74476685017897710)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74476685017897710
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74476769733897711)
,p_db_column_name=>'NEW_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'New Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74476830646897712)
,p_db_column_name=>'ASST_DIR_COUNSELOR_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Asst Dir Counselor Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74476902441897713)
,p_db_column_name=>'CURR_HS_INC_FR_APPT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Curr Hs Inc Fr Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477017634897714)
,p_db_column_name=>'CURR_HS_INC_FR_STU_EMAIL_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr Hs Inc Fr Stu Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477117447897715)
,p_db_column_name=>'CURR_HS_INC_FR_STU_EMAIL_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr Hs Inc Fr Stu Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477280470897716)
,p_db_column_name=>'IN_PERSON_CONTACT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'In Person Contact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477358892897717)
,p_db_column_name=>'INC_UG_TR_APPT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc Ug Tr Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477488310897718)
,p_db_column_name=>'INC_UG_TR_STU_EMAILS_IN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc Ug Tr Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477595339897719)
,p_db_column_name=>'INC_UG_TR_STU_EMAILS_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc Ug Tr Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477668291897720)
,p_db_column_name=>'EVALS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477789174897721)
,p_db_column_name=>'INC_GRAD_VET_MED_APPT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inc Grad Vet Med Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477823607897722)
,p_db_column_name=>'INC_GRAD_VET_MED_STU_EMAILS_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Inc Grad Vet Med Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74477945528897723)
,p_db_column_name=>'INC_GRAD_VET_MED_STU_EMAILS_OUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Inc Grad Vet Med Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478018081897724)
,p_db_column_name=>'EMIALS_IN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Emials In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478186517897725)
,p_db_column_name=>'CURR_UG_APPTS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Curr Ug Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478268568897726)
,p_db_column_name=>'CURR_UG_EMAILS_IN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Curr Ug Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478351292897727)
,p_db_column_name=>'CURR_UG_EMAILS_OUT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Curr Ug Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478491282897728)
,p_db_column_name=>'EMIALS_OUT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Emials Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478501109897729)
,p_db_column_name=>'CURR_GRAD_VET_MED_APPT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Curr Grad Vet Med Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478654584897730)
,p_db_column_name=>'CURR_GRAD_VET_MED_EMAILS_IN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Curr Grad Vet Med Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478741594897731)
,p_db_column_name=>'CURR_GRAD_VET_MED_EMAILS_OUT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Curr Grad Vet Med Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478829327897732)
,p_db_column_name=>'PROF_JUDG'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74478916624897733)
,p_db_column_name=>'COMBO_OTHER_STU_APPT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Combo Other Stu Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479063809897734)
,p_db_column_name=>'COMBO_OTHER_STU_EMAILS_IN'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Combo Other Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479180395897735)
,p_db_column_name=>'COMBO_OTHER_STU_EMAILS_OUT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Combo Other Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479208901897736)
,p_db_column_name=>'VETERAN_QUESTIONS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Veteran Questions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479344143897737)
,p_db_column_name=>'FORMER_STU_APPTS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Former Stu Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479435261897738)
,p_db_column_name=>'FORMER_STU_EMAILS_IN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Former Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479549407897739)
,p_db_column_name=>'FORMER_STU_EMAILS_OUT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Former Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479683653897740)
,p_db_column_name=>'VETERAN_PAPERWORK'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Veteran Paperwork'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479773499897741)
,p_db_column_name=>'CHS_STUDENT_APPTS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Chs Student Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74479861373897742)
,p_db_column_name=>'CHS_STUDENT_EMAILS_IN'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Chs Student Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74489968316897743)
,p_db_column_name=>'CHS_STUDENT_EMAILS_OUT'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Chs Student Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490007952897744)
,p_db_column_name=>'DIR_REPORTS'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Dir Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490156445897745)
,p_db_column_name=>'DIR_MISC'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Dir Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490268593897746)
,p_db_column_name=>'CURR_HS_INC_FR_FINAID_EMAILS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Curr Hs Inc Fr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490349389897747)
,p_db_column_name=>'INC_UG_TR_FINAID_EMAILS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Inc Ug Tr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490499322897748)
,p_db_column_name=>'INC_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Inc Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490568680897749)
,p_db_column_name=>'CURR_UG_FINAID_EMAILS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Curr Ug Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490641228897750)
,p_db_column_name=>'CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Curr Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74510419886366701)
,p_db_column_name=>'COMBO_OTHER_STU_FINAID_EMAILS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Combo Other Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74510557900366702)
,p_db_column_name=>'FORMER_STU_FINAID_EMAILS'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Former Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74510626773366703)
,p_db_column_name=>'CHS_STUDENT_FINAID_EMAILS'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Chs Student Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74510799415366704)
,p_db_column_name=>'TULSA_FINAID_EMAILS_ROUTED'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Tulsa Finaid Emails Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74510823983366705)
,p_db_column_name=>'CUR_HS_INC_FR_DIRECT_PHONES'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Cur Hs Inc Fr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74510977674366706)
,p_db_column_name=>'CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Curr Hs Inc Fr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511074143366707)
,p_db_column_name=>'INC_UG_TR_DIRECT_PHONES'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Inc Ug Tr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511173370366708)
,p_db_column_name=>'INC_UG_TR_VOICEMAIL_PHONES'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Inc Ug Tr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511249061366709)
,p_db_column_name=>'INC_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Inc Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511364534366710)
,p_db_column_name=>'INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Inc Grad Vet Med Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511460032366711)
,p_db_column_name=>'CURR_UG_DIRECT_PHONE'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Curr Ug Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511561188366712)
,p_db_column_name=>'CURR_UG_VOICEMAIL_PHONES'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Curr Ug Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511694699366713)
,p_db_column_name=>'CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Curr Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511749319366714)
,p_db_column_name=>'CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Curr Grad Vet Med Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511881438366715)
,p_db_column_name=>'COMBO_OTHER_STU_DIRECT_PHONES'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Combo Other Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74511925042366716)
,p_db_column_name=>'COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Combo Other Stu Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512074103366717)
,p_db_column_name=>'FORMER_STU_DIRECT_PHONES'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Former Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512115978366718)
,p_db_column_name=>'FORMER_STU_VOICEMAIL_PHONES'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Former Stu Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512270495366719)
,p_db_column_name=>'CHS_STUDENT_DIRECT_PHONES'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Chs Student Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512330074366720)
,p_db_column_name=>'CHS_STUDENT_VOICEMAILS_PHONES'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Chs Student Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512425939366721)
,p_db_column_name=>'CURR_HS_INC_FR'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Curr Hs Inc Fr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512534606366722)
,p_db_column_name=>'INCOMING_UG_TR'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Incoming Ug Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512661583366723)
,p_db_column_name=>'INCOMING_GRAD_VET_MED'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Incoming Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512743911366724)
,p_db_column_name=>'CURRENT_UG'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Current Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512834906366725)
,p_db_column_name=>'CURRENT_GRAD_VET_MED'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Current Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74512933394366726)
,p_db_column_name=>'COMBO_STUDENTS_OTHER'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Combo Students Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74513036018366727)
,p_db_column_name=>'FORMER_STUDENT'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Former Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74513140966366728)
,p_db_column_name=>'CHS_STUDENT'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Chs Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74513208351366729)
,p_db_column_name=>'STW_EMAIL_ROUTED'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Stw Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74536500945369265)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'745366'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NEW_DATE:ASST_DIR_COUNSELOR_NAME:CURR_HS_INC_FR_APPT:CURR_HS_INC_FR_STU_EMAIL_IN:CURR_HS_INC_FR_STU_EMAIL_OUT:IN_PERSON_CONTACT:INC_UG_TR_APPT:INC_UG_TR_STU_EMAILS_IN:INC_UG_TR_STU_EMAILS_OUT:EVALS:INC_GRAD_VET_MED_APPT:INC_GRAD_VET_MED_STU_EMAILS_IN'
||':INC_GRAD_VET_MED_STU_EMAILS_OUT:EMIALS_IN:CURR_UG_APPTS:CURR_UG_EMAILS_IN:CURR_UG_EMAILS_OUT:EMIALS_OUT:CURR_GRAD_VET_MED_APPT:CURR_GRAD_VET_MED_EMAILS_IN:CURR_GRAD_VET_MED_EMAILS_OUT:PROF_JUDG:COMBO_OTHER_STU_APPT:COMBO_OTHER_STU_EMAILS_IN:COMBO_OT'
||'HER_STU_EMAILS_OUT:VETERAN_QUESTIONS:FORMER_STU_APPTS:FORMER_STU_EMAILS_IN:FORMER_STU_EMAILS_OUT:VETERAN_PAPERWORK:CHS_STUDENT_APPTS:CHS_STUDENT_EMAILS_IN:CHS_STUDENT_EMAILS_OUT:DIR_REPORTS:DIR_MISC:CURR_HS_INC_FR_FINAID_EMAILS:INC_UG_TR_FINAID_EMAIL'
||'S:INC_GRAD_VET_MED_FINAID_EMAILS:CURR_UG_FINAID_EMAILS:CURR_GRAD_VET_MED_FINAID_EMAILS:COMBO_OTHER_STU_FINAID_EMAILS:FORMER_STU_FINAID_EMAILS:CHS_STUDENT_FINAID_EMAILS:TULSA_FINAID_EMAILS_ROUTED:CUR_HS_INC_FR_DIRECT_PHONES:CURR_HS_INC_FR_VOICEMAIL_PH'
||'ONES:INC_UG_TR_DIRECT_PHONES:INC_UG_TR_VOICEMAIL_PHONES:INC_GRAD_VET_MED_DIRECT_PHONES:INC_GRAD_VET_MED_VOICEMAIL_PHONES:CURR_UG_DIRECT_PHONE:CURR_UG_VOICEMAIL_PHONES:CURR_GRAD_VET_MED_DIRECT_PHONES:CURR_GRAD_VET_MED_VOICEMAILS_PHONES:COMBO_OTHER_STU'
||'_DIRECT_PHONES:COMBO_OTHER_STU_VOICEMAILS_PHONES:FORMER_STU_DIRECT_PHONES:FORMER_STU_VOICEMAIL_PHONES:CHS_STUDENT_DIRECT_PHONES:CHS_STUDENT_VOICEMAILS_PHONES:CURR_HS_INC_FR:INCOMING_UG_TR:INCOMING_GRAD_VET_MED:CURRENT_UG:CURRENT_GRAD_VET_MED:COMBO_ST'
||'UDENTS_OTHER:FORMER_STUDENT:CHS_STUDENT:STW_EMAIL_ROUTED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74476309305897707)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74476142376897705)
,p_button_name=>'Fetch_Data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Data'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74476255823897706)
,p_name=>'SPECIFIC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74476142376897705)
,p_prompt=>'Specific Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Specific Date CHS Stats'
,p_step_title=>'Specific Date CHS Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230626113106'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74513389502366730)
,p_plug_name=>'Specific_Date_CHS_Data_report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74513908200366736)
,p_plug_name=>'Specific Date CHS Report '
,p_parent_plug_id=>wwv_flow_api.id(74513389502366730)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232169370028051)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select * From TULSA_CHS_STATS where CHS_DATE = :CHS_SPECIFIC_DATE ;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74514088298366737)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74514088298366737
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514184669366738)
,p_db_column_name=>'CHS_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Chs Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514259638366739)
,p_db_column_name=>'CHS_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Chs Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514362523366740)
,p_db_column_name=>'WALK_IN_PA_STU1'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Walk In Pa Stu1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514412742366741)
,p_db_column_name=>'WALK_IN_OTHER1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Walk In Other1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514561612366742)
,p_db_column_name=>'WALK_IN_PA_STU2'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Walk In Pa Stu2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514694883366743)
,p_db_column_name=>'WALK_IN_OTHER2'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Walk In Other2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514769108366744)
,p_db_column_name=>'WALK_IN_PA_STU3'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Walk In Pa Stu3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514853643366745)
,p_db_column_name=>'WALK_IN_OTHER3'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Walk In Other3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74514976397366746)
,p_db_column_name=>'WALK_IN_PA_STU4'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Walk In Pa Stu4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74515076305366747)
,p_db_column_name=>'WALK_IN_OTHER4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Walk In Other4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74515178665366748)
,p_db_column_name=>'WALK_IN_PA_STU5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Walk In Pa Stu5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74515256365366749)
,p_db_column_name=>'WALK_IN_OTHER5'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Walk In Other5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74515307469366750)
,p_db_column_name=>'WALK_IN_PA_STU6'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Walk In Pa Stu6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538331137408801)
,p_db_column_name=>'WALK_IN_OTHER6'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Walk In Other6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538454828408802)
,p_db_column_name=>'WALK_IN_PA_STU7'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Walk In Pa Stu7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538591885408803)
,p_db_column_name=>'WALK_IN_OTHER7'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Walk In Other7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538688577408804)
,p_db_column_name=>'WALK_IN_PA_STU8'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Walk In Pa Stu8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538714580408805)
,p_db_column_name=>'WALK_IN_OTHER8'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Walk In Other8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538870066408806)
,p_db_column_name=>'WALK_IN_PA_STU9'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Walk In Pa Stu9'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74538958212408807)
,p_db_column_name=>'WALK_IN_OTHER9'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Walk In Other9'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539001268408808)
,p_db_column_name=>'WALK_IN_PA_STU10'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Walk In Pa Stu10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539175439408809)
,p_db_column_name=>'WALK_IN_OTHER10'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Walk In Other10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539284310408810)
,p_db_column_name=>'MY_EMIALS_IN'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'My Emials In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539359856408811)
,p_db_column_name=>'MY_EMIALS_OUT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'My Emials Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539474450408812)
,p_db_column_name=>'VOICEMAIL_RETURNED'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Voicemail Returned'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539574160408813)
,p_db_column_name=>'OTHER'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539658100408814)
,p_db_column_name=>'CHS_CUR_HS_INC_FR_DIRECT_PHONES'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Chs Cur Hs Inc Fr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539755743408815)
,p_db_column_name=>'CHS_INC_UG_TR_DIRECT_PHONES'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Chs Inc Ug Tr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539812083408816)
,p_db_column_name=>'CHS_INC_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Chs Inc Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74539906957408817)
,p_db_column_name=>'CHS_CURR_UG_DIRECT_PHONE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Chs Curr Ug Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540090378408818)
,p_db_column_name=>'CHS_CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Chs Curr Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540101852408819)
,p_db_column_name=>'CHS_COMBO_OTHER_STU_DIRECT_PHONES'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Chs Combo Other Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540205689408820)
,p_db_column_name=>'CHS_FORMER_STU_DIRECT_PHONES'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Chs Former Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540367718408821)
,p_db_column_name=>'CHS_CHS_STUDENT_DIRECT_PHONES'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Chs Chs Student Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540486001408822)
,p_db_column_name=>'CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Chs Curr Hs Inc Fr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540554585408823)
,p_db_column_name=>'CHS_INC_UG_TR_VOICEMAIL_PHONES'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Chs Inc Ug Tr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540604456408824)
,p_db_column_name=>'CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Chs Inc Grad Vet Med Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540737622408825)
,p_db_column_name=>'CHS_CURR_UG_VOICEMAIL_PHONES'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Chs Curr Ug Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540851394408826)
,p_db_column_name=>'CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Chs Curr Grad Vet Med Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74540936500408827)
,p_db_column_name=>'CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Chs Combo Other Stu Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541005271408828)
,p_db_column_name=>'CHS_FORMER_STU_VOICEMAIL_PHONES'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Chs Former Stu Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541157252408829)
,p_db_column_name=>'CHS_CHS_STUDENT_VOICEMAILS_PHONES'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Chs Chs Student Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541256544408830)
,p_db_column_name=>'CHS_CURR_HS_INC_FR_FINAID_EMAILS'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Chs Curr Hs Inc Fr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541328212408831)
,p_db_column_name=>'CHS_INC_UG_TR_FINAID_EMAILS'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Chs Inc Ug Tr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541468390408832)
,p_db_column_name=>'CHS_INC_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Chs Inc Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541525336408833)
,p_db_column_name=>'CHS_CURR_UG_FINAID_EMAILS'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Chs Curr Ug Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541637446408834)
,p_db_column_name=>'CHS_CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Chs Curr Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541734966408835)
,p_db_column_name=>'CHS_COMBO_OTHER_STU_FINAID_EMAILS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Chs Combo Other Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541833983408836)
,p_db_column_name=>'CHS_FORMER_STU_FINAID_EMAILS'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Chs Former Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74541983756408837)
,p_db_column_name=>'CHS_CHS_STUDENT_FINAID_EMAILS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Chs Chs Student Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542019662408838)
,p_db_column_name=>'CHS_TULSA_FINAID_EMAILS_ROUTED'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Chs Tulsa Finaid Emails Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542141915408839)
,p_db_column_name=>'CHS_CURR_HS_INCOMING_FR'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Chs Curr Hs Incoming Fr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542232382408840)
,p_db_column_name=>'CHS_INCOMING_UG_TR'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Chs Incoming Ug Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542387296408841)
,p_db_column_name=>'CHS_INCOMING_GRAD_VET_MED'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Chs Incoming Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542452069408842)
,p_db_column_name=>'CHS_CURRENT_UG'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Chs Current Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542545199408843)
,p_db_column_name=>'CHS_CURRENT_GRAD_VET_MED'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Chs Current Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542617611408844)
,p_db_column_name=>'CHS_COMBO_STUDENTS_OTHER'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Chs Combo Students Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542757379408845)
,p_db_column_name=>'CHS_FORMER_STUDENT'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Chs Former Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542861840408846)
,p_db_column_name=>'CHS_CHS_STUDENT'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Chs Chs Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74542977413408847)
,p_db_column_name=>'CHS_STW_EMAIL_ROUTED'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Chs Stw Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74543024899408848)
,p_db_column_name=>'CHS_COMMENTS'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Chs Comments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74561292638972377)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'745613'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHS_DATE:CHS_NAME:WALK_IN_PA_STU1:WALK_IN_OTHER1:WALK_IN_PA_STU2:WALK_IN_OTHER2:WALK_IN_PA_STU3:WALK_IN_OTHER3:WALK_IN_PA_STU4:WALK_IN_OTHER4:WALK_IN_PA_STU5:WALK_IN_OTHER5:WALK_IN_PA_STU6:WALK_IN_OTHER6:WALK_IN_PA_STU7:WALK_IN_OTHER7:WALK_IN_PA_STU8'
||':WALK_IN_OTHER8:WALK_IN_PA_STU9:WALK_IN_OTHER9:WALK_IN_PA_STU10:WALK_IN_OTHER10:MY_EMIALS_IN:MY_EMIALS_OUT:VOICEMAIL_RETURNED:OTHER:CHS_CUR_HS_INC_FR_DIRECT_PHONES:CHS_INC_UG_TR_DIRECT_PHONES:CHS_INC_GRAD_VET_MED_DIRECT_PHONES:CHS_CURR_UG_DIRECT_PHON'
||'E:CHS_CURR_GRAD_VET_MED_DIRECT_PHONES:CHS_COMBO_OTHER_STU_DIRECT_PHONES:CHS_FORMER_STU_DIRECT_PHONES:CHS_CHS_STUDENT_DIRECT_PHONES:CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES:CHS_INC_UG_TR_VOICEMAIL_PHONES:CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES:CHS_CURR_UG_VO'
||'ICEMAIL_PHONES:CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES:CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES:CHS_FORMER_STU_VOICEMAIL_PHONES:CHS_CHS_STUDENT_VOICEMAILS_PHONES:CHS_CURR_HS_INC_FR_FINAID_EMAILS:CHS_INC_UG_TR_FINAID_EMAILS:CHS_INC_GRAD_VET_MED_FINAID_EM'
||'AILS:CHS_CURR_UG_FINAID_EMAILS:CHS_CURR_GRAD_VET_MED_FINAID_EMAILS:CHS_COMBO_OTHER_STU_FINAID_EMAILS:CHS_FORMER_STU_FINAID_EMAILS:CHS_CHS_STUDENT_FINAID_EMAILS:CHS_TULSA_FINAID_EMAILS_ROUTED:CHS_CURR_HS_INCOMING_FR:CHS_INCOMING_UG_TR:CHS_INCOMING_GRA'
||'D_VET_MED:CHS_CURRENT_UG:CHS_CURRENT_GRAD_VET_MED:CHS_COMBO_STUDENTS_OTHER:CHS_FORMER_STUDENT:CHS_CHS_STUDENT:CHS_STW_EMAIL_ROUTED:CHS_COMMENTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74513842441366735)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74513389502366730)
,p_button_name=>'FETCH_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74513686432366733)
,p_name=>'CHS_SPECIFIC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74513389502366730)
,p_prompt=>'CHS Specific Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Summary Stats of Counselor Data '
,p_step_title=>'Summary Stats of Counselor Data '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230626112600'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74543176004408849)
,p_plug_name=>'Summary_status_Counsleors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74562553710995403)
,p_plug_name=>'Summary_status_Counsleors_Report '
,p_parent_plug_id=>wwv_flow_api.id(74543176004408849)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232169370028051)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'    sum (CURR_HS_INC_FR_WALKIN) as CURR_HS_INC_FR_WALKIN, 	sum (CURR_HS_INC_FR_APPTS) as CURR_HS_INC_FR_APPTS, 	sum (CURR_HS_INC_FR_EMAIL) as CURR_HS_INC_FR_EMAIL, ',
'    sum (CURR_HS_INC_FR_DIRECT_PHONES) as CURR_HS_INC_FR_DIRECT_PHONES  ,   	sum (CURR_HS_INC_FR_VOICEMAIL_PHONE) as CURR_HS_INC_FR_VOICEMAIL_PHONE , sum (INC_UG_TR_WALKIN) as INC_UG_TR_WALKIN, ',
'    sum (INC_UG_TR_APPTS)as INC_UG_TR_APPTS, 	sum (INC_UG_TR_EMAIL) as INC_UG_TR_EMAIL, 	sum (INC_UG_TR_DIRECT_PHONE) as INC_UG_TR_DIRECT_PHONE, 	',
'    sum (INC_UG_TR_VOICEMAIL_PHONE) as INC_UG_TR_VOICEMAIL_PHONE, ',
'	sum (INC_GRAD_VET_MED_WALKIN) as INC_GRAD_VET_MED_WALKIN, 	sum (INC_GRAD_VET_MED_APPTS )as INC_GRAD_VET_MED_APPTS, 	sum (INC_GRAD_VET_MED_EMAIL)as INC_GRAD_VET_MED_EMAIL, 	',
'    sum (INC_GRAD_VET_MED_DIRECT_PHONE) as INC_GRAD_VET_MED_DIRECT_PHONE, 	sum (INC_GRAD_VET_MED_VOICEMAIL_PHONE) as INC_GRAD_VET_MED_VOICEMAIL_PHONE, ',
'	sum (CURR_UG_WALKIN) as CURR_UG_WALKIN, 	sum (CURR_UG_APPT)as CURR_UG_APPT, 	sum (CURR_UG_EMAIL)as CURR_UG_EMAIL, 	sum (CURR_UG_DIRECT_PHONES)as CURR_UG_DIRECT_PHONES,	sum (CURR_UG_VOICEMAILS_PHONES) as CURR_UG_VOICEMAILS_PHONES, ',
'	sum (CURR_GRAD_VET_MED_WALKIN) as CURR_GRAD_VET_MED_WALKIN, 	sum (CURR_GRAD_VET_MED_APPTS)as CURR_GRAD_VET_MED_APPTS , 	sum (CURR_GRAD_VET_MED_EMAILS)as CURR_GRAD_VET_MED_EMAILS,',
'    sum (CURR_GRAD_VET_MED_DIRECT_PHONE)as CURR_GRAD_VET_MED_DIRECT_PHONE, 	sum (CURR_GRAD_VET_MED_VOICEMAILS_PHONE ) as CURR_GRAD_VET_MED_VOICEMAILS_PHONE, ',
'	sum (COMBO_OTHER_STU_WALKIN) as COMBO_OTHER_STU_WALKIN, 	sum (COMBO_OTHER_STU_APPTS)as COMBO_OTHER_STU_APPTS, 	sum (COMBO_OTHER_STU_EMAILS)as COMBO_OTHER_STU_EMAILS, ',
'    sum (COMBO_OTHER_STU_DIRECT_PHONE)as COMBO_OTHER_STU_DIRECT_PHONE, 	sum (COMBO_OTHER_STU_VOICEMAIL_PHONES) as COMBO_OTHER_STU_VOICEMAIL_PHONES, ',
'	sum (FORMER_STU_WALKIN) as FORMER_STU_WALKIN, 	sum (FORMER_STU_APPT)as FORMER_STU_APPT , 	sum (FORMER_STU_EMAILS)as FORMER_STU_EMAILS , ',
'    sum (FORMER_STU_DIRECT_PHONE)as FORMER_STU_DIRECT_PHONE , 	sum (FORMER_STU_VOICEMAILS_PHONES) as FORMER_STU_VOICEMAILS_PHONES, ',
'    sum (CHS_STUDENT_WALKIN) as CHS_STUDENT_WALKIN, 	sum (CHS_STUDENT_APPT)as CHS_STUDENT_APPT, 	sum (CHS_STUDENT_EMAILS)as CHS_STUDENT_EMAILS, ',
'    sum (CHS_STUDENT_DIRECT_PHONE)as CHS_STUDENT_DIRECT_PHONE, 	sum (CHS_STUDENT_VOICEMAIL_PHONES) as CHS_STUDENT_VOICEMAIL_PHONES, ',
'	sum (MY_EMIAL_IN)  as MY_EMAIL_IN, 	sum (MY_EMIAL_OUT) as MY_EMAIL_OUT, 	sum (TULSA_EMAIL_ROUTED) as TULSA_EMAIL_ROUTED, 	sum (VETERAN_QUESTION)as VETERAN_QUESTION, 	sum (VETERAN_PAPER_WORK)as VETERAN_PAPER_WORK , ',
'	sum (REPORTS) as REPORTS, sum (MISC) as MISC, 	sum (CURR_HS_INCOMING_FR)as CURR_HS_INCOMING_FR , 	sum (INC_UG_TR) as INC_UG_TR, 	sum (INC_GRAD_VET_MED) as INC_GRAD_VET_MED, ',
'    sum (CURR_UG) as CURR_UG, 	sum (CURR_GRAD_VET_MED)as CURR_GRAD_VET_MED, 	sum (COMBO_STU_OTHER) as COMBO_STU_OTHER, sum (FORMER_STU)  as FORMER_STU, 	',
'    sum (CHS_STU) as CHS_STU, 	sum (STW_EMAILS_ROUTED)  as STW_EMAILS_ROUTED ',
'    ',
'	',
'From TULSA_COUNS_STATS where ENTER_DATE >=:FROM_DATE  and ENTER_DATE <= :TO_DATE ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74562649770995404)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74562649770995404
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74544537941523111)
,p_db_column_name=>'CURR_HS_INC_FR_WALKIN'
,p_display_order=>10
,p_column_identifier=>'BE'
,p_column_label=>'Curr Hs Inc Fr Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74544664887523112)
,p_db_column_name=>'CURR_HS_INC_FR_APPTS'
,p_display_order=>20
,p_column_identifier=>'BF'
,p_column_label=>'Curr Hs Inc Fr Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74544781275523113)
,p_db_column_name=>'CURR_HS_INC_FR_EMAIL'
,p_display_order=>30
,p_column_identifier=>'BG'
,p_column_label=>'Curr Hs Inc Fr Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74544834877523114)
,p_db_column_name=>'CURR_HS_INC_FR_DIRECT_PHONES'
,p_display_order=>40
,p_column_identifier=>'BH'
,p_column_label=>'Curr Hs Inc Fr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74827696145190718)
,p_db_column_name=>'CURR_HS_INC_FR_VOICEMAIL_PHONE'
,p_display_order=>50
,p_column_identifier=>'BI'
,p_column_label=>'Curr Hs Inc Fr Voicemail Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74827787714190719)
,p_db_column_name=>'INC_UG_TR_WALKIN'
,p_display_order=>60
,p_column_identifier=>'BJ'
,p_column_label=>'Inc Ug Tr Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74827888269190720)
,p_db_column_name=>'INC_UG_TR_APPTS'
,p_display_order=>70
,p_column_identifier=>'BK'
,p_column_label=>'Inc Ug Tr Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74827955742190721)
,p_db_column_name=>'INC_UG_TR_EMAIL'
,p_display_order=>80
,p_column_identifier=>'BL'
,p_column_label=>'Inc Ug Tr Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828080041190722)
,p_db_column_name=>'INC_UG_TR_DIRECT_PHONE'
,p_display_order=>90
,p_column_identifier=>'BM'
,p_column_label=>'Inc Ug Tr Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828111120190723)
,p_db_column_name=>'INC_UG_TR_VOICEMAIL_PHONE'
,p_display_order=>100
,p_column_identifier=>'BN'
,p_column_label=>'Inc Ug Tr Voicemail Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828217147190724)
,p_db_column_name=>'INC_GRAD_VET_MED_WALKIN'
,p_display_order=>110
,p_column_identifier=>'BO'
,p_column_label=>'Inc Grad Vet Med Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828365263190725)
,p_db_column_name=>'INC_GRAD_VET_MED_APPTS'
,p_display_order=>120
,p_column_identifier=>'BP'
,p_column_label=>'Inc Grad Vet Med Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828432846190726)
,p_db_column_name=>'INC_GRAD_VET_MED_EMAIL'
,p_display_order=>130
,p_column_identifier=>'BQ'
,p_column_label=>'Inc Grad Vet Med Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828513527190727)
,p_db_column_name=>'INC_GRAD_VET_MED_DIRECT_PHONE'
,p_display_order=>140
,p_column_identifier=>'BR'
,p_column_label=>'Inc Grad Vet Med Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828652992190728)
,p_db_column_name=>'INC_GRAD_VET_MED_VOICEMAIL_PHONE'
,p_display_order=>150
,p_column_identifier=>'BS'
,p_column_label=>'Inc Grad Vet Med Voicemail Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828749018190729)
,p_db_column_name=>'CURR_UG_WALKIN'
,p_display_order=>160
,p_column_identifier=>'BT'
,p_column_label=>'Curr Ug Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828850075190730)
,p_db_column_name=>'CURR_UG_APPT'
,p_display_order=>170
,p_column_identifier=>'BU'
,p_column_label=>'Curr Ug Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74828901095190731)
,p_db_column_name=>'CURR_UG_EMAIL'
,p_display_order=>180
,p_column_identifier=>'BV'
,p_column_label=>'Curr Ug Email'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829046698190732)
,p_db_column_name=>'CURR_UG_DIRECT_PHONES'
,p_display_order=>190
,p_column_identifier=>'BW'
,p_column_label=>'Curr Ug Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829174826190733)
,p_db_column_name=>'CURR_UG_VOICEMAILS_PHONES'
,p_display_order=>200
,p_column_identifier=>'BX'
,p_column_label=>'Curr Ug Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829213660190734)
,p_db_column_name=>'CURR_GRAD_VET_MED_WALKIN'
,p_display_order=>210
,p_column_identifier=>'BY'
,p_column_label=>'Curr Grad Vet Med Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829379729190735)
,p_db_column_name=>'CURR_GRAD_VET_MED_APPTS'
,p_display_order=>220
,p_column_identifier=>'BZ'
,p_column_label=>'Curr Grad Vet Med Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829443126190736)
,p_db_column_name=>'CURR_GRAD_VET_MED_EMAILS'
,p_display_order=>230
,p_column_identifier=>'CA'
,p_column_label=>'Curr Grad Vet Med Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829570357190737)
,p_db_column_name=>'CURR_GRAD_VET_MED_DIRECT_PHONE'
,p_display_order=>240
,p_column_identifier=>'CB'
,p_column_label=>'Curr Grad Vet Med Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829693701190738)
,p_db_column_name=>'CURR_GRAD_VET_MED_VOICEMAILS_PHONE'
,p_display_order=>250
,p_column_identifier=>'CC'
,p_column_label=>'Curr Grad Vet Med Voicemails Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829780730190739)
,p_db_column_name=>'COMBO_OTHER_STU_WALKIN'
,p_display_order=>260
,p_column_identifier=>'CD'
,p_column_label=>'Combo Other Stu Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829893497190740)
,p_db_column_name=>'COMBO_OTHER_STU_APPTS'
,p_display_order=>270
,p_column_identifier=>'CE'
,p_column_label=>'Combo Other Stu Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74829950387190741)
,p_db_column_name=>'COMBO_OTHER_STU_EMAILS'
,p_display_order=>280
,p_column_identifier=>'CF'
,p_column_label=>'Combo Other Stu Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830077384190742)
,p_db_column_name=>'COMBO_OTHER_STU_DIRECT_PHONE'
,p_display_order=>290
,p_column_identifier=>'CG'
,p_column_label=>'Combo Other Stu Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830188502190743)
,p_db_column_name=>'COMBO_OTHER_STU_VOICEMAIL_PHONES'
,p_display_order=>300
,p_column_identifier=>'CH'
,p_column_label=>'Combo Other Stu Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830229498190744)
,p_db_column_name=>'FORMER_STU_WALKIN'
,p_display_order=>310
,p_column_identifier=>'CI'
,p_column_label=>'Former Stu Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830355451190745)
,p_db_column_name=>'FORMER_STU_APPT'
,p_display_order=>320
,p_column_identifier=>'CJ'
,p_column_label=>'Former Stu Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830417192190746)
,p_db_column_name=>'FORMER_STU_EMAILS'
,p_display_order=>330
,p_column_identifier=>'CK'
,p_column_label=>'Former Stu Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830565134190747)
,p_db_column_name=>'FORMER_STU_DIRECT_PHONE'
,p_display_order=>340
,p_column_identifier=>'CL'
,p_column_label=>'Former Stu Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830616200190748)
,p_db_column_name=>'FORMER_STU_VOICEMAILS_PHONES'
,p_display_order=>350
,p_column_identifier=>'CM'
,p_column_label=>'Former Stu Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830778748190749)
,p_db_column_name=>'CHS_STUDENT_WALKIN'
,p_display_order=>360
,p_column_identifier=>'CN'
,p_column_label=>'Chs Student Walkin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74830854379190750)
,p_db_column_name=>'CHS_STUDENT_APPT'
,p_display_order=>370
,p_column_identifier=>'CO'
,p_column_label=>'Chs Student Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74890934874236801)
,p_db_column_name=>'CHS_STUDENT_EMAILS'
,p_display_order=>380
,p_column_identifier=>'CP'
,p_column_label=>'Chs Student Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891023413236802)
,p_db_column_name=>'CHS_STUDENT_DIRECT_PHONE'
,p_display_order=>390
,p_column_identifier=>'CQ'
,p_column_label=>'Chs Student Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891111469236803)
,p_db_column_name=>'CHS_STUDENT_VOICEMAIL_PHONES'
,p_display_order=>400
,p_column_identifier=>'CR'
,p_column_label=>'Chs Student Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891252046236804)
,p_db_column_name=>'MY_EMAIL_IN'
,p_display_order=>410
,p_column_identifier=>'CS'
,p_column_label=>'My Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891397966236805)
,p_db_column_name=>'MY_EMAIL_OUT'
,p_display_order=>420
,p_column_identifier=>'CT'
,p_column_label=>'My Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891419082236806)
,p_db_column_name=>'TULSA_EMAIL_ROUTED'
,p_display_order=>430
,p_column_identifier=>'CU'
,p_column_label=>'Tulsa Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891535935236807)
,p_db_column_name=>'VETERAN_QUESTION'
,p_display_order=>440
,p_column_identifier=>'CV'
,p_column_label=>'Veteran Question'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891690183236808)
,p_db_column_name=>'VETERAN_PAPER_WORK'
,p_display_order=>450
,p_column_identifier=>'CW'
,p_column_label=>'Veteran Paper Work'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891770256236809)
,p_db_column_name=>'REPORTS'
,p_display_order=>460
,p_column_identifier=>'CX'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891804887236810)
,p_db_column_name=>'MISC'
,p_display_order=>470
,p_column_identifier=>'CY'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74891920808236811)
,p_db_column_name=>'CURR_HS_INCOMING_FR'
,p_display_order=>480
,p_column_identifier=>'CZ'
,p_column_label=>'Curr Hs Incoming Fr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892082989236812)
,p_db_column_name=>'INC_UG_TR'
,p_display_order=>490
,p_column_identifier=>'DA'
,p_column_label=>'Inc Ug Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892136567236813)
,p_db_column_name=>'INC_GRAD_VET_MED'
,p_display_order=>500
,p_column_identifier=>'DB'
,p_column_label=>'Inc Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892201601236814)
,p_db_column_name=>'CURR_UG'
,p_display_order=>510
,p_column_identifier=>'DC'
,p_column_label=>'Curr Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892368099236815)
,p_db_column_name=>'CURR_GRAD_VET_MED'
,p_display_order=>520
,p_column_identifier=>'DD'
,p_column_label=>'Curr Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892458955236816)
,p_db_column_name=>'COMBO_STU_OTHER'
,p_display_order=>530
,p_column_identifier=>'DE'
,p_column_label=>'Combo Stu Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892536292236817)
,p_db_column_name=>'FORMER_STU'
,p_display_order=>540
,p_column_identifier=>'DF'
,p_column_label=>'Former Stu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892617379236818)
,p_db_column_name=>'CHS_STU'
,p_display_order=>550
,p_column_identifier=>'DG'
,p_column_label=>'Chs Stu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74892772664236819)
,p_db_column_name=>'STW_EMAILS_ROUTED'
,p_display_order=>560
,p_column_identifier=>'DH'
,p_column_label=>'Stw Emails Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74585782258526675)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'745858'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CURR_HS_INC_FR_WALKIN:CURR_HS_INC_FR_APPTS:CURR_HS_INC_FR_EMAIL:CURR_HS_INC_FR_DIRECT_PHONES_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPT_EMAIL_DIRECT_PHONES_VOICEMAILS_PHONES_WALKIN_APPT'
||'S_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONE_WALKIN_APPT_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONESDENT_WALKINDENT_APPTDENT_EMAILSDENT_DIRECT_PHONEDENT_VOICEMAIL_PHONES_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PH'
||'ONE_WALKIN_APPT_EMAIL_DIRECT_PHONES_VOICEMAILS_PHONES_WALKIN_APPTS_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONE_WALKIN_APPT_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONESDENT_WALKINDENT_APPTDENT_EMAILSDENT_DIRECT_PHONEDENT_VOICEMAIL_PHONES_WALKIN_APPTS_EMAIL_DIRECT_P'
||'HONE_VOICEMAIL_PHONE_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPT_EMAIL_DIRECT_PHONES_VOICEMAILS_PHONES_WALKIN_APPTS_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONE_WALKIN_APPT_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONESDENT_WALKINDENT_APPTDENT_EMAILSD'
||'ENT_DIRECT_PHONEDENT_VOICEMAIL_PHONES_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPT_EMAIL_DIRECT_PHONES_VOICEMAILS_PHONES_WALKIN_APPTS_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONE_WALKIN_APPT_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONESDENT_WALKINDENT'
||'_APPTDENT_EMAILSDENT_DIRECT_PHONEDENT_VOICEMAIL_PHONES:CURR_HS_INC_FR_VOICEMAIL_PHONE_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPTS_EMAIL_DIRECT_PHONE_VOICEMAIL_PHONE_WALKIN_APPT_EMAIL_DIRECT_PHONES_VOICEMAILS_PHONES_WALKIN_APPTS_EMAIL'
||'S_DIRECT_PHONE_VOICEMAILS_PHONE:COMBO_OTHER_STU_WALKIN:COMBO_OTHER_STU_APPTS:COMBO_OTHER_STU_EMAILS:COMBO_OTHER_STU_DIRECT_PHONE:COMBO_OTHER_STU_VOICEMAIL_PHONES_WALKIN_APPT_EMAILS_DIRECT_PHONE_VOICEMAILS_PHONESDENT_WALKINDENT_APPTDENT_EMAILSDENT_DIR'
||'ECT_PHONEDENT_VOICEMAIL_PHONES:MY_EMAIL_IN:MY_EMAIL_OUT:TULSA_EMAIL_ROUTED:VETERAN_QUESTION:VETERAN_PAPER_WORK:REPORTS:MISC:CURR_HS_INCOMING_FR:INC_UG_TR:INC_GRAD_VET_MED:CURR_UG:CURR_GRAD_VET_MED:COMBO_STU_OTHER:FORMER_STU:CHS_STU:STW_EMAILS_ROUTED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74562472833995402)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74543176004408849)
,p_button_name=>'FETCH_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74543209561408850)
,p_name=>'FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74543176004408849)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74562368872995401)
,p_name=>'TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74543176004408849)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Summary Stats of Asst Director Data'
,p_step_title=>'Summary Stats of Asst Director Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230627090525'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74892815787236820)
,p_plug_name=>'Summary Stats Asst Director '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74893292320236824)
,p_plug_name=>'Summary Stats Asst Director Report '
,p_parent_plug_id=>wwv_flow_api.id(74892815787236820)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232169370028051)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'    sum(CURR_HS_INC_FR_APPT) as CURR_HS_INC_FR_APPT ,  sum(CURR_HS_INC_FR_STU_EMAIL_IN) as CURR_HS_INC_FR_STU_EMAIL_IN, ',
'	sum(CURR_HS_INC_FR_STU_EMAIL_OUT) as CURR_HS_INC_FR_STU_EMAIL_OUT, 	',
'    ',
'    sum(IN_PERSON_CONTACT) as IN_PERSON_CONTACT , ',
'    ',
'	sum(INC_UG_TR_APPT) as INC_UG_TR_APPT, 	sum(INC_UG_TR_STU_EMAILS_IN) as INC_UG_TR_STU_EMAILS_IN, 	sum(INC_UG_TR_STU_EMAILS_OUT) as INC_UG_TR_STU_EMAILS_OUT, ',
'    ',
'	sum(EVALS) as EVALS, ',
'    ',
'	sum(INC_GRAD_VET_MED_APPT) as INC_GRAD_VET_MED_APPT, 	sum(INC_GRAD_VET_MED_STU_EMAILS_IN) as INC_GRAD_VET_MED_STU_EMAILS_IN, ',
'	sum(INC_GRAD_VET_MED_STU_EMAILS_OUT) as INC_GRAD_VET_MED_STU_EMAILS_OUT, 	',
'    ',
'    sum(EMIALS_IN ) as EMIALS_IN, ',
'    ',
'	sum(CURR_UG_APPTS) as CURR_UG_APPTS, 	',
'    ',
'    sum(CURR_UG_EMAILS_IN) as CURR_UG_EMAILS_IN, 	sum(CURR_UG_EMAILS_OUT ) as CURR_UG_EMAILS_OUT, ',
'	sum(EMIALS_OUT) as EMIALS_OUT, ',
'    ',
'	sum(CURR_GRAD_VET_MED_APPT) as CURR_GRAD_VET_MED_APPT, 	sum(CURR_GRAD_VET_MED_EMAILS_IN ) as CURR_GRAD_VET_MED_EMAILS_IN, ',
'    ',
'	sum(CURR_GRAD_VET_MED_EMAILS_OUT) as CURR_GRAD_VET_MED_EMAILS_OUT , 	sum(PROF_JUDG) as PROF_JUDG, ',
'    ',
'	sum(COMBO_OTHER_STU_APPT) as COMBO_OTHER_STU_APPT, 	sum(COMBO_OTHER_STU_EMAILS_IN ) as COMBO_OTHER_STU_EMAILS_IN, ',
'	sum(COMBO_OTHER_STU_EMAILS_OUT) as COMBO_OTHER_STU_EMAILS_OUT, 	',
'    ',
'    sum(VETERAN_QUESTIONS) as VETERAN_QUESTIONS, 	sum(FORMER_STU_APPTS) as FORMER_STU_APPTS, ',
'    ',
'    sum(FORMER_STU_EMAILS_IN ) as FORMER_STU_EMAILS_IN, 	sum(FORMER_STU_EMAILS_OUT) as FORMER_STU_EMAILS_OUT, ',
'	',
'    sum(VETERAN_PAPERWORK) as VETERAN_PAPERWORK , ',
'	',
'    sum(CHS_STUDENT_APPTS) as CHS_STUDENT_APPTS, 	sum(CHS_STUDENT_EMAILS_IN ) as CHS_STUDENT_EMAILS_IN, ',
'	sum(CHS_STUDENT_EMAILS_OUT) as CHS_STUDENT_EMAILS_OUT, 	sum(DIR_REPORTS) as DIR_REPORTS, ',
'	',
'    sum(DIR_MISC ) as DIR_MISC, 	sum(CURR_HS_INC_FR_FINAID_EMAILS) as CURR_HS_INC_FR_FINAID_EMAILS, ',
'    ',
'	sum(INC_UG_TR_FINAID_EMAILS) as INC_UG_TR_FINAID_EMAILS, 	sum(INC_GRAD_VET_MED_FINAID_EMAILS) as INC_GRAD_VET_MED_FINAID_EMAILS , ',
'	',
'    sum(CURR_UG_FINAID_EMAILS) as CURR_UG_FINAID_EMAILS, 	sum(CURR_GRAD_VET_MED_FINAID_EMAILS) as CURR_GRAD_VET_MED_FINAID_EMAILS , ',
'	',
'    sum(COMBO_OTHER_STU_FINAID_EMAILS) as COMBO_OTHER_STU_FINAID_EMAILS , ',
'	',
'    sum(FORMER_STU_FINAID_EMAILS) as FORMER_STU_FINAID_EMAILS, 	sum(CHS_STUDENT_FINAID_EMAILS) as CHS_STUDENT_FINAID_EMAILS , ',
'	',
'    sum(TULSA_FINAID_EMAILS_ROUTED ) as TULSA_FINAID_EMAILS_ROUTED, 	sum(CUR_HS_INC_FR_DIRECT_PHONES) as  CUR_HS_INC_FR_DIRECT_PHONES, ',
'	',
'    sum(CURR_HS_INC_FR_VOICEMAIL_PHONES) as CURR_HS_INC_FR_VOICEMAIL_PHONES , 	sum(INC_UG_TR_DIRECT_PHONES) as INC_UG_TR_DIRECT_PHONES, ',
'	',
'    sum(INC_UG_TR_VOICEMAIL_PHONES ) as INC_UG_TR_VOICEMAIL_PHONES, 	sum(INC_GRAD_VET_MED_DIRECT_PHONES) as INC_GRAD_VET_MED_DIRECT_PHONES, ',
'	',
'    sum(INC_GRAD_VET_MED_VOICEMAIL_PHONES) as INC_GRAD_VET_MED_VOICEMAIL_PHONES, 	sum(CURR_UG_DIRECT_PHONE) as CURR_UG_DIRECT_PHONE, ',
'	',
'    sum(CURR_UG_VOICEMAIL_PHONES) as CURR_UG_VOICEMAIL_PHONES, 	sum(CURR_GRAD_VET_MED_DIRECT_PHONES) as CURR_GRAD_VET_MED_DIRECT_PHONES, ',
'	',
'    sum(CURR_GRAD_VET_MED_VOICEMAILS_PHONES) as CURR_GRAD_VET_MED_VOICEMAILS_PHONES, 	sum(COMBO_OTHER_STU_DIRECT_PHONES) as COMBO_OTHER_STU_DIRECT_PHONES, ',
'	',
'    sum(COMBO_OTHER_STU_VOICEMAILS_PHONES) as COMBO_OTHER_STU_VOICEMAILS_PHONES, 	sum(FORMER_STU_DIRECT_PHONES) as FORMER_STU_DIRECT_PHONES, ',
'	',
'    sum(FORMER_STU_VOICEMAIL_PHONES) as FORMER_STU_VOICEMAIL_PHONES, 	sum(CHS_STUDENT_DIRECT_PHONES) as CHS_STUDENT_DIRECT_PHONES, ',
'	',
'    sum(CHS_STUDENT_VOICEMAILS_PHONES) as CHS_STUDENT_VOICEMAILS_PHONES, 	sum(CURR_HS_INC_FR ) as CURR_HS_INC_FR, ',
'	',
'    sum(INCOMING_UG_TR) as INCOMING_UG_TR, 	sum(INCOMING_GRAD_VET_MED) as INCOMING_GRAD_VET_MED, ',
'	',
'    sum(CURRENT_UG) as CURRENT_UG, 	sum(CURRENT_GRAD_VET_MED) as CURRENT_GRAD_VET_MED, ',
'	',
'    sum(COMBO_STUDENTS_OTHER) as COMBO_STUDENTS_OTHER, 	sum(FORMER_STUDENT ) as FORMER_STUDENT, ',
'	',
'    sum(CHS_STUDENT) as CHS_STUDENT, 	sum(STW_EMAIL_ROUTED) as STW_EMAIL_ROUTED',
'    ',
'    from TULSA_ASST_DIR_STATS where NEW_DATE >=:FROM_DATE1  AND  NEW_DATE <=:TO_DATE1 ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74893342235236825)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74893342235236825
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74893443212236826)
,p_db_column_name=>'CURR_HS_INC_FR_APPT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Curr Hs Inc Fr Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74893557040236827)
,p_db_column_name=>'CURR_HS_INC_FR_STU_EMAIL_IN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Curr Hs Inc Fr Stu Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74893633841236828)
,p_db_column_name=>'CURR_HS_INC_FR_STU_EMAIL_OUT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Curr Hs Inc Fr Stu Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74893705840236829)
,p_db_column_name=>'IN_PERSON_CONTACT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'In Person Contact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74893871434236830)
,p_db_column_name=>'INC_UG_TR_APPT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Inc Ug Tr Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74893942346236831)
,p_db_column_name=>'INC_UG_TR_STU_EMAILS_IN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inc Ug Tr Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894074099236832)
,p_db_column_name=>'INC_UG_TR_STU_EMAILS_OUT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc Ug Tr Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894186166236833)
,p_db_column_name=>'EVALS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894213189236834)
,p_db_column_name=>'INC_GRAD_VET_MED_APPT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc Grad Vet Med Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894395976236835)
,p_db_column_name=>'INC_GRAD_VET_MED_STU_EMAILS_IN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inc Grad Vet Med Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894422173236836)
,p_db_column_name=>'INC_GRAD_VET_MED_STU_EMAILS_OUT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inc Grad Vet Med Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894591824236837)
,p_db_column_name=>'EMIALS_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Emials In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894677681236838)
,p_db_column_name=>'CURR_UG_APPTS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Curr Ug Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894703082236839)
,p_db_column_name=>'CURR_UG_EMAILS_IN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Curr Ug Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894807370236840)
,p_db_column_name=>'CURR_UG_EMAILS_OUT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Curr Ug Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894977385236841)
,p_db_column_name=>'EMIALS_OUT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Emials Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895025409236842)
,p_db_column_name=>'CURR_GRAD_VET_MED_APPT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Curr Grad Vet Med Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895106543236843)
,p_db_column_name=>'CURR_GRAD_VET_MED_EMAILS_IN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Curr Grad Vet Med Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895204949236844)
,p_db_column_name=>'CURR_GRAD_VET_MED_EMAILS_OUT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Curr Grad Vet Med Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895326019236845)
,p_db_column_name=>'PROF_JUDG'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895491743236846)
,p_db_column_name=>'COMBO_OTHER_STU_APPT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Combo Other Stu Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895588315236847)
,p_db_column_name=>'COMBO_OTHER_STU_EMAILS_IN'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Combo Other Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895611252236848)
,p_db_column_name=>'COMBO_OTHER_STU_EMAILS_OUT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Combo Other Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895752763236849)
,p_db_column_name=>'VETERAN_QUESTIONS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Veteran Questions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895820610236850)
,p_db_column_name=>'FORMER_STU_APPTS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Former Stu Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74927705576372201)
,p_db_column_name=>'FORMER_STU_EMAILS_IN'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Former Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74927812199372202)
,p_db_column_name=>'FORMER_STU_EMAILS_OUT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Former Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74927924230372203)
,p_db_column_name=>'VETERAN_PAPERWORK'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Veteran Paperwork'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928096683372204)
,p_db_column_name=>'CHS_STUDENT_APPTS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Chs Student Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928154434372205)
,p_db_column_name=>'CHS_STUDENT_EMAILS_IN'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Chs Student Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928250069372206)
,p_db_column_name=>'CHS_STUDENT_EMAILS_OUT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Chs Student Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928397142372207)
,p_db_column_name=>'DIR_REPORTS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Dir Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928479057372208)
,p_db_column_name=>'DIR_MISC'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Dir Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928569488372209)
,p_db_column_name=>'CURR_HS_INC_FR_FINAID_EMAILS'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Curr Hs Inc Fr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928689093372210)
,p_db_column_name=>'INC_UG_TR_FINAID_EMAILS'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Inc Ug Tr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928736598372211)
,p_db_column_name=>'INC_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Inc Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928878482372212)
,p_db_column_name=>'CURR_UG_FINAID_EMAILS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Curr Ug Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74928995181372213)
,p_db_column_name=>'CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Curr Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929001690372214)
,p_db_column_name=>'COMBO_OTHER_STU_FINAID_EMAILS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Combo Other Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929128225372215)
,p_db_column_name=>'FORMER_STU_FINAID_EMAILS'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Former Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929284449372216)
,p_db_column_name=>'CHS_STUDENT_FINAID_EMAILS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Chs Student Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929324401372217)
,p_db_column_name=>'TULSA_FINAID_EMAILS_ROUTED'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Tulsa Finaid Emails Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929460662372218)
,p_db_column_name=>'CUR_HS_INC_FR_DIRECT_PHONES'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cur Hs Inc Fr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929569574372219)
,p_db_column_name=>'CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Curr Hs Inc Fr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929682350372220)
,p_db_column_name=>'INC_UG_TR_DIRECT_PHONES'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Inc Ug Tr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929774130372221)
,p_db_column_name=>'INC_UG_TR_VOICEMAIL_PHONES'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Inc Ug Tr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929817960372222)
,p_db_column_name=>'INC_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Inc Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74929934569372223)
,p_db_column_name=>'INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Inc Grad Vet Med Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930086471372224)
,p_db_column_name=>'CURR_UG_DIRECT_PHONE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Curr Ug Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930166495372225)
,p_db_column_name=>'CURR_UG_VOICEMAIL_PHONES'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Curr Ug Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930281719372226)
,p_db_column_name=>'CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Curr Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930380381372227)
,p_db_column_name=>'CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Curr Grad Vet Med Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930404837372228)
,p_db_column_name=>'COMBO_OTHER_STU_DIRECT_PHONES'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Combo Other Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930588552372229)
,p_db_column_name=>'COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Combo Other Stu Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930610963372230)
,p_db_column_name=>'FORMER_STU_DIRECT_PHONES'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Former Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930747018372231)
,p_db_column_name=>'FORMER_STU_VOICEMAIL_PHONES'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Former Stu Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930886621372232)
,p_db_column_name=>'CHS_STUDENT_DIRECT_PHONES'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Chs Student Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74930960631372233)
,p_db_column_name=>'CHS_STUDENT_VOICEMAILS_PHONES'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Chs Student Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931066101372234)
,p_db_column_name=>'CURR_HS_INC_FR'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Curr Hs Inc Fr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931125595372235)
,p_db_column_name=>'INCOMING_UG_TR'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Incoming Ug Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931295049372236)
,p_db_column_name=>'INCOMING_GRAD_VET_MED'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Incoming Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931399881372237)
,p_db_column_name=>'CURRENT_UG'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Current Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931455430372238)
,p_db_column_name=>'CURRENT_GRAD_VET_MED'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Current Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931554154372239)
,p_db_column_name=>'COMBO_STUDENTS_OTHER'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Combo Students Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931665269372240)
,p_db_column_name=>'FORMER_STUDENT'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Former Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931745848372241)
,p_db_column_name=>'CHS_STUDENT'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Chs Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74931876866372242)
,p_db_column_name=>'STW_EMAIL_ROUTED'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Stw Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74954129216372664)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'749542'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CURR_HS_INC_FR_APPT:CURR_HS_INC_FR_STU_EMAIL_IN:CURR_HS_INC_FR_STU_EMAIL_OUT:IN_PERSON_CONTACT:INC_UG_TR_APPT:INC_UG_TR_STU_EMAILS_IN:INC_UG_TR_STU_EMAILS_OUT:EVALS:INC_GRAD_VET_MED_APPT:INC_GRAD_VET_MED_STU_EMAILS_IN:INC_GRAD_VET_MED_STU_EMAILS_OUT:'
||'EMIALS_IN:CURR_UG_APPTS:CURR_UG_EMAILS_IN:CURR_UG_EMAILS_OUT:EMIALS_OUT:CURR_GRAD_VET_MED_APPT:CURR_GRAD_VET_MED_EMAILS_IN:CURR_GRAD_VET_MED_EMAILS_OUT:PROF_JUDG:COMBO_OTHER_STU_APPT:COMBO_OTHER_STU_EMAILS_IN:COMBO_OTHER_STU_EMAILS_OUT:VETERAN_QUESTI'
||'ONS:FORMER_STU_APPTS:FORMER_STU_EMAILS_IN:FORMER_STU_EMAILS_OUT:VETERAN_PAPERWORK:CHS_STUDENT_APPTS:CHS_STUDENT_EMAILS_IN:CHS_STUDENT_EMAILS_OUT:DIR_REPORTS:DIR_MISC:CURR_HS_INC_FR_FINAID_EMAILS:INC_UG_TR_FINAID_EMAILS:INC_GRAD_VET_MED_FINAID_EMAILS:'
||'CURR_UG_FINAID_EMAILS:CURR_GRAD_VET_MED_FINAID_EMAILS:COMBO_OTHER_STU_FINAID_EMAILS:FORMER_STU_FINAID_EMAILS:CHS_STUDENT_FINAID_EMAILS:TULSA_FINAID_EMAILS_ROUTED:CUR_HS_INC_FR_DIRECT_PHONES:CURR_HS_INC_FR_VOICEMAIL_PHONES:INC_UG_TR_DIRECT_PHONES:INC_'
||'UG_TR_VOICEMAIL_PHONES:INC_GRAD_VET_MED_DIRECT_PHONES:INC_GRAD_VET_MED_VOICEMAIL_PHONES:CURR_UG_DIRECT_PHONE:CURR_UG_VOICEMAIL_PHONES:CURR_GRAD_VET_MED_DIRECT_PHONES:CURR_GRAD_VET_MED_VOICEMAILS_PHONES:COMBO_OTHER_STU_DIRECT_PHONES:COMBO_OTHER_STU_VO'
||'ICEMAILS_PHONES:FORMER_STU_DIRECT_PHONES:FORMER_STU_VOICEMAIL_PHONES:CHS_STUDENT_DIRECT_PHONES:CHS_STUDENT_VOICEMAILS_PHONES:CURR_HS_INC_FR:INCOMING_UG_TR:INCOMING_GRAD_VET_MED:CURRENT_UG:CURRENT_GRAD_VET_MED:COMBO_STUDENTS_OTHER:FORMER_STUDENT:CHS_S'
||'TUDENT:STW_EMAIL_ROUTED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74893141720236823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74892815787236820)
,p_button_name=>'FETCH_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_image_alt=>'Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74892921736236821)
,p_name=>'FROM_DATE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74892815787236820)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74893060079236822)
,p_name=>'TO_DATE1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74892815787236820)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Summary Stats of CHS'
,p_step_title=>'Summary Stats of CHS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230627092318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74931922426372243)
,p_plug_name=>'Summary Stats of CHS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74932022321372244)
,p_plug_name=>'Summary Stats of CHS Report'
,p_parent_plug_id=>wwv_flow_api.id(74931922426372243)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232169370028051)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'   sum( WALK_IN_PA_STU1) as WALK_IN_PA_STU1, ',
'	sum(WALK_IN_OTHER1) as WALK_IN_OTHER1, ',
'	sum(WALK_IN_PA_STU2) as WALK_IN_PA_STU2, ',
'	sum(WALK_IN_OTHER2) as WALK_IN_OTHER2, ',
'	sum(WALK_IN_PA_STU3) as WALK_IN_PA_STU3, ',
'	sum(WALK_IN_OTHER3) as WALK_IN_OTHER3, ',
'	sum(WALK_IN_PA_STU4) as WALK_IN_PA_STU4, ',
'	sum(WALK_IN_OTHER4 ) as WALK_IN_OTHER4, ',
'	sum(WALK_IN_PA_STU5) as WALK_IN_PA_STU5, ',
'	sum(WALK_IN_OTHER5) as WALK_IN_OTHER5, ',
'	sum(WALK_IN_PA_STU6) as WALK_IN_PA_STU6, ',
'	sum(WALK_IN_OTHER6) as WALK_IN_OTHER6, ',
'	sum(WALK_IN_PA_STU7) as WALK_IN_PA_STU7, ',
'	sum(WALK_IN_OTHER7) as WALK_IN_OTHER7, ',
'	sum(WALK_IN_PA_STU8) as WALK_IN_PA_STU8, ',
'	sum(WALK_IN_OTHER8) as WALK_IN_OTHER8, ',
'	sum(WALK_IN_PA_STU9) as WALK_IN_PA_STU9, ',
'	sum(WALK_IN_OTHER9) as WALK_IN_OTHER9, ',
'	sum(WALK_IN_PA_STU10) as WALK_IN_PA_STU10, ',
'	sum(WALK_IN_OTHER10 ) as WALK_IN_OTHER10, ',
'	sum(MY_EMIALS_IN ) as MY_EMIALS_IN, ',
'	sum(MY_EMIALS_OUT) as MY_EMIALS_OUT, ',
'	sum(VOICEMAIL_RETURNED) as VOICEMAIL_RETURNED, ',
'	sum(OTHER) as OTHER, ',
'	sum(CHS_CUR_HS_INC_FR_DIRECT_PHONES) as CHS_CUR_HS_INC_FR_DIRECT_PHONES , ',
'	sum(CHS_INC_UG_TR_DIRECT_PHONES) as CHS_INC_UG_TR_DIRECT_PHONES, ',
'	sum(CHS_INC_GRAD_VET_MED_DIRECT_PHONES ) as CHS_INC_GRAD_VET_MED_DIRECT_PHONES, ',
'	sum(CHS_CURR_UG_DIRECT_PHONE) as CHS_CURR_UG_DIRECT_PHONE, ',
'	sum(CHS_CURR_GRAD_VET_MED_DIRECT_PHONES) as CHS_CURR_GRAD_VET_MED_DIRECT_PHONES, ',
'	sum(CHS_COMBO_OTHER_STU_DIRECT_PHONES) as CHS_COMBO_OTHER_STU_DIRECT_PHONES, ',
'	sum(CHS_FORMER_STU_DIRECT_PHONES) as CHS_FORMER_STU_DIRECT_PHONES, ',
'	sum(CHS_CHS_STUDENT_DIRECT_PHONES) as CHS_CHS_STUDENT_DIRECT_PHONES, ',
'	sum(CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES) as CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES, ',
'	sum(CHS_INC_UG_TR_VOICEMAIL_PHONES) as CHS_INC_UG_TR_VOICEMAIL_PHONES, ',
'	sum(CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES) as CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES, ',
'	sum(CHS_CURR_UG_VOICEMAIL_PHONES) as CHS_CURR_UG_VOICEMAIL_PHONES, ',
'	sum(CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES) as CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES, ',
'	sum(CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES) as CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES, ',
'	sum(CHS_FORMER_STU_VOICEMAIL_PHONES) as CHS_FORMER_STU_VOICEMAIL_PHONES, ',
'	sum(CHS_CHS_STUDENT_VOICEMAILS_PHONES) as CHS_CHS_STUDENT_VOICEMAILS_PHONES, ',
'	sum(CHS_CURR_HS_INC_FR_FINAID_EMAILS) as CHS_CURR_HS_INC_FR_FINAID_EMAILS, ',
'	sum(CHS_INC_UG_TR_FINAID_EMAILS) as CHS_INC_UG_TR_FINAID_EMAILS, ',
'	sum(CHS_INC_GRAD_VET_MED_FINAID_EMAILS) as CHS_INC_GRAD_VET_MED_FINAID_EMAILS, ',
'	sum(CHS_CURR_UG_FINAID_EMAILS) as CHS_CURR_UG_FINAID_EMAILS, ',
'	sum(CHS_CURR_GRAD_VET_MED_FINAID_EMAILS) as CHS_CURR_GRAD_VET_MED_FINAID_EMAILS, ',
'	sum(CHS_COMBO_OTHER_STU_FINAID_EMAILS) as CHS_COMBO_OTHER_STU_FINAID_EMAILS, ',
'	sum(CHS_FORMER_STU_FINAID_EMAILS) as CHS_FORMER_STU_FINAID_EMAILS, ',
'	sum(CHS_CHS_STUDENT_FINAID_EMAILS) as CHS_CHS_STUDENT_FINAID_EMAILS, ',
'	sum(CHS_TULSA_FINAID_EMAILS_ROUTED) as CHS_TULSA_FINAID_EMAILS_ROUTED, ',
'	sum(CHS_CURR_HS_INCOMING_FR) as CHS_CURR_HS_INCOMING_FR, ',
'	sum(CHS_INCOMING_UG_TR) as CHS_INCOMING_UG_TR, ',
'	sum(CHS_INCOMING_GRAD_VET_MED) as CHS_INCOMING_GRAD_VET_MED, ',
'	sum(CHS_CURRENT_UG) as CHS_CURRENT_UG, ',
'	sum(CHS_CURRENT_GRAD_VET_MED) as CHS_CURRENT_GRAD_VET_MED, ',
'	sum(CHS_COMBO_STUDENTS_OTHER) as CHS_COMBO_STUDENTS_OTHER, ',
'	sum(CHS_FORMER_STUDENT) as CHS_FORMER_STUDENT, ',
'	sum(CHS_CHS_STUDENT) as CHS_CHS_STUDENT, ',
'	sum(CHS_STW_EMAIL_ROUTED ) as CHS_STW_EMAIL_ROUTED',
'    from TULSA_CHS_STATS where CHS_DATE >=:CHS_FROM_DATE and CHS_DATE <=:CHS_TO_DATE ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74932130112372245)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74932130112372245
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74932586595372249)
,p_db_column_name=>'WALK_IN_PA_STU1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Walk In Pa Stu1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74932673981372250)
,p_db_column_name=>'WALK_IN_OTHER1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Walk In Other1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966383696135601)
,p_db_column_name=>'WALK_IN_PA_STU2'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Walk In Pa Stu2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966404339135602)
,p_db_column_name=>'WALK_IN_OTHER2'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Walk In Other2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966588449135603)
,p_db_column_name=>'WALK_IN_PA_STU3'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Walk In Pa Stu3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966615760135604)
,p_db_column_name=>'WALK_IN_OTHER3'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Walk In Other3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966735512135605)
,p_db_column_name=>'WALK_IN_PA_STU4'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Walk In Pa Stu4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966829397135606)
,p_db_column_name=>'WALK_IN_OTHER4'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Walk In Other4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74966962445135607)
,p_db_column_name=>'WALK_IN_PA_STU5'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Walk In Pa Stu5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967007970135608)
,p_db_column_name=>'WALK_IN_OTHER5'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Walk In Other5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967192697135609)
,p_db_column_name=>'WALK_IN_PA_STU6'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Walk In Pa Stu6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967259192135610)
,p_db_column_name=>'WALK_IN_OTHER6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Walk In Other6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967378101135611)
,p_db_column_name=>'WALK_IN_PA_STU7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Walk In Pa Stu7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967497434135612)
,p_db_column_name=>'WALK_IN_OTHER7'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Walk In Other7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967524868135613)
,p_db_column_name=>'WALK_IN_PA_STU8'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Walk In Pa Stu8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967699968135614)
,p_db_column_name=>'WALK_IN_OTHER8'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Walk In Other8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967763715135615)
,p_db_column_name=>'WALK_IN_PA_STU9'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Walk In Pa Stu9'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967860681135616)
,p_db_column_name=>'WALK_IN_OTHER9'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Walk In Other9'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74967996674135617)
,p_db_column_name=>'WALK_IN_PA_STU10'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Walk In Pa Stu10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968047486135618)
,p_db_column_name=>'WALK_IN_OTHER10'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Walk In Other10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968196378135619)
,p_db_column_name=>'MY_EMIALS_IN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'My Emials In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968273548135620)
,p_db_column_name=>'MY_EMIALS_OUT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'My Emials Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968355036135621)
,p_db_column_name=>'VOICEMAIL_RETURNED'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Voicemail Returned'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968428807135622)
,p_db_column_name=>'OTHER'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968526853135623)
,p_db_column_name=>'CHS_CUR_HS_INC_FR_DIRECT_PHONES'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Chs Cur Hs Inc Fr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968636284135624)
,p_db_column_name=>'CHS_INC_UG_TR_DIRECT_PHONES'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Chs Inc Ug Tr Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968713720135625)
,p_db_column_name=>'CHS_INC_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Chs Inc Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968826993135626)
,p_db_column_name=>'CHS_CURR_UG_DIRECT_PHONE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Chs Curr Ug Direct Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74968996443135627)
,p_db_column_name=>'CHS_CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Chs Curr Grad Vet Med Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969004618135628)
,p_db_column_name=>'CHS_COMBO_OTHER_STU_DIRECT_PHONES'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Chs Combo Other Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969149338135629)
,p_db_column_name=>'CHS_FORMER_STU_DIRECT_PHONES'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Chs Former Stu Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969235123135630)
,p_db_column_name=>'CHS_CHS_STUDENT_DIRECT_PHONES'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Chs Chs Student Direct Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969359797135631)
,p_db_column_name=>'CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Chs Curr Hs Inc Fr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969471039135632)
,p_db_column_name=>'CHS_INC_UG_TR_VOICEMAIL_PHONES'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Chs Inc Ug Tr Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969576484135633)
,p_db_column_name=>'CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Chs Inc Grad Vet Med Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969669864135634)
,p_db_column_name=>'CHS_CURR_UG_VOICEMAIL_PHONES'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Chs Curr Ug Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969720467135635)
,p_db_column_name=>'CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Chs Curr Grad Vet Med Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74969842597135636)
,p_db_column_name=>'CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Chs Combo Other Stu Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74979911627135637)
,p_db_column_name=>'CHS_FORMER_STU_VOICEMAIL_PHONES'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Chs Former Stu Voicemail Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980088876135638)
,p_db_column_name=>'CHS_CHS_STUDENT_VOICEMAILS_PHONES'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Chs Chs Student Voicemails Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980122487135639)
,p_db_column_name=>'CHS_CURR_HS_INC_FR_FINAID_EMAILS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Chs Curr Hs Inc Fr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980225208135640)
,p_db_column_name=>'CHS_INC_UG_TR_FINAID_EMAILS'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Chs Inc Ug Tr Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980372996135641)
,p_db_column_name=>'CHS_INC_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Chs Inc Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980496040135642)
,p_db_column_name=>'CHS_CURR_UG_FINAID_EMAILS'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Chs Curr Ug Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980590324135643)
,p_db_column_name=>'CHS_CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Chs Curr Grad Vet Med Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980653833135644)
,p_db_column_name=>'CHS_COMBO_OTHER_STU_FINAID_EMAILS'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Chs Combo Other Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980789532135645)
,p_db_column_name=>'CHS_FORMER_STU_FINAID_EMAILS'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Chs Former Stu Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980883966135646)
,p_db_column_name=>'CHS_CHS_STUDENT_FINAID_EMAILS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Chs Chs Student Finaid Emails'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74980927555135647)
,p_db_column_name=>'CHS_TULSA_FINAID_EMAILS_ROUTED'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Chs Tulsa Finaid Emails Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981042844135648)
,p_db_column_name=>'CHS_CURR_HS_INCOMING_FR'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Chs Curr Hs Incoming Fr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981167402135649)
,p_db_column_name=>'CHS_INCOMING_UG_TR'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Chs Incoming Ug Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981275622135650)
,p_db_column_name=>'CHS_INCOMING_GRAD_VET_MED'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Chs Incoming Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981314048135601)
,p_db_column_name=>'CHS_CURRENT_UG'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Chs Current Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981448170135602)
,p_db_column_name=>'CHS_CURRENT_GRAD_VET_MED'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Chs Current Grad Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981597920135603)
,p_db_column_name=>'CHS_COMBO_STUDENTS_OTHER'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Chs Combo Students Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981637808135604)
,p_db_column_name=>'CHS_FORMER_STUDENT'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Chs Former Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981706553135605)
,p_db_column_name=>'CHS_CHS_STUDENT'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Chs Chs Student'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981852784135606)
,p_db_column_name=>'CHS_STW_EMAIL_ROUTED'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Chs Stw Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74986530907140829)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'749866'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WALK_IN_PA_STU1:WALK_IN_OTHER1:WALK_IN_PA_STU2:WALK_IN_OTHER2:WALK_IN_PA_STU3:WALK_IN_OTHER3:WALK_IN_PA_STU4:WALK_IN_OTHER4:WALK_IN_PA_STU5:WALK_IN_OTHER5:WALK_IN_PA_STU6:WALK_IN_OTHER6:WALK_IN_PA_STU7:WALK_IN_OTHER7:WALK_IN_PA_STU8:WALK_IN_OTHER8:WA'
||'LK_IN_PA_STU9:WALK_IN_OTHER9:WALK_IN_PA_STU10:WALK_IN_OTHER10:MY_EMIALS_IN:MY_EMIALS_OUT:VOICEMAIL_RETURNED:OTHER:CHS_CUR_HS_INC_FR_DIRECT_PHONES:CHS_INC_UG_TR_DIRECT_PHONES:CHS_INC_GRAD_VET_MED_DIRECT_PHONES:CHS_CURR_UG_DIRECT_PHONE:CHS_CURR_GRAD_VE'
||'T_MED_DIRECT_PHONES:CHS_COMBO_OTHER_STU_DIRECT_PHONES:CHS_FORMER_STU_DIRECT_PHONES:CHS_CHS_STUDENT_DIRECT_PHONES:CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES:CHS_INC_UG_TR_VOICEMAIL_PHONES:CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES:CHS_CURR_UG_VOICEMAIL_PHONES:CHS'
||'_CURR_GRAD_VET_MED_VOICEMAILS_PHONES:CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES:CHS_FORMER_STU_VOICEMAIL_PHONES:CHS_CHS_STUDENT_VOICEMAILS_PHONES:CHS_CURR_HS_INC_FR_FINAID_EMAILS:CHS_INC_UG_TR_FINAID_EMAILS:CHS_INC_GRAD_VET_MED_FINAID_EMAILS:CHS_CURR_UG_F'
||'INAID_EMAILS:CHS_CURR_GRAD_VET_MED_FINAID_EMAILS:CHS_COMBO_OTHER_STU_FINAID_EMAILS:CHS_FORMER_STU_FINAID_EMAILS:CHS_CHS_STUDENT_FINAID_EMAILS:CHS_TULSA_FINAID_EMAILS_ROUTED:CHS_CURR_HS_INCOMING_FR:CHS_INCOMING_UG_TR:CHS_INCOMING_GRAD_VET_MED:CHS_CURR'
||'ENT_UG:CHS_CURRENT_GRAD_VET_MED:CHS_COMBO_STUDENTS_OTHER:CHS_FORMER_STUDENT:CHS_CHS_STUDENT:CHS_STW_EMAIL_ROUTED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74932433258372248)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74931922426372243)
,p_button_name=>'GET_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_image_alt=>'Get Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74932269618372246)
,p_name=>'CHS_FROM_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74931922426372243)
,p_prompt=>'CHS From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74932381418372247)
,p_name=>'CHS_TO_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74931922426372243)
,p_prompt=>'CHS To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'New Daily Received Stats'
,p_step_title=>'New Daily Received Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230711111335'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74984877250135636)
,p_plug_name=>'Daily Received Stats '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74985557202135643)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74984877250135636)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74984935816135637)
,p_name=>'EMP_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74984877250135636)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74985030869135638)
,p_name=>'ENTRY_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74984877250135636)
,p_prompt=>'Entry Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74985101312135639)
,p_name=>'FINAID_EMAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74984877250135636)
,p_item_default=>'0'
,p_prompt=>'Tulsa Finaid Emails Received'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74985275504135640)
,p_name=>'VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74984877250135636)
,p_item_default=>'0'
,p_prompt=>'Tulsa Voicemail Received'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74985394347135641)
,p_name=>'WALK_IN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74984877250135636)
,p_item_default=>'0'
,p_prompt=>'Walk In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74985401384135642)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO TULSA_DAILY_STATS ( ENTER_DATE	,',
'EMP_NAME	,  FINAID_EMAILS_RECEIVED	, VOICEMAIL_RECEIVED	, WALKIN )',
'VALUES ( :ENTRY_DATE , :EMP_NAME , :FINAID_EMAILS, :VOICEMAIL_RECEIVED , :WALK_IN  );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Update_Tulsa_Counselor_Stat_Sheet'
,p_step_title=>'Update_Tulsa_Counselor_Stat_Sheet'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230804105741'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75766336190101406)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147593048675233315)
,p_plug_name=>'Update Finaid Counselor stat sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147827738460348816)
,p_plug_name=>'Stillwater-Finaid-Email-Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(150464764381935344)
,p_plug_name=>'Tulsa Finaid Email Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(150464898132935345)
,p_plug_name=>'Phone Calls Answered/  Returned '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75505467343799782)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75766336190101406)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75481015434799759)
,p_name=>'T_COUNSELOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_prompt=>'COUNSELOR NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS <> ''STW'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75481411537799762)
,p_name=>'T_ENTER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_prompt=>'ENTER DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75481800800799763)
,p_name=>'T_CURR_HS_INC_FR_WALKIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75482237933799763)
,p_name=>'T_CURR_HS_INC_FR_APPTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75482683358799763)
,p_name=>'T_INC_UG_TR_WALKIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'INC UG TR WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75483082828799763)
,p_name=>'T_INC_UG_TR_APPTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'INC UG TR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75483475037799763)
,p_name=>'T_INC_GRAD_VET_MED_WALKIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75483885019799764)
,p_name=>'T_INC_GRAD_VET_MED_APPTS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75484248883799764)
,p_name=>'T_CURR_UG_WALKIN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CURR UG WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75484667778799764)
,p_name=>'T_CURR_UG_APPT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CURR UG APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75485043245799764)
,p_name=>'T_CURR_GRAD_VET_MED_WALKIN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75485482535799765)
,p_name=>'T_CURR_GRAD_VET_MED_APPTS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75485871813799765)
,p_name=>'T_COMBO_OTHER_STU_WALKIN'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75486202643799765)
,p_name=>'T_COMBO_OTHER_STU_APPTS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75486609492799765)
,p_name=>'T_FORMER_STU_WALKIN'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'FORMER STU WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75487097519799765)
,p_name=>'T_FORMER_STU_APPT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'FORMER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75487440781799766)
,p_name=>'T_CHS_STUDENT_WALKIN'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CHS STU WALKIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75487855208799766)
,p_name=>'T_CHS_STUDENT_APPT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'CHS STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75488231369799766)
,p_name=>'T_MY_EMIAL_IN'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'MY EMIALS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75488642558799766)
,p_name=>'T_MY_EMIAL_OUT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'MY EMIALS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75489069190799767)
,p_name=>'T_VETERAN_QUESTION'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'VETERAN QUESTIONS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75489487970799767)
,p_name=>'T_VETERAN_PAPER_WORK'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'VETERAN PAPERWORK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75489800354799767)
,p_name=>'T_REPORTS'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75490264943799768)
,p_name=>'T_MISC'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(147593048675233315)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75490976390799772)
,p_name=>'T_CURR_HS_INCOMING_FR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75491360509799772)
,p_name=>'T_INC_UG_TR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75491778972799772)
,p_name=>'T_INC_GRAD_VET_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75492181479799772)
,p_name=>'T_CURR_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75492538366799773)
,p_name=>'T_CURR_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75492953633799773)
,p_name=>'T_COMBO_STU_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'COMBO STU OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75493323137799773)
,p_name=>'T_FORMER_STU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'FORMER STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75493723623799773)
,p_name=>'T_CHS_STU'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'CHS STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75494101173799774)
,p_name=>'T_STW_EMAILS_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(147827738460348816)
,p_item_default=>'0'
,p_prompt=>'STW EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75494834435799774)
,p_name=>'T_CURR_HS_INC_FR_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75495205869799774)
,p_name=>'T_INC_UG_TR_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'INC UG TR EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75495644621799775)
,p_name=>'T_INC_GRAD_VET_MED_EMAIL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75496058464799775)
,p_name=>'T_CURR_UG_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75496483667799775)
,p_name=>'T_CURR_GRAD_VET_MED_EMAILS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75496835264799775)
,p_name=>'T_COMBO_OTHER_STU_EMAILS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75497203434799776)
,p_name=>'T_FORMER_STU_EMAILS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'FORMER STU EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75497612253799776)
,p_name=>'T_CHS_STUDENT_EMAILS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'CHS STU EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75498071407799776)
,p_name=>'T_TULSA_EMAIL_ROUTED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(150464764381935344)
,p_item_default=>'0'
,p_prompt=>'TULSA EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75498734924799777)
,p_name=>'T_CURR_HS_INC_FR_DIRECT_PHONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75499198803799777)
,p_name=>'T_INC_UG_TR_DIRECT_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'INC UG TR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75499542477799777)
,p_name=>'T_INC_GRAD_VET_MED_DIRECT_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75499991930799778)
,p_name=>'T_CURR_UG_DIRECT_PHONES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CURR UG DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75500395772799778)
,p_name=>'T_CURR_GRAD_VET_MED_DIRECT_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED VOICEMAILS PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75500791079799779)
,p_name=>'T_COMBO_OTHER_STU_DIRECT_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75501156566799779)
,p_name=>'T_FORMER_STU_DIRECT_PHONE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'FORMER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75501598355799779)
,p_name=>'T_CHS_STUDENT_DIRECT_PHONE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CHS STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75501965182799780)
,p_name=>'T_CURR_HS_INC_FR_VOICEMAIL_PHONE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75502376382799780)
,p_name=>'T_INC_UG_TR_VOICEMAIL_PHONE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'INC UG TR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75502702169799780)
,p_name=>'T_INC_GRAD_VET_MED_VOICEMAIL_PHONE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'INC GR/VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75503104753799780)
,p_name=>'T_CURR_UG_VOICEMAILS_PHONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CURR UG VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75503598885799780)
,p_name=>'T_CURR_GRAD_VET_MED_VOICEMAILS_PHONE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CURR GR/VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75503932840799781)
,p_name=>'T_COMBO_OTHER_STU_VOICEMAIL_PHONES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75504360313799781)
,p_name=>'T_FORMER_STU_VOICEMAILS_PHONES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'FORMER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75504752150799781)
,p_name=>'T_CHS_STUDENT_VOICEMAIL_PHONES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(150464898132935345)
,p_item_default=>'0'
,p_prompt=>'CHS STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766434118101407)
,p_name=>'T_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75766336190101406)
,p_prompt=>'COMMENTS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766566530101408)
,p_name=>'TU_FINAID_EMAILS_RECEIVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75766336190101406)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAILS RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766688160101409)
,p_name=>'TU_WALK_IN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75766336190101406)
,p_item_default=>'0'
,p_prompt=>'WALK IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766754747101410)
,p_name=>'TU_VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75766336190101406)
,p_item_default=>'0'
,p_prompt=>'TULSA VOICEMAIL RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75506269034799800)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Update TULSA_COUNS_STATS',
'set  ',
'	CURR_HS_INC_FR_WALKIN =:T_CURR_HS_INC_FR_WALKIN , 	',
'    CURR_HS_INC_FR_APPTS =:T_CURR_HS_INC_FR_APPTS , ',
'    CURR_HS_INC_FR_EMAIL =:T_CURR_HS_INC_FR_EMAIL, 	',
'    CURR_HS_INC_FR_DIRECT_PHONES =:T_CURR_HS_INC_FR_DIRECT_PHONES , 	',
'    CURR_HS_INC_FR_VOICEMAIL_PHONE  =:T_CURR_HS_INC_FR_VOICEMAIL_PHONE  , ',
'	INC_UG_TR_WALKIN  =:T_INC_UG_TR_WALKIN , 	',
'    INC_UG_TR_APPTS =:T_INC_UG_TR_APPTS , 	',
'    INC_UG_TR_EMAIL =:T_INC_UG_TR_EMAIL , 	',
'    INC_UG_TR_DIRECT_PHONE =:T_INC_UG_TR_DIRECT_PHONE , 	',
'    INC_UG_TR_VOICEMAIL_PHONE =:T_INC_UG_TR_VOICEMAIL_PHONE , ',
'	INC_GRAD_VET_MED_WALKIN =:T_INC_GRAD_VET_MED_WALKIN , 	',
'    INC_GRAD_VET_MED_APPTS =:T_INC_GRAD_VET_MED_APPTS , 	',
'    INC_GRAD_VET_MED_EMAIL =:T_INC_GRAD_VET_MED_EMAIL , 	',
'    INC_GRAD_VET_MED_DIRECT_PHONE =:T_INC_GRAD_VET_MED_DIRECT_PHONE , 	',
'    INC_GRAD_VET_MED_VOICEMAIL_PHONE  =:T_INC_GRAD_VET_MED_VOICEMAIL_PHONE, ',
'	CURR_UG_WALKIN =:T_CURR_UG_WALKIN , 	',
'    CURR_UG_APPT =:T_CURR_UG_APPT , 	',
'    CURR_UG_EMAIL =:T_CURR_UG_EMAIL , 	',
'    CURR_UG_DIRECT_PHONES =:T_CURR_UG_DIRECT_PHONES , 	',
'    CURR_UG_VOICEMAILS_PHONES =:T_CURR_UG_VOICEMAILS_PHONES , ',
'	CURR_GRAD_VET_MED_WALKIN =:T_CURR_GRAD_VET_MED_WALKIN , 	',
'    CURR_GRAD_VET_MED_APPTS =:T_CURR_GRAD_VET_MED_APPTS , 	',
'    CURR_GRAD_VET_MED_EMAILS =:T_CURR_GRAD_VET_MED_EMAILS , 	',
'    CURR_GRAD_VET_MED_DIRECT_PHONE =:T_CURR_GRAD_VET_MED_DIRECT_PHONE , 	',
'    CURR_GRAD_VET_MED_VOICEMAILS_PHONE =:T_CURR_GRAD_VET_MED_VOICEMAILS_PHONE , ',
'	COMBO_OTHER_STU_WALKIN =:T_COMBO_OTHER_STU_WALKIN , 	',
'    COMBO_OTHER_STU_APPTS =:T_COMBO_OTHER_STU_APPTS , 	',
'    COMBO_OTHER_STU_EMAILS =:T_COMBO_OTHER_STU_EMAILS ,	',
'    COMBO_OTHER_STU_DIRECT_PHONE =:T_COMBO_OTHER_STU_DIRECT_PHONE , ',
'    COMBO_OTHER_STU_VOICEMAIL_PHONES =:T_COMBO_OTHER_STU_VOICEMAIL_PHONES , ',
'	FORMER_STU_WALKIN =:T_FORMER_STU_WALKIN , 	',
'    FORMER_STU_APPT =:T_FORMER_STU_APPT , 	',
'    FORMER_STU_EMAILS =:T_FORMER_STU_EMAILS , 	',
'    FORMER_STU_DIRECT_PHONE =:T_FORMER_STU_DIRECT_PHONE , 	',
'    FORMER_STU_VOICEMAILS_PHONES =:T_FORMER_STU_VOICEMAILS_PHONES , ',
'	CHS_STUDENT_WALKIN =:T_CHS_STUDENT_WALKIN , 	',
'    CHS_STUDENT_APPT =:T_CHS_STUDENT_APPT , ',
'    CHS_STUDENT_EMAILS =:T_CHS_STUDENT_EMAILS , 	',
'    CHS_STUDENT_DIRECT_PHONE =:T_CHS_STUDENT_DIRECT_PHONE , 	',
'    CHS_STUDENT_VOICEMAIL_PHONES =:T_CHS_STUDENT_VOICEMAIL_PHONES , ',
'	MY_EMIAL_IN =:T_MY_EMIAL_IN , 	',
'    MY_EMIAL_OUT =:T_MY_EMIAL_OUT , 	',
'    TULSA_EMAIL_ROUTED =:T_TULSA_EMAIL_ROUTED , ',
'	VETERAN_QUESTION =:T_VETERAN_QUESTION , 	',
'    VETERAN_PAPER_WORK =:T_VETERAN_PAPER_WORK , 	',
'    REPORTS =:T_REPORTS , 	',
'    MISC =:T_MISC , ',
'	CURR_HS_INCOMING_FR =:T_CURR_HS_INCOMING_FR , 	',
'    INC_UG_TR =:T_INC_UG_TR , 	',
'    INC_GRAD_VET_MED =:T_INC_GRAD_VET_MED , 	',
'    CURR_UG =:T_CURR_UG , 	',
'    CURR_GRAD_VET_MED  =:T_CURR_GRAD_VET_MED , 	',
'    COMBO_STU_OTHER =:T_COMBO_STU_OTHER , 	',
'    FORMER_STU =:T_FORMER_STU , 	',
'    CHS_STU =:T_CHS_STU , 	',
'    STW_EMAILS_ROUTED =:T_STW_EMAILS_ROUTED ,',
'    COMMENTS =:T_COMMENTS  ,',
'    TULSA_FINAID_EMAILS_RECEIVED =:TU_FINAID_EMAILS_RECEIVED   ,',
'    TULSA_VOICEMAIL_RECEIVED =:TU_VOICEMAIL_RECEIVED  ,',
'    WALK_IN  =:TU_WALK_IN  ',
'    ',
' WHERE  ENTER_DATE =:T_ENTER_DATE   and 	COUNSELOR_NAME =:T_COUNSELOR_NAME ;',
'        ',
'',
'',
'',
'         ',
'     '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Updated Successfully '
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Update_Tulsa_Asst_Director_Stat_Sheet'
,p_step_title=>'Update_Tulsa_Asst_Director_Stat_Sheet'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230804110541'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75766826195101411)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148778131183457126)
,p_plug_name=>'Phone Calls Answered/Returned'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148778276563457127)
,p_plug_name=>'Tulsa Finaid Email Answered '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(220117469562716353)
,p_plug_name=>'Update Finaid Asst Director stat sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(220352159347831854)
,p_plug_name=>'Stillwater-Finaid-Email-Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75545767804060129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(148778131183457126)
,p_button_name=>'Save_Details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(72291340117028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Details'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75507584795060115)
,p_name=>'U_CURR_HS_INC_FR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75507992541060116)
,p_name=>'U_INCOMING_UG_TR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75508399277060116)
,p_name=>'U_INCOMING_GRAD_VET_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75508710455060116)
,p_name=>'U_CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75509163576060116)
,p_name=>'U_CURRENT_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75509591134060117)
,p_name=>'U_COMBO_STUDENTS_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'COMBO STU OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75529928309060117)
,p_name=>'U_FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'FORMER STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75530333224060118)
,p_name=>'U_CHS_STUDENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'CHS STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75530787524060118)
,p_name=>'U_STW_EMAIL_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(220352159347831854)
,p_item_default=>'0'
,p_prompt=>'STW EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75531407342060119)
,p_name=>'U_ASST_DIR_COUNSELOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_prompt=>'ASST DIR COUNSELOR NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS <> ''STW'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75531867988060119)
,p_name=>'U_NEW_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_prompt=>'ENTER DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75532210556060119)
,p_name=>'U_CURR_HS_INC_FR_APPT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75532644065060120)
,p_name=>'U_CURR_HS_INC_FR_STU_EMAIL_IN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75533082512060120)
,p_name=>'U_CURR_HS_INC_FR_STU_EMAIL_OUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75533425560060120)
,p_name=>'U_INC_UG_TR_APPT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'INC UG TR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75533801300060120)
,p_name=>'U_INC_UG_TR_STU_EMAILS_IN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'INC UG TR STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75534283557060121)
,p_name=>'U_INC_UG_TR_STU_EMAILS_OUT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'INC UG TR STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75534697189060121)
,p_name=>'U_INC_GRAD_VET_MED_APPT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75535000235060121)
,p_name=>'U_INC_GRAD_VET_MED_STU_EMAILS_IN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75535406749060121)
,p_name=>'U_INC_GRAD_VET_MED_STU_EMAILS_OUT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75535825690060122)
,p_name=>'U_CURR_UG_APPTS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR UG APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75536242448060122)
,p_name=>'U_CURR_UG_EMAILS_IN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75536679193060122)
,p_name=>'U_CURR_UG_EMAILS_OUT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75537057701060123)
,p_name=>'U_CURR_GRAD_VET_MED_APPT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75537429868060123)
,p_name=>'U_CURR_GRAD_VET_MED_EMAILS_IN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75537882316060123)
,p_name=>'U_CURR_GRAD_VET_MED_EMAILS_OUT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75538285395060124)
,p_name=>'U_COMBO_OTHER_STU_APPT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75538682613060124)
,p_name=>'U_COMBO_OTHER_STU_EMAILS_IN'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75539001807060124)
,p_name=>'U_COMBO_OTHER_STU_EMAILS_OUT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75539474827060125)
,p_name=>'U_FORMER_STU_APPTS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'FORMER STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75539896917060125)
,p_name=>'U_FORMER_STU_EMAILS_IN'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'FORMER STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75540247315060125)
,p_name=>'U_FORMER_STU_EMAILS_OUT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'FORMER STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75540657961060126)
,p_name=>'U_CHS_STUDENT_APPTS'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CHS STU APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75541025923060126)
,p_name=>'U_CHS_STUDENT_EMAILS_IN'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CHS STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75541444262060126)
,p_name=>'U_CHS_STUDENT_EMAILS_OUT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'CHS STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75541868852060126)
,p_name=>'U_IN_PERSON_CONTACT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'IN PERSON CONTACT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75542293429060127)
,p_name=>'U_EVALS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'EVALS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75542682827060127)
,p_name=>'U_EMIALS_IN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'EMIALS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75543078251060127)
,p_name=>'U_EMIALS_OUT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'EMIALS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75543423223060128)
,p_name=>'U_PROF_JUDG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'PROF JUDG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75543846013060128)
,p_name=>'U_VETERAN_QUESTIONS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'VETERAN QUESTIONS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75544229459060128)
,p_name=>'U_VETERAN_PAPERWORK'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'VETERAN PAPERWORK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75544644041060128)
,p_name=>'U_DIR_REPORTS'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75545039092060129)
,p_name=>'U_DIR_MISC'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(220117469562716353)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75546832684060131)
,p_name=>'U_CUR_HS_INC_FR_DIRECT_PHONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75547274091060131)
,p_name=>'U_CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75547684008060131)
,p_name=>'U_INC_UG_TR_DIRECT_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'INC UG TR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75548025176060131)
,p_name=>'U_INC_UG_TR_VOICEMAIL_PHONES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'INC UG TR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75548470309060132)
,p_name=>'U_INC_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75548823057060132)
,p_name=>'U_INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'INC GRAD VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75549213785060133)
,p_name=>'U_CURR_UG_DIRECT_PHONE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CURR UG DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75549604541060133)
,p_name=>'U_CURR_UG_VOICEMAIL_PHONES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CURR UG VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75550007850060133)
,p_name=>'U_CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED VOICEMAILS PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75550444363060134)
,p_name=>'U_CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED VOICEMAILS PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75550846166060134)
,p_name=>'U_COMBO_OTHER_STU_DIRECT_PHONES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75551284552060134)
,p_name=>'U_COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75551678820060134)
,p_name=>'U_FORMER_STU_DIRECT_PHONES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'FORMER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75552001616060134)
,p_name=>'U_FORMER_STU_VOICEMAIL_PHONES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'FORMER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75552416289060135)
,p_name=>'U_CHS_STUDENT_DIRECT_PHONES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CHS STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75552845643060135)
,p_name=>'U_CHS_STUDENT_VOICEMAILS_PHONES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(148778131183457126)
,p_item_default=>'0'
,p_prompt=>'CHS STU VOICEMAILS PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75553508882060136)
,p_name=>'U_CURR_HS_INC_FR_FINAID_EMAILS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75553958627060136)
,p_name=>'U_CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75554315616060136)
,p_name=>'U_INC_UG_TR_FINAID_EMAILS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'INC UG TR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75554779367060137)
,p_name=>'U_COMBO_OTHER_STU_FINAID_EMAILS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75555151011060137)
,p_name=>'U_INC_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75555554495060138)
,p_name=>'U_FORMER_STU_FINAID_EMAILS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'FORMER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75555948674060138)
,p_name=>'U_CURR_UG_FINAID_EMAILS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'DIR CURR UG FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75556306926060138)
,p_name=>'U_CHS_STUDENT_FINAID_EMAILS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'CHS STUDENT FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75556750631060139)
,p_name=>'U_TULSA_FINAID_EMAILS_ROUTED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(148778276563457127)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAIL ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766962628101412)
,p_name=>'U_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75766826195101411)
,p_prompt=>'COMMENTS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767096082101413)
,p_name=>'U_FINAID_EMAILS_RECEIVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75766826195101411)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAILS RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767170649101414)
,p_name=>'U_WALK_IN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75766826195101411)
,p_item_default=>'0'
,p_prompt=>'WALK IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767259779101415)
,p_name=>'U_VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75766826195101411)
,p_item_default=>'0'
,p_prompt=>'TULSA VOICEMAIL RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75557118703060140)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE TULSA_ASST_DIR_STATS ',
'  SET ',
'	CURR_HS_INC_FR_APPT =:U_CURR_HS_INC_FR_APPT , 	',
'    CURR_HS_INC_FR_STU_EMAIL_IN =:U_CURR_HS_INC_FR_STU_EMAIL_IN, 	',
'    CURR_HS_INC_FR_STU_EMAIL_OUT =:U_CURR_HS_INC_FR_STU_EMAIL_OUT, ',
'	IN_PERSON_CONTACT =:U_IN_PERSON_CONTACT, ',
'	INC_UG_TR_APPT =:U_INC_UG_TR_APPT , 	',
'    INC_UG_TR_STU_EMAILS_IN =:U_INC_UG_TR_STU_EMAILS_IN, 	',
'    INC_UG_TR_STU_EMAILS_OUT =:U_INC_UG_TR_STU_EMAILS_OUT , ',
'	EVALS =:U_EVALS , ',
'	INC_GRAD_VET_MED_APPT =:U_INC_GRAD_VET_MED_APPT , 	',
'    INC_GRAD_VET_MED_STU_EMAILS_IN =:U_INC_GRAD_VET_MED_STU_EMAILS_IN , 	',
'    INC_GRAD_VET_MED_STU_EMAILS_OUT =:U_INC_GRAD_VET_MED_STU_EMAILS_OUT , ',
'	EMIALS_IN =:U_EMIALS_IN , ',
'	CURR_UG_APPTS =:U_CURR_UG_APPTS , 	',
'    CURR_UG_EMAILS_IN  =:U_CURR_UG_EMAILS_IN, 	',
'    CURR_UG_EMAILS_OUT =:U_CURR_UG_EMAILS_OUT , ',
'	EMIALS_OUT =:U_EMIALS_OUT , ',
'	CURR_GRAD_VET_MED_APPT =:U_CURR_GRAD_VET_MED_APPT , 	',
'    CURR_GRAD_VET_MED_EMAILS_IN =:U_CURR_GRAD_VET_MED_EMAILS_IN , 	',
'    CURR_GRAD_VET_MED_EMAILS_OUT =:U_CURR_GRAD_VET_MED_EMAILS_OUT , ',
'	PROF_JUDG =:U_PROF_JUDG , ',
'	COMBO_OTHER_STU_APPT =:U_COMBO_OTHER_STU_APPT , ',
'    COMBO_OTHER_STU_EMAILS_IN =:U_COMBO_OTHER_STU_EMAILS_IN , ',
'    COMBO_OTHER_STU_EMAILS_OUT =:U_COMBO_OTHER_STU_EMAILS_OUT , ',
'	VETERAN_QUESTIONS =:U_VETERAN_QUESTIONS , ',
'	FORMER_STU_APPTS =:U_FORMER_STU_APPTS, ',
'    FORMER_STU_EMAILS_IN =:U_FORMER_STU_EMAILS_IN , ',
'    FORMER_STU_EMAILS_OUT =:U_FORMER_STU_EMAILS_OUT , ',
'	VETERAN_PAPERWORK =:U_VETERAN_PAPERWORK , ',
'	CHS_STUDENT_APPTS =:U_CHS_STUDENT_APPTS , 	',
'    CHS_STUDENT_EMAILS_IN =:U_CHS_STUDENT_EMAILS_IN , 	',
'    CHS_STUDENT_EMAILS_OUT =:U_CHS_STUDENT_EMAILS_OUT , ',
'	DIR_REPORTS =:U_DIR_REPORTS , ',
'    DIR_MISC =:U_DIR_MISC , ',
'	CURR_HS_INC_FR_FINAID_EMAILS =:U_CURR_HS_INC_FR_FINAID_EMAILS , ',
'    INC_UG_TR_FINAID_EMAILS =:U_INC_UG_TR_FINAID_EMAILS , 	',
'    INC_GRAD_VET_MED_FINAID_EMAILS =:U_INC_GRAD_VET_MED_FINAID_EMAILS , ',
'	CURR_UG_FINAID_EMAILS =:U_CURR_UG_FINAID_EMAILS , 	',
'    CURR_GRAD_VET_MED_FINAID_EMAILS =:U_CURR_GRAD_VET_MED_FINAID_EMAILS , 	',
'    COMBO_OTHER_STU_FINAID_EMAILS =:U_COMBO_OTHER_STU_FINAID_EMAILS, ',
'	FORMER_STU_FINAID_EMAILS =:U_FORMER_STU_FINAID_EMAILS, ',
'    CHS_STUDENT_FINAID_EMAILS =:U_CHS_STUDENT_FINAID_EMAILS , 	',
'    TULSA_FINAID_EMAILS_ROUTED =:U_TULSA_FINAID_EMAILS_ROUTED, ',
'	CUR_HS_INC_FR_DIRECT_PHONES =:U_CUR_HS_INC_FR_DIRECT_PHONES , ',
'    CURR_HS_INC_FR_VOICEMAIL_PHONES =:U_CURR_HS_INC_FR_VOICEMAIL_PHONES , ',
'    INC_UG_TR_DIRECT_PHONES =:U_INC_UG_TR_DIRECT_PHONES , ',
'	INC_UG_TR_VOICEMAIL_PHONES =:U_INC_UG_TR_VOICEMAIL_PHONES , ',
'    INC_GRAD_VET_MED_DIRECT_PHONES =:U_INC_GRAD_VET_MED_DIRECT_PHONES , 	',
'    INC_GRAD_VET_MED_VOICEMAIL_PHONES =:U_INC_GRAD_VET_MED_VOICEMAIL_PHONES , ',
'	CURR_UG_DIRECT_PHONE =:U_CURR_UG_DIRECT_PHONE , ',
'    CURR_UG_VOICEMAIL_PHONES =:U_CURR_UG_VOICEMAIL_PHONES , 	',
'    CURR_GRAD_VET_MED_DIRECT_PHONES =:U_CURR_GRAD_VET_MED_DIRECT_PHONES , ',
'	CURR_GRAD_VET_MED_VOICEMAILS_PHONES =:U_CURR_GRAD_VET_MED_VOICEMAILS_PHONES , ',
'    COMBO_OTHER_STU_DIRECT_PHONES =:U_COMBO_OTHER_STU_DIRECT_PHONES , 	',
'    COMBO_OTHER_STU_VOICEMAILS_PHONES =:U_COMBO_OTHER_STU_VOICEMAILS_PHONES , ',
'	FORMER_STU_DIRECT_PHONES =:U_FORMER_STU_DIRECT_PHONES , ',
'    FORMER_STU_VOICEMAIL_PHONES =:U_FORMER_STU_VOICEMAIL_PHONES , ',
'    CHS_STUDENT_DIRECT_PHONES =:U_CHS_STUDENT_DIRECT_PHONES , ',
'	CHS_STUDENT_VOICEMAILS_PHONES  =:U_CHS_STUDENT_VOICEMAILS_PHONES , 	',
'    CURR_HS_INC_FR =:U_CURR_HS_INC_FR , 	',
'    INCOMING_UG_TR =:U_INCOMING_UG_TR , ',
'	INCOMING_GRAD_VET_MED =:U_INCOMING_GRAD_VET_MED , ',
'    CURRENT_UG =:U_CURRENT_UG , 	',
'    CURRENT_GRAD_VET_MED  =:U_CURRENT_GRAD_VET_MED , ',
'    COMBO_STUDENTS_OTHER =:U_COMBO_STUDENTS_OTHER, ',
'	FORMER_STUDENT =:U_FORMER_STUDENT , ',
'    CHS_STUDENT =:U_CHS_STUDENT , ',
'    STW_EMAIL_ROUTED =:U_STW_EMAIL_ROUTED ,',
'    COMMENTS =:U_COMMENTS ,',
'    TULSA_FINAID_EMAILS_RECEIVED =:U_FINAID_EMAILS_RECEIVED ,',
'    TULSA_VOICEMAIL_RECEIVED =:U_VOICEMAIL_RECEIVED ,',
'    WALK_IN =:U_WALK_IN ',
'    ',
'   WHERE	NEW_DATE  =:U_NEW_DATE  and	ASST_DIR_COUNSELOR_NAME =:U_ASST_DIR_COUNSELOR_NAME ;',
'  ',
'        '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Updated Successfully '
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Update CHS Stats Sheet'
,p_step_title=>'Update CHS Stats Sheet'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230804111650'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75767335487101416)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148030386075868882)
,p_plug_name=>'Tulsa_Finaid_Emails_Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148030523403868883)
,p_plug_name=>'Tulsa Phone Calls Answered/Returned'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(292834377692544062)
,p_plug_name=>'Update CHS Stats sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(293069067477659563)
,p_plug_name=>'Stillwater-Finaid-Email-Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(72233225629028052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75589960769777702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75767335487101416)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75575327996777688)
,p_name=>'N_CHS_CURR_HS_INCOMING_FR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75575767141777690)
,p_name=>'N_CHS_INCOMING_UG_TR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75576153870777690)
,p_name=>'N_CHS_INCOMING_GRAD_VET_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75576544603777690)
,p_name=>'N_CHS_CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75576947868777691)
,p_name=>'N_CHS_CURRENT_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75577328359777691)
,p_name=>'N_CHS_COMBO_STUDENTS_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'COMBO STU OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75577702566777691)
,p_name=>'N_CHS_FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'FORMER STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75578136630777691)
,p_name=>'N_CHS_CHS_STUDENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'CHS STU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75578535526777691)
,p_name=>'N_CHS_STW_EMAIL_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(293069067477659563)
,p_item_default=>'0'
,p_prompt=>'STW EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75579251108777695)
,p_name=>'N_CHS_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS <> ''STW'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75579600961777696)
,p_name=>'N_CHS_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75580045086777696)
,p_name=>'N_WALK_IN_PA_STU1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (8am-9am)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75580450885777696)
,p_name=>'N_WALK_IN_OTHER1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (8am-9am) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75580835100777696)
,p_name=>'N_WALK_IN_PA_STU2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (9am-10am)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75581206172777697)
,p_name=>'N_WALK_IN_OTHER2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (9am-10am) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75581676683777697)
,p_name=>'N_WALK_IN_PA_STU3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (10am-11am)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75582000083777697)
,p_name=>'N_WALK_IN_OTHER3'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (10am-11am) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75582468784777698)
,p_name=>'N_WALK_IN_PA_STU4'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (11am-12pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75582834180777698)
,p_name=>'N_WALK_IN_OTHER4'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (11am-12pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75583240212777698)
,p_name=>'N_WALK_IN_PA_STU5'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (12pm-1pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75583633433777698)
,p_name=>'N_WALK_IN_OTHER5'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (12pm-1pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75584008207777699)
,p_name=>'N_WALK_IN_PA_STU6'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (1pm-2pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75584418274777699)
,p_name=>'N_WALK_IN_OTHER6'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (1pm-2pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75584803314777699)
,p_name=>'N_WALK_IN_PA_STU7'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (2pm-3pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75585270297777699)
,p_name=>'N_WALK_IN_OTHER7'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (2pm-3pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75585699362777699)
,p_name=>'N_WALK_IN_PA_STU8'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (3pm-4pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75586040749777700)
,p_name=>'N_WALK_IN_OTHER8'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (3pm-4pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75586412461777700)
,p_name=>'N_WALK_IN_PA_STU9'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (4pm-5pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75586846099777700)
,p_name=>'N_WALK_IN_OTHER9'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (4pm-5pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75587292082777700)
,p_name=>'N_WALK_IN_PA_STU10'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk In PA Student (5pm-6pm)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75587639126777701)
,p_name=>'N_WALK_IN_OTHER10'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'Walk-in Other (5pm-6pm) '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75588031506777701)
,p_name=>'N_VOICEMAIL_RETURNED'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'VM RETURNED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75588439972777701)
,p_name=>'N_MY_EMIALS_IN'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75588893357777701)
,p_name=>'N_MY_EMIALS_OUT'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75589219049777701)
,p_name=>'N_OTHER'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(292834377692544062)
,p_item_default=>'0'
,p_prompt=>'OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75591017645777704)
,p_name=>'N_CHS_CURR_HS_INC_FR_FINAID_EMAILS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75591403755777705)
,p_name=>'N_CHS_INC_UG_TR_FINAID_EMAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'INC UG TR FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75591845256777705)
,p_name=>'N_CHS_INC_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75592205609777706)
,p_name=>'N_CHS_CURR_UG_FINAID_EMAILS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'CURR UG FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75592616169777706)
,p_name=>'N_CHS_CURR_GRAD_VET_MED_FINAID_EMAILS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75593001635777706)
,p_name=>'N_CHS_COMBO_OTHER_STU_FINAID_EMAILS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75593474046777706)
,p_name=>'N_CHS_FORMER_STU_FINAID_EMAILS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'FORMER STU FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75593836218777707)
,p_name=>'N_CHS_CHS_STUDENT_FINAID_EMAILS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'CHS STUDENT FINAID EMAILS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75594235517777707)
,p_name=>'N_CHS_TULSA_FINAID_EMAILS_ROUTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(148030386075868882)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAIL ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75594922959777708)
,p_name=>'N_CHS_CUR_HS_INC_FR_DIRECT_PHONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75595365204777708)
,p_name=>'N_CHS_INC_UG_TR_DIRECT_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'INC UG TR DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75595795858777708)
,p_name=>'N_CHS_INC_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'INC GR VET MED DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75596121026777708)
,p_name=>'N_CHS_CURR_UG_DIRECT_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CURR UG DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75596592677777709)
,p_name=>'N_CHS_CURR_GRAD_VET_MED_DIRECT_PHONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75596930406777709)
,p_name=>'N_CHS_COMBO_OTHER_STU_DIRECT_PHONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75597344502777709)
,p_name=>'N_CHS_FORMER_STU_DIRECT_PHONES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'FORMER STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75597729124777709)
,p_name=>'N_CHS_CHS_STUDENT_DIRECT_PHONES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CHS STU DIRECT PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75598164741777710)
,p_name=>'N_CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CURR HS INC FR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75598571667777710)
,p_name=>'N_CHS_INC_UG_TR_VOICEMAIL_PHONES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'INC UG TR VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75598945056777710)
,p_name=>'N_CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'INC GRAD VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75599315185777710)
,p_name=>'N_CHS_CURR_UG_VOICEMAIL_PHONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CURR UG VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75599799446777711)
,p_name=>'N_CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CURR GR VET MED VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75600134442777711)
,p_name=>'N_CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'COMBO OTHER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75600561405777711)
,p_name=>'N_CHS_FORMER_STU_VOICEMAIL_PHONES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'FORMER STU VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75600958323777712)
,p_name=>'N_CHS_CHS_STUDENT_VOICEMAILS_PHONES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(148030523403868883)
,p_item_default=>'0'
,p_prompt=>'CHS STUDENT VM PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767475077101417)
,p_name=>'UPD_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75767335487101416)
,p_prompt=>'CHS COMMENTS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767547572101418)
,p_name=>'UPD_VOICEMAIL_RECEIVED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75767335487101416)
,p_item_default=>'0'
,p_prompt=>'TULSA VOICEMAIL RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767668627101419)
,p_name=>'UPD_FINAID_EMAILS_RECEIVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75767335487101416)
,p_item_default=>'0'
,p_prompt=>'TULSA FINAID EMAILS RECEIVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767796880101420)
,p_name=>'UPD_WALK_IN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75767335487101416)
,p_item_default=>'0'
,p_prompt=>'WALK IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(72290109854028110)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75601324464777717)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Update TULSA_CHS_STATS ',
'SET	WALK_IN_PA_STU1 =:N_WALK_IN_PA_STU1 , 	',
'    WALK_IN_OTHER1 =:N_WALK_IN_OTHER1, 	',
'    WALK_IN_PA_STU2 =:N_WALK_IN_PA_STU2 , 	',
'    WALK_IN_OTHER2 =:N_WALK_IN_OTHER2, ',
'	WALK_IN_PA_STU3 =:N_WALK_IN_PA_STU3, 	',
'    WALK_IN_OTHER3 =:N_WALK_IN_OTHER3 , 	',
'    WALK_IN_PA_STU4 =:N_WALK_IN_PA_STU4, 	',
'    WALK_IN_OTHER4 =:N_WALK_IN_OTHER4, ',
'	WALK_IN_PA_STU5 =:N_WALK_IN_PA_STU5, 	',
'    WALK_IN_OTHER5 =:N_WALK_IN_OTHER5 , 	',
'    WALK_IN_PA_STU6 =:N_WALK_IN_PA_STU6, ',
'    WALK_IN_OTHER6 =:N_WALK_IN_OTHER6 , ',
'	WALK_IN_PA_STU7 =:N_WALK_IN_PA_STU7 , 	',
'    WALK_IN_OTHER7 =:N_WALK_IN_OTHER7, 	',
'    WALK_IN_PA_STU8 =:N_WALK_IN_PA_STU8, ',
'    WALK_IN_OTHER8 =:N_WALK_IN_OTHER8, ',
'	WALK_IN_PA_STU9 =:N_WALK_IN_PA_STU9, 	',
'    WALK_IN_OTHER9 =:N_WALK_IN_OTHER9 , 	',
'    WALK_IN_PA_STU10 =:N_WALK_IN_PA_STU10, 	',
'    WALK_IN_OTHER10 =:N_WALK_IN_OTHER10, ',
'	MY_EMIALS_IN =:N_MY_EMIALS_IN, ',
'    MY_EMIALS_OUT =:N_MY_EMIALS_OUT , 	',
'    VOICEMAIL_RETURNED =:N_VOICEMAIL_RETURNED, ',
'    OTHER =:N_OTHER, ',
'	CHS_CUR_HS_INC_FR_DIRECT_PHONES =:N_CHS_CUR_HS_INC_FR_DIRECT_PHONES , ',
'    CHS_INC_UG_TR_DIRECT_PHONES =:N_CHS_INC_UG_TR_DIRECT_PHONES, 	',
'    CHS_INC_GRAD_VET_MED_DIRECT_PHONES =:N_CHS_INC_GRAD_VET_MED_DIRECT_PHONES, 	',
'    CHS_CURR_UG_DIRECT_PHONE =:N_CHS_CURR_UG_DIRECT_PHONE, ',
'	CHS_CURR_GRAD_VET_MED_DIRECT_PHONES =:N_CHS_CURR_GRAD_VET_MED_DIRECT_PHONES, 	',
'    CHS_COMBO_OTHER_STU_DIRECT_PHONES =:N_CHS_COMBO_OTHER_STU_DIRECT_PHONES ,',
'    CHS_FORMER_STU_DIRECT_PHONES =:N_CHS_FORMER_STU_DIRECT_PHONES, 	',
'    CHS_CHS_STUDENT_DIRECT_PHONES =:N_CHS_CHS_STUDENT_DIRECT_PHONES, ',
'	CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES =:N_CHS_CURR_HS_INC_FR_VOICEMAIL_PHONES, ',
'    CHS_INC_UG_TR_VOICEMAIL_PHONES =:N_CHS_INC_UG_TR_VOICEMAIL_PHONES, 	',
'    CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES =:N_CHS_INC_GRAD_VET_MED_VOICEMAIL_PHONES, ',
'    CHS_CURR_UG_VOICEMAIL_PHONES =:N_CHS_CURR_UG_VOICEMAIL_PHONES, ',
'	CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES =:N_CHS_CURR_GRAD_VET_MED_VOICEMAILS_PHONES, ',
'    CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES =:N_CHS_COMBO_OTHER_STU_VOICEMAILS_PHONES, ',
'    CHS_FORMER_STU_VOICEMAIL_PHONES =:N_CHS_FORMER_STU_VOICEMAIL_PHONES, 	',
'    CHS_CHS_STUDENT_VOICEMAILS_PHONES =:N_CHS_CHS_STUDENT_VOICEMAILS_PHONES, ',
'	CHS_CURR_HS_INC_FR_FINAID_EMAILS =:N_CHS_CURR_HS_INC_FR_FINAID_EMAILS,',
'    CHS_INC_UG_TR_FINAID_EMAILS =:N_CHS_INC_UG_TR_FINAID_EMAILS, ',
'    CHS_INC_GRAD_VET_MED_FINAID_EMAILS =:N_CHS_INC_GRAD_VET_MED_FINAID_EMAILS, ',
'    CHS_CURR_UG_FINAID_EMAILS =:N_CHS_CURR_UG_FINAID_EMAILS, ',
'    CHS_CURR_GRAD_VET_MED_FINAID_EMAILS =:N_CHS_CURR_GRAD_VET_MED_FINAID_EMAILS , ',
'	CHS_COMBO_OTHER_STU_FINAID_EMAILS =:N_CHS_COMBO_OTHER_STU_FINAID_EMAILS , 	',
'    CHS_FORMER_STU_FINAID_EMAILS =:N_CHS_FORMER_STU_FINAID_EMAILS, ',
'    CHS_CHS_STUDENT_FINAID_EMAILS =:N_CHS_CHS_STUDENT_FINAID_EMAILS, ',
'    CHS_TULSA_FINAID_EMAILS_ROUTED =:N_CHS_TULSA_FINAID_EMAILS_ROUTED, 	',
'    CHS_CURR_HS_INCOMING_FR =:N_CHS_CURR_HS_INCOMING_FR, ',
'	CHS_INCOMING_UG_TR =:N_CHS_INCOMING_UG_TR , 	',
'    CHS_INCOMING_GRAD_VET_MED =:N_CHS_INCOMING_GRAD_VET_MED,',
'    CHS_CURRENT_UG =:N_CHS_CURRENT_UG, 	',
'    CHS_CURRENT_GRAD_VET_MED =:N_CHS_CURRENT_GRAD_VET_MED, 	',
'    CHS_COMBO_STUDENTS_OTHER =:N_CHS_COMBO_STUDENTS_OTHER , 	',
'    CHS_FORMER_STUDENT =:N_CHS_FORMER_STUDENT, 	',
'    CHS_CHS_STUDENT =:N_CHS_CHS_STUDENT , ',
'	CHS_STW_EMAIL_ROUTED =:N_CHS_STW_EMAIL_ROUTED,',
'    CHS_COMMENTS  =:UPD_COMMENTS  ,',
'    TULSA_FINAID_EMAILS_RECEIVED =:UPD_FINAID_EMAILS_RECEIVED   ,',
'    TULSA_VOICEMAIL_RECEIVED =:UPD_VOICEMAIL_RECEIVED   ,',
'    WALK_IN =:UPD_WALK_IN',
'',
'WHERE  CHS_DATE =:N_CHS_DATE  and	CHS_NAME =:N_CHS_NAME ; ',
'',
'	',
'',
'',
'',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Updated Successfully '
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(72313779277028175)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'OSU-Tulsa - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(72193052767028010)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230424111632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72317721915028238)
,p_plug_name=>'OSU-Tulsa'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(72232755912028052)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72322436164028259)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(72317721915028238)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(72209989741028031)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72320585479028255)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(72317721915028238)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(72291225190028117)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72318159963028243)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72317721915028238)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(72289869664028108)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72318545247028246)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(72317721915028238)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(72289869664028108)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72319621127028250)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72317721915028238)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(72318813980028247)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(72289869664028108)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72321334089028257)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72320982435028256)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72322107926028258)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72321784846028258)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
