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
,p_default_application_id=>165
,p_default_owner=>'OSU_FINAID'
);
end;
/
 
prompt APPLICATION 165 - OSU - Stillwater Stats Database
--
-- Application Export:
--   Application:     165
--   Name:            OSU - Stillwater Stats Database
--   Date and Time:   14:42 Friday September 29, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

-- Application Statistics:
--   Pages:                     30
--     Items:                  352
--     Processes:               20
--     Regions:                 83
--     Buttons:                 46
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--       Authorization:          2
--       ACL Roles:              1
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'OSU - Stillwater Stats Database')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'165')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'779AAA610F878534F36FA5945B2DC24929311CC309D8453A60D62D6C851384AE'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2023.02.13.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(56621956951843603)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Home page '
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
,p_substitution_value_01=>'Home page '
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230815112101'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(56622710985843609)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(56771058271843812)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(56637791276651648)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'2023-OSFA STATS'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(56771058271843812)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71944983212561206)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Front Conunslers '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71945638539581172)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'New_Date_Front_Counslers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_parent_list_item_id=>wwv_flow_api.id(71944983212561206)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71945990411590890)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Specific_Date_Front_Counslers'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71944983212561206)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71946362430597747)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Summary_Front_Counslers'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71944983212561206)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71946897936602818)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Back_Counslers'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71947273909617816)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'New_Date_Back_Counslers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_parent_list_item_id=>wwv_flow_api.id(71946897936602818)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71947770240629211)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Specific_Date_Back_Counslers'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71946897936602818)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71948157883634442)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Summary_Back_Counslers'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71946897936602818)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71948657540644473)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Class_Total'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71949272962656627)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Class_Total'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71948657540644473)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Loan_Records_Management'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71949838934668403)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'New_Loans_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71950188298677746)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'New_DataEntry_FileRoom'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71951210380700276)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Specific_Date_Loans_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71952078701723024)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'New_Data_Entry_Staff'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71952671305746220)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Summary_Data_Entry_Staff'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(72068910777428992)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Specific_Date_Data_Entry_Staff'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74275821838571062)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Summary Loans Records'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71949561151661737)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71950402641684670)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Scholarships_records_Management'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71950759923689313)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'New_Records_Scholarships'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_parent_list_item_id=>wwv_flow_api.id(71950402641684670)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71951745875712118)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'NewRecords_ACD_FinAid'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:::'
,p_parent_list_item_id=>wwv_flow_api.id(71950402641684670)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71952364676736040)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Specific_Date_Scholarships'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71950402641684670)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71975973061775228)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Summary_Loans_Scholarships'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(71976220672786837)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Summary_Loans_Scholarships'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(71975973061775228)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Admin'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75751969131334949)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Update_Front_Counsleors'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75752471208346589)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Update_Back_Counsleors'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75752849406354775)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Update_Date_Entry_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75753163631361081)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Update_Fileroom_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75762158897804437)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Update_ACD_FINAID_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75753472160375501)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Update_Loan_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75753766763381247)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Update_Scholarship_Records'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75754053656388267)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Maintain_Employee_Details'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:::'
,p_parent_list_item_id=>wwv_flow_api.id(75751633943326404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(56760872381843753)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(56772558024843828)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(56773002075843829)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(56772558024843828)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(56773410125843829)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(56772558024843828)
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
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223453935423534222F3E3C672069643D2269636F6E73223E3C706174682063';
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
 p_id=>wwv_flow_api.id(56762158317843766)
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
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234539354235343B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(56762437451843769)
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
 p_id=>wwv_flow_api.id(56619861938843601)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(56620171069843601)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(56620476872843601)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(56620775287843601)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(56621026504843602)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(56621397088843602)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(56621656094843602)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(56763716704843769)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/update
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(75608151129338813)
,p_name=>'Update'
,p_scheme_type=>'NATIVE_IS_NOT_IN_GROUP'
,p_attribute_01=>'Updation'
,p_attribute_02=>'A'
,p_error_message=>'Cannot Access the page '
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/updation
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(75607636019319622)
,p_static_id=>'UPDATION'
,p_name=>'Updation'
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
 p_id=>wwv_flow_api.id(56766307993843792)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(56766307993843792)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(56766762074843794)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(56764304476843773)
,p_group_name=>'Administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(56622223957843606)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(56622497865843607)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(56623086862843610)
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
 p_id=>wwv_flow_api.id(56623319262843616)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56623631262843617)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56623951923843617)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56624273686843618)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56624562914843618)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56624801971843618)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56625183804843618)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56625494570843618)
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
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
 p_id=>wwv_flow_api.id(56625895649843622)
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
 p_id=>wwv_flow_api.id(56626176525843622)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56626490475843622)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56626738526843623)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56627001248843623)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56627378489843623)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56627661010843624)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56627942727843624)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56638259897843624)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56638575582843624)
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
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
 p_id=>wwv_flow_api.id(56638975648843624)
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
 p_id=>wwv_flow_api.id(56639208886843625)
,p_page_template_id=>wwv_flow_api.id(56638975648843624)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56639533189843625)
,p_page_template_id=>wwv_flow_api.id(56638975648843624)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56639800258843625)
,p_page_template_id=>wwv_flow_api.id(56638975648843624)
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
 p_id=>wwv_flow_api.id(56640445306843625)
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
 p_id=>wwv_flow_api.id(56640781155843625)
,p_page_template_id=>wwv_flow_api.id(56640445306843625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56641081382843626)
,p_page_template_id=>wwv_flow_api.id(56640445306843625)
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
 p_id=>wwv_flow_api.id(56641282870843626)
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
 p_id=>wwv_flow_api.id(56641553459843626)
,p_page_template_id=>wwv_flow_api.id(56641282870843626)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56641823937843626)
,p_page_template_id=>wwv_flow_api.id(56641282870843626)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56642119797843626)
,p_page_template_id=>wwv_flow_api.id(56641282870843626)
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
 p_id=>wwv_flow_api.id(56642709801843627)
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
 p_id=>wwv_flow_api.id(56643085168843627)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56643384557843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56643616183843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56643990829843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56644223976843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56644532718843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56644885431843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56645149232843628)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56645462686843629)
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
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
 p_id=>wwv_flow_api.id(56645843262843629)
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
 p_id=>wwv_flow_api.id(56646106956843629)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56646422152843629)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56646793363843629)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56647032267843630)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56647344923843630)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56647610709843630)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56647993897843630)
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
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
 p_id=>wwv_flow_api.id(56648372122843630)
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
 p_id=>wwv_flow_api.id(56648615864843631)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56648988916843631)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56649288537843631)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56649598718843631)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56649897740843632)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56650198884843632)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56650447860843632)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56650754841843632)
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
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
 p_id=>wwv_flow_api.id(56651164644843632)
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
 p_id=>wwv_flow_api.id(56651442329843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56651756818843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56652047546843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56652318026843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56652656572843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56652908400843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(56653205964843633)
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
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
 p_id=>wwv_flow_api.id(56737967851843711)
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
 p_id=>wwv_flow_api.id(56738600440843712)
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
 p_id=>wwv_flow_api.id(56738723496843712)
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
 p_id=>wwv_flow_api.id(56653665391843634)
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
 p_id=>wwv_flow_api.id(56653965325843637)
,p_plug_template_id=>wwv_flow_api.id(56653665391843634)
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
 p_id=>wwv_flow_api.id(56657369414843641)
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
 p_id=>wwv_flow_api.id(56657579353843641)
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
 p_id=>wwv_flow_api.id(56657872550843641)
,p_plug_template_id=>wwv_flow_api.id(56657579353843641)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(56658109650843642)
,p_plug_template_id=>wwv_flow_api.id(56657579353843641)
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
 p_id=>wwv_flow_api.id(56658364283843642)
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
 p_id=>wwv_flow_api.id(56658657787843642)
,p_plug_template_id=>wwv_flow_api.id(56658364283843642)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(56658928637843642)
,p_plug_template_id=>wwv_flow_api.id(56658364283843642)
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
 p_id=>wwv_flow_api.id(56660508988843643)
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
 p_id=>wwv_flow_api.id(56660885444843643)
,p_plug_template_id=>wwv_flow_api.id(56660508988843643)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(56661153351843644)
,p_plug_template_id=>wwv_flow_api.id(56660508988843643)
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
 p_id=>wwv_flow_api.id(56667786334843648)
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
 p_id=>wwv_flow_api.id(56668058012843649)
,p_plug_template_id=>wwv_flow_api.id(56667786334843648)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(56668383943843649)
,p_plug_template_id=>wwv_flow_api.id(56667786334843648)
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
 p_id=>wwv_flow_api.id(56673193289843652)
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
 p_id=>wwv_flow_api.id(56675167245843653)
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
 p_id=>wwv_flow_api.id(56675454627843653)
,p_plug_template_id=>wwv_flow_api.id(56675167245843653)
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
 p_id=>wwv_flow_api.id(56677277192843654)
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
 p_id=>wwv_flow_api.id(56677515861843654)
,p_plug_template_id=>wwv_flow_api.id(56677277192843654)
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
 p_id=>wwv_flow_api.id(56679590484843656)
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
 p_id=>wwv_flow_api.id(56680174205843656)
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
 p_id=>wwv_flow_api.id(56680477193843656)
,p_plug_template_id=>wwv_flow_api.id(56680174205843656)
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
 p_id=>wwv_flow_api.id(56680630296843656)
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
 p_id=>wwv_flow_api.id(56680948864843656)
,p_plug_template_id=>wwv_flow_api.id(56680630296843656)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(56681213080843657)
,p_plug_template_id=>wwv_flow_api.id(56680630296843656)
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
 p_id=>wwv_flow_api.id(56687418145843663)
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
 p_id=>wwv_flow_api.id(56687733207843663)
,p_plug_template_id=>wwv_flow_api.id(56687418145843663)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(56688088841843663)
,p_plug_template_id=>wwv_flow_api.id(56687418145843663)
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
 p_id=>wwv_flow_api.id(56690068974843665)
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
 p_id=>wwv_flow_api.id(56691075586843665)
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
 p_id=>wwv_flow_api.id(56691347469843665)
,p_plug_template_id=>wwv_flow_api.id(56691075586843665)
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
 p_id=>wwv_flow_api.id(56692342336843666)
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
 p_id=>wwv_flow_api.id(56692627210843666)
,p_plug_template_id=>wwv_flow_api.id(56692342336843666)
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
 p_id=>wwv_flow_api.id(56715099353843685)
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
 p_id=>wwv_flow_api.id(56719000937843693)
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
 p_id=>wwv_flow_api.id(56724676325843696)
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
 p_id=>wwv_flow_api.id(56726246209843698)
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
 p_id=>wwv_flow_api.id(56729091443843699)
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
 p_id=>wwv_flow_api.id(56730045437843701)
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
 p_id=>wwv_flow_api.id(56730491151843701)
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
 p_id=>wwv_flow_api.id(56732062433843703)
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
 p_id=>wwv_flow_api.id(56733659433843704)
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
 p_id=>wwv_flow_api.id(56735007646843705)
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
 p_id=>wwv_flow_api.id(56736076296843706)
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
 p_id=>wwv_flow_api.id(56736239567843707)
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
 p_id=>wwv_flow_api.id(56694235021843668)
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
 p_id=>wwv_flow_api.id(56694421095843671)
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
 p_id=>wwv_flow_api.id(56698430454843673)
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
 p_id=>wwv_flow_api.id(56703839956843677)
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
 p_id=>wwv_flow_api.id(56705029073843677)
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
 p_id=>wwv_flow_api.id(56705216907843678)
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
 p_id=>wwv_flow_api.id(56705216907843678)
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
 p_id=>wwv_flow_api.id(56707888933843680)
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
 p_id=>wwv_flow_api.id(56709843744843681)
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
 p_id=>wwv_flow_api.id(56711677161843683)
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
 p_id=>wwv_flow_api.id(56712079660843683)
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
 p_id=>wwv_flow_api.id(56737226364843708)
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
 p_id=>wwv_flow_api.id(56737352912843710)
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
 p_id=>wwv_flow_api.id(56737453519843710)
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
 p_id=>wwv_flow_api.id(56737573338843710)
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
 p_id=>wwv_flow_api.id(56737678582843710)
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
 p_id=>wwv_flow_api.id(56737708033843710)
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
 p_id=>wwv_flow_api.id(56737814213843710)
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
 p_id=>wwv_flow_api.id(56740005865843713)
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
 p_id=>wwv_flow_api.id(56740261224843720)
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
 p_id=>wwv_flow_api.id(56740138843843715)
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
 p_id=>wwv_flow_api.id(56741409038843732)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(56651164644843632)
,p_default_dialog_template=>wwv_flow_api.id(56641282870843626)
,p_error_template=>wwv_flow_api.id(56640445306843625)
,p_printer_friendly_template=>wwv_flow_api.id(56651164644843632)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(56640445306843625)
,p_default_button_template=>wwv_flow_api.id(56738600440843712)
,p_default_region_template=>wwv_flow_api.id(56680630296843656)
,p_default_chart_template=>wwv_flow_api.id(56680630296843656)
,p_default_form_template=>wwv_flow_api.id(56680630296843656)
,p_default_reportr_template=>wwv_flow_api.id(56680630296843656)
,p_default_tabform_template=>wwv_flow_api.id(56680630296843656)
,p_default_wizard_template=>wwv_flow_api.id(56680630296843656)
,p_default_menur_template=>wwv_flow_api.id(56690068974843665)
,p_default_listr_template=>wwv_flow_api.id(56680630296843656)
,p_default_irr_template=>wwv_flow_api.id(56679590484843656)
,p_default_report_template=>wwv_flow_api.id(56705216907843678)
,p_default_label_template=>wwv_flow_api.id(56737573338843710)
,p_default_menu_template=>wwv_flow_api.id(56740005865843713)
,p_default_calendar_template=>wwv_flow_api.id(56740138843843715)
,p_default_list_template=>wwv_flow_api.id(56724676325843696)
,p_default_nav_list_template=>wwv_flow_api.id(56735007646843705)
,p_default_top_nav_list_temp=>wwv_flow_api.id(56735007646843705)
,p_default_side_nav_list_temp=>wwv_flow_api.id(56736239567843707)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(56658364283843642)
,p_default_dialogr_template=>wwv_flow_api.id(56657369414843641)
,p_default_option_label=>wwv_flow_api.id(56737573338843710)
,p_default_required_label=>wwv_flow_api.id(56737814213843710)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(56736076296843706)
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
 p_id=>wwv_flow_api.id(56740498183843724)
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
 p_id=>wwv_flow_api.id(56740637871843724)
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
 p_id=>wwv_flow_api.id(56740853938843724)
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
 p_id=>wwv_flow_api.id(56741047471843724)
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
 p_id=>wwv_flow_api.id(56741275947843724)
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
 p_id=>wwv_flow_api.id(56654455726843639)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56654831090843640)
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
 p_id=>wwv_flow_api.id(56655459975843640)
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
 p_id=>wwv_flow_api.id(56655877593843640)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56659200535843642)
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
 p_id=>wwv_flow_api.id(56659677875843642)
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
 p_id=>wwv_flow_api.id(56661458505843644)
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
 p_id=>wwv_flow_api.id(56662244918843644)
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
 p_id=>wwv_flow_api.id(56663433451843645)
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
 p_id=>wwv_flow_api.id(56664663729843646)
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
 p_id=>wwv_flow_api.id(56665010066843646)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56667056965843648)
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
 p_id=>wwv_flow_api.id(56670414462843650)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56670807537843650)
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
 p_id=>wwv_flow_api.id(56671664368843651)
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
 p_id=>wwv_flow_api.id(56673645438843652)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56674439684843652)
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
 p_id=>wwv_flow_api.id(56675759140843653)
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
 p_id=>wwv_flow_api.id(56676394168843654)
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
 p_id=>wwv_flow_api.id(56678232649843655)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56688319978843664)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56688734654843664)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56689575497843664)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56691644836843666)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56694794888843671)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56695165294843671)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56697167673843672)
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
 p_id=>wwv_flow_api.id(56698976289843674)
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
 p_id=>wwv_flow_api.id(56700720752843675)
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
 p_id=>wwv_flow_api.id(56701598599843675)
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
 p_id=>wwv_flow_api.id(56702931821843676)
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
 p_id=>wwv_flow_api.id(56704119224843677)
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
 p_id=>wwv_flow_api.id(56705563789843679)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56706196666843679)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56706572699843679)
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
 p_id=>wwv_flow_api.id(56708104793843680)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56713735036843684)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56715333262843689)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56716556902843690)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56717778519843692)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56719503285843693)
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
 p_id=>wwv_flow_api.id(56721504486843694)
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
 p_id=>wwv_flow_api.id(56722150001843695)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56723544773843696)
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
 p_id=>wwv_flow_api.id(56725782251843698)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56727933477843699)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56732326266843703)
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
 p_id=>wwv_flow_api.id(56732990383843704)
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
 p_id=>wwv_flow_api.id(56733993091843704)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56738171435843712)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56739168018843713)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56741603000843741)
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
 p_id=>wwv_flow_api.id(56742023038843741)
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
 p_id=>wwv_flow_api.id(56743602238843742)
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
 p_id=>wwv_flow_api.id(56744087817843742)
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
 p_id=>wwv_flow_api.id(56745631420843743)
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
 p_id=>wwv_flow_api.id(56746029078843743)
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
 p_id=>wwv_flow_api.id(56747653313843744)
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
 p_id=>wwv_flow_api.id(56748024505843744)
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
 p_id=>wwv_flow_api.id(56749621429843745)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56750014808843746)
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
 p_id=>wwv_flow_api.id(56750420774843746)
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
 p_id=>wwv_flow_api.id(56750895785843746)
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
 p_id=>wwv_flow_api.id(56751277371843746)
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
 p_id=>wwv_flow_api.id(56751697285843747)
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
 p_id=>wwv_flow_api.id(56752080591843747)
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
 p_id=>wwv_flow_api.id(56753491822843748)
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
 p_id=>wwv_flow_api.id(56754811362843748)
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
 p_id=>wwv_flow_api.id(56755850489843749)
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
 p_id=>wwv_flow_api.id(56756283544843749)
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
 p_id=>wwv_flow_api.id(56756647911843749)
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
 p_id=>wwv_flow_api.id(56757080561843749)
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
 p_id=>wwv_flow_api.id(56757694742843750)
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
 p_id=>wwv_flow_api.id(56758200981843750)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56758671273843750)
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
 p_id=>wwv_flow_api.id(56759044549843751)
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
 p_id=>wwv_flow_api.id(56759407071843751)
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
 p_id=>wwv_flow_api.id(56760231017843752)
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
 p_id=>wwv_flow_api.id(56625758722843621)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(56623086862843610)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56638878797843624)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(56625895649843622)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56640175748843625)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(56638975648843624)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56640306302843625)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(56638975648843624)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56642480083843626)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(56641282870843626)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56642631281843627)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(56641282870843626)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56645773498843629)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(56642709801843627)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56648267167843630)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(56645843262843629)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56651067108843632)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(56648372122843630)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56653504484843634)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(56651164644843632)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56654216014843638)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56654608405843639)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(56654455726843639)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56655091923843640)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(56654831090843640)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56655294323843640)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(56654831090843640)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56655660789843640)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(56655459975843640)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56656060558843640)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(56655877593843640)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56656216165843640)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(56654455726843639)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56656483777843640)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(56655459975843640)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56656649115843641)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(56654455726843639)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56656832155843641)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(56655459975843640)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56657043549843641)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(56654455726843639)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56657221904843641)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56653665391843634)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(56655877593843640)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56659431576843642)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56658364283843642)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56659883295843642)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(56658364283843642)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(56659677875843642)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56660064755843643)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(56658364283843642)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56660200477843643)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(56658364283843642)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(56659677875843642)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56660426520843643)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56658364283843642)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56661611290843644)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(56661458505843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56661844759843644)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(56661458505843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56662089277843644)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(56661458505843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56662474121843644)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56662637542843645)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56662880133843645)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56663066048843645)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(56661458505843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56663275312843645)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56663685711843645)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56663882632843646)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56664075892843646)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56664288223843646)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56664409702843646)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56664812220843646)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(56664663729843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56665215462843646)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(56665010066843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56665487959843647)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(56664663729843646)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56665695232843647)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56665873479843647)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56666062524843648)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56666234014843648)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(56665010066843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56666444599843648)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56666615997843648)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56666884270843648)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56667241687843648)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(56667056965843648)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56667423007843648)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(56667056965843648)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56667634290843648)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56660508988843643)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56668624611843649)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56668882833843649)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56669026394843649)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56669295154843650)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56669458502843650)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56669623860843650)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56669831410843650)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56670080198843650)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56670299369843650)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56670683205843650)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(56670414462843650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56671081396843650)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(56670807537843650)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56671252152843651)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(56670414462843650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56671482757843651)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(56665010066843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56671891349843651)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(56671664368843651)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56672021884843651)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56672242475843651)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56672489049843651)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56672683165843651)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56672862541843652)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(56665010066843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56673062201843652)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56667786334843648)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56673458715843652)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56673873500843652)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(56673645438843652)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56674013184843652)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(56673645438843652)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56674267884843652)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(56673645438843652)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56674674153843652)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(56674439684843652)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56674892072843653)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(56674439684843652)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56675063993843653)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56673193289843652)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56675906659843654)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56675167245843653)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(56675759140843653)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56676108905843654)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56675167245843653)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56676575662843654)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56675167245843653)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(56676394168843654)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56676725246843654)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56675167245843653)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(56676394168843654)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56676988644843654)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56675167245843653)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56677169000843654)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56675167245843653)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56677852095843655)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56678046278843655)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56678448256843655)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56678699760843655)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56678870698843655)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56679094229843655)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56679268834843656)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56679463096843656)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56677277192843654)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56679852885843656)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56679590484843656)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56680078874843656)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56679590484843656)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56681573423843657)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56681765164843657)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56681974786843657)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56682199235843657)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(56662244918843644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56682385150843657)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56682564660843657)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56682729606843657)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56682967346843658)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56683133084843658)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56683345956843658)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56683530122843658)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56683731158843658)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56683973483843659)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56684195723843659)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56684389296843659)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56684593512843659)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56684742904843659)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56684903918843659)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56685166406843659)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(56663433451843645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56685328134843660)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(56664663729843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56685509955843660)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(56665010066843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56685704076843660)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(56664663729843646)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56685998030843660)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56686103900843661)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56686339509843661)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56686500110843662)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(56665010066843646)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56686796896843662)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56686979296843662)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56687134715843662)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56687323134843663)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(56680630296843656)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(56659200535843642)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56688562213843664)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56687418145843663)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(56688319978843664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56688953866843664)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56687418145843663)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(56688734654843664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56689150333843664)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56687418145843663)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56689398441843664)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56687418145843663)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(56688734654843664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56689723177843664)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56687418145843663)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(56689575497843664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56689914360843664)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56687418145843663)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(56689575497843664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56690353001843665)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56690068974843665)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(56673645438843652)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56690547975843665)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56690068974843665)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56690770943843665)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56690068974843665)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(56673645438843652)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56690939010843665)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56690068974843665)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56691886333843666)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56691075586843665)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(56691644836843666)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56692091101843666)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56691075586843665)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(56691644836843666)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56692286636843666)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56691075586843665)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56692900755843667)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56693132983843667)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56693329268843667)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56693544008843667)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56693770330843667)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56693957829843667)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56694122683843667)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(56692342336843666)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(56678232649843655)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56694950250843671)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(56694794888843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56695358320843671)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56695517548843671)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(56694794888843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56695763149843672)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56695936477843672)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(56694794888843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56696123592843672)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56696325367843672)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56696515921843672)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(56694794888843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56696714831843672)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(56694794888843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56696972915843672)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56697372856843673)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56697588566843673)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56697744402843673)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56697992212843673)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56698134036843673)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56698328992843673)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56694421095843671)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56698750973843674)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56699111578843674)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(56698976289843674)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56699370055843674)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56699503936843674)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(56698976289843674)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56699750598843674)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56699920726843674)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(56698976289843674)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56700137020843674)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56700341874843674)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56700574756843675)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56700966898843675)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(56700720752843675)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56701177646843675)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(56700720752843675)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56701355502843675)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56701794997843675)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(56701598599843675)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56701988232843675)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(56701598599843675)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56702149451843676)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56702334317843676)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56702584703843676)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56702704074843676)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(56698976289843674)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56703178984843676)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(56702931821843676)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56703396330843676)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(56702931821843676)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56703571301843677)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56703774971843677)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56698430454843673)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56704309022843677)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56703839956843677)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(56704119224843677)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56704555858843677)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56703839956843677)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(56702931821843676)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56704794996843677)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56703839956843677)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(56702931821843676)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56704900429843677)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56703839956843677)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(56704119224843677)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56705750028843679)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(56705563789843679)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56705906964843679)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(56705563789843679)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56706343776843679)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(56706196666843679)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56706759388843679)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(56706572699843679)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56706905830843679)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(56706572699843679)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56707168841843680)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(56706572699843679)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56707333887843680)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(56706196666843679)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56707564648843680)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56707723235843680)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56705216907843678)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(56706572699843679)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56708361933843680)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56708533697843681)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56708708082843681)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56708942231843681)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56709176404843681)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56709397518843681)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56709585296843681)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56709725780843681)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56707888933843680)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56710170213843682)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56710335113843682)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56710529847843682)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56710716775843682)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56710999673843682)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56711160546843682)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56711312375843682)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56711533918843682)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56709843744843681)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(56708104793843680)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56711971431843683)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(56711677161843683)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(56697167673843672)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56712387718843683)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56712535213843683)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56712752301843683)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56712920804843684)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56713195173843684)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56713394591843684)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(56702931821843676)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56713574801843684)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(56702931821843676)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56713976795843684)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(56713735036843684)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56714189645843684)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56714336992843684)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56714575592843684)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56714719836843685)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56714900046843685)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(56712079660843683)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(56695165294843671)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56715544509843690)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56715769555843690)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56715905813843690)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56716137218843690)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56716394509843690)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56716787578843690)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56716949861843691)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56717185000843691)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56717382380843691)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56717538382843691)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56717929693843692)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(56717778519843692)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56718155336843692)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(56717778519843692)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56718372685843692)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(56717778519843692)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56718532429843692)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56718701299843692)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(56717778519843692)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56718914198843693)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(56715099353843685)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(56717778519843692)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56719396000843693)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56719726972843693)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(56719503285843693)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56719984029843694)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56720177932843694)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(56719503285843693)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56720385935843694)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56720567132843694)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(56719503285843693)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56720717005843694)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56720908340843694)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56721137239843694)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56721359802843694)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56721748717843695)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(56721504486843694)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56721934556843695)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56722385330843695)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(56722150001843695)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56722590536843695)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(56722150001843695)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56722766264843695)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56722961217843695)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56723166841843695)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56723316821843695)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(56719503285843693)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56723754720843696)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(56723544773843696)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56723918741843696)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(56723544773843696)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56724178779843696)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(56721504486843694)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56724318869843696)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56724552889843696)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56719000937843693)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56724993332843697)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56724676325843696)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56725184196843697)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56724676325843696)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56725382136843698)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56724676325843696)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56725585846843698)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56724676325843696)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56725959199843698)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56724676325843696)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(56725782251843698)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56726160719843698)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56724676325843696)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(56725782251843698)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56726565391843698)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56726731320843698)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56726957529843698)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56727132890843698)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56727349735843699)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56727518714843699)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(56723544773843696)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56727757833843699)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(56723544773843696)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56728189397843699)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(56727933477843699)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56728337168843699)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56728562010843699)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56728759561843699)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56728915067843699)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(56726246209843698)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56729303116843700)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56729091443843699)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56729547813843700)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56729091443843699)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56729788079843701)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56729091443843699)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56729924307843701)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56729091443843699)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56730329951843701)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56730045437843701)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56730703871843702)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(56722150001843695)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56730941423843702)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(56715333262843689)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56731185912843702)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(56722150001843695)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56731351755843702)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(56727933477843699)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56731577132843703)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56731715686843703)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56731933314843703)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(56730491151843701)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(56727933477843699)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56732590692843703)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56732062433843703)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(56732326266843703)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56732710175843703)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(56732062433843703)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(56732326266843703)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56733178616843704)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56732062433843703)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(56732990383843704)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56733396060843704)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56732062433843703)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(56732990383843704)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56733599796843704)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56732062433843703)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(56732990383843704)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56734125577843704)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56733659433843704)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(56733993091843704)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56734300588843705)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56733659433843704)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(56733993091843704)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56734579674843705)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56733659433843704)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(56733993091843704)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56734765365843705)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56733659433843704)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56734953273843705)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(56733659433843704)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56735385775843705)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(56735007646843705)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56735544347843705)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(56735007646843705)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56735751409843705)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(56735007646843705)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56735995335843706)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(56735007646843705)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56736535538843707)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56736239567843707)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56736786312843707)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(56736239567843707)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56736967515843708)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(56736239567843707)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56737196129843708)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(56736239567843707)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(56716556902843690)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56738318055843712)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(56737967851843711)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(56738171435843712)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56738505881843712)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(56737967851843711)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(56738171435843712)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56738942008843712)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56739379819843713)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(56739168018843713)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56739504366843713)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(56738171435843712)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56739776047843713)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(56739168018843713)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56739999288843713)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(56738171435843712)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56741889519843741)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(56741603000843741)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56742201191843742)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(56742023038843741)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56742456124843742)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(56741603000843741)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56742621406843742)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(56742023038843741)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56742811178843742)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(56741603000843741)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56743040164843742)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(56742023038843741)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56743220518843742)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(56741603000843741)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56743435918843742)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(56742023038843741)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56743862774843742)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(56743602238843742)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56744201106843743)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(56744087817843742)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56744483474843743)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(56743602238843742)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56744658058843743)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(56744087817843742)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56744800812843743)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(56743602238843742)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56745024802843743)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(56744087817843742)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56745239507843743)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(56743602238843742)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56745496034843743)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(56744087817843742)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56745842068843743)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(56745631420843743)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56746265280843743)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(56746029078843743)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56746417540843743)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(56745631420843743)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56746629820843744)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(56746029078843743)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56746855635843744)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(56745631420843743)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56747064204843744)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(56746029078843743)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56747239544843744)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(56745631420843743)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56747484390843744)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(56746029078843743)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56747896292843744)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(56747653313843744)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56748252631843745)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(56748024505843744)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56748422232843745)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(56747653313843744)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56748622181843745)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(56748024505843744)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56748872550843745)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(56747653313843744)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56749098122843745)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(56748024505843744)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56749294669843745)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(56747653313843744)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56749496040843745)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(56748024505843744)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56749854268843745)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(56749621429843745)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56750259580843746)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(56750014808843746)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56750691583843746)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(56750420774843746)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56751047325843746)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(56750895785843746)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56751496362843746)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(56751277371843746)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56751804803843747)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(56751697285843747)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56752268091843747)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(56752080591843747)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56752476038843747)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(56752080591843747)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56752671769843747)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(56750014808843746)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56752872571843747)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(56750420774843746)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56753051480843747)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(56750895785843746)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56753222636843747)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(56751277371843746)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56753680163843748)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(56753491822843748)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56753825082843748)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(56753491822843748)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56754075779843748)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(56753491822843748)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56754299386843748)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(56749621429843745)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56754436697843748)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(56752080591843747)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56754629447843748)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(56751697285843747)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56755082301843748)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(56754811362843748)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56755267412843748)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(56749621429843745)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56755471130843749)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(56751697285843747)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56755670659843749)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(56749621429843745)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56756074387843749)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(56755850489843749)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56756440713843749)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(56756283544843749)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56756885988843749)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(56756647911843749)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56757212936843750)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(56757080561843749)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56757429823843750)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(56757080561843749)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56757887165843750)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(56757694742843750)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56758001605843750)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(56756283544843749)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56758419080843750)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(56758200981843750)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56758830178843750)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(56758671273843750)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56759289427843751)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(56759044549843751)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56759638483843751)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(56759407071843751)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56759895519843751)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56760069162843751)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(56758200981843750)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56760433193843752)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(56760231017843752)
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
 p_id=>wwv_flow_api.id(56764157194843772)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(56621956951843603)
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
 p_id=>wwv_flow_api.id(56761143659843755)
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
,p_navigation_list_id=>wwv_flow_api.id(56622710985843609)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(56736239567843707)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(56760872381843753)
,p_nav_bar_list_template_id=>wwv_flow_api.id(56736076296843706)
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
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230213131608'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home page '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230213131609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56771937743843815)
,p_plug_name=>'Home page '
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(56675167245843653)
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
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'New_date-OSFA - Back Counselors'
,p_step_title=>'New_date-OSFA - Back Counselors'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153230'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(395652690614009503)
,p_plug_name=>'Back Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(395654252605009519)
,p_plug_name=>'Back counselor details'
,p_parent_plug_id=>wwv_flow_api.id(395652690614009503)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56816981911762075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(395652690614009503)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542162092650613)
,p_name=>'BC_CURRENT_HS_APPT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS / INC FR STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542211664650614)
,p_name=>'BC_CURRENT_HS_E_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS  / INC FR  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542892102650620)
,p_name=>'BC_INC_TRANSFER_E_IN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542907443650621)
,p_name=>'BC_INC_TRANSFER_E_OUT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543036041650622)
,p_name=>'BC_INC_GRAD_APPT_VET_MED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543130661650623)
,p_name=>'BC_INC_GRAD_E_IN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543295801650624)
,p_name=>'BC_INC_GRAD_E_OUT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543363100650625)
,p_name=>'BC_CURRENT_UG_E_IN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543461546650626)
,p_name=>'BC_CURRENT_UG_E_OUT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543536981650627)
,p_name=>'BC_GRAD_VET_MED_E_IN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543617073650628)
,p_name=>'BC_GRAD_VET_MED_E_OUT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543795586650629)
,p_name=>'BC_COMBO_OTHER_E_IN'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543888224650630)
,p_name=>'BC_COMBO_OTHER_E_OUT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543943863650631)
,p_name=>'BC_FORMER_STUDENT_E_IN'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS  EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56544058538650632)
,p_name=>'BC_FORMER_STUDENT_E_OUT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56817379806762075)
,p_name=>'BC_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56817760429762076)
,p_name=>'BC_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Counselor'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56838137813762077)
,p_name=>'BC_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56838562889762077)
,p_name=>'BC_ACD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56838960367762078)
,p_name=>'BC_CURRENT_HS_E_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS  / INC FR  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56839345806762078)
,p_name=>'BC_INC_TRANSFER_APPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56840532298762079)
,p_name=>'BC_EMAILS_IN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'OTHER EMAILS IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56841361274762079)
,p_name=>'BC_EMAILS_OUT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'OTHER EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56842187813762080)
,p_name=>'BC_EVALS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'EVALS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56842549605762080)
,p_name=>'BC_IN_PERSON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'IN PERSON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56843233032762082)
,p_name=>'BC_PROF_JUDG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'PROF JUDG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56843686094762082)
,p_name=>'BC_REPORTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56844483996762082)
,p_name=>'BC_CURRENT_UG_APPT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56844832220762083)
,p_name=>'BC_GRAD_VET_MED_APPT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56845220720762083)
,p_name=>'BC_COMBO_OTHER_APPT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>' COMBO / OTHER  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56845606733762083)
,p_name=>'BC_FORMER_STUDENT_APPT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS  APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56846045878762084)
,p_name=>'BC_MISC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381710843705634)
,p_name=>'BC_CURR_HS_FINAID_ANS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS  / INC FR FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381849157705635)
,p_name=>'BC_INC_TRANS_FIN_ANS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381961897705636)
,p_name=>'BC_INC_GRAD_FIN_ANS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382086249705637)
,p_name=>'BC_CURR_UG_FIN_ANS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382173628705638)
,p_name=>'BC_GRAD_VET_FIN_ANS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382261024705639)
,p_name=>'BC_COMBO_FIN_ANS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382388274705640)
,p_name=>'BC_FORMER_STU_FIN_ANS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS  FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56913446178068503)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BC_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO BACK_COUNS (ENTER_DATE,',
'                        BC_EMP_ID,COUNS_PHONE,',
'                        ACD,BC_CURRENT_HS_APPT,BC_CURRENT_HS_E_IN,BC_CURRENT_HS_E_OUT,',
'                        BC_INC_TRANSFER_APPT, BC_INC_TRANSFER_E_IN, BC_INC_TRANSFER_E_OUT,',
'                        BC_INC_GRAD_APPT, BC_INC_GRAD_E_IN, BC_INC_GRAD_E_OUT,',
'                        BC_CURRENT_UG_APPT, BC_CURRENT_UG_E_IN, BC_CURRENT_UG_E_OUT,',
'                        BC_GRAD_VET_MED_APPT,BC_GRAD_VET_MED_E_IN,BC_GRAD_VET_MED_E_OUT,',
'                        BC_COMBO_OTHER_APPT, BC_COMBO_OTHER_E_IN, BC_COMBO_OTHER_E_OUT,',
'                        BC_FORMER_STUDENT_APPT, BC_FORMER_STUDENT_E_IN,BC_FORMER_STUDENT_E_OUT,',
'                       BC_IN_PERSON, BC_EVALS, BC_EMAILS_IN, BC_EMAILS_OUT,BC_PROF_JUDG,',
'                       BC_REPORTS, BC_MISC, BC_CURR_HS_FIN_ANS,BC_INC_TRANS_FIN_ANS,BC_INC_GRAD_FIN_ANS,BC_CURR_UG_FIN_ANS,BC_CURR_GRAD_FIN_ANS ,BC_COMBO_FIN_ANS,BC_FOR_STU_FIN_ANS     )',
'VALUES (:BC_ENTER_DATE,',
'        :BC_EMP_ID,:BC_PHONES,',
'        :BC_ACD,:BC_CURRENT_HS_APPT,:BC_CURRENT_HS_E_IN,:BC_CURRENT_HS_E_OUT,',
'        :BC_INC_TRANSFER_APPT, :BC_INC_TRANSFER_E_IN, :BC_INC_TRANSFER_E_OUT,',
'        :BC_INC_GRAD_APPT_VET_MED, :BC_INC_GRAD_E_IN, :BC_INC_GRAD_E_OUT,',
'        :BC_CURRENT_UG_APPT, :BC_CURRENT_UG_E_IN, :BC_CURRENT_UG_E_OUT,',
'        :BC_GRAD_VET_MED_APPT,:BC_GRAD_VET_MED_E_IN,:BC_GRAD_VET_MED_E_OUT,',
'        :BC_COMBO_OTHER_APPT, :BC_COMBO_OTHER_E_IN, :BC_COMBO_OTHER_E_OUT,',
'        :BC_FORMER_STUDENT_APPT, :BC_FORMER_STUDENT_E_IN,:BC_FORMER_STUDENT_E_OUT,',
'       :BC_IN_PERSON,:BC_EVALS,:BC_EMAILS_IN,:BC_EMAILS_OUT,:BC_PROF_JUDG,',
'       :BC_REPORTS, :BC_MISC , :BC_CURR_HS_FINAID_ANS, :BC_INC_TRANS_FIN_ANS, :BC_INC_GRAD_FIN_ANS, :BC_CURR_UG_FIN_ANS, :BC_GRAD_VET_FIN_ANS, :BC_COMBO_FIN_ANS,:BC_FORMER_STU_FIN_ANS );',
'       ',
'       ',
'       ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully submitted'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'New_date-OSFA - Front Counselors'
,p_step_title=>'New_date-OSFA - Front Counselors'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153402'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(338836306848247430)
,p_plug_name=>'Front Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(338837868839247446)
,p_plug_name=>'Finaid Emails Answered'
,p_parent_plug_id=>wwv_flow_api.id(338836306848247430)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56819108312700714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(338836306848247430)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56819550712700715)
,p_name=>'ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56819920304700718)
,p_name=>'FC_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Counselor'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56820381760700718)
,p_name=>'COUNS_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'COUNS PHONE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56820731133700718)
,p_name=>'ACD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56821160161700719)
,p_name=>'IN_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'IN PERSON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56821591252700719)
,p_name=>'NOT_SIGNED_IN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'NOT SIGNED IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56821912379700719)
,p_name=>'MY_EMAIL_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56822374874700720)
,p_name=>'MY_EMAIL_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56822737928700720)
,p_name=>'CERT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'CERT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56823159172700720)
,p_name=>'STL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'STL''s'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56823574061700721)
,p_name=>'REPORTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56823954441700721)
,p_name=>'MISC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56824380611700721)
,p_name=>'EVALS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'EVALS '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56824773058700722)
,p_name=>'PROF_JUDG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'PROF JUDG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56825414407700723)
,p_name=>'CURRENT_HS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'CURR HS / INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56825865067700723)
,p_name=>'INC_TRANSFER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56826297845700723)
,p_name=>'INCOMING_GRAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'INC GRAD / VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56826662900700724)
,p_name=>'CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56827026070700724)
,p_name=>'GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'CURR GRAD / VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56827484882700724)
,p_name=>'COMBO_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56827854081700725)
,p_name=>'FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'FORMER STUDENT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56828240549700725)
,p_name=>'ROUTED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_default=>'0'
,p_prompt=>'FINAID EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56913705916068506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO FRONTCOUNS (ENTER_DATE,',
'                        FC_EMP_ID,COUNS_PHONE,',
'                        ACD,IN_PERSON,NOT_SIGNED_IN,EMAILIN,EMAILOUT,CERT,STL,REPORTS,',
'                       MISC,EVALS, PJ, CURR_HS, INC_TRANSFER,INC_GRAD, CURR_UG, MED, COMBO, FOR_STU, ROUTED)',
'VALUES (:ENTER_DATE,',
'        :FC_EMP_ID,:COUNS_PHONE,',
'        :ACD,:IN_PERSON,:NOT_SIGNED_IN,:MY_EMAIL_IN, :MY_EMAIL_OUT, :CERT,:STL,:REPORTS,',
'         :MISC,:EVALS, :PROF_JUDG, :CURRENT_HS, :INC_TRANSFER,:INCOMING_GRAD, :CURRENT_UG, :GRAD_VET_MED,',
'         :COMBO_OTHER, :FORMER_STUDENT,:ROUTED );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Sucessfully submitted '
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'2023-OSFA STATS'
,p_step_title=>'2023-OSFA STATS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230615093209'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225358370261417015)
,p_plug_name=>'Client Services Front Conunslers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225358763000417019)
,p_plug_name=>'Records Management'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225359244356417023)
,p_plug_name=>'Client Services_Back Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225519635521417027)
,p_plug_name=>'Classification Total_client Services'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56790303893651652)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(225358370261417015)
,p_button_name=>'Goto_FC_New_date'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto New Date'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56792254657651653)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(225359244356417023)
,p_button_name=>'Goto_BC_Newdate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto New Date'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56788492726651650)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_Specific_date_Loans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto Specific Date Loans'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71484060759251206)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_Specific_date_Scholarships'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_image_alt=>'Goto Specific Date Scholarships'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58488130885158021)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_SpecificDate_DateEntry'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto Specific Date Date Entry'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56792995874651654)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(225519635521417027)
,p_button_name=>'Class_Total'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Class Total'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56789297775651651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Summary_Stats_Loan_Scholarship'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Summary Stats Loan Scholarship'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58488204825158022)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Summary_Stats_DataEntry'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Summary Stats Data Entry'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56793338231651654)
,p_button_sequence=>10
,p_button_name=>'Quit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Quit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56790756801651652)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(225358370261417015)
,p_button_name=>'FC_Summary_Stats'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Summary Stats'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56791817167651653)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(225359244356417023)
,p_button_name=>'BC_Summary_Stats'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Summary Stats'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56789936415651651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(225358370261417015)
,p_button_name=>'Goto_FC_Specific_date'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto Specific Date'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56791487227651653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(225359244356417023)
,p_button_name=>'Goto_BC_Specific_date'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto Specific Date'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66649609687304445)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_New_DataEntry_fileroom'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_image_alt=>'Goto New Data Entry File room'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56788870466651651)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_New_Loans'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto New Loans'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66649767392304446)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_New_Scholarships'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_image_alt=>'Goto New Scholarships'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66649873185304447)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_New_Acd_Fin'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_image_alt=>'Goto New Acd Fin'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57564545943556826)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(225358763000417019)
,p_button_name=>'Goto_NewData_Entry_Staff'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Goto New Data Entry Staff'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP::'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Maintain_Employee_details '
,p_step_title=>'Maintain_Employee_details '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803151714'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56544188418650633)
,p_plug_name=>'Activate/Deactivate Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56545281932650644)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(56544188418650633)
,p_button_name=>'ADD-EMP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ADD-EMPLOYEE'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56545581717650647)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(56544188418650633)
,p_button_name=>'Update_EMP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Employee'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56544361701650635)
,p_name=>'EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'Emp Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56544587013650637)
,p_name=>'EMP_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'Emp First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56544935447650641)
,p_name=>'EMP_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'Emp Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56545060034650642)
,p_name=>'FROM_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56545112348650643)
,p_name=>'TO_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56545405122650646)
,p_name=>'ACTIVE_EMPLOYEE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'Active Employee'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Activate_Employee;1,DeActivate_Employee;0'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73664727700955042)
,p_name=>'EMP_CAMPUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'Emp Campus'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Stillwater;STW,Tulsa;TUL'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766254390101405)
,p_name=>'EMP_DEPT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(56544188418650633)
,p_prompt=>'EMP DEPT'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Counselor;Counselor,Data Entry;Data Entry,Fiscal Ops;Fiscal Ops,Loans;Loans,Scholarships;Scholarships,Admin;Admin'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56545802933650650)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO EMP_DETAILS (EMP_ID, EMP_FIRST_NAME,EMP_LAST_NAME,FROM_DATE,TO_DATE,ACTIVATE_FLAG,EMP_CAMPUS, EMP_DEPT) ',
'VALUES (:EMP_ID,:EMP_FIRST_NAME,:EMP_LAST_NAME,:FROM_DATE,:TO_DATE,:ACTIVE_EMPLOYEE,:EMP_CAMPUS , :EMP_DEPT);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56545281932650644)
,p_process_success_message=>'sUCESSFULLY INSERTED '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56913232159068501)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE EMP_DETAILS ',
'SET TO_DATE = :TO_DATE,',
'    ACTIVATE_FLAG = :ACTIVE_EMPLOYEE',
'WHERE EMP_ID = :EMP_ID ;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56545581717650647)
,p_process_success_message=>'SUCESSFULLY UPDATED '
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'BC_Goto_specific_date'
,p_step_title=>'BC_Goto_specific_date'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230628102104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57066079433688226)
,p_plug_name=>'Back Counsleor Specific Date_details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57066198313688227)
,p_plug_name=>'BC_SpecificDate_Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ',
'ENTER_DATE as BC_Date ,	BC_EMP_ID as BC_Emp_Name,	COUNS_PHONE as BC_Couns_Phone ,	ACD	 as BC_ACD, ',
'BC_CURRENT_HS_APPT as BC_Curr_HS_Inc_FR_Appt ,  BC_CURRENT_HS_E_IN as BC_Curr_HS_Inc_FR_EmailsIn ,	BC_CURRENT_HS_E_OUT as BC_Curr_HS_Inc_FR_EmailsOut,	BC_CURR_HS_FIN_ANS as BC_Curr_Hs_Fin_Ans,',
'BC_INC_TRANSFER_APPT as BC_Inc_UG_TR_Appt,	BC_INC_TRANSFER_E_IN as BC_Inc_UG_TR_EmailsIn ,	BC_INC_TRANSFER_E_OUT as BC_Inc_UG_TR_EmailsOut,	BC_INC_TRANS_FIN_ANS as BC_Inc_Trans_Fin_Ans,	',
'BC_INC_GRAD_APPT as BC_Inc_GR_Vet_Med_Appt,	BC_INC_GRAD_E_IN as BC_Inc_GR_Vet_Med_EmailsIn,	BC_INC_GRAD_E_OUT as BC_Inc_GR_Vet_Med_EmailsOut,	BC_INC_GRAD_FIN_ANS	 as BC_Inc_Grad_Fin_Ans,',
'BC_CURRENT_UG_APPT as BC_Curr_UG_Appt,	BC_CURRENT_UG_E_IN as BC_Curr_UG_EmailsIn,	BC_CURRENT_UG_E_OUT as BC_Curr_UG_EmailsOut,	 BC_CURR_UG_FIN_ANS as BC_Curr_Ug_Fin_Ans,',
'BC_GRAD_VET_MED_APPT as BC_Curr_GR_Vet_Med_Appt,	BC_GRAD_VET_MED_E_IN as BC_Curr_GR_Vet_Med_EmailsIn,	BC_GRAD_VET_MED_E_OUT as BC_Curr_GR_Vet_Med_EmailsOut ,	BC_CURR_GRAD_FIN_ANS as BC_Curr_Grad_Fin_Ans ,',
'BC_COMBO_OTHER_APPT	 as BC_Combo_Other_Appt,  BC_COMBO_OTHER_E_IN	as BC_Combo_Other_EmailsIn, BC_COMBO_OTHER_E_OUT as BC_Combo_Other_EmailsOut,	BC_COMBO_FIN_ANS as BC_Combo_Fin_Ans,',
'BC_FORMER_STUDENT_APPT as BC_FS_Appt,	BC_FORMER_STUDENT_E_IN as BC_FS_EmailsIn,	BC_FORMER_STUDENT_E_OUT as BC_FS_EmailsOut,	 BC_FOR_STU_FIN_ANS as BC_FS_Fin_Ans,',
'BC_IN_PERSON as BC_In_Person,	BC_EVALS as BC_Evals,	BC_EMAILS_IN as BC_EmailsIn,	BC_EMAILS_OUT as BC_EmailsOut,	BC_PROF_JUDG as BC_Prof_Judg,	BC_REPORTS as BC_Reports,	BC_MISC	as BC_Misc',
'From Back_couns where ENTER_DATE= :BC_ENTERDATE ;'))
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
 p_id=>wwv_flow_api.id(57066274904688228)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>57066274904688228
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73912558718449307)
,p_db_column_name=>'BC_DATE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915273032449334)
,p_db_column_name=>'BC_EMP_NAME'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915390016449335)
,p_db_column_name=>'BC_COUNS_PHONE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Couns Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915476333449336)
,p_db_column_name=>'BC_ACD'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915571568449337)
,p_db_column_name=>'BC_CURR_HS_INC_FR_APPT'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Curr Hs / Inc FR  STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915684665449338)
,p_db_column_name=>'BC_CURR_HS_INC_FR_EMAILSIN'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Curr Hs / Inc FR  STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915706786449339)
,p_db_column_name=>'BC_CURR_HS_INC_FR_EMAILSOUT'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Curr Hs / Inc FR  STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915880184449340)
,p_db_column_name=>'BC_CURR_HS_FIN_ANS'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Curr Hs Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73915981500449341)
,p_db_column_name=>'BC_INC_UG_TR_APPT'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Inc UG TR  STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916006017449342)
,p_db_column_name=>'BC_INC_UG_TR_EMAILSIN'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Inc UG TR  STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916131781449343)
,p_db_column_name=>'BC_INC_UG_TR_EMAILSOUT'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Inc UG TR  STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916245644449344)
,p_db_column_name=>'BC_INC_TRANS_FIN_ANS'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Inc Trans Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916310450449345)
,p_db_column_name=>'BC_INC_GR_VET_MED_APPT'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Inc GR / Vet Med  STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916435198449346)
,p_db_column_name=>'BC_INC_GR_VET_MED_EMAILSIN'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Inc GR / Vet Med  STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916570639449347)
,p_db_column_name=>'BC_INC_GR_VET_MED_EMAILSOUT'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Inc GR / Vet Med  STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916630054449348)
,p_db_column_name=>'BC_INC_GRAD_FIN_ANS'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Inc Grad Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916774026449349)
,p_db_column_name=>'BC_CURR_UG_APPT'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Curr UG  STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73916871943449350)
,p_db_column_name=>'BC_CURR_UG_EMAILSIN'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Curr UG  STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74008444999645701)
,p_db_column_name=>'BC_CURR_UG_EMAILSOUT'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Curr UG  STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74008500559645702)
,p_db_column_name=>'BC_CURR_UG_FIN_ANS'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Curr UG Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74008681857645703)
,p_db_column_name=>'BC_CURR_GR_VET_MED_APPT'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Curr GR / Vet Med  STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74008724345645704)
,p_db_column_name=>'BC_CURR_GR_VET_MED_EMAILSIN'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Curr GR / Vet Med  STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74008800368645705)
,p_db_column_name=>'BC_CURR_GR_VET_MED_EMAILSOUT'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Curr GR / Vet Med  STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74008909991645706)
,p_db_column_name=>'BC_CURR_GRAD_FIN_ANS'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Curr Grad Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009002689645707)
,p_db_column_name=>'BC_COMBO_OTHER_APPT'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Combo / Other  STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009117548645708)
,p_db_column_name=>'BC_COMBO_OTHER_EMAILSIN'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Combo / Other  STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009275781645709)
,p_db_column_name=>'BC_COMBO_OTHER_EMAILSOUT'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Combo / Other  STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009373648645710)
,p_db_column_name=>'BC_COMBO_FIN_ANS'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Combo Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009475540645711)
,p_db_column_name=>'BC_FS_APPT'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'FS Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009515855645712)
,p_db_column_name=>'BC_FS_EMAILSIN'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'FS Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009635639645713)
,p_db_column_name=>'BC_FS_EMAILSOUT'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'FS Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009791935645714)
,p_db_column_name=>'BC_FS_FIN_ANS'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'FS Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009835634645715)
,p_db_column_name=>'BC_IN_PERSON'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74009995178645716)
,p_db_column_name=>'BC_EVALS'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74010005636645717)
,p_db_column_name=>'BC_EMAILSIN'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74010177517645718)
,p_db_column_name=>'BC_EMAILSOUT'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74010238726645719)
,p_db_column_name=>'BC_PROF_JUDG'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74010373067645720)
,p_db_column_name=>'BC_REPORTS'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74010479739645721)
,p_db_column_name=>'BC_MISC'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57132208641589984)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'571323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BC_DATE:BC_EMP_NAME:BC_COUNS_PHONE:BC_ACD:BC_CURR_HS_INC_FR_APPT:BC_CURR_HS_INC_FR_EMAILSIN:BC_CURR_HS_INC_FR_EMAILSOUT:BC_CURR_HS_FIN_ANS:BC_INC_UG_TR_APPT:BC_INC_UG_TR_EMAILSIN:BC_INC_UG_TR_EMAILSOUT:BC_INC_TRANS_FIN_ANS:BC_INC_GR_VET_MED_APPT:BC_I'
||'NC_GR_VET_MED_EMAILSIN:BC_INC_GR_VET_MED_EMAILSOUT:BC_INC_GRAD_FIN_ANS:BC_CURR_UG_APPT:BC_CURR_UG_EMAILSIN:BC_CURR_UG_EMAILSOUT:BC_CURR_UG_FIN_ANS:BC_CURR_GR_VET_MED_APPT:BC_CURR_GR_VET_MED_EMAILSIN:BC_CURR_GR_VET_MED_EMAILSOUT:BC_CURR_GRAD_FIN_ANS:B'
||'C_COMBO_OTHER_APPT:BC_COMBO_OTHER_EMAILSIN:BC_COMBO_OTHER_EMAILSOUT:BC_COMBO_FIN_ANS:BC_FS_APPT:BC_FS_EMAILSIN:BC_FS_EMAILSOUT:BC_FS_FIN_ANS:BC_IN_PERSON:BC_EVALS:BC_EMAILSIN:BC_EMAILSOUT:BC_PROF_JUDG:BC_REPORTS:BC_MISC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57119755485314912)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(57066079433688226)
,p_button_name=>'BC_Fetch_Details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BC Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>5
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57119636418314911)
,p_name=>'BC_ENTERDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57066079433688226)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
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
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'FC Goto Sepcific date '
,p_step_title=>'FC Goto Sepcific date '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230628100110'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56915561374068524)
,p_plug_name=>'Front Counselor Specific date Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56948569482911374)
,p_plug_name=>'FC Sepcific date Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ENTER_DATE as FC_EnterDATE,FC_EMP_ID as FC_Name, COUNS_PHONE as FC_Phones,ACD as FC_ACD, IN_PERSON as FC_InPerson,',
'NOT_SIGNED_IN as FC_NotSIgnedIn, EMAILIN as FC_EmailIn ,EMAILOUT as FC_EmailOut,	',
'CERT as FC_CERT, STL as FC_STL, REPORTS as FC_Reports, MISC as FC_Misc,EVALS as FC_Evals,	PJ as FC_PJ,	',
'CURR_HS as FC_CurrentHS, INC_TRANSFER as FC_IncTransfer, INC_GRAD as FC_IncGrad, CURR_UG as FC_CurrUg, MED as FC_Med,COMBO as FC_Combo,',
'FOR_STU as FC_STU, CURR_HS+ INC_TRANSFER+ INC_GRAD+ CURR_UG +MED+ COMBO+	FOR_STU as FinAid_Emails_Answered,	',
'ROUTED as FC_Routed from frontcouns where ENTER_DATE = :FC_DATE ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(56948699542911374)
,p_name=>'FC Goto Sepcific date '
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>56948699542911374
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57032742993237822)
,p_db_column_name=>'FC_ENTERDATE'
,p_display_order=>10
,p_column_identifier=>'BP'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57032831896237823)
,p_db_column_name=>'FC_NAME'
,p_display_order=>20
,p_column_identifier=>'BQ'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57032960256237824)
,p_db_column_name=>'FC_PHONES'
,p_display_order=>30
,p_column_identifier=>'BR'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033090922237825)
,p_db_column_name=>'FC_ACD'
,p_display_order=>40
,p_column_identifier=>'BS'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033166283237826)
,p_db_column_name=>'FC_INPERSON'
,p_display_order=>50
,p_column_identifier=>'BT'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033243479237827)
,p_db_column_name=>'FC_NOTSIGNEDIN'
,p_display_order=>60
,p_column_identifier=>'BU'
,p_column_label=>'Not Signed In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033377032237828)
,p_db_column_name=>'FC_EMAILIN'
,p_display_order=>70
,p_column_identifier=>'BV'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033423359237829)
,p_db_column_name=>'FC_EMAILOUT'
,p_display_order=>80
,p_column_identifier=>'BW'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033555468237830)
,p_db_column_name=>'FC_CERT'
,p_display_order=>90
,p_column_identifier=>'BX'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033600587237831)
,p_db_column_name=>'FC_STL'
,p_display_order=>100
,p_column_identifier=>'BY'
,p_column_label=>'STL''s'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033717327237832)
,p_db_column_name=>'FC_REPORTS'
,p_display_order=>110
,p_column_identifier=>'BZ'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033873970237833)
,p_db_column_name=>'FC_MISC'
,p_display_order=>120
,p_column_identifier=>'CA'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57033924360237834)
,p_db_column_name=>'FC_EVALS'
,p_display_order=>130
,p_column_identifier=>'CB'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034087266237835)
,p_db_column_name=>'FC_PJ'
,p_display_order=>140
,p_column_identifier=>'CC'
,p_column_label=>'PJ'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034101733237836)
,p_db_column_name=>'FC_CURRENTHS'
,p_display_order=>150
,p_column_identifier=>'CD'
,p_column_label=>'Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034247924237837)
,p_db_column_name=>'FC_INCTRANSFER'
,p_display_order=>160
,p_column_identifier=>'CE'
,p_column_label=>'Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034322731237838)
,p_db_column_name=>'FC_INCGRAD'
,p_display_order=>170
,p_column_identifier=>'CF'
,p_column_label=>'Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034456095237839)
,p_db_column_name=>'FC_CURRUG'
,p_display_order=>180
,p_column_identifier=>'CG'
,p_column_label=>'Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034569099237840)
,p_db_column_name=>'FC_MED'
,p_display_order=>190
,p_column_identifier=>'CH'
,p_column_label=>'Curr GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034600260237841)
,p_db_column_name=>'FC_COMBO'
,p_display_order=>200
,p_column_identifier=>'CI'
,p_column_label=>'Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034764378237842)
,p_db_column_name=>'FC_STU'
,p_display_order=>210
,p_column_identifier=>'CJ'
,p_column_label=>'FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034877494237843)
,p_db_column_name=>'FC_ROUTED'
,p_display_order=>220
,p_column_identifier=>'CK'
,p_column_label=>'Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57034923323237844)
,p_db_column_name=>'FINAID_EMAILS_ANSWERED'
,p_display_order=>230
,p_column_identifier=>'CL'
,p_column_label=>'Total Finaid Emails Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(56938497548651928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'569385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FC_FC_FC_FC_FC_FC_FC_FC_FC_FC_FC_FC_ENTER_DATE:FC_ENTERDATE:FC_NAME:FC_PHONES:FC_ACD:FC_INPERSON:FC_NOTSIGNEDIN:FC_EMAILIN:FC_EMAILOUT:FC_CERT:FC_STL:FC_REPORTS:FC_MISC:FC_EVALS:FC_PJ:FC_CURRENTHS:FC_INCTRANSFER:FC_INCGRAD:FC_CURRUG:FC_MED:FC_COMBO:F'
||'C_STU:FC_ROUTED:FINAID_EMAILS_ANSWERED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56915710373068526)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(56915561374068524)
,p_button_name=>'FC_Fetch_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'FC FETCH DATA'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>5
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56915678890068525)
,p_name=>'FC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56915561374068524)
,p_prompt=>'FC DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
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
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'BC_Summary_Stats'
,p_step_title=>'BC_Summary_Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230628102839'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57119813105314913)
,p_plug_name=>'BC Summary Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57119958916314914)
,p_plug_name=>'BC_Summary_stats'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select BC_EMP_ID as BC_NAME, ',
'sum(COUNS_PHONE) as BC_Phones, sum(ACD) as BC_ACD , ',
'sum(BC_CURRENT_HS_APPT) as CURR_HS_APPT, sum(BC_CURRENT_HS_E_IN) as CURR_HS_E_IN, sum(BC_CURRENT_HS_E_OUT) as CURR_HS_E_OUT,	sum(BC_CURR_HS_FIN_ANS) as Curr_Hs_Fin_Ans,',
'sum(BC_INC_TRANSFER_APPT) as INC_TRANS_APPT,sum(BC_INC_TRANSFER_E_IN) as INC_TRANS_E_IN, sum(BC_INC_TRANSFER_E_OUT) as INC_TRANS_E_OUT, sum(BC_INC_TRANS_FIN_ANS) as Inc_Trans_Fin_Ans,',
'sum(BC_INC_GRAD_APPT) as INC_GRAD_APPT, sum(BC_INC_GRAD_E_IN) as INC_GRAD_E_IN,sum(BC_INC_GRAD_E_OUT) as INC_GRAD_E_OUT, sum(BC_INC_GRAD_FIN_ANS)	 as Inc_Grad_Fin_Ans,',
'sum(BC_CURRENT_UG_APPT) as CURR_UG_APPT	,sum(BC_CURRENT_UG_E_IN) as CURR_UG_E_IN,sum(BC_CURRENT_UG_E_OUT) as CURR_UG_E_OUT, sum(BC_CURR_UG_FIN_ANS) as Curr_Ug_Fin_Ans,',
'sum(BC_GRAD_VET_MED_APPT) as GRAD_VET_MED_APPT, sum(BC_GRAD_VET_MED_E_IN) as GRAD_VET_MED_E_IN ,sum(BC_GRAD_VET_MED_E_OUT) as GRAD_VET_MED_E_OUT, sum(BC_CURR_GRAD_FIN_ANS) as Curr_Grad_Fin_Ans ,',
'sum(BC_COMBO_OTHER_APPT) as COM_OTH_APPT	, sum(BC_COMBO_OTHER_E_IN) as COM_OTH_E_IN, sum(BC_COMBO_OTHER_E_OUT) as COM_OTH_E_OUT , sum(BC_COMBO_FIN_ANS) as Combo_Fin_Ans,',
'sum(BC_FORMER_STUDENT_APPT) as FOR_STU_APPT , sum(BC_FORMER_STUDENT_E_IN) as FOR_STU_E_IN, sum(BC_FORMER_STUDENT_E_OUT) as FOR_STU_E_OUT ,	sum(BC_FOR_STU_FIN_ANS) as FS_Fin_Ans,',
'',
'sum(BC_IN_PERSON) as BC_IN_PERSON , sum(BC_EVALS) as BC_EVALS , sum(BC_EMAILS_IN) as BC_EMAILS_IN,	',
'sum(BC_EMAILS_OUT) as BC_EMAILS_OUT, sum(BC_PROF_JUDG) as BC_PROF_JUDG, sum(BC_REPORTS) as BC_REPORTS,	',
'sum(BC_MISC) as BC_MISC ,  ',
'',
'sum(BC_CURR_HS_FIN_ANS) + sum(BC_INC_TRANS_FIN_ANS) + sum(BC_INC_GRAD_FIN_ANS) + sum(BC_CURR_UG_FIN_ANS) + ',
'sum(BC_CURR_GRAD_FIN_ANS) + sum(BC_COMBO_FIN_ANS) +  sum(BC_FOR_STU_FIN_ANS) as Total_Fin_Ans ,',
'',
'',
'sum(BC_CURRENT_HS_APPT) + sum(BC_INC_TRANSFER_APPT) + sum(BC_INC_GRAD_APPT) + sum(BC_CURRENT_UG_APPT) +',
'sum(BC_GRAD_VET_MED_APPT) + sum(BC_COMBO_OTHER_APPT) + sum(BC_FORMER_STUDENT_APPT)   as Total_Stu_Appointments , ',
'',
'sum(BC_CURRENT_HS_E_IN)+ sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_GRAD_E_IN) + sum(BC_CURRENT_UG_E_IN) + sum(BC_GRAD_VET_MED_E_IN) + ',
'sum(BC_COMBO_OTHER_E_IN) + sum(BC_FORMER_STUDENT_E_IN) as Total_Stu_Emailsin,',
'',
'sum(BC_CURRENT_HS_E_OUT) + sum(BC_INC_TRANSFER_E_OUT) + sum(BC_INC_GRAD_E_OUT) + sum(BC_CURRENT_UG_E_OUT) + sum(BC_GRAD_VET_MED_E_OUT) +',
'sum(BC_COMBO_OTHER_E_OUT)+ sum(BC_FORMER_STUDENT_E_OUT) as Total_Stu_EmailsOut',
'',
'From back_couns where Enter_date>= :BC_DATE1 and Enter_date <= :BC_DATE2 group by BC_EMP_ID;',
'',
'',
'',
'		',
'	'))
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
 p_id=>wwv_flow_api.id(57120088238314915)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>57120088238314915
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59013939207302026)
,p_db_column_name=>'BC_NAME'
,p_display_order=>10
,p_column_identifier=>'JN'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59014063492302027)
,p_db_column_name=>'BC_PHONES'
,p_display_order=>20
,p_column_identifier=>'JO'
,p_column_label=>'Couns Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59014145391302028)
,p_db_column_name=>'BC_ACD'
,p_display_order=>30
,p_column_identifier=>'JP'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74012672321645743)
,p_db_column_name=>'CURR_HS_APPT'
,p_display_order=>40
,p_column_identifier=>'JQ'
,p_column_label=>'Curr HS / Inc FR STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74012797612645744)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>50
,p_column_identifier=>'JR'
,p_column_label=>'Curr HS / Inc FR STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74012815625645745)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>60
,p_column_identifier=>'JS'
,p_column_label=>'Curr HS / Inc FR STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74012981163645746)
,p_db_column_name=>'CURR_HS_FIN_ANS'
,p_display_order=>70
,p_column_identifier=>'JT'
,p_column_label=>'Curr HS / Inc FR Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74013018452645747)
,p_db_column_name=>'INC_TRANS_APPT'
,p_display_order=>80
,p_column_identifier=>'JU'
,p_column_label=>'Inc UG TR STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74013168597645748)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>90
,p_column_identifier=>'JV'
,p_column_label=>'Inc UG TR STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74013289373645749)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>100
,p_column_identifier=>'JW'
,p_column_label=>'Inc UG TR STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74013328113645750)
,p_db_column_name=>'INC_TRANS_FIN_ANS'
,p_display_order=>110
,p_column_identifier=>'JX'
,p_column_label=>'Inc UG TR Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098066864516801)
,p_db_column_name=>'INC_GRAD_APPT'
,p_display_order=>120
,p_column_identifier=>'JY'
,p_column_label=>'Inc GR / Vet Med STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098173336516802)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>130
,p_column_identifier=>'JZ'
,p_column_label=>'Inc GR / Vet Med STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098265709516803)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>140
,p_column_identifier=>'KA'
,p_column_label=>'Inc GR / Vet Med STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098307458516804)
,p_db_column_name=>'INC_GRAD_FIN_ANS'
,p_display_order=>150
,p_column_identifier=>'KB'
,p_column_label=>'Inc GR / Vet Med Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098467767516805)
,p_db_column_name=>'CURR_UG_APPT'
,p_display_order=>160
,p_column_identifier=>'KC'
,p_column_label=>'Curr UG STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098522158516806)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>170
,p_column_identifier=>'KD'
,p_column_label=>'Curr UG STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098613115516807)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>180
,p_column_identifier=>'KE'
,p_column_label=>'Curr UG STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098710414516808)
,p_db_column_name=>'CURR_UG_FIN_ANS'
,p_display_order=>190
,p_column_identifier=>'KF'
,p_column_label=>'Curr UG Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098828222516809)
,p_db_column_name=>'GRAD_VET_MED_APPT'
,p_display_order=>200
,p_column_identifier=>'KG'
,p_column_label=>'Curr GR / Vet Med STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74098933466516810)
,p_db_column_name=>'GRAD_VET_MED_E_IN'
,p_display_order=>210
,p_column_identifier=>'KH'
,p_column_label=>'Curr GR / Vet Med STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099014130516811)
,p_db_column_name=>'GRAD_VET_MED_E_OUT'
,p_display_order=>220
,p_column_identifier=>'KI'
,p_column_label=>'Curr GR / Vet Med STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099155025516812)
,p_db_column_name=>'CURR_GRAD_FIN_ANS'
,p_display_order=>230
,p_column_identifier=>'KJ'
,p_column_label=>'Curr GR / Vet Med Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099221983516813)
,p_db_column_name=>'COM_OTH_APPT'
,p_display_order=>240
,p_column_identifier=>'KK'
,p_column_label=>'Combo / Other STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099346077516814)
,p_db_column_name=>'COM_OTH_E_IN'
,p_display_order=>250
,p_column_identifier=>'KL'
,p_column_label=>'Combo / Other STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099495895516815)
,p_db_column_name=>'COM_OTH_E_OUT'
,p_display_order=>260
,p_column_identifier=>'KM'
,p_column_label=>'Combo / Other STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099565317516816)
,p_db_column_name=>'COMBO_FIN_ANS'
,p_display_order=>270
,p_column_identifier=>'KN'
,p_column_label=>'Combo / Other Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099642548516817)
,p_db_column_name=>'FOR_STU_APPT'
,p_display_order=>280
,p_column_identifier=>'KO'
,p_column_label=>'FS Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099722818516818)
,p_db_column_name=>'FOR_STU_E_IN'
,p_display_order=>290
,p_column_identifier=>'KP'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099880879516819)
,p_db_column_name=>'FOR_STU_E_OUT'
,p_display_order=>300
,p_column_identifier=>'KQ'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74099936814516820)
,p_db_column_name=>'FS_FIN_ANS'
,p_display_order=>310
,p_column_identifier=>'KR'
,p_column_label=>'FS Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100045387516821)
,p_db_column_name=>'BC_IN_PERSON'
,p_display_order=>320
,p_column_identifier=>'KS'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100152040516822)
,p_db_column_name=>'BC_EVALS'
,p_display_order=>330
,p_column_identifier=>'KT'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100224053516823)
,p_db_column_name=>'BC_EMAILS_IN'
,p_display_order=>340
,p_column_identifier=>'KU'
,p_column_label=>'Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100314415516824)
,p_db_column_name=>'BC_EMAILS_OUT'
,p_display_order=>350
,p_column_identifier=>'KV'
,p_column_label=>'Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100453653516825)
,p_db_column_name=>'BC_PROF_JUDG'
,p_display_order=>360
,p_column_identifier=>'KW'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100572019516826)
,p_db_column_name=>'BC_REPORTS'
,p_display_order=>370
,p_column_identifier=>'KX'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74100698006516827)
,p_db_column_name=>'BC_MISC'
,p_display_order=>380
,p_column_identifier=>'KY'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74981971359135607)
,p_db_column_name=>'TOTAL_FIN_ANS'
,p_display_order=>420
,p_column_identifier=>'LC'
,p_column_label=>'Total Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982023581135608)
,p_db_column_name=>'TOTAL_STU_APPOINTMENTS'
,p_display_order=>430
,p_column_identifier=>'LD'
,p_column_label=>'Total STU Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982124854135609)
,p_db_column_name=>'TOTAL_STU_EMAILSIN'
,p_display_order=>440
,p_column_identifier=>'LE'
,p_column_label=>'Total STU Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982269051135610)
,p_db_column_name=>'TOTAL_STU_EMAILSOUT'
,p_display_order=>450
,p_column_identifier=>'LF'
,p_column_label=>'Total STU Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57124561825381706)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'571246'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_FINAID_EMAILSOUT1:BC_BC_BC_BC_BC_BC_BC_ENTER_DATE:BC_NAME:BC_PHONES:BC_ACD:CURR_HS_APPT:CURR_HS_E_IN:CURR_HS_E_OUT:CURR_HS_FIN_ANS:INC_TRANS_APPT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_TRA'
||'NS_FIN_ANS:INC_GRAD_APPT:INC_GRAD_E_IN:INC_GRAD_E_OUT:INC_GRAD_FIN_ANS:CURR_UG_APPT:CURR_UG_E_IN:CURR_UG_E_OUT:CURR_UG_FIN_ANS:GRAD_VET_MED_APPT:GRAD_VET_MED_E_IN:GRAD_VET_MED_E_OUT:CURR_GRAD_FIN_ANS:COM_OTH_APPT:COM_OTH_E_IN:COM_OTH_E_OUT:COMBO_FIN_'
||'ANS:FOR_STU_APPT:FOR_STU_E_IN:FOR_STU_E_OUT:FS_FIN_ANS:BC_IN_PERSON:BC_EVALS:BC_EMAILS_IN:BC_EMAILS_OUT:BC_PROF_JUDG:BC_REPORTS:BC_MISC:TOTAL_FIN_ANS:TOTAL_STU_APPOINTMENTS:TOTAL_STU_EMAILSIN:TOTAL_STU_EMAILSOUT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58842621071145128)
,p_plug_name=>'Total_BC_Summary'
,p_parent_plug_id=>wwv_flow_api.id(57119958916314914)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'sum(COUNS_PHONE) as BC_Phones, sum(ACD) as BC_ACD	, ',
'sum(BC_CURRENT_HS_APPT) as CURR_HS_APPT, sum(BC_CURRENT_HS_E_IN) as CURR_HS_E_IN, sum(BC_CURRENT_HS_E_OUT) as CURR_HS_E_OUT,	sum(BC_CURR_HS_FIN_ANS) as Curr_Hs_Fin_Ans,',
'sum(BC_INC_TRANSFER_APPT) as INC_TRANS_APPT,sum(BC_INC_TRANSFER_E_IN) as INC_TRANS_E_IN, sum(BC_INC_TRANSFER_E_OUT) as INC_TRANS_E_OUT, sum(BC_INC_TRANS_FIN_ANS) as Inc_Trans_Fin_Ans,',
'sum(BC_INC_GRAD_APPT) as INC_GRAD_APPT, sum(BC_INC_GRAD_E_IN) as INC_GRAD_E_IN,sum(BC_INC_GRAD_E_OUT) as INC_GRAD_E_OUT,	sum(BC_INC_GRAD_FIN_ANS)	 as Inc_Grad_Fin_Ans,',
'sum(BC_CURRENT_UG_APPT) as CURR_UG_APPT	,sum(BC_CURRENT_UG_E_IN) as CURR_UG_E_IN,sum(BC_CURRENT_UG_E_OUT) as CURR_UG_E_OUT, sum(BC_CURR_UG_FIN_ANS) as Curr_Ug_Fin_Ans,',
'sum(BC_GRAD_VET_MED_APPT) as GRAD_VET_MED_APPT, sum(BC_GRAD_VET_MED_E_IN) as GRAD_VET_MED_E_IN ,sum(BC_GRAD_VET_MED_E_OUT) as GRAD_VET_MED_E_OUT	, sum(BC_CURR_GRAD_FIN_ANS) as Curr_Grad_Fin_Ans ,',
'sum(BC_COMBO_OTHER_APPT) as COM_OTH_APPT	, sum(BC_COMBO_OTHER_E_IN) as COM_OTH_E_IN, sum(BC_COMBO_OTHER_E_OUT) as COM_OTH_E_OUT , sum(BC_COMBO_FIN_ANS) as Combo_Fin_Ans,',
'sum(BC_FORMER_STUDENT_APPT) as FOR_STU_APPT , sum(BC_FORMER_STUDENT_E_IN) as FOR_STU_E_IN, sum(BC_FORMER_STUDENT_E_OUT) as FOR_STU_E_OUT ,	sum(BC_FOR_STU_FIN_ANS) as FS_Fin_Ans,',
'',
'sum(BC_IN_PERSON) as BC_IN_PERSON , sum(BC_EVALS) as BC_EVALS , sum(BC_EMAILS_IN) as BC_EMAILS_IN,	',
'sum(BC_EMAILS_OUT) as BC_EMAILS_OUT, sum(BC_PROF_JUDG) as BC_PROF_JUDG, sum(BC_REPORTS) as BC_REPORTS,	',
'sum(BC_MISC) as BC_MISC ,  ',
'',
'sum(BC_CURR_HS_FIN_ANS) + sum(BC_INC_TRANS_FIN_ANS) + sum(BC_INC_GRAD_FIN_ANS) + sum(BC_CURR_UG_FIN_ANS) + ',
'sum(BC_CURR_GRAD_FIN_ANS) + sum(BC_COMBO_FIN_ANS) +  sum(BC_FOR_STU_FIN_ANS) as Total_Fin_Ans ,',
'',
'sum(BC_CURRENT_HS_APPT) + sum(BC_INC_TRANSFER_APPT) + sum(BC_INC_GRAD_APPT) + sum(BC_CURRENT_UG_APPT) +',
'sum(BC_GRAD_VET_MED_APPT) + sum(BC_COMBO_OTHER_APPT) + sum(BC_FORMER_STUDENT_APPT)   as Total_Stu_Appointments , ',
'',
'sum(BC_CURRENT_HS_E_IN)+ sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_GRAD_E_IN) + sum(BC_CURRENT_UG_E_IN) + sum(BC_GRAD_VET_MED_E_IN) + ',
'sum(BC_COMBO_OTHER_E_IN) + sum(BC_FORMER_STUDENT_E_IN) as Total_Stu_Emailsin,',
'',
'sum(BC_CURRENT_HS_E_OUT) + sum(BC_INC_TRANSFER_E_OUT) + sum(BC_INC_GRAD_E_OUT) + sum(BC_CURRENT_UG_E_OUT) + sum(BC_GRAD_VET_MED_E_OUT) +',
'sum(BC_COMBO_OTHER_E_OUT)+ sum(BC_FORMER_STUDENT_E_OUT) as Total_Stu_EmailsOut',
'',
'From back_couns where Enter_date>= :BC_DATE1 and Enter_date <= :BC_DATE2 ;',
'',
'',
'',
'',
''))
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
 p_id=>wwv_flow_api.id(58842791991145129)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>58842791991145129
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58842854743145130)
,p_db_column_name=>'BC_PHONES'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Couns Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58842976059145131)
,p_db_column_name=>'BC_ACD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101041859516831)
,p_db_column_name=>'CURR_HS_APPT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Curr HS / Inc FR STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101166492516832)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr HS / Inc FR STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101273862516833)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr HS / Inc FR STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101311238516834)
,p_db_column_name=>'CURR_HS_FIN_ANS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curr HS / Inc FR Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101465949516835)
,p_db_column_name=>'INC_TRANS_APPT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc UG TR STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101565473516836)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc UG TR STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101614442516837)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc UG TR STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101775694516838)
,p_db_column_name=>'INC_TRANS_FIN_ANS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inc UG TR Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101832858516839)
,p_db_column_name=>'INC_GRAD_APPT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inc GR / Vet Med STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101910853516840)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Inc GR / Vet Med STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102046624516841)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Inc GR / Vet Med STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102163638516842)
,p_db_column_name=>'INC_GRAD_FIN_ANS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Inc GR / Vet Med Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102261547516843)
,p_db_column_name=>'CURR_UG_APPT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Curr UG STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102359383516844)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Curr UG STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102435038516845)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Curr UG STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102507508516846)
,p_db_column_name=>'CURR_UG_FIN_ANS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Curr UG Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102620653516847)
,p_db_column_name=>'GRAD_VET_MED_APPT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Curr GR / Vet Med STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102717142516848)
,p_db_column_name=>'GRAD_VET_MED_E_IN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Curr GR / Vet Med STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102845837516849)
,p_db_column_name=>'GRAD_VET_MED_E_OUT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Curr GR / Vet Med STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102994126516850)
,p_db_column_name=>'CURR_GRAD_FIN_ANS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Curr GR / Vet Med Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149537720523101)
,p_db_column_name=>'COM_OTH_APPT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Combo / Other STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149609443523102)
,p_db_column_name=>'COM_OTH_E_IN'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Combo / Other STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149790401523103)
,p_db_column_name=>'COM_OTH_E_OUT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Combo / Other STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149878502523104)
,p_db_column_name=>'COMBO_FIN_ANS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Combo / Other Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149911172523105)
,p_db_column_name=>'FOR_STU_APPT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'FS Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150095511523106)
,p_db_column_name=>'FOR_STU_E_IN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150134053523107)
,p_db_column_name=>'FOR_STU_E_OUT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150261635523108)
,p_db_column_name=>'FS_FIN_ANS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'FS Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150399110523109)
,p_db_column_name=>'BC_IN_PERSON'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150403448523110)
,p_db_column_name=>'BC_EVALS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150549278523111)
,p_db_column_name=>'BC_EMAILS_IN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150653055523112)
,p_db_column_name=>'BC_EMAILS_OUT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150729553523113)
,p_db_column_name=>'BC_PROF_JUDG'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150885643523114)
,p_db_column_name=>'BC_REPORTS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150946417523115)
,p_db_column_name=>'BC_MISC'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151029146523116)
,p_db_column_name=>'TOTAL_FIN_ANS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Total Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151128693523117)
,p_db_column_name=>'TOTAL_STU_APPOINTMENTS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Total STU Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151203483523118)
,p_db_column_name=>'TOTAL_STU_EMAILSIN'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Total STU Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151394874523119)
,p_db_column_name=>'TOTAL_STU_EMAILSOUT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Total STU Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
end;
/
begin
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58957807589272450)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'589579'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BC_PHONES:BC_ACD:CURR_HS_APPT:CURR_HS_E_IN:CURR_HS_E_OUT:CURR_HS_FIN_ANS:INC_TRANS_APPT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_TRANS_FIN_ANS:INC_GRAD_APPT:INC_GRAD_E_IN:INC_GRAD_E_OUT:INC_GRAD_FIN_ANS:CURR_UG_APPT:CURR_UG_E_IN:CURR_UG_E_OUT:CURR_UG_FIN_A'
||'NS:GRAD_VET_MED_APPT:GRAD_VET_MED_E_IN:GRAD_VET_MED_E_OUT:CURR_GRAD_FIN_ANS:COM_OTH_APPT:COM_OTH_E_IN:COM_OTH_E_OUT:COMBO_FIN_ANS:FOR_STU_APPT:FOR_STU_E_IN:FOR_STU_E_OUT:FS_FIN_ANS:BC_IN_PERSON:BC_EVALS:BC_EMAILS_IN:BC_EMAILS_OUT:BC_PROF_JUDG:BC_REPO'
||'RTS:BC_MISC:TOTAL_FIN_ANS:TOTAL_STU_APPOINTMENTS:TOTAL_STU_EMAILSIN:TOTAL_STU_EMAILSOUT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57144205708661801)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57119813105314913)
,p_button_name=>'BC_Fetch_details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BC Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57123364963314948)
,p_name=>'BC_DATE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57119813105314913)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57123406861314949)
,p_name=>'BC_DATE2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57119813105314913)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
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
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_New_Records_loans'
,p_step_title=>'Goto_New_Records_Management'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153502'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57363615725529608)
,p_plug_name=>'New_Records_Management_Loans'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57363823619529610)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_parent_plug_id=>wwv_flow_api.id(57363615725529608)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57366236575529634)
,p_plug_name=>'Loans'
,p_parent_plug_id=>wwv_flow_api.id(57363823619529610)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57473894705006214)
,p_plug_name=>'Data Entry for Loans'
,p_parent_plug_id=>wwv_flow_api.id(57363823619529610)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57564381206556824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57363615725529608)
,p_button_name=>'RM_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'RM Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57364131590529613)
,p_name=>'RML_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57363823619529610)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57364368116529615)
,p_name=>'RML_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57363823619529610)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Loans'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366355489529635)
,p_name=>'RML_ACD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366403264529636)
,p_name=>'RML_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'PHONE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366565144529637)
,p_name=>'RML_CURR_HS_E_IN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'CURR HS / INC FR EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366607394529638)
,p_name=>'RML_CURR_HS_E_OUT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'CURR HS / INC FR EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366732289529639)
,p_name=>'RML_INC_TRANS_E_IN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'INC UG TR EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366878390529640)
,p_name=>'RML_INC_TRANS_E_OUT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'INC UG TR EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57366976874529641)
,p_name=>'RML_INC_GRAD_E_IN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367039596529642)
,p_name=>'RML_INC_GRAD_E_OUT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367175270529643)
,p_name=>'RML_CURR_UG_E_IN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367234384529644)
,p_name=>'RML_CURR_UG_E_OUT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'CURR UG EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367316465529645)
,p_name=>'RML_GRAD_VET_MED_EIN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367433903529646)
,p_name=>'RML_GRAD_VET_MED_EOUT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367538580529647)
,p_name=>'RML_COMBO_OFFER_EIN'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367655984529648)
,p_name=>'RML_COMBO_OFFER_EOUT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367704113529649)
,p_name=>'RML_FOR_STUD_E_IN'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'FS EMAIL IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57367893795529650)
,p_name=>'RML_FOR_STUD_E_OUT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(57366236575529634)
,p_item_default=>'0'
,p_prompt=>'FS EMAIL OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474308450006219)
,p_name=>'RM_DEFAULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'DEFAULT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474498076006220)
,p_name=>'RM_TRAN_MON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'TRAN MON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474576976006221)
,p_name=>'RM_SUMMER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'SUMMER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474612686006222)
,p_name=>'RM_AGGR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'AGGR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474772908006223)
,p_name=>'RM_DL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'DL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474882645006224)
,p_name=>'RM_LOAN_ADJ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'LOAN ADJ'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57474987339006225)
,p_name=>'RM_DISCRP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'DISCRP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57475020118006226)
,p_name=>'RM_NON_FED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'NON FED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57475117856006227)
,p_name=>'RM_PRORATION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'PRORATION'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66645384580304402)
,p_name=>'RM_DOC_DELETE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'DOC DELETE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66645403802304403)
,p_name=>'RM_DL_RECON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'DL RECON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66645561211304404)
,p_name=>'RM_PEND_LOANS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'PEND LOANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66645691017304405)
,p_name=>'RM_STAFF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'STAFF'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66645720253304406)
,p_name=>'RM_PLUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'PLUS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66645887425304407)
,p_name=>'COGNOS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_item_default=>'0'
,p_prompt=>'COGNOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71940650605429222)
,p_name=>'RML_NOTES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(57473894705006214)
,p_prompt=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71940736512429223)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_LOANS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO REC_MANG_LOANS (RML_EMP_ID,	RML_DATE,',
'                        RML_ACD,RML_PHONE	,',
'                        RML_CURR_HS_E_IN	,RML_CURR_HS_E_OUT,	',
'                        RML_INC_TRANS_E_IN	,RML_INC_TRANS_E_OUT,	',
'                        RML_INC_GRAD_E_IN	,RML_INC_GRAD_E_OUT	,',
'                        RML_CURR_UG_E_IN	,RML_CURR_UG_E_OUT,	',
'                        RML_GRAD_VET_MED_EIN,RML_GRAD_VET_MED_EOUT	,',
'                        RML_COMBO_OFFER_EIN	,RML_COMBO_OFFER_EOUT,	',
'                        RML_FOR_STUD_E_IN	,RML_FOR_STUD_E_OUT	,',
'                        RM_DEFAULT,TRAN_MON	,SUMMER	,DOC_DELETE	,',
'                        DL_RECON,PEND_LOANS	,STAFF	,PLUS	,',
'                        COGNOS	,AGGR,RM_DL	,LOAN_ADJ,DISCRP	,',
'                        NON_FED	,PRORATION,RML_NOTES)',
'VALUES (:RML_EMP_ID, :RML_DATE,',
'        :RML_ACD,:RML_PHONE,',
'        :RML_CURR_HS_E_IN,:RML_CURR_HS_E_OUT,',
'        :RML_INC_TRANS_E_IN, :RML_INC_TRANS_E_OUT,',
'        :RML_INC_GRAD_E_IN, :RML_INC_GRAD_E_OUT,',
'        :RML_CURR_UG_E_IN, :RML_CURR_UG_E_OUT,',
'        :RML_GRAD_VET_MED_EIN, :RML_GRAD_VET_MED_EOUT, ',
'        :RML_COMBO_OFFER_EIN, :RML_COMBO_OFFER_EOUT,',
'        :RML_FOR_STUD_E_IN, :RML_FOR_STUD_E_OUT,',
'        :RM_DEFAULT, :RM_TRAN_MON,:RM_SUMMER,:RM_DOC_DELETE,',
'        :RM_DL_RECON, :RM_PEND_LOANS, :RM_STAFF,',
'        :RM_PLUS, :COGNOS,:RM_AGGR,',
'       :RM_DL,:RM_LOAN_ADJ,:RM_DISCRP,:RM_NON_FED,:RM_PRORATION,',
'       :RML_NOTES);',
'       ',
'       ',
'       ',
'       ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully submitted'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_SpecificDate_Loans'
,p_step_title=>'Goto_SpecificDate_Records_Management'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710084506'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57564684897556827)
,p_plug_name=>'Specific_date_Loans'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57564751457556828)
,p_plug_name=>'Specific_date_Record_Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select RML_DATE,RML_EMP_ID,RML_ACD	,RML_PHONE,',
' RML_CURR_HS_E_IN,RML_CURR_HS_E_OUT	,',
'        RML_INC_TRANS_E_IN	,RML_INC_TRANS_E_OUT,',
'        RML_INC_GRAD_E_IN,RML_INC_GRAD_E_OUT	,',
'        RML_CURR_UG_E_IN,RML_CURR_UG_E_OUT,',
'        RML_GRAD_VET_MED_EIN,RML_GRAD_VET_MED_EOUT,',
'        RML_COMBO_OFFER_EIN	,RML_COMBO_OFFER_EOUT,',
'        RML_FOR_STUD_E_IN,RML_FOR_STUD_E_OUT,',
'        RM_DEFAULT,TRAN_MON,SUMMER,DOC_DELETE,',
'        DL_RECON,PEND_LOANS,STAFF,PLUS,COGNOS,',
'        AGGR,RM_DL,LOAN_ADJ,DISCRP,NON_FED,PRORATION,RML_NOTES',
'        ',
'from rec_mang_loans',
'where RML_DATE = :RM_ENTER_DATE ;'))
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
 p_id=>wwv_flow_api.id(57564824836556829)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>57564824836556829
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66650034767304449)
,p_db_column_name=>'RML_DATE'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71438651470187917)
,p_db_column_name=>'RML_EMP_ID'
,p_display_order=>740
,p_column_identifier=>'CM'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71438739416187918)
,p_db_column_name=>'RML_ACD'
,p_display_order=>750
,p_column_identifier=>'CN'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71438821574187919)
,p_db_column_name=>'RML_PHONE'
,p_display_order=>760
,p_column_identifier=>'CO'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091367092526022)
,p_db_column_name=>'RML_CURR_HS_E_IN'
,p_display_order=>770
,p_column_identifier=>'CP'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091423226526023)
,p_db_column_name=>'RML_CURR_HS_E_OUT'
,p_display_order=>780
,p_column_identifier=>'CQ'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091531904526024)
,p_db_column_name=>'RML_INC_TRANS_E_IN'
,p_display_order=>790
,p_column_identifier=>'CR'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091657345526025)
,p_db_column_name=>'RML_INC_TRANS_E_OUT'
,p_display_order=>800
,p_column_identifier=>'CS'
,p_column_label=>' Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091790408526026)
,p_db_column_name=>'RML_INC_GRAD_E_IN'
,p_display_order=>810
,p_column_identifier=>'CT'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091866877526027)
,p_db_column_name=>'RML_INC_GRAD_E_OUT'
,p_display_order=>820
,p_column_identifier=>'CU'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091901250526028)
,p_db_column_name=>'RML_CURR_UG_E_IN'
,p_display_order=>830
,p_column_identifier=>'CV'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092045473526029)
,p_db_column_name=>'RML_CURR_UG_E_OUT'
,p_display_order=>840
,p_column_identifier=>'CW'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092121355526030)
,p_db_column_name=>'RML_GRAD_VET_MED_EIN'
,p_display_order=>850
,p_column_identifier=>'CX'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092247822526031)
,p_db_column_name=>'RML_GRAD_VET_MED_EOUT'
,p_display_order=>860
,p_column_identifier=>'CY'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092394543526032)
,p_db_column_name=>'RML_COMBO_OFFER_EIN'
,p_display_order=>870
,p_column_identifier=>'CZ'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092409956526033)
,p_db_column_name=>'RML_COMBO_OFFER_EOUT'
,p_display_order=>880
,p_column_identifier=>'DA'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092508008526034)
,p_db_column_name=>'RML_FOR_STUD_E_IN'
,p_display_order=>890
,p_column_identifier=>'DB'
,p_column_label=>' FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092678592526035)
,p_db_column_name=>'RML_FOR_STUD_E_OUT'
,p_display_order=>900
,p_column_identifier=>'DC'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092786987526036)
,p_db_column_name=>'RM_DEFAULT'
,p_display_order=>910
,p_column_identifier=>'DD'
,p_column_label=>'Default'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092801280526037)
,p_db_column_name=>'TRAN_MON'
,p_display_order=>920
,p_column_identifier=>'DE'
,p_column_label=>'Tran Mon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092939451526038)
,p_db_column_name=>'SUMMER'
,p_display_order=>930
,p_column_identifier=>'DF'
,p_column_label=>'Summer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093068408526039)
,p_db_column_name=>'DOC_DELETE'
,p_display_order=>940
,p_column_identifier=>'DG'
,p_column_label=>'Doc Delete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093158695526040)
,p_db_column_name=>'DL_RECON'
,p_display_order=>950
,p_column_identifier=>'DH'
,p_column_label=>'DL Recon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093297121526041)
,p_db_column_name=>'PEND_LOANS'
,p_display_order=>960
,p_column_identifier=>'DI'
,p_column_label=>'Pend Loans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093360375526042)
,p_db_column_name=>'STAFF'
,p_display_order=>970
,p_column_identifier=>'DJ'
,p_column_label=>'Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093452834526043)
,p_db_column_name=>'PLUS'
,p_display_order=>980
,p_column_identifier=>'DK'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093583018526044)
,p_db_column_name=>'COGNOS'
,p_display_order=>990
,p_column_identifier=>'DL'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093678275526045)
,p_db_column_name=>'AGGR'
,p_display_order=>1000
,p_column_identifier=>'DM'
,p_column_label=>'Aggr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093713352526046)
,p_db_column_name=>'RM_DL'
,p_display_order=>1010
,p_column_identifier=>'DN'
,p_column_label=>'RM DL'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093895965526047)
,p_db_column_name=>'LOAN_ADJ'
,p_display_order=>1020
,p_column_identifier=>'DO'
,p_column_label=>'Loan Adj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093908079526048)
,p_db_column_name=>'DISCRP'
,p_display_order=>1030
,p_column_identifier=>'DP'
,p_column_label=>'Discrp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72094081426526049)
,p_db_column_name=>'NON_FED'
,p_display_order=>1040
,p_column_identifier=>'DQ'
,p_column_label=>'Non Fed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72094107095526050)
,p_db_column_name=>'PRORATION'
,p_display_order=>1050
,p_column_identifier=>'DR'
,p_column_label=>'Proration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72112510296433601)
,p_db_column_name=>'RML_NOTES'
,p_display_order=>1060
,p_column_identifier=>'DS'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57759460092338664)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'577595'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_RML_DATE:RML_EMP_ID:RML_ACD:RML_PHONE:RML_CURR_HS_E_IN:RML_CURR_HS_E_OUT:RML_INC_TRANS_E_IN:RML_INC_TRANS_E_OUT:RML_INC_GRAD_E_IN:RML_INC_GRAD_E_OUT:RML_CURR_UG_E_IN:RML_CURR_UG_E_OUT:RML_GR'
||'AD_VET_MED_EIN:RML_GRAD_VET_MED_EOUT:RML_COMBO_OFFER_EIN:RML_COMBO_OFFER_EOUT:RML_FOR_STUD_E_IN:RML_FOR_STUD_E_OUT:RM_DEFAULT:TRAN_MON:SUMMER:DOC_DELETE:DL_RECON:PEND_LOANS:STAFF:PLUS:COGNOS:AGGR:RM_DL:LOAN_ADJ:DISCRP:NON_FED:PRORATION:RML_NOTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72042933959347514)
,p_plug_name=>'Specific_Date_Summary'
,p_parent_plug_id=>wwv_flow_api.id(57564751457556828)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'sum(RML_ACD	) as ACD,',
'sum(RML_PHONE	) as PHONE,',
'sum(RML_CURR_HS_E_IN) as CURR_HS_E_IN	,',
'sum(RML_CURR_HS_E_OUT	) as CURR_HS_E_OUT,',
'sum(RML_INC_TRANS_E_IN	) as INC_TRANS_E_IN,',
'sum(RML_INC_TRANS_E_OUT	) as INC_TRANS_E_OUT,',
'sum(RML_INC_GRAD_E_IN) as	INC_GRAD_E_IN,',
'sum(RML_INC_GRAD_E_OUT	) as INC_GRAD_E_OUT,',
'sum(RML_CURR_UG_E_IN) as	CURR_UG_E_IN,',
'sum(RML_CURR_UG_E_OUT) as	CURR_UG_E_OUT,',
'sum(RML_GRAD_VET_MED_EIN) as	GRAD_VET_MED_EIN,',
'sum(RML_GRAD_VET_MED_EOUT) as	GRAD_VET_MED_EOUT,',
'sum(RML_COMBO_OFFER_EIN	) as COMBO_OFFER_EIN,',
'sum(RML_COMBO_OFFER_EOUT) as	COMBO_OFFER_EOUT,',
'sum(RML_FOR_STUD_E_IN) as	FOR_STUD_E_IN,',
'sum(RML_FOR_STUD_E_OUT) as	FOR_STUD_E_OUT,',
'sum(RM_DEFAULT) as	RM_DEFAULT,',
'sum(TRAN_MON) as	TRAN_MON,',
'sum(SUMMER) as	SUMMER,',
'sum(DOC_DELETE) as	DOC_DELETE,',
'sum(DL_RECON) as	DL_RECON,',
'sum(PEND_LOANS) as	PEND_LOANS,',
'sum(STAFF) as	STAFF,',
'sum(PLUS) as	PLUS,',
'sum(COGNOS) as	COGNOS,',
'sum(AGGR) as	AGGR,',
'sum(RM_DL) as	RM_DL,',
'sum(LOAN_ADJ) as	LOAN_ADJ,',
'sum(DISCRP) as	DISCRP,',
'sum(NON_FED) as	NON_FED,',
'sum(PRORATION) as PRORATION ',
'from rec_mang_loans',
'where RML_DATE = :RM_ENTER_DATE ;'))
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
 p_id=>wwv_flow_api.id(72043001508347515)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>72043001508347515
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043114168347516)
,p_db_column_name=>'ACD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043222399347517)
,p_db_column_name=>'PHONE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043302440347518)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Curr HS / Inc FR Email In '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043474955347519)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043521575347520)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043689669347521)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043719838347522)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043857466347523)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72043916609347524)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044037843347525)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044100808347526)
,p_db_column_name=>'GRAD_VET_MED_EIN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044249266347527)
,p_db_column_name=>'GRAD_VET_MED_EOUT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044304689347528)
,p_db_column_name=>'COMBO_OFFER_EIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044423670347529)
,p_db_column_name=>'COMBO_OFFER_EOUT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044562787347530)
,p_db_column_name=>'FOR_STUD_E_IN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044676767347531)
,p_db_column_name=>'FOR_STUD_E_OUT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044718005347532)
,p_db_column_name=>'RM_DEFAULT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Default'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044852476347533)
,p_db_column_name=>'TRAN_MON'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tran Mon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72044944540347534)
,p_db_column_name=>'SUMMER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Summer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045017875347535)
,p_db_column_name=>'DOC_DELETE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Doc Delete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045126446347536)
,p_db_column_name=>'DL_RECON'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'DL Recon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045245342347537)
,p_db_column_name=>'PEND_LOANS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Pend Loans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045388224347538)
,p_db_column_name=>'STAFF'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045452588347539)
,p_db_column_name=>'PLUS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045598215347540)
,p_db_column_name=>'COGNOS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045660528347541)
,p_db_column_name=>'AGGR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Aggr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045753957347542)
,p_db_column_name=>'RM_DL'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Rm DL'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045839585347543)
,p_db_column_name=>'LOAN_ADJ'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Loan Adj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72045923406347544)
,p_db_column_name=>'DISCRP'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Discrp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72046008283347545)
,p_db_column_name=>'NON_FED'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Non Fed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72046175002347546)
,p_db_column_name=>'PRORATION'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Proration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72078909967488472)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'720790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACD:PHONE:CURR_HS_E_IN:CURR_HS_E_OUT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_GRAD_E_IN:INC_GRAD_E_OUT:CURR_UG_E_IN:CURR_UG_E_OUT:GRAD_VET_MED_EIN:GRAD_VET_MED_EOUT:COMBO_OFFER_EIN:COMBO_OFFER_EOUT:FOR_STUD_E_IN:FOR_STUD_E_OUT:RM_DEFAULT:TRAN_MON:SUMMER:DO'
||'C_DELETE:DL_RECON:PEND_LOANS:STAFF:PLUS:COGNOS:AGGR:RM_DL:LOAN_ADJ:DISCRP:NON_FED:PRORATION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57754128476262903)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(57564684897556827)
,p_button_name=>'RM_FETCH_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'FETCH DETAILS'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57753952680262901)
,p_name=>'RM_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57564684897556827)
,p_prompt=>'RML ENTER DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
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
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_New_DataEntry_Records'
,p_step_title=>'DATA ENTRY STAFF'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153635'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57562032801556801)
,p_plug_name=>'New_Data_Entry_Staff'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57564289296556823)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57562032801556801)
,p_button_name=>'DES_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562102665556802)
,p_name=>'DES_EMP_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Data Entry'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562219663556803)
,p_name=>'DES_EXNA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'EXNA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562306540556804)
,p_name=>'DES_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562490991556805)
,p_name=>'DES_UPLOADS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'UPLOADS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562563333556806)
,p_name=>'DES_FAXES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'FAXES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562670447556807)
,p_name=>'DES_COGNOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'COGNOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562753602556808)
,p_name=>'DES_MIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'MIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562898948556809)
,p_name=>'DES_WORKFLOW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'WORKFLOW'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57562928181556810)
,p_name=>'DES_INBOXES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'INBOXES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563023076556811)
,p_name=>'DES_SCHOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'SCHOL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563162088556812)
,p_name=>'DES_RCRSUSP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'RCRSUSP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563253367556813)
,p_name=>'DES_BOUNCE_BACK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'BOUNCE BACK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563399164556814)
,p_name=>'DES_SKIP_TRACE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'SKIP TRACE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563437120556815)
,p_name=>'DES_AWDLTR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'AWDLTR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563573782556816)
,p_name=>'DES_RTLTR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'RTLTR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563613592556817)
,p_name=>'DES_THANKU'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'THANKU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563713154556818)
,p_name=>'DES_DUPID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'DUPID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563892208556819)
,p_name=>'DES_CPS_CORR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'CPS CORR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57563994259556820)
,p_name=>'DES_EMAILS_MOVED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'EMAILS MOVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57564069697556821)
,p_name=>'DES_IMG_CORR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'IMG CORR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57564132719556822)
,p_name=>'DES_COLLATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_item_default=>'0'
,p_prompt=>'COLLATE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57564489961556825)
,p_name=>'NOTES'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(57562032801556801)
,p_prompt=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71941127113429227)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_DATAENTRY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'INSERT INTO DATA_ENTRY_STAFF (DES_EMP_ID,	DES_DATE	,',
'                            SCHOL	,RCRSUSP	, INBOXES,',
'                            WORKFLOW,	DES_MIL	, COGNOS,',
'                            FAXES	,UPLOADS	, EXNA	,',
'                            BOUNCE_BACK,	SKIP_TRACE,	 AWDLTR	,',
'                            RTLTR	, THANKU	, DUPID	,',
'                            CPS_CORR, EMAILS_MOVED	, IMG_CORR	,',
'                            COLLATE	, NOTES)',
'VALUES (:DES_EMP_NAME, :DES_DATE,',
'        :DES_SCHOL,:DES_RCRSUSP,',
'        :DES_INBOXES,:DES_WORKFLOW,',
'        :DES_MIL, :DES_COGNOS,',
'        :DES_FAXES, :DES_UPLOADS,',
'        :DES_EXNA, :DES_BOUNCE_BACK,',
'        :DES_SKIP_TRACE, :DES_AWDLTR, ',
'        :DES_RTLTR, :DES_THANKU,',
'        :DES_DUPID, :DES_CPS_CORR,',
'        :DES_EMAILS_MOVED, :DES_IMG_CORR,:DES_COLLATE,:NOTES);',
'       ',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Summary Stats of Records Management'
,p_step_title=>'Summary Stats of Records Management'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710085038'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57754295200262904)
,p_plug_name=>'Summary_status_records_management'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57754347382262905)
,p_plug_name=>'Summary_stats_DE_FR'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM_DE_EMP_ID,',
'       SUM(RM_DE_ISIR) AS ISIR,',
'       SUM(RM_DE_MIL) AS MIL,',
'       SUM(RM_DE_AWARD) AS AWARD,',
'       SUM(RM_DE_TRK_STAT) AS Track_Stat,',
'       SUM(FR_APPOINTMENTS) AS Std_Hrs,',
'       SUM(FR_LTRS_MAILED) AS Ltrs_Mailed,',
'       SUM(FR_DOC_SCAN) AS Doc_Scan,',
'       SUM(FR_FAXIN) AS Fax_In',
'FROM rec_mang_de_fr',
'WHERE ENTER_DATE >= :RM_FROM_DATE AND ENTER_DATE <= :RM_TO_DATE',
'GROUP BY RM_DE_EMP_ID;',
'',
' '))
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
,p_plug_header=>'Summary Stats for Data Entry And File Room'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(57754410722262906)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>57754410722262906
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71512779301357904)
,p_db_column_name=>'RM_DE_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'FF'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71612820844616233)
,p_db_column_name=>'ISIR'
,p_display_order=>20
,p_column_identifier=>'FO'
,p_column_label=>'ISIR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71612993672616234)
,p_db_column_name=>'MIL'
,p_display_order=>30
,p_column_identifier=>'FP'
,p_column_label=>'Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613073300616235)
,p_db_column_name=>'AWARD'
,p_display_order=>40
,p_column_identifier=>'FQ'
,p_column_label=>'Award'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613136273616236)
,p_db_column_name=>'TRACK_STAT'
,p_display_order=>50
,p_column_identifier=>'FR'
,p_column_label=>'Track Stat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613268439616237)
,p_db_column_name=>'STD_HRS'
,p_display_order=>60
,p_column_identifier=>'FS'
,p_column_label=>'Std Hrs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613318751616238)
,p_db_column_name=>'LTRS_MAILED'
,p_display_order=>70
,p_column_identifier=>'FT'
,p_column_label=>'Ltrs Mailed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613443236616239)
,p_db_column_name=>'DOC_SCAN'
,p_display_order=>80
,p_column_identifier=>'FU'
,p_column_label=>'Doc Scan'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613571146616240)
,p_db_column_name=>'FAX_IN'
,p_display_order=>90
,p_column_identifier=>'FV'
,p_column_label=>'Fax In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57786040736181537)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'577861'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_CURR_EOUT_EIN_EOUT_EIN_EOUT_EIN_EOUT_EIN_EOUT_EIN_EOUT_EIN_EOUT:RM_DE_EMP_ID:ISIR:MIL:AWARD:TRACK_STAT:STD_HRS:LTRS_MAILED:DOC_SCAN:FAX_IN'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71513697132357913)
,p_plug_name=>'Summary_status_loans'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select RML_EMP_ID,',
'sum(RML_ACD) as ACD	,sum(RML_PHONE) as Phone,	sum(RML_CURR_HS_E_IN) as CURR_HS_E_IN,	sum(RML_CURR_HS_E_OUT) as CURR_HS_E_OUT ,	sum(RML_INC_TRANS_E_IN) as INC_TRANS_E_IN,',
'sum(RML_INC_TRANS_E_OUT) as INC_TRANS_E_OUT ,sum(RML_INC_GRAD_E_IN) as INC_GRAD_E_IN,	',
'sum(RML_INC_GRAD_E_OUT) as INC_GRAD_E_OUT,	sum(RML_CURR_UG_E_IN) as CURR_UG_E_IN,	sum(RML_CURR_UG_E_OUT) as CURR_UG_E_OUT , sum(RML_GRAD_VET_MED_EIN) as GRAD_VET_MED_EIN ,',
'sum(RML_GRAD_VET_MED_EOUT) as GRAD_VET_MED_EOUT,	sum(RML_COMBO_OFFER_EIN) as COMBO_OFFER_EIN,',
'sum(RML_COMBO_OFFER_EOUT) as COMBO_OFFER_EOUT, sum(RML_FOR_STUD_E_IN) as FOR_STUD_E_IN ,	sum(RML_FOR_STUD_E_OUT) as FOR_STUD_E_OUT , sum(RM_DEFAULT) as RM_DEFAULT,',
'sum(TRAN_MON) as TRAN_MON,	sum(SUMMER) as SUMMER 	,sum(DOC_DELETE) as DOC_DELETE	,sum(DL_RECON) as DL_RECON,	sum(PEND_LOANS) as PEND_LOANS ,	sum(STAFF) as STAFF ,	sum(PLUS) as PLUS ,	',
'sum(COGNOS) as COGNOS ,	sum(AGGR) as AGGR ,	sum(RM_DL) as RM_DL,	sum(LOAN_ADJ) as LOAN_ADJ,	',
'sum(DISCRP) as DISCRP,	sum(NON_FED) as	NON_FED,sum(PRORATION) as PRORATION  from rec_Mang_loans where RML_DATE >= :RM_FROM_DATE AND  RML_DATE <= :RM_TO_DATE GROUP BY  RML_EMP_ID ; ',
''))
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
,p_plug_header=>'Summary Stats Loans'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71513700571357914)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71513700571357914
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71513890687357915)
,p_db_column_name=>'RML_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613613096616241)
,p_db_column_name=>'ACD'
,p_display_order=>20
,p_column_identifier=>'AG'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613755396616242)
,p_db_column_name=>'PHONE'
,p_display_order=>30
,p_column_identifier=>'AH'
,p_column_label=>'Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613827323616243)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>40
,p_column_identifier=>'AI'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71613958192616244)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>50
,p_column_identifier=>'AJ'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71614032246616245)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>60
,p_column_identifier=>'AK'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71614186688616246)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>70
,p_column_identifier=>'AL'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71614225092616247)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>80
,p_column_identifier=>'AM'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71614374205616248)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>90
,p_column_identifier=>'AN'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71614465018616249)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>100
,p_column_identifier=>'AO'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71614589717616250)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>110
,p_column_identifier=>'AP'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758143569412901)
,p_db_column_name=>'GRAD_VET_MED_EIN'
,p_display_order=>120
,p_column_identifier=>'AQ'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758257761412902)
,p_db_column_name=>'GRAD_VET_MED_EOUT'
,p_display_order=>130
,p_column_identifier=>'AR'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758335218412903)
,p_db_column_name=>'COMBO_OFFER_EIN'
,p_display_order=>140
,p_column_identifier=>'AS'
,p_column_label=>'Combo / Other Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758428395412904)
,p_db_column_name=>'COMBO_OFFER_EOUT'
,p_display_order=>150
,p_column_identifier=>'AT'
,p_column_label=>'Combo / Other Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758504478412905)
,p_db_column_name=>'FOR_STUD_E_IN'
,p_display_order=>160
,p_column_identifier=>'AU'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758607017412906)
,p_db_column_name=>'FOR_STUD_E_OUT'
,p_display_order=>170
,p_column_identifier=>'AV'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758722017412907)
,p_db_column_name=>'RM_DEFAULT'
,p_display_order=>180
,p_column_identifier=>'AW'
,p_column_label=>'RM Default'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758809440412908)
,p_db_column_name=>'TRAN_MON'
,p_display_order=>190
,p_column_identifier=>'AX'
,p_column_label=>'Tran Mon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71758909220412909)
,p_db_column_name=>'SUMMER'
,p_display_order=>200
,p_column_identifier=>'AY'
,p_column_label=>'Summer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759062217412910)
,p_db_column_name=>'DOC_DELETE'
,p_display_order=>210
,p_column_identifier=>'AZ'
,p_column_label=>'Doc Delete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759195007412911)
,p_db_column_name=>'DL_RECON'
,p_display_order=>220
,p_column_identifier=>'BA'
,p_column_label=>'DL Recon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759211247412912)
,p_db_column_name=>'PEND_LOANS'
,p_display_order=>230
,p_column_identifier=>'BB'
,p_column_label=>'Pend Loans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759306366412913)
,p_db_column_name=>'STAFF'
,p_display_order=>240
,p_column_identifier=>'BC'
,p_column_label=>'Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759471520412914)
,p_db_column_name=>'PLUS'
,p_display_order=>250
,p_column_identifier=>'BD'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759527416412915)
,p_db_column_name=>'COGNOS'
,p_display_order=>260
,p_column_identifier=>'BE'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759622667412916)
,p_db_column_name=>'AGGR'
,p_display_order=>270
,p_column_identifier=>'BF'
,p_column_label=>'Aggr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759737926412917)
,p_db_column_name=>'RM_DL'
,p_display_order=>280
,p_column_identifier=>'BG'
,p_column_label=>'RM DL'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759837259412918)
,p_db_column_name=>'LOAN_ADJ'
,p_display_order=>290
,p_column_identifier=>'BH'
,p_column_label=>'Loan Adj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71759974232412919)
,p_db_column_name=>'DISCRP'
,p_display_order=>300
,p_column_identifier=>'BI'
,p_column_label=>'Discrp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760082796412920)
,p_db_column_name=>'NON_FED'
,p_display_order=>310
,p_column_identifier=>'BJ'
,p_column_label=>'Non Fed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760112120412921)
,p_db_column_name=>'PRORATION'
,p_display_order=>320
,p_column_identifier=>'BK'
,p_column_label=>'Proration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71609012660556382)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'716091'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RML_EMP_ID:ACD:PHONE:CURR_HS_E_IN:CURR_HS_E_OUT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_GRAD_E_IN:INC_GRAD_E_OUT:CURR_UG_E_IN:CURR_UG_E_OUT:GRAD_VET_MED_EIN:GRAD_VET_MED_EOUT:COMBO_OFFER_EIN:COMBO_OFFER_EOUT:FOR_STUD_E_IN:FOR_STUD_E_OUT:RM_DEFAULT:TRAN_MO'
||'N:SUMMER:DOC_DELETE:DL_RECON:PEND_LOANS:STAFF:PLUS:COGNOS:AGGR:RM_DL:LOAN_ADJ:DISCRP:NON_FED:PRORATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71517071812357947)
,p_plug_name=>'Summary_Stats_ACD_FIN'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select RM_FIN_EMP_ID, sum(ACD_TOTAL_OFFERED) as TOTAL_OFFERED,	sum(ACD_TOTAL_ANSWERED) as TOTAL_ANSWERED	,sum(ACD_IN_QUEUE) as IN_QUEUE,	sum(FINAID_RECEIVED) as FINAID_RECEIVED,	',
'sum(GR_STD_IN_DOOR) as STD_IN_DOOR , ',
'sum(HW_PHONE) as HW_PHONE ,	sum(HW_ACD) as HW_ACD 	from rec_Mang_acd_fin where RM_FIN_DATE >= :RM_FROM_DATE AND  RM_FIN_DATE <= :RM_TO_DATE GROUP BY  RM_FIN_EMP_ID ;   ',
''))
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
,p_plug_header=>'Summary Stats ACD and FIN'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71517111716357948)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71517111716357948
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71517276757357949)
,p_db_column_name=>'RM_FIN_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fin Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760291600412922)
,p_db_column_name=>'TOTAL_OFFERED'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Total Offered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760380064412923)
,p_db_column_name=>'TOTAL_ANSWERED'
,p_display_order=>30
,p_column_identifier=>'J'
,p_column_label=>'Total Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760407156412924)
,p_db_column_name=>'IN_QUEUE'
,p_display_order=>40
,p_column_identifier=>'K'
,p_column_label=>'In Queue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760590341412925)
,p_db_column_name=>'FINAID_RECEIVED'
,p_display_order=>50
,p_column_identifier=>'L'
,p_column_label=>'Finaid Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760662270412926)
,p_db_column_name=>'STD_IN_DOOR'
,p_display_order=>60
,p_column_identifier=>'M'
,p_column_label=>'Std In Door'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760755318412927)
,p_db_column_name=>'HW_PHONE'
,p_display_order=>70
,p_column_identifier=>'N'
,p_column_label=>'Fiscal Op Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760831407412928)
,p_db_column_name=>'HW_ACD'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Fiscal Op ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71617503784616690)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'716176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RM_FIN_EMP_ID:TOTAL_OFFERED:TOTAL_ANSWERED:IN_QUEUE:FINAID_RECEIVED:STD_IN_DOOR:HW_PHONE:HW_ACD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71610283614616207)
,p_plug_name=>'Summary_stats_Scholarships'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select RMS_EMP_ID, sum(RMS_ACD) as RMS_ACD	,sum(RMS_PHONE) as RMS_PHONE,',
'sum(RMS_CURR_HS_E_IN) as RMS_CURR_HS_E_IN ,	sum(RMS_CURR_HS_E_OUT) as RMS_CURR_HS_E_OUT,	sum(RMS_INC_TRANS_E_IN) as RMS_INC_TRANS_E_IN	,',
'sum(RMS_INC_TRANS_E_OUT) as RMS_INC_TRANS_E_OUT	,sum(RMS_INC_GRAD_E_IN) as RMS_INC_GRAD_E_IN ,	sum(RMS_INC_GRAD_E_OUT) as RMS_INC_GRAD_E_OUT	,',
'sum(RMS_CURR_UG_E_IN) as RMS_CURR_UG_E_IN ,	sum(RMS_CURR_UG_E_OUT)as RMS_CURR_UG_E_OUT,	sum(RMS_GRAD_VET_MED_EIN) as RMS_GRAD_VET_MED_EIN,	sum(RMS_GRAD_VET_MED_EOUT) as RMS_GRAD_VET_MED_EOUT,',
'sum(RMS_COMBO_OFFER_EIN) as RMS_COMBO_OFFER_EIN ,	sum(RMS_COMBO_OFFER_EOUT) as RMS_COMBO_OFFER_EOUT ,',
'sum(RMS_FOR_STUD_E_IN) as RMS_FOR_STUD_E_IN ,	sum(RMS_FOR_STUD_E_OUT) as RMS_FOR_STUD_E_OUT,	sum(RMS_IN_PERSON) as RMS_IN_PERSON ,	sum(RMS_EMAIL_IN) as RMS_EMAIL_IN ,	',
'sum(RMS_EMAIL_OUT) as RMS_EMAIL_OUT,	sum(RMS_REPORTS) as RMS_REPORTS ,	sum(RMS_MISC) as RMS_MISC',
' from rec_Mang_schol where RMS_DATE >= :RM_FROM_DATE AND  RMS_DATE <= :RM_TO_DATE GROUP BY  RMS_EMP_ID ;'))
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
,p_plug_header=>'Summary Stats Scholarships '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71610388063616208)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71610388063616208
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71610449971616209)
,p_db_column_name=>'RMS_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71760934776412929)
,p_db_column_name=>'RMS_ACD'
,p_display_order=>20
,p_column_identifier=>'W'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761024631412930)
,p_db_column_name=>'RMS_PHONE'
,p_display_order=>30
,p_column_identifier=>'X'
,p_column_label=>'Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761137001412931)
,p_db_column_name=>'RMS_CURR_HS_E_IN'
,p_display_order=>40
,p_column_identifier=>'Y'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761241445412932)
,p_db_column_name=>'RMS_CURR_HS_E_OUT'
,p_display_order=>50
,p_column_identifier=>'Z'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761363095412933)
,p_db_column_name=>'RMS_INC_TRANS_E_IN'
,p_display_order=>60
,p_column_identifier=>'AA'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761492703412934)
,p_db_column_name=>'RMS_INC_TRANS_E_OUT'
,p_display_order=>70
,p_column_identifier=>'AB'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761513223412935)
,p_db_column_name=>'RMS_INC_GRAD_E_IN'
,p_display_order=>80
,p_column_identifier=>'AC'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761657793412936)
,p_db_column_name=>'RMS_INC_GRAD_E_OUT'
,p_display_order=>90
,p_column_identifier=>'AD'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761734987412937)
,p_db_column_name=>'RMS_CURR_UG_E_IN'
,p_display_order=>100
,p_column_identifier=>'AE'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761880203412938)
,p_db_column_name=>'RMS_CURR_UG_E_OUT'
,p_display_order=>110
,p_column_identifier=>'AF'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71761981564412939)
,p_db_column_name=>'RMS_GRAD_VET_MED_EIN'
,p_display_order=>120
,p_column_identifier=>'AG'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762055284412940)
,p_db_column_name=>'RMS_GRAD_VET_MED_EOUT'
,p_display_order=>130
,p_column_identifier=>'AH'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762193577412941)
,p_db_column_name=>'RMS_COMBO_OFFER_EIN'
,p_display_order=>140
,p_column_identifier=>'AI'
,p_column_label=>'Combo / Other Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762224816412942)
,p_db_column_name=>'RMS_COMBO_OFFER_EOUT'
,p_display_order=>150
,p_column_identifier=>'AJ'
,p_column_label=>'Combo / Other Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762331445412943)
,p_db_column_name=>'RMS_FOR_STUD_E_IN'
,p_display_order=>160
,p_column_identifier=>'AK'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762497678412944)
,p_db_column_name=>'RMS_FOR_STUD_E_OUT'
,p_display_order=>170
,p_column_identifier=>'AL'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762551308412945)
,p_db_column_name=>'RMS_IN_PERSON'
,p_display_order=>180
,p_column_identifier=>'AM'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762698636412946)
,p_db_column_name=>'RMS_EMAIL_IN'
,p_display_order=>190
,p_column_identifier=>'AN'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762760821412947)
,p_db_column_name=>'RMS_EMAIL_OUT'
,p_display_order=>200
,p_column_identifier=>'AO'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762864864412948)
,p_db_column_name=>'RMS_REPORTS'
,p_display_order=>210
,p_column_identifier=>'AP'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71762979784412949)
,p_db_column_name=>'RMS_MISC'
,p_display_order=>220
,p_column_identifier=>'AQ'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71625480724639753)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'716255'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RMS_EMP_ID:RMS_ACD:RMS_PHONE:RMS_CURR_HS_E_IN:RMS_CURR_HS_E_OUT:RMS_INC_TRANS_E_IN:RMS_INC_TRANS_E_OUT:RMS_INC_GRAD_E_IN:RMS_INC_GRAD_E_OUT:RMS_CURR_UG_E_IN:RMS_CURR_UG_E_OUT:RMS_GRAD_VET_MED_EIN:RMS_GRAD_VET_MED_EOUT:RMS_COMBO_OFFER_EIN:RMS_COMBO_OF'
||'FER_EOUT:RMS_FOR_STUD_E_IN:RMS_FOR_STUD_E_OUT:RMS_IN_PERSON:RMS_EMAIL_IN:RMS_EMAIL_OUT:RMS_REPORTS:RMS_MISC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71763037684412950)
,p_plug_name=>'Summary_Stats_DataEntry_Staff'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select DES_EMP_ID, ',
'sum(SCHOL) as SCHOL,sum(RCRSUSP) as RCRSUSP,sum(INBOXES) as INBOXES,sum(WORKFLOW) as WORKFLOW,sum(DES_MIL) as DES_MIL,sum(COGNOS) as COGNOS,sum(FAXES) as FAXES,',
'sum(UPLOADS) as UPLOADS,sum( EXNA) as EXNA,sum(BOUNCE_BACK) as BOUNCE_BACK,sum(SKIP_TRACE) as SKIP_TRACE,sum(AWDLTR) as AWDLTR,sum(RTLTR) as RTLTR,',
'sum(THANKU) as THANKU,sum(DUPID) as DUPID,sum(CPS_CORR) as CPS_CORR,sum(EMAILS_MOVED) as EMAILS_MOVED,sum(IMG_CORR	) as IMG_CORR	,sum( COLLATE) as COLLATE',
' from data_entry_staff where DES_DATE >= :RM_FROM_DATE AND  DES_DATE <= :RM_TO_DATE GROUP BY  DES_EMP_ID ;'))
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
,p_plug_header=>'Summary Stats Data Entry Staff'
);
end;
/
begin
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71834479260461101)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71834479260461101
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71834543786461102)
,p_db_column_name=>'DES_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71834688987461103)
,p_db_column_name=>'SCHOL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Schol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71834718893461104)
,p_db_column_name=>'RCRSUSP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Rcrsusp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71834825123461105)
,p_db_column_name=>'INBOXES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Inboxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71834994043461106)
,p_db_column_name=>'WORKFLOW'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Workflow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835025390461107)
,p_db_column_name=>'DES_MIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835108319461108)
,p_db_column_name=>'COGNOS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835212448461109)
,p_db_column_name=>'FAXES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Faxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835334948461110)
,p_db_column_name=>'UPLOADS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Uploads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835434860461111)
,p_db_column_name=>'EXNA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Exna'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835532399461112)
,p_db_column_name=>'BOUNCE_BACK'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bounce Back'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835656724461113)
,p_db_column_name=>'SKIP_TRACE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Skip Trace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835753373461114)
,p_db_column_name=>'AWDLTR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Awdltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835861919461115)
,p_db_column_name=>'RTLTR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Rtltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71835959556461116)
,p_db_column_name=>'THANKU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Thanku'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71836090567461117)
,p_db_column_name=>'DUPID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Dupid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71836174349461118)
,p_db_column_name=>'CPS_CORR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'CPS Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71836260156461119)
,p_db_column_name=>'EMAILS_MOVED'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Emails Moved'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71836393480461120)
,p_db_column_name=>'IMG_CORR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Img Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71836494786461121)
,p_db_column_name=>'COLLATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Collate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71745167564264735)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'717452'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DES_EMP_ID:SCHOL:RCRSUSP:INBOXES:WORKFLOW:DES_MIL:COGNOS:FAXES:UPLOADS:EXNA:BOUNCE_BACK:SKIP_TRACE:AWDLTR:RTLTR:THANKU:DUPID:CPS_CORR:EMAILS_MOVED:IMG_CORR:COLLATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71836538583461122)
,p_plug_name=>'Total_Loans_Scholarships'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 			',
'sum(L.RML_CURR_HS_E_IN) + sum(S.RMS_CURR_HS_E_IN) as TOTAL_CURR_EIN,',
'sum(L.RML_CURR_HS_E_OUT) + sum(S.RMS_CURR_HS_E_OUT) AS  TOTAL_CURR_EOUT, ',
'sum(L.RML_CURR_HS_E_IN) + sum(S.RMS_CURR_HS_E_IN) + sum(L.RML_CURR_HS_E_OUT) + sum(S.RMS_CURR_HS_E_OUT) AS  TOTAL_CURR_HS ,	',
'',
'',
'sum(L.RML_INC_TRANS_E_IN)+ sum(S.RMS_INC_TRANS_E_IN) AS TOTAL_INC_TRANS_EIN,',
'sum(L.RML_INC_TRANS_E_OUT) + sum(S.RMS_INC_TRANS_E_OUT) AS TOTAL_INC_TRANS_EOUT, ',
'sum(L.RML_INC_TRANS_E_IN)+ sum(S.RMS_INC_TRANS_E_IN) + sum(L.RML_INC_TRANS_E_OUT) + sum(S.RMS_INC_TRANS_E_OUT) AS TOTAL_INC_TRANS,',
'',
'',
'sum(L.RML_INC_GRAD_E_IN) + sum(S.RMS_INC_GRAD_E_IN) AS TOTAL_INC_GRAD_EIN, ',
'sum(L.RML_INC_GRAD_E_OUT) + sum(S.RMS_INC_GRAD_E_OUT) AS TOTAL_INC_GRAD_EOUT, ',
'sum(L.RML_INC_GRAD_E_IN) + sum(S.RMS_INC_GRAD_E_IN) +  sum(L.RML_INC_GRAD_E_OUT) + sum(S.RMS_INC_GRAD_E_OUT) AS TOTAL_INC_GRAD,',
'	',
'sum(L.RML_CURR_UG_E_IN) + sum(S.RMS_CURR_UG_E_IN) AS TOTAL_CURR_UG_EIN , ',
'sum(L.RML_CURR_UG_E_OUT) + 	sum(S.RMS_CURR_UG_E_OUT) AS TOTAL_CURR_UG_EOUT, ',
'sum(L.RML_CURR_UG_E_IN) + sum(S.RMS_CURR_UG_E_IN) + sum(L.RML_CURR_UG_E_OUT) + 	sum(S.RMS_CURR_UG_E_OUT) AS TOTAL_CURR_UG,',
'	',
'sum(L.RML_GRAD_VET_MED_EIN) + sum(S.RMS_GRAD_VET_MED_EIN) AS TOTAL_GRAD_VET_MED_EIN,',
'sum(L.RML_GRAD_VET_MED_EOUT) +sum(S.RMS_GRAD_VET_MED_EOUT) AS TOTAL_GRAD_VET_MED_EOUT, ',
'sum(L.RML_GRAD_VET_MED_EIN) + sum(S.RMS_GRAD_VET_MED_EIN) + sum(L.RML_GRAD_VET_MED_EOUT) +sum(S.RMS_GRAD_VET_MED_EOUT) AS TOTAL_GRAD_VET_MED,',
'',
'sum(L.RML_COMBO_OFFER_EIN) + sum(S.RMS_COMBO_OFFER_EIN) AS TOTAL_COMBO_OFFER_EIN, ',
'sum(L.RML_COMBO_OFFER_EOUT) + sum(S.RMS_COMBO_OFFER_EOUT) AS TOTAL_COMBO_OFFER_EOUT,',
'sum(L.RML_COMBO_OFFER_EIN) + sum(S.RMS_COMBO_OFFER_EIN) + sum(L.RML_COMBO_OFFER_EOUT) + sum(S.RMS_COMBO_OFFER_EOUT) AS TOTAL_COMBO_OFFER,',
'	',
'sum(L.RML_FOR_STUD_E_IN) + sum(S.RMS_FOR_STUD_E_IN) AS TOTAL_FOR_STUD_EIN,',
'sum(L.RML_FOR_STUD_E_OUT) + sum(S.RMS_FOR_STUD_E_OUT) AS TOTAL_FOR_STUD_EOUT,',
'sum(L.RML_FOR_STUD_E_IN) + sum(S.RMS_FOR_STUD_E_IN) +  sum(L.RML_FOR_STUD_E_OUT) + sum(S.RMS_FOR_STUD_E_OUT) AS TOTAL_FOR_STUD',
'',
' from REC_MANG_LOANS L ',
' FULL JOIN REC_MANG_SCHOL S on S.RMS_EMP_ID = L.RML_EMP_ID',
' where (L.RML_DATE >= :RM_FROM_DATE AND  L.RML_DATE <= :RM_TO_DATE)',
' OR (S.RMS_DATE >= :RM_FROM_DATE AND  S.RMS_DATE <= :RM_TO_DATE);'))
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
,p_plug_header=>'Totals Of Loans And Scholarships'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71836686182461123)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71836686182461123
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71836903693461126)
,p_db_column_name=>'TOTAL_CURR_EIN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71837225720461129)
,p_db_column_name=>'TOTAL_CURR_EOUT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71837368667461130)
,p_db_column_name=>'TOTAL_CURR_HS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71837619785461133)
,p_db_column_name=>'TOTAL_INC_TRANS_EIN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Total Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71837948217461136)
,p_db_column_name=>'TOTAL_INC_TRANS_EOUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Total Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71838081157461137)
,p_db_column_name=>'TOTAL_INC_TRANS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71838326718461140)
,p_db_column_name=>'TOTAL_INC_GRAD_EIN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Total Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71838685944461143)
,p_db_column_name=>'TOTAL_INC_GRAD_EOUT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Total Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71838796559461144)
,p_db_column_name=>'TOTAL_INC_GRAD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Total Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71839037489461147)
,p_db_column_name=>'TOTAL_CURR_UG_EIN'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Total Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71839379328461150)
,p_db_column_name=>'TOTAL_CURR_UG_EOUT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Total Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71839464444638701)
,p_db_column_name=>'TOTAL_CURR_UG'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Total Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71839795298638704)
,p_db_column_name=>'TOTAL_GRAD_VET_MED_EIN'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Total Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71840099130638707)
,p_db_column_name=>'TOTAL_GRAD_VET_MED_EOUT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Total Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71840151362638708)
,p_db_column_name=>'TOTAL_GRAD_VET_MED'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Total Curr GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71840403260638711)
,p_db_column_name=>'TOTAL_COMBO_OFFER_EIN'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Total Combo / Other Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71840726861638714)
,p_db_column_name=>'TOTAL_COMBO_OFFER_EOUT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Total Combo / Other Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71840855274638715)
,p_db_column_name=>'TOTAL_COMBO_OFFER'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Total Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71841179378638718)
,p_db_column_name=>'TOTAL_FOR_STUD_EIN'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Total FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71841449017638821)
,p_db_column_name=>'TOTAL_FOR_STUD_EOUT'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Total FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71841580628638822)
,p_db_column_name=>'TOTAL_FOR_STUD'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Total FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71844477982639298)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'718445'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_CURR_EIN:TOTAL_CURR_EOUT:TOTAL_CURR_HS:TOTAL_INC_TRANS_EIN:TOTAL_INC_TRANS_EOUT:TOTAL_INC_TRANS:TOTAL_INC_GRAD_EIN:TOTAL_INC_GRAD_EOUT:TOTAL_INC_GRAD:TOTAL_CURR_UG_EIN:TOTAL_CURR_UG_EOUT:TOTAL_CURR_UG:TOTAL_GRAD_VET_MED_EIN:TOTAL_GRAD_VET_MED_E'
||'OUT:TOTAL_GRAD_VET_MED:TOTAL_COMBO_OFFER_EIN:TOTAL_COMBO_OFFER_EOUT:TOTAL_COMBO_OFFER:TOTAL_FOR_STUD_EIN:TOTAL_FOR_STUD_EOUT:TOTAL_FOR_STUD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57721664941181130)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57754295200262904)
,p_button_name=>'RM_SUMMARY_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rm Summary Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57721416695181128)
,p_name=>'RM_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57754295200262904)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57721522757181129)
,p_name=>'RM_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57754295200262904)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_FC_Summary_Stats'
,p_step_title=>'Goto_FC_Summary_Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710100934'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57035085589237845)
,p_plug_name=>'Front Counselor Summary Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57035191779237846)
,p_plug_name=>'Summary Stats Report '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select FC_EMP_ID as FC_Name_EMP  , sum (COUNS_PHONE) as FC_Phones,  sum (ACD) as FC_ACD , ',
'       sum (IN_PERSON) as FC_In_Person,  sum (NOT_SIGNED_IN) as FC_Not_Signed_In,  sum (EMAILIN) as FC_Email_In ,',
'       sum (EMAILOUT) as FC_Email_Out,	sum (CERT) as FC_CERT,  sum (STL) as FC_STL, ',
'       sum (REPORTS) as FC_Reports,  sum (MISC) as FC_Misc,    sum (EVALS) as FC_Evals,	',
'       sum (PJ) as FC_PJ,	sum (CURR_HS) as FC_Current_HS,    sum (INC_TRANSFER) as FC_Inc_TR, ',
'       sum (INC_GRAD) as FC_Inc_GR, sum (CURR_UG) as FC_Curr_UG, sum (MED) as FC_Cur_GR_Vet_Med,',
'       sum (COMBO) as FC_Combo, sum (FOR_STU) as FC_FS_STU, sum (ROUTED) as FC_Routed,',
'       sum (CURR_HS) +  sum (INC_TRANSFER)+  sum (INC_GRAD)+  sum (CURR_UG)+  sum (MED) ',
'        + sum (COMBO) + sum (FOR_STU) as FC_Fin_Email_Ans',
'             ',
'       from frontcouns where ENTER_DATE >= :FC_FROM_DATE AND ENTER_DATE <= :FC_TO_DATE group by FC_EMP_ID ;',
'  '))
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
 p_id=>wwv_flow_api.id(57063560813688201)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>57063560813688201
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274316602397046)
,p_db_column_name=>'FC_NAME_EMP'
,p_display_order=>10
,p_column_identifier=>'AQ'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274493627397047)
,p_db_column_name=>'FC_PHONES'
,p_display_order=>20
,p_column_identifier=>'AR'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274543137397048)
,p_db_column_name=>'FC_ACD'
,p_display_order=>30
,p_column_identifier=>'AS'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274695082397049)
,p_db_column_name=>'FC_IN_PERSON'
,p_display_order=>40
,p_column_identifier=>'AT'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274755741397050)
,p_db_column_name=>'FC_NOT_SIGNED_IN'
,p_display_order=>50
,p_column_identifier=>'AU'
,p_column_label=>'Not Signed In '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518325547568001)
,p_db_column_name=>'FC_EMAIL_IN'
,p_display_order=>60
,p_column_identifier=>'AV'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518462687568002)
,p_db_column_name=>'FC_EMAIL_OUT'
,p_display_order=>70
,p_column_identifier=>'AW'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518533865568003)
,p_db_column_name=>'FC_CERT'
,p_display_order=>80
,p_column_identifier=>'AX'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518651258568004)
,p_db_column_name=>'FC_STL'
,p_display_order=>90
,p_column_identifier=>'AY'
,p_column_label=>'STL''s'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518749795568005)
,p_db_column_name=>'FC_REPORTS'
,p_display_order=>100
,p_column_identifier=>'AZ'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518897403568006)
,p_db_column_name=>'FC_MISC'
,p_display_order=>110
,p_column_identifier=>'BA'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518989242568007)
,p_db_column_name=>'FC_EVALS'
,p_display_order=>120
,p_column_identifier=>'BB'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519091825568008)
,p_db_column_name=>'FC_PJ'
,p_display_order=>130
,p_column_identifier=>'BC'
,p_column_label=>'PJ'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519182798568009)
,p_db_column_name=>'FC_CURRENT_HS'
,p_display_order=>140
,p_column_identifier=>'BD'
,p_column_label=>'Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519247236568010)
,p_db_column_name=>'FC_INC_TR'
,p_display_order=>150
,p_column_identifier=>'BE'
,p_column_label=>'Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519353583568011)
,p_db_column_name=>'FC_INC_GR'
,p_display_order=>160
,p_column_identifier=>'BF'
,p_column_label=>'Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519423397568012)
,p_db_column_name=>'FC_CURR_UG'
,p_display_order=>170
,p_column_identifier=>'BG'
,p_column_label=>'Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519549309568013)
,p_db_column_name=>'FC_CUR_GR_VET_MED'
,p_display_order=>180
,p_column_identifier=>'BH'
,p_column_label=>'Curr GR / Vet Med '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519670232568014)
,p_db_column_name=>'FC_COMBO'
,p_display_order=>190
,p_column_identifier=>'BI'
,p_column_label=>'Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519730499568015)
,p_db_column_name=>'FC_FS_STU'
,p_display_order=>200
,p_column_identifier=>'BJ'
,p_column_label=>'FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519894830568016)
,p_db_column_name=>'FC_ROUTED'
,p_display_order=>210
,p_column_identifier=>'BK'
,p_column_label=>'Email Routed '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519977614568017)
,p_db_column_name=>'FC_FIN_EMAIL_ANS'
,p_display_order=>220
,p_column_identifier=>'BL'
,p_column_label=>'Total Finaid Email Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57098365118960125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570984'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FC_CURRENT_HSANSFERAD:FC_NAME_EMP:FC_PHONES:FC_ACD:FC_IN_PERSON:FC_NOT_SIGNED_IN:FC_EMAIL_IN:FC_EMAIL_OUT:FC_CERT:FC_STL:FC_REPORTS:FC_MISC:FC_EVALS:FC_PJ:FC_CURRENT_HS:FC_INC_TR:FC_INC_GR:FC_CURR_UG:FC_CUR_GR_VET_MED:FC_COMBO:FC_FS_STU:FC_ROUTED:FC_'
||'FIN_EMAIL_ANS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58840295392145104)
,p_plug_name=>'FC_Total_Summary'
,p_parent_plug_id=>wwv_flow_api.id(57035191779237846)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select sum (COUNS_PHONE) as FC_Phones   ,  sum(ACD) as FC_ACD ,  sum (IN_PERSON) as FC_In_Person,  sum (NOT_SIGNED_IN) as FC_Not_SIgned_In,  sum (EMAILIN) as FC_Email_In ,',
'       sum (EMAILOUT) as FC_Email_Out,	sum (CERT) as FC_CERT,  sum (STL) as FC_STL, ',
'       sum (REPORTS) as FC_Reports,  sum (MISC) as FC_Misc,    sum (EVALS) as FC_Evals,	',
'       sum (PJ) as FC_PJ,	sum (CURR_HS) as FC_Current_HS,    sum (INC_TRANSFER) as FC_Inc_TR, ',
'       sum (INC_GRAD) as FC_Inc_GR, sum (CURR_UG) as FC_Curr_UG, sum (MED) as FC_Curr_GR_Vet_Med,',
'       sum (COMBO) as FC_Combo,  sum (FOR_STU) as FC_STU, ',
'       sum (ROUTED) as FC_Routed,',
'       sum (CURR_HS) +  sum (INC_TRANSFER)+  sum (INC_GRAD)+  sum (CURR_UG)+  sum (MED) ',
'        + sum (COMBO) + sum (FOR_STU) as FC_Fin_Email_Ans  ',
'       from frontcouns where ENTER_DATE >= :FC_FROM_DATE AND ENTER_DATE <= :FC_TO_DATE ;'))
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
 p_id=>wwv_flow_api.id(58840380117145105)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>58840380117145105
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662024498955015)
,p_db_column_name=>'FC_PHONES'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662152725955016)
,p_db_column_name=>'FC_ACD'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662261059955017)
,p_db_column_name=>'FC_IN_PERSON'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662373764955018)
,p_db_column_name=>'FC_NOT_SIGNED_IN'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Not Signed In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662408911955019)
,p_db_column_name=>'FC_EMAIL_IN'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662535233955020)
,p_db_column_name=>'FC_EMAIL_OUT'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662608090955021)
,p_db_column_name=>'FC_CERT'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662750826955022)
,p_db_column_name=>'FC_STL'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'STL''s'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662855314955023)
,p_db_column_name=>'FC_REPORTS'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73662998735955024)
,p_db_column_name=>'FC_MISC'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663086020955025)
,p_db_column_name=>'FC_EVALS'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663123924955026)
,p_db_column_name=>'FC_PJ'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'PJ'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663283978955027)
,p_db_column_name=>'FC_CURRENT_HS'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663309730955028)
,p_db_column_name=>'FC_INC_TR'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663447721955029)
,p_db_column_name=>'FC_INC_GR'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663525004955030)
,p_db_column_name=>'FC_CURR_UG'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663696800955031)
,p_db_column_name=>'FC_CURR_GR_VET_MED'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Curr GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663726745955032)
,p_db_column_name=>'FC_COMBO'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663831064955033)
,p_db_column_name=>'FC_STU'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73663916166955034)
,p_db_column_name=>'FC_ROUTED'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73664048590955035)
,p_db_column_name=>'FC_FIN_EMAIL_ANS'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Total Finaid Email Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58928182124940423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'589282'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FC_PHONESANSFERAD:FC_PHONES:FC_ACD:FC_IN_PERSON:FC_NOT_SIGNED_IN:FC_EMAIL_IN:FC_EMAIL_OUT:FC_CERT:FC_STL:FC_REPORTS:FC_MISC:FC_EVALS:FC_PJ:FC_CURRENT_HS:FC_INC_TR:FC_INC_GR:FC_CURR_UG:FC_CURR_GR_VET_MED:FC_COMBO:FC_STU:FC_ROUTED:FC_FIN_EMAIL_ANS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57035523240237850)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57035085589237845)
,p_button_name=>'Fetch_Summary_Stats'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Summary Stats'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57035392098237848)
,p_name=>'FC_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57035085589237845)
,p_prompt=>'FROM DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57035444531237849)
,p_name=>'FC_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57035085589237845)
,p_prompt=>'TO DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Specific_Date_Data_records'
,p_step_title=>'Specific_Date_Data_records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710085450'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58488369662158023)
,p_plug_name=>'Specific_Date_Data_Entry_Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58488406826158024)
,p_plug_name=>'Specific_Date_Data_report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ',
'DES_DATE,',
'DES_EMP_ID	,',
'SCHOL	,',
'RCRSUSP	,',
'INBOXES	,',
'WORKFLOW,	',
'DES_MIL	,',
'COGNOS	,',
'FAXES	,',
'UPLOADS	,',
'EXNA	,',
'BOUNCE_BACK	,',
'SKIP_TRACE,	',
'AWDLTR	,',
'RTLTR	,',
'THANKU	,',
'DUPID	,',
'CPS_CORR	,',
'EMAILS_MOVED	,',
'IMG_CORR,	',
'COLLATE	,',
'NOTES  ',
'',
'From Data_Entry_Staff where DES_DATE =:SPECIFIC_DATE;'))
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
 p_id=>wwv_flow_api.id(58488547014158025)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>58488547014158025
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58488725626158027)
,p_db_column_name=>'DES_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242211384870342)
,p_db_column_name=>'DES_EMP_ID'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242383144870343)
,p_db_column_name=>'SCHOL'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Schol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242417927870344)
,p_db_column_name=>'RCRSUSP'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Rcrsusp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242508871870345)
,p_db_column_name=>'INBOXES'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Inboxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242602029870346)
,p_db_column_name=>'WORKFLOW'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Workflow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242744143870347)
,p_db_column_name=>'DES_MIL'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242813057870348)
,p_db_column_name=>'COGNOS'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242948001870349)
,p_db_column_name=>'FAXES'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Faxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74243080626870350)
,p_db_column_name=>'UPLOADS'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Uploads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319328592160401)
,p_db_column_name=>'EXNA'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Exna'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319402330160402)
,p_db_column_name=>'BOUNCE_BACK'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Bounce Back'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319532949160403)
,p_db_column_name=>'SKIP_TRACE'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Skip Trace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319616008160404)
,p_db_column_name=>'AWDLTR'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Awdltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319708626160405)
,p_db_column_name=>'RTLTR'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Rtltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319879256160406)
,p_db_column_name=>'THANKU'
,p_display_order=>380
,p_column_identifier=>'AK'
,p_column_label=>'Thanku'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319998368160407)
,p_db_column_name=>'DUPID'
,p_display_order=>390
,p_column_identifier=>'AL'
,p_column_label=>'Dup Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320032357160408)
,p_db_column_name=>'CPS_CORR'
,p_display_order=>400
,p_column_identifier=>'AM'
,p_column_label=>'Cps Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320111021160409)
,p_db_column_name=>'EMAILS_MOVED'
,p_display_order=>410
,p_column_identifier=>'AN'
,p_column_label=>'Emails Moved'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320291547160410)
,p_db_column_name=>'IMG_CORR'
,p_display_order=>420
,p_column_identifier=>'AO'
,p_column_label=>'Img Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320370554160411)
,p_db_column_name=>'COLLATE'
,p_display_order=>430
,p_column_identifier=>'AP'
,p_column_label=>'Collate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320460873160412)
,p_db_column_name=>'NOTES'
,p_display_order=>440
,p_column_identifier=>'AQ'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58522032613539564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'585221'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DES_DATE:DES_EMP_ID:SCHOL:RCRSUSP:INBOXES:WORKFLOW:DES_MIL:COGNOS:FAXES:UPLOADS:EXNA:BOUNCE_BACK:SKIP_TRACE:AWDLTR:RTLTR:THANKU:DUPID:CPS_CORR:EMAILS_MOVED:IMG_CORR:COLLATE:NOTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72046562914347550)
,p_plug_name=>'Specific Date DE Summary'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'sum(SCHOL) as 	SCHOL,',
'sum(RCRSUSP) as	RCRSUSP,',
'sum(INBOXES	) as INBOXES,',
'sum(WORKFLOW) as WORKFLOW,	',
'sum(DES_MIL	) as DES_MIL,',
'sum(COGNOS	) as COGNOS,',
'sum(FAXES	) as FAXES,',
'sum(UPLOADS	) as UPLOADS,',
'sum(EXNA	) as EXNA,',
'sum(BOUNCE_BACK	) as BOUNCE_BACK,',
'sum(SKIP_TRACE	) as SKIP_TRACE,',
'sum(AWDLTR	) as AWDLTR,',
'sum(RTLTR	) as RTLTR,',
'sum(THANKU	) as THANKU,',
'sum(DUPID	) as DUPID,',
'sum(CPS_CORR	) as CPS_CORR,',
'sum(EMAILS_MOVED	) as EMAILS_MOVED,',
'sum(IMG_CORR	) as IMG_CORR,',
'sum(COLLATE) as COLLATE from DATA_ENTRY_STAFF where DES_DATE =:SPECIFIC_DATE ;'))
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
 p_id=>wwv_flow_api.id(72089209209526001)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>72089209209526001
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089333093526002)
,p_db_column_name=>'SCHOL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Schol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089493608526003)
,p_db_column_name=>'RCRSUSP'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Rcrsusp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089595704526004)
,p_db_column_name=>'INBOXES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Inboxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089630657526005)
,p_db_column_name=>'WORKFLOW'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Workflow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089762589526006)
,p_db_column_name=>'DES_MIL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089851368526007)
,p_db_column_name=>'COGNOS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72089991204526008)
,p_db_column_name=>'FAXES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Faxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090092150526009)
,p_db_column_name=>'UPLOADS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Uploads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090155839526010)
,p_db_column_name=>'EXNA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Exna'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090235490526011)
,p_db_column_name=>'BOUNCE_BACK'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Bounce Back'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090372853526012)
,p_db_column_name=>'SKIP_TRACE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Skip Trace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090452649526013)
,p_db_column_name=>'AWDLTR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Awdltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090522736526014)
,p_db_column_name=>'RTLTR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Rtltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090671577526015)
,p_db_column_name=>'THANKU'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Thanku'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090760058526016)
,p_db_column_name=>'DUPID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Dupid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090818720526017)
,p_db_column_name=>'CPS_CORR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cps Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72090940598526018)
,p_db_column_name=>'EMAILS_MOVED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Emails Moved'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091060294526019)
,p_db_column_name=>'IMG_CORR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Img Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72091160970526020)
,p_db_column_name=>'COLLATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Collate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72094275539558445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'720943'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SCHOL:RCRSUSP:INBOXES:WORKFLOW:DES_MIL:COGNOS:FAXES:UPLOADS:EXNA:BOUNCE_BACK:SKIP_TRACE:AWDLTR:RTLTR:THANKU:DUPID:CPS_CORR:EMAILS_MOVED:IMG_CORR:COLLATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58490915522158049)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(58488369662158023)
,p_button_name=>'Fetch_Details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58490853655158048)
,p_name=>'SPECIFIC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58488369662158023)
,p_prompt=>'Specific Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Summary Stats of DataEntry Staff'
,p_step_title=>'Summary Stats of DataEntry Staff'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710101611'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58491009885158050)
,p_plug_name=>'Summary Stats of Data Entry Staff'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58523919035569401)
,p_plug_name=>'Summary_Stats_DataEntry'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select DES_EMP_ID, sum(SCHOL) as SCHOL, sum(RCRSUSP) as RCRSUSP , sum(INBOXES) as INBOXES , sum(WORKFLOW) as WORKFLOW,	sum(DES_MIL) as DES_MIL,	sum(COGNOS) as COGNOS ,	sum(FAXES) as FAXES,	',
'sum(UPLOADS) as UPLOADS, sum(EXNA) as EXNA, sum(BOUNCE_BACK) as BOUNCE_BACK, sum(SKIP_TRACE) as SKIP_TRACE,	sum(AWDLTR) as AWDLTR, sum(RTLTR) as RTLTR, sum(THANKU) as THANKU , sum(DUPID) as DUPID, sum(CPS_CORR) as CPS_CORR ,	',
'sum(EMAILS_MOVED) as EMAILS_MOVED,	sum(IMG_CORR) as IMG_CORR ,	sum(COLLATE) as COLLATE	',
' From DATA_ENTRY_STAFF where DES_DATE >= :ENTER_DATE1 and DES_DATE<= :ENTER_DATE2 group by DES_EMP_ID;'))
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
 p_id=>wwv_flow_api.id(58524008484569402)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>58524008484569402
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58528611041569448)
,p_db_column_name=>'DES_EMP_ID'
,p_display_order=>210
,p_column_identifier=>'AP'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71938789049429203)
,p_db_column_name=>'SCHOL'
,p_display_order=>220
,p_column_identifier=>'AQ'
,p_column_label=>'Schol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71938803510429204)
,p_db_column_name=>'RCRSUSP'
,p_display_order=>230
,p_column_identifier=>'AR'
,p_column_label=>'Rcrsusp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71938959450429205)
,p_db_column_name=>'INBOXES'
,p_display_order=>240
,p_column_identifier=>'AS'
,p_column_label=>'Inboxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939053862429206)
,p_db_column_name=>'WORKFLOW'
,p_display_order=>250
,p_column_identifier=>'AT'
,p_column_label=>'Workflow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939198959429207)
,p_db_column_name=>'DES_MIL'
,p_display_order=>260
,p_column_identifier=>'AU'
,p_column_label=>'Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939215541429208)
,p_db_column_name=>'COGNOS'
,p_display_order=>270
,p_column_identifier=>'AV'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939393393429209)
,p_db_column_name=>'FAXES'
,p_display_order=>280
,p_column_identifier=>'AW'
,p_column_label=>'Faxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939434613429210)
,p_db_column_name=>'UPLOADS'
,p_display_order=>290
,p_column_identifier=>'AX'
,p_column_label=>'Uploads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939519044429211)
,p_db_column_name=>'EXNA'
,p_display_order=>300
,p_column_identifier=>'AY'
,p_column_label=>'Exna'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939659007429212)
,p_db_column_name=>'BOUNCE_BACK'
,p_display_order=>310
,p_column_identifier=>'AZ'
,p_column_label=>'Bounce Back'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939779070429213)
,p_db_column_name=>'SKIP_TRACE'
,p_display_order=>320
,p_column_identifier=>'BA'
,p_column_label=>'Skip Trace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939817695429214)
,p_db_column_name=>'AWDLTR'
,p_display_order=>330
,p_column_identifier=>'BB'
,p_column_label=>'Awdltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71939903780429215)
,p_db_column_name=>'RTLTR'
,p_display_order=>340
,p_column_identifier=>'BC'
,p_column_label=>'Rtltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71940015109429216)
,p_db_column_name=>'THANKU'
,p_display_order=>350
,p_column_identifier=>'BD'
,p_column_label=>'Thanku'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71940143341429217)
,p_db_column_name=>'DUPID'
,p_display_order=>360
,p_column_identifier=>'BE'
,p_column_label=>'Dupid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71940256871429218)
,p_db_column_name=>'CPS_CORR'
,p_display_order=>370
,p_column_identifier=>'BF'
,p_column_label=>'Cps Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71940302484429219)
,p_db_column_name=>'EMAILS_MOVED'
,p_display_order=>380
,p_column_identifier=>'BG'
,p_column_label=>'Emails Moved'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71940469740429220)
,p_db_column_name=>'IMG_CORR'
,p_display_order=>390
,p_column_identifier=>'BH'
,p_column_label=>'Img Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71940511472429221)
,p_db_column_name=>'COLLATE'
,p_display_order=>400
,p_column_identifier=>'BI'
,p_column_label=>'Collate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58537927295585757)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'585380'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DES_EMP_ID:SCHOL:RCRSUSP:INBOXES:WORKFLOW:DES_MIL:COGNOS:FAXES:UPLOADS:EXNA:BOUNCE_BACK:SKIP_TRACE:AWDLTR:RTLTR:THANKU:DUPID:CPS_CORR:EMAILS_MOVED:IMG_CORR:COLLATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58526651477569428)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(58491009885158050)
,p_button_name=>'Fetch_Summary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Summary'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58526316976569425)
,p_name=>'ENTER_DATE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58491009885158050)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58526497523569426)
,p_name=>'ENTER_DATE2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58491009885158050)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Classification Totals'
,p_step_title=>'Classification Totals-Front and Back Counselors'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710102000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58528778021569449)
,p_plug_name=>'Class_Total'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58528882447569450)
,p_plug_name=>'Class_Total_FC and BC '
,p_parent_plug_id=>wwv_flow_api.id(58528778021569449)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'sum(BC_CURRENT_HS_APPT) AS CURRENT_HS_APPT,',
'sum(BC_CURRENT_HS_E_IN) AS CURRENT_HS_E_IN, ',
'sum(BC_CURRENT_HS_E_OUT)  + sum(F.CURR_HS) AS CURRENT_HS_E_OUT, ',
'sum(BC_CURRENT_HS_E_IN) + sum(BC_CURRENT_HS_E_OUT)  + sum(F.CURR_HS) AS CURRENT_HS_EMAIL_TOTAL,',
'sum(BC_CURRENT_HS_APPT) + sum(BC_CURRENT_HS_E_IN) + sum(BC_CURRENT_HS_E_OUT)  + sum(F.CURR_HS) as TOTAL_CURRENT_HS,',
' ',
' sum(BC_INC_TRANSFER_APPT) AS  INC_TRANSFER_APPT,',
'  sum(BC_INC_TRANSFER_E_IN) AS INC_TRANSFER_E_IN,',
'  sum(BC_INC_TRANSFER_E_OUT) +  sum(F.INC_TRANSFER) AS INC_TRANSFER_E_OUT,',
'  sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_TRANSFER_E_OUT) +  sum(F.INC_TRANSFER) AS INC_TRANSFER_EMAIL_TOTAL,',
'  sum(BC_INC_TRANSFER_APPT) + sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_TRANSFER_E_OUT) +  sum(F.INC_TRANSFER) AS TOTAL_INC_TRANSFER,',
'  ',
'  sum(BC_INC_GRAD_APPT)  AS INC_GRAD_APPT,',
'  sum(BC_INC_GRAD_E_IN) AS INC_GRAD_E_IN,',
'  sum(BC_INC_GRAD_E_OUT) +  sum(F.INC_GRAD) AS INC_GRAD_E_OUT,',
'  sum(BC_INC_GRAD_E_IN) + sum(BC_INC_GRAD_E_OUT) +  sum(F.INC_GRAD) AS INC_GRAD_EMAIL_TOTAL,',
'  sum(BC_INC_GRAD_APPT) + sum(BC_INC_GRAD_E_IN) + sum(BC_INC_GRAD_E_OUT) +  sum(F.INC_GRAD) AS TOTAL_INC_GRAD,',
'  ',
'   sum(BC_CURRENT_UG_APPT) AS CURRENT_UG_APPT,',
'  sum(BC_CURRENT_UG_E_IN) AS CURRENT_UG_E_IN,',
'  sum(BC_CURRENT_UG_E_OUT) +  sum(F.CURR_UG) AS CURRENT_UG_E_OUT,',
'   sum(BC_CURRENT_UG_E_IN) +  sum(BC_CURRENT_UG_E_OUT) +  sum(F.CURR_UG) AS CURRENT_UG_EMAIL_TOTAL,',
'  sum(BC_CURRENT_UG_APPT)+ sum(BC_CURRENT_UG_E_IN) + sum(BC_CURRENT_UG_E_OUT) +  sum(F.CURR_UG) AS TOTAL_CURRENT_UG,',
'  ',
'  ',
'  sum(BC_GRAD_VET_MED_APPT) AS GRAD_VET_MED_APPT,',
'  sum(BC_GRAD_VET_MED_E_IN) AS  GRAD_VET_MED_E_IN,',
'  sum(BC_GRAD_VET_MED_E_OUT) +  sum(F.MED) AS GRAD_VET_MED_E_OUT,',
'  sum(BC_GRAD_VET_MED_E_IN) + sum(BC_GRAD_VET_MED_E_OUT) +  sum(F.MED) AS GRAD_VET_MED_EMAIL_TOTAL,',
'  sum(BC_GRAD_VET_MED_APPT) + sum(BC_GRAD_VET_MED_E_IN)+ sum(BC_GRAD_VET_MED_E_OUT) +  sum(F.MED) AS TOTAL_GRAD_VET_MED,',
'  ',
'  ',
'  sum(BC_COMBO_OTHER_APPT) AS COMBO_OTHER_APPT,',
'  sum(BC_COMBO_OTHER_E_IN) AS COMBO_OTHER_E_IN,',
'  sum(BC_COMBO_OTHER_E_OUT) + sum(F.COMBO) AS COMBO_OTHER_E_OUT,',
'  sum(BC_COMBO_OTHER_E_IN) + sum(BC_COMBO_OTHER_E_OUT) + sum(F.COMBO) AS COMBO_OTHER_EMAIL_TOTAL,',
'  sum(BC_COMBO_OTHER_APPT)+ sum(BC_COMBO_OTHER_E_IN) + sum(BC_COMBO_OTHER_E_OUT) + sum(F.COMBO) AS TOTAL_COMBO_OTHER,',
'  ',
'  ',
'  sum(BC_FORMER_STUDENT_APPT) AS FORMER_STUDENT_APPT,',
'  sum(BC_FORMER_STUDENT_E_IN) AS FORMER_STUDENT_E_IN,',
'   sum(BC_FORMER_STUDENT_E_OUT) + sum(F.FOR_STU) AS FORMER_STUDENT_E_OUT, ',
'   sum(BC_FORMER_STUDENT_E_IN) + sum(BC_FORMER_STUDENT_E_OUT) + sum(F.FOR_STU) AS FORMER_STUDENT_EMAIL_TOTAL,',
'   sum(BC_FORMER_STUDENT_APPT) + sum(BC_FORMER_STUDENT_E_IN)+ sum(BC_FORMER_STUDENT_E_OUT) + sum(F.FOR_STU) AS TOTAL_FORMER_STUDENT,',
'  ',
'',
'  sum(BC_CURRENT_HS_APPT) + sum(BC_INC_TRANSFER_APPT) + sum(BC_INC_GRAD_APPT) + sum(BC_CURRENT_UG_APPT) +',
'  sum(BC_GRAD_VET_MED_APPT) + sum(BC_COMBO_OTHER_APPT) + sum(BC_FORMER_STUDENT_APPT) as Total_Appointments,',
'  ',
'',
'  sum(BC_CURRENT_HS_E_IN) + sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_GRAD_E_IN) + sum(BC_CURRENT_UG_E_IN) + sum(BC_GRAD_VET_MED_E_IN) + ',
'  sum(BC_COMBO_OTHER_E_IN) + sum(BC_FORMER_STUDENT_E_IN) as TOTAL_Emails_In,',
'    ',
'  ',
'  sum(BC_CURRENT_HS_E_OUT)  + sum(F.CURR_HS)+ sum(BC_INC_TRANSFER_E_OUT)+  sum(F.INC_TRANSFER) + sum(BC_INC_GRAD_E_OUT)+  sum(F.INC_GRAD) ',
'  + sum(BC_CURRENT_UG_E_OUT)+  sum(F.CURR_UG) + sum(BC_GRAD_VET_MED_E_OUT) +  sum(F.MED) +',
'  sum(BC_COMBO_OTHER_E_OUT) + sum(F.COMBO)+ sum(BC_FORMER_STUDENT_E_OUT) + sum(F.FOR_STU)  as Total_Emails_Out',
'',
'  ',
'FROM Back_couns B ',
'FULL JOIN FRONTCOUNS F ON B.BC_EMP_ID = F.FC_EMP_ID',
'WHERE ((B.ENTER_DATE >=:FROM_DATE1  AND B.ENTER_DATE <=:TO_DATE1 )',
' AND ( F.ENTER_DATE >=:FROM_DATE1 AND F.ENTER_DATE <=:TO_DATE1));',
''))
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
,p_plug_header=>'Class Total Front Counselors and Back Counselors '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(58503970736164601)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>58503970736164601
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59584005180495621)
,p_db_column_name=>'CURRENT_HS_APPT'
,p_display_order=>240
,p_column_identifier=>'GB'
,p_column_label=>'Curr HS / Inc FR Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72456476536091232)
,p_db_column_name=>'CURRENT_HS_E_IN'
,p_display_order=>250
,p_column_identifier=>'GC'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72456518202091233)
,p_db_column_name=>'CURRENT_HS_E_OUT'
,p_display_order=>260
,p_column_identifier=>'GD'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72456601776091234)
,p_db_column_name=>'CURRENT_HS_EMAIL_TOTAL'
,p_display_order=>270
,p_column_identifier=>'GE'
,p_column_label=>' Curr HS / Inc FR Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72456724339091235)
,p_db_column_name=>'TOTAL_CURRENT_HS'
,p_display_order=>280
,p_column_identifier=>'GF'
,p_column_label=>'Total Curr HS / Inc FR '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72456891406091236)
,p_db_column_name=>'INC_TRANSFER_APPT'
,p_display_order=>290
,p_column_identifier=>'GG'
,p_column_label=>'Inc  UG TR Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72456955373091237)
,p_db_column_name=>'INC_TRANSFER_E_IN'
,p_display_order=>300
,p_column_identifier=>'GH'
,p_column_label=>'Inc  UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457005091091238)
,p_db_column_name=>'INC_TRANSFER_E_OUT'
,p_display_order=>310
,p_column_identifier=>'GI'
,p_column_label=>'Inc  UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457104915091239)
,p_db_column_name=>'INC_TRANSFER_EMAIL_TOTAL'
,p_display_order=>320
,p_column_identifier=>'GJ'
,p_column_label=>'Inc UG TR Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457289241091240)
,p_db_column_name=>'TOTAL_INC_TRANSFER'
,p_display_order=>330
,p_column_identifier=>'GK'
,p_column_label=>'Total Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457309128091241)
,p_db_column_name=>'INC_GRAD_APPT'
,p_display_order=>340
,p_column_identifier=>'GL'
,p_column_label=>'Inc GR / Vet Med Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457429288091242)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>350
,p_column_identifier=>'GM'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457540398091243)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>360
,p_column_identifier=>'GN'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457691290091244)
,p_db_column_name=>'INC_GRAD_EMAIL_TOTAL'
,p_display_order=>370
,p_column_identifier=>'GO'
,p_column_label=>'Inc GR / Vet Med Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457725706091245)
,p_db_column_name=>'TOTAL_INC_GRAD'
,p_display_order=>380
,p_column_identifier=>'GP'
,p_column_label=>'Total Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457808774091246)
,p_db_column_name=>'CURRENT_UG_APPT'
,p_display_order=>390
,p_column_identifier=>'GQ'
,p_column_label=>'Curr UG Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72457973105091247)
,p_db_column_name=>'CURRENT_UG_E_IN'
,p_display_order=>400
,p_column_identifier=>'GR'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72458089215091248)
,p_db_column_name=>'CURRENT_UG_E_OUT'
,p_display_order=>410
,p_column_identifier=>'GS'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72458174743091249)
,p_db_column_name=>'CURRENT_UG_EMAIL_TOTAL'
,p_display_order=>420
,p_column_identifier=>'GT'
,p_column_label=>'Curr UG Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72458213142091250)
,p_db_column_name=>'TOTAL_CURRENT_UG'
,p_display_order=>430
,p_column_identifier=>'GU'
,p_column_label=>'Total Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72779870841939301)
,p_db_column_name=>'GRAD_VET_MED_APPT'
,p_display_order=>440
,p_column_identifier=>'GV'
,p_column_label=>'Curr GR / Vet Med Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72779974119939302)
,p_db_column_name=>'GRAD_VET_MED_E_IN'
,p_display_order=>450
,p_column_identifier=>'GW'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780063631939303)
,p_db_column_name=>'GRAD_VET_MED_E_OUT'
,p_display_order=>460
,p_column_identifier=>'GX'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780165797939304)
,p_db_column_name=>'GRAD_VET_MED_EMAIL_TOTAL'
,p_display_order=>470
,p_column_identifier=>'GY'
,p_column_label=>'Curr GR / Vet Med Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780276919939305)
,p_db_column_name=>'TOTAL_GRAD_VET_MED'
,p_display_order=>480
,p_column_identifier=>'GZ'
,p_column_label=>'Total Curr GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780339965939306)
,p_db_column_name=>'COMBO_OTHER_APPT'
,p_display_order=>490
,p_column_identifier=>'HA'
,p_column_label=>'Combo / Other Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780489884939307)
,p_db_column_name=>'COMBO_OTHER_E_IN'
,p_display_order=>500
,p_column_identifier=>'HB'
,p_column_label=>'Combo / Other Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780508868939308)
,p_db_column_name=>'COMBO_OTHER_E_OUT'
,p_display_order=>510
,p_column_identifier=>'HC'
,p_column_label=>'Combo / Other Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780694387939309)
,p_db_column_name=>'COMBO_OTHER_EMAIL_TOTAL'
,p_display_order=>520
,p_column_identifier=>'HD'
,p_column_label=>'Combo / Other Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780779172939310)
,p_db_column_name=>'TOTAL_COMBO_OTHER'
,p_display_order=>530
,p_column_identifier=>'HE'
,p_column_label=>'Total Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780862781939311)
,p_db_column_name=>'FORMER_STUDENT_APPT'
,p_display_order=>540
,p_column_identifier=>'HF'
,p_column_label=>'FS Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72780968907939312)
,p_db_column_name=>'FORMER_STUDENT_E_IN'
,p_display_order=>550
,p_column_identifier=>'HG'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72781052178939313)
,p_db_column_name=>'FORMER_STUDENT_E_OUT'
,p_display_order=>560
,p_column_identifier=>'HH'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72781144874939314)
,p_db_column_name=>'FORMER_STUDENT_EMAIL_TOTAL'
,p_display_order=>570
,p_column_identifier=>'HI'
,p_column_label=>'FS Emails Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72781205242939315)
,p_db_column_name=>'TOTAL_FORMER_STUDENT'
,p_display_order=>580
,p_column_identifier=>'HJ'
,p_column_label=>'Total FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72781316365939316)
,p_db_column_name=>'TOTAL_APPOINTMENTS'
,p_display_order=>590
,p_column_identifier=>'HK'
,p_column_label=>'Total Appointments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72781469234939317)
,p_db_column_name=>'TOTAL_EMAILS_IN'
,p_display_order=>600
,p_column_identifier=>'HL'
,p_column_label=>'Total Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72781554161939318)
,p_db_column_name=>'TOTAL_EMAILS_OUT'
,p_display_order=>610
,p_column_identifier=>'HM'
,p_column_label=>'Total Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58569999275180739)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'585700'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_ENTER_DATE:BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_BC_IN_PERSON:CURRENT_HS_APPT:CURRENT_HS_E_IN:CURRENT_HS_E_OUT:CURRENT_HS_EMAIL_TOTAL:TOTAL_CURRENT_HS:INC_TRANSFE'
||'R_APPT:INC_TRANSFER_E_IN:INC_TRANSFER_E_OUT:INC_TRANSFER_EMAIL_TOTAL:TOTAL_INC_TRANSFER:INC_GRAD_APPT:INC_GRAD_E_IN:INC_GRAD_E_OUT:INC_GRAD_EMAIL_TOTAL:TOTAL_INC_GRAD:CURRENT_UG_APPT:CURRENT_UG_E_IN:CURRENT_UG_E_OUT:CURRENT_UG_EMAIL_TOTAL:TOTAL_CURRE'
||'NT_UG:GRAD_VET_MED_APPT:GRAD_VET_MED_E_IN:GRAD_VET_MED_E_OUT:GRAD_VET_MED_EMAIL_TOTAL:TOTAL_GRAD_VET_MED:COMBO_OTHER_APPT:COMBO_OTHER_E_IN:COMBO_OTHER_E_OUT:COMBO_OTHER_EMAIL_TOTAL:TOTAL_COMBO_OTHER:FORMER_STUDENT_APPT:FORMER_STUDENT_E_IN:FORMER_STUD'
||'ENT_E_OUT:FORMER_STUDENT_EMAIL_TOTAL:TOTAL_FORMER_STUDENT:TOTAL_APPOINTMENTS:TOTAL_EMAILS_IN:TOTAL_EMAILS_OUT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74320567312160413)
,p_plug_name=>'Total Loans and Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(58528778021569449)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 			',
'sum(L.RML_CURR_HS_E_IN) + sum(S.RMS_CURR_HS_E_IN) as TOTAL_CURR_EIN,',
'sum(L.RML_CURR_HS_E_OUT) + sum(S.RMS_CURR_HS_E_OUT) AS  TOTAL_CURR_EOUT, ',
'sum(L.RML_CURR_HS_E_IN) + sum(S.RMS_CURR_HS_E_IN) + sum(L.RML_CURR_HS_E_OUT) + sum(S.RMS_CURR_HS_E_OUT) AS  TOTAL_CURR_HS ,	',
'',
'',
'sum(L.RML_INC_TRANS_E_IN)+ sum(S.RMS_INC_TRANS_E_IN) AS TOTAL_INC_TRANS_EIN,',
'sum(L.RML_INC_TRANS_E_OUT) + sum(S.RMS_INC_TRANS_E_OUT) AS TOTAL_INC_TRANS_EOUT, ',
'sum(L.RML_INC_TRANS_E_IN)+ sum(S.RMS_INC_TRANS_E_IN) + sum(L.RML_INC_TRANS_E_OUT) + sum(S.RMS_INC_TRANS_E_OUT) AS TOTAL_INC_TRANS,',
'',
'',
'sum(L.RML_INC_GRAD_E_IN) + sum(S.RMS_INC_GRAD_E_IN) AS TOTAL_INC_GRAD_EIN, ',
'sum(L.RML_INC_GRAD_E_OUT) + sum(S.RMS_INC_GRAD_E_OUT) AS TOTAL_INC_GRAD_EOUT, ',
'sum(L.RML_INC_GRAD_E_IN) + sum(S.RMS_INC_GRAD_E_IN) +  sum(L.RML_INC_GRAD_E_OUT) + sum(S.RMS_INC_GRAD_E_OUT) AS TOTAL_INC_GRAD,',
'	',
'sum(L.RML_CURR_UG_E_IN) + sum(S.RMS_CURR_UG_E_IN) AS TOTAL_CURR_UG_EIN , ',
'sum(L.RML_CURR_UG_E_OUT) + 	sum(S.RMS_CURR_UG_E_OUT) AS TOTAL_CURR_UG_EOUT, ',
'sum(L.RML_CURR_UG_E_IN) + sum(S.RMS_CURR_UG_E_IN) + sum(L.RML_CURR_UG_E_OUT) + 	sum(S.RMS_CURR_UG_E_OUT) AS TOTAL_CURR_UG,',
'	',
'sum(L.RML_GRAD_VET_MED_EIN) + sum(S.RMS_GRAD_VET_MED_EIN) AS TOTAL_GRAD_VET_MED_EIN,',
'sum(L.RML_GRAD_VET_MED_EOUT) +sum(S.RMS_GRAD_VET_MED_EOUT) AS TOTAL_GRAD_VET_MED_EOUT, ',
'sum(L.RML_GRAD_VET_MED_EIN) + sum(S.RMS_GRAD_VET_MED_EIN) + sum(L.RML_GRAD_VET_MED_EOUT) +sum(S.RMS_GRAD_VET_MED_EOUT) AS TOTAL_GRAD_VET_MED,',
'',
'sum(L.RML_COMBO_OFFER_EIN) + sum(S.RMS_COMBO_OFFER_EIN) AS TOTAL_COMBO_OFFER_EIN, ',
'sum(L.RML_COMBO_OFFER_EOUT) + sum(S.RMS_COMBO_OFFER_EOUT) AS TOTAL_COMBO_OFFER_EOUT,',
'sum(L.RML_COMBO_OFFER_EIN) + sum(S.RMS_COMBO_OFFER_EIN) + sum(L.RML_COMBO_OFFER_EOUT) + sum(S.RMS_COMBO_OFFER_EOUT) AS TOTAL_COMBO_OFFER,',
'	',
'sum(L.RML_FOR_STUD_E_IN) + sum(S.RMS_FOR_STUD_E_IN) AS TOTAL_FOR_STUD_EIN,',
'sum(L.RML_FOR_STUD_E_OUT) + sum(S.RMS_FOR_STUD_E_OUT) AS TOTAL_FOR_STUD_EOUT,',
'sum(L.RML_FOR_STUD_E_IN) + sum(S.RMS_FOR_STUD_E_IN) +  sum(L.RML_FOR_STUD_E_OUT) + sum(S.RMS_FOR_STUD_E_OUT) AS TOTAL_FOR_STUD',
'',
' from REC_MANG_LOANS L ',
' FULL JOIN REC_MANG_SCHOL S on S.RMS_EMP_ID = L.RML_EMP_ID',
' where (L.RML_DATE >= :FROM_DATE1 AND  L.RML_DATE <= :TO_DATE1)',
' OR (S.RMS_DATE >= :FROM_DATE1 AND  S.RMS_DATE <= :TO_DATE1);'))
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
,p_plug_header=>'Total Loans and Scholarships'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74320671413160414)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74320671413160414
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320762267160415)
,p_db_column_name=>'TOTAL_CURR_EIN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Curr HS / Inc FR Email In '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320814734160416)
,p_db_column_name=>'TOTAL_CURR_EOUT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320950239160417)
,p_db_column_name=>'TOTAL_CURR_HS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321018903160418)
,p_db_column_name=>'TOTAL_INC_TRANS_EIN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321157196160419)
,p_db_column_name=>'TOTAL_INC_TRANS_EOUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321293525160420)
,p_db_column_name=>'TOTAL_INC_TRANS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321361882160421)
,p_db_column_name=>'TOTAL_INC_GRAD_EIN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321402505160422)
,p_db_column_name=>'TOTAL_INC_GRAD_EOUT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321564067160423)
,p_db_column_name=>'TOTAL_INC_GRAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Total Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321618795160424)
,p_db_column_name=>'TOTAL_CURR_UG_EIN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321718493160425)
,p_db_column_name=>'TOTAL_CURR_UG_EOUT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321884664160426)
,p_db_column_name=>'TOTAL_CURR_UG'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Total  Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74321985282160427)
,p_db_column_name=>'TOTAL_GRAD_VET_MED_EIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322095540160428)
,p_db_column_name=>'TOTAL_GRAD_VET_MED_EOUT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322162938160429)
,p_db_column_name=>'TOTAL_GRAD_VET_MED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Total Curr GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322238056160430)
,p_db_column_name=>'TOTAL_COMBO_OFFER_EIN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322303075160431)
,p_db_column_name=>'TOTAL_COMBO_OFFER_EOUT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322450704160432)
,p_db_column_name=>'TOTAL_COMBO_OFFER'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Total Combo / Offer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322574382160433)
,p_db_column_name=>'TOTAL_FOR_STUD_EIN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'FS Email In '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322687302160434)
,p_db_column_name=>'TOTAL_FOR_STUD_EOUT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'FS Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74322733982160435)
,p_db_column_name=>'TOTAL_FOR_STUD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Total FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74348171098175457)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743482'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_CURR_EIN:TOTAL_CURR_EOUT:TOTAL_CURR_HS:TOTAL_INC_TRANS_EIN:TOTAL_INC_TRANS_EOUT:TOTAL_INC_TRANS:TOTAL_INC_GRAD_EIN:TOTAL_INC_GRAD_EOUT:TOTAL_INC_GRAD:TOTAL_CURR_UG_EIN:TOTAL_CURR_UG_EOUT:TOTAL_CURR_UG:TOTAL_GRAD_VET_MED_EIN:TOTAL_GRAD_VET_MED_E'
||'OUT:TOTAL_GRAD_VET_MED:TOTAL_COMBO_OFFER_EIN:TOTAL_COMBO_OFFER_EOUT:TOTAL_COMBO_OFFER:TOTAL_FOR_STUD_EIN:TOTAL_FOR_STUD_EOUT:TOTAL_FOR_STUD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74322866703160436)
,p_plug_name=>'Totals'
,p_parent_plug_id=>wwv_flow_api.id(58528778021569449)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'    coalesce(sum(B.BC_CURRENT_HS_E_IN),0) +  coalesce(sum(L.RML_CURR_HS_E_IN),0) +  coalesce(sum(S.RMS_CURR_HS_E_IN),0) AS CURRENT_HS_EMAIL_IN,',
'     coalesce(sum(B.BC_CURRENT_HS_E_OUT),0)  + coalesce(sum(F.CURR_HS),0) + coalesce(sum(L.RML_CURR_HS_E_OUT),0) + coalesce(sum(S.RMS_CURR_HS_E_OUT),0) AS CURRENT_HS_EMAIL_OUT, ',
'    coalesce(sum(B.BC_CURRENT_HS_E_IN),0) +  coalesce(sum(L.RML_CURR_HS_E_IN),0) + coalesce(sum(S.RMS_CURR_HS_E_IN),0) + coalesce( sum(L.RML_CURR_HS_E_OUT),0) ',
'     + coalesce(sum(S.RMS_CURR_HS_E_OUT),0) + coalesce(sum(BC_CURRENT_HS_E_OUT),0)  + coalesce(sum(F.CURR_HS),0) AS CURRENT_HS_EMAIL_TOTAL,',
'     ',
'     ',
'  coalesce(sum(B.BC_INC_TRANSFER_E_IN),0) + coalesce(sum(L.RML_INC_TRANS_E_IN),0)+ coalesce(sum(S.RMS_INC_TRANS_E_IN),0) AS INC_TRANSFER_EMAIL_IN,',
'  coalesce(sum(B.BC_INC_TRANSFER_E_OUT),0) +  coalesce(sum(F.INC_TRANSFER),0) + coalesce(sum(L.RML_INC_TRANS_E_OUT),0) + coalesce(sum(S.RMS_INC_TRANS_E_OUT),0) AS INC_TRANSFER_EMAIL_OUT,',
'  coalesce(sum(B.BC_INC_TRANSFER_E_IN),0) + coalesce(sum(L.RML_INC_TRANS_E_IN),0)+ coalesce(sum(S.RMS_INC_TRANS_E_IN),0) + coalesce(sum(BC_INC_TRANSFER_E_OUT),0) +',
'   coalesce(sum(F.INC_TRANSFER),0) + coalesce(sum(L.RML_INC_TRANS_E_OUT),0) + coalesce(sum(S.RMS_INC_TRANS_E_OUT),0) AS INC_TRANSFER_EMAIL_TOTAL,',
'',
' ',
'  coalesce(sum(B.BC_INC_GRAD_E_IN),0) + coalesce(sum(L.RML_INC_GRAD_E_IN),0) + coalesce(sum(S.RMS_INC_GRAD_E_IN),0) AS INC_GRAD_EMAIL_IN,',
'  coalesce(sum(B.BC_INC_GRAD_E_OUT),0) +  coalesce(sum(F.INC_GRAD),0) +  coalesce(sum(L.RML_INC_GRAD_E_OUT),0) + coalesce(sum(S.RMS_INC_GRAD_E_OUT),0) AS INC_GRAD_EMAIL_OUT,',
'  coalesce(sum(B.BC_INC_GRAD_E_IN),0) + coalesce(sum(B.BC_INC_GRAD_E_OUT),0) +  coalesce(sum(F.INC_GRAD),0) + coalesce(sum(L.RML_INC_GRAD_E_IN),0) + ',
'   coalesce(sum(S.RMS_INC_GRAD_E_IN),0) + coalesce(sum(L.RML_INC_GRAD_E_OUT),0) + coalesce(sum(S.RMS_INC_GRAD_E_OUT),0) AS INC_GRAD_EMAIL_TOTAL,',
'',
'',
' ',
' coalesce( sum(B.BC_CURRENT_UG_E_IN),0) + coalesce(sum(L.RML_CURR_UG_E_IN),0) + coalesce(sum(S.RMS_CURR_UG_E_IN),0) AS CURRENT_UG_EMAIL_IN,',
'  coalesce(sum(BC_CURRENT_UG_E_OUT),0) +  coalesce(sum(F.CURR_UG),0) + coalesce(sum(L.RML_CURR_UG_E_OUT),0) + 	coalesce(sum(S.RMS_CURR_UG_E_OUT),0) AS CURRENT_UG_EMAIL_OUT,',
'  coalesce( sum(BC_CURRENT_UG_E_IN),0) +  coalesce(sum(B.BC_CURRENT_UG_E_OUT),0) +  coalesce(sum(F.CURR_UG),0)  + coalesce(sum(L.RML_CURR_UG_E_IN),0) + ',
'    coalesce(sum(S.RMS_CURR_UG_E_IN),0) + coalesce(sum(L.RML_CURR_UG_E_OUT),0) + 	coalesce(sum(S.RMS_CURR_UG_E_OUT),0) AS CURRENT_UG_EMAIL_TOTAL,',
'',
'  ',
'',
'  coalesce(sum(B.BC_GRAD_VET_MED_E_IN),0) + coalesce(sum(L.RML_GRAD_VET_MED_EIN),0) + coalesce(sum(S.RMS_GRAD_VET_MED_EIN),0) AS  GRAD_VET_MED_EMAIL_IN,',
' coalesce( sum(B.BC_GRAD_VET_MED_E_OUT),0) +  coalesce(sum(F.MED),0) + coalesce(sum(L.RML_GRAD_VET_MED_EOUT),0) + coalesce(sum(S.RMS_GRAD_VET_MED_EOUT),0) AS GRAD_VET_MED_EMAIL_OUT,',
' coalesce( sum(B.BC_GRAD_VET_MED_E_IN),0) + coalesce(sum(B.BC_GRAD_VET_MED_E_OUT),0) +  coalesce(sum(F.MED),0) + coalesce(sum(L.RML_GRAD_VET_MED_EOUT),0) +',
'  coalesce(sum(S.RMS_GRAD_VET_MED_EOUT),0) + coalesce(sum(L.RML_GRAD_VET_MED_EIN),0) + coalesce(sum(S.RMS_GRAD_VET_MED_EIN),0) AS GRAD_VET_MED_EMAIL_TOTAL,',
' ',
'',
'  coalesce(sum(B.BC_COMBO_OTHER_E_IN),0) + coalesce(sum(L.RML_COMBO_OFFER_EIN),0) + coalesce(sum(S.RMS_COMBO_OFFER_EIN),0) AS COMBO_OTHER_EMAIL_IN,',
'  coalesce(sum(B.BC_COMBO_OTHER_E_OUT),0) + coalesce(sum(F.COMBO),0) +  coalesce(sum(L.RML_COMBO_OFFER_EOUT),0) + coalesce(sum(S.RMS_COMBO_OFFER_EOUT),0) AS COMBO_OTHER_EMAIL_OUT,',
'  coalesce(sum(B.BC_COMBO_OTHER_E_IN),0) + coalesce(sum(B.BC_COMBO_OTHER_E_OUT),0) + coalesce(sum(F.COMBO),0) + coalesce( sum(L.RML_COMBO_OFFER_EIN),0) + ',
'  coalesce(sum(S.RMS_COMBO_OFFER_EIN),0) +  coalesce(sum(L.RML_COMBO_OFFER_EOUT),0) + coalesce(sum(S.RMS_COMBO_OFFER_EOUT),0) AS COMBO_OTHER_EMAIL_TOTAL,',
'',
'  ',
'',
'  coalesce( sum(B.BC_FORMER_STUDENT_E_IN),0) + coalesce(sum(L.RML_FOR_STUD_E_IN),0) + coalesce(sum(S.RMS_FOR_STUD_E_IN),0) AS FORMER_STUDENT_EMAIL_IN,',
'  coalesce( sum(B.BC_FORMER_STUDENT_E_OUT),0) + coalesce(sum(F.FOR_STU),0) + coalesce(sum(L.RML_FOR_STUD_E_OUT),0) + coalesce(sum(S.RMS_FOR_STUD_E_OUT),0) AS FORMER_STUDENT_EMAIL_OUT, ',
'   coalesce(sum(B.BC_FORMER_STUDENT_E_IN),0) + coalesce(sum(B.BC_FORMER_STUDENT_E_OUT),0) + coalesce(sum(F.FOR_STU),0) + coalesce(sum(L.RML_FOR_STUD_E_IN),0) + ',
'   coalesce(sum(S.RMS_FOR_STUD_E_IN),0) +    coalesce( sum(L.RML_FOR_STUD_E_OUT),0) + coalesce(sum(S.RMS_FOR_STUD_E_OUT),0) AS FORMER_STUDENT_EMAIL_TOTAL',
'',
'',
'',
'   ',
' ',
'',
'FROM Back_couns B ',
'FULL JOIN FRONTCOUNS F ON F.FC_EMP_ID = B.BC_EMP_ID  ',
'FULL JOIN REC_MANG_LOANS L ON L.RML_EMP_ID = B.BC_EMP_ID  ',
' FULL JOIN REC_MANG_SCHOL S ON S.RMS_EMP_ID = L.RML_EMP_ID',
'WHERE ((B.ENTER_DATE >= :FROM_DATE1  AND  B.ENTER_DATE <= :TO_DATE1  )',
' AND ( F.ENTER_DATE >= :FROM_DATE1  AND F.ENTER_DATE <= :TO_DATE1))',
' OR ((L.RML_DATE >= :FROM_DATE1 AND  L.RML_DATE <= :TO_DATE1)',
' AND (S.RMS_DATE >= :FROM_DATE1 AND  S.RMS_DATE <= :TO_DATE1));',
'',
' ',
' ',
' ',
' ',
' ',
' '))
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
,p_plug_header=>'Class Totals'
);
end;
/
begin
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74322953070160437)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74322953070160437
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74402987748311526)
,p_db_column_name=>'CURRENT_HS_EMAIL_IN'
,p_display_order=>10
,p_column_identifier=>'V'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982353884135611)
,p_db_column_name=>'CURRENT_HS_EMAIL_OUT'
,p_display_order=>20
,p_column_identifier=>'W'
,p_column_label=>'Curr HS / Inc FR Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982410082135612)
,p_db_column_name=>'CURRENT_HS_EMAIL_TOTAL'
,p_display_order=>30
,p_column_identifier=>'X'
,p_column_label=>'Total Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982579745135613)
,p_db_column_name=>'INC_TRANSFER_EMAIL_IN'
,p_display_order=>40
,p_column_identifier=>'Y'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982646107135614)
,p_db_column_name=>'INC_TRANSFER_EMAIL_OUT'
,p_display_order=>50
,p_column_identifier=>'Z'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982736912135615)
,p_db_column_name=>'INC_TRANSFER_EMAIL_TOTAL'
,p_display_order=>60
,p_column_identifier=>'AA'
,p_column_label=>'Total Inc UG TR  '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982817722135616)
,p_db_column_name=>'INC_GRAD_EMAIL_IN'
,p_display_order=>70
,p_column_identifier=>'AB'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74982943186135617)
,p_db_column_name=>'INC_GRAD_EMAIL_OUT'
,p_display_order=>80
,p_column_identifier=>'AC'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983012642135618)
,p_db_column_name=>'INC_GRAD_EMAIL_TOTAL'
,p_display_order=>90
,p_column_identifier=>'AD'
,p_column_label=>'Total Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983179439135619)
,p_db_column_name=>'CURRENT_UG_EMAIL_IN'
,p_display_order=>100
,p_column_identifier=>'AE'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983228519135620)
,p_db_column_name=>'CURRENT_UG_EMAIL_OUT'
,p_display_order=>110
,p_column_identifier=>'AF'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983358757135621)
,p_db_column_name=>'CURRENT_UG_EMAIL_TOTAL'
,p_display_order=>120
,p_column_identifier=>'AG'
,p_column_label=>'Total Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983487218135622)
,p_db_column_name=>'GRAD_VET_MED_EMAIL_IN'
,p_display_order=>130
,p_column_identifier=>'AH'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983591926135623)
,p_db_column_name=>'GRAD_VET_MED_EMAIL_OUT'
,p_display_order=>140
,p_column_identifier=>'AI'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983613738135624)
,p_db_column_name=>'GRAD_VET_MED_EMAIL_TOTAL'
,p_display_order=>150
,p_column_identifier=>'AJ'
,p_column_label=>'Total Curr GR / Vet Med '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983711506135625)
,p_db_column_name=>'COMBO_OTHER_EMAIL_IN'
,p_display_order=>160
,p_column_identifier=>'AK'
,p_column_label=>'Combo / Other Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983866333135626)
,p_db_column_name=>'COMBO_OTHER_EMAIL_OUT'
,p_display_order=>170
,p_column_identifier=>'AL'
,p_column_label=>'Combo / Other Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74983979249135627)
,p_db_column_name=>'COMBO_OTHER_EMAIL_TOTAL'
,p_display_order=>180
,p_column_identifier=>'AM'
,p_column_label=>'Total Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74984011480135628)
,p_db_column_name=>'FORMER_STUDENT_EMAIL_IN'
,p_display_order=>190
,p_column_identifier=>'AN'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74984144200135629)
,p_db_column_name=>'FORMER_STUDENT_EMAIL_OUT'
,p_display_order=>200
,p_column_identifier=>'AO'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74984270017135630)
,p_db_column_name=>'FORMER_STUDENT_EMAIL_TOTAL'
,p_display_order=>210
,p_column_identifier=>'AP'
,p_column_label=>'Total FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74422540476608454)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'744226'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CURRENT_HS_EMAIL_IN:CURRENT_HS_EMAIL_OUT:CURRENT_HS_EMAIL_TOTAL:INC_TRANSFER_EMAIL_IN:INC_TRANSFER_EMAIL_OUT:INC_TRANSFER_EMAIL_TOTAL:INC_GRAD_EMAIL_IN:INC_GRAD_EMAIL_OUT:INC_GRAD_EMAIL_TOTAL:CURRENT_UG_EMAIL_IN:CURRENT_UG_EMAIL_OUT:CURRENT_UG_EMAIL_'
||'TOTAL:GRAD_VET_MED_EMAIL_IN:GRAD_VET_MED_EMAIL_OUT:GRAD_VET_MED_EMAIL_TOTAL:COMBO_OTHER_EMAIL_IN:COMBO_OTHER_EMAIL_OUT:COMBO_OTHER_EMAIL_TOTAL:FORMER_STUDENT_EMAIL_IN:FORMER_STUDENT_EMAIL_OUT:FORMER_STUDENT_EMAIL_TOTAL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58507437050164636)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(58528778021569449)
,p_button_name=>'Fetch_Details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Details'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58507272515164634)
,p_name=>'FROM_DATE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58528778021569449)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58507328053164635)
,p_name=>'TO_DATE1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58528778021569449)
,p_prompt=>'To date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_New_Records_Scholarships'
,p_step_title=>'New_Records_Management_scholarships'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153747'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66381584446705632)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59585974116495640)
,p_plug_name=>'Record Management Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(66381584446705632)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66379314467705610)
,p_plug_name=>'Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(66381584446705632)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66381638544705633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66381584446705632)
,p_button_name=>'RMS_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59586226687495643)
,p_name=>'RMS_EMPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(59585974116495640)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1  and EMP_CAMPUS = ''STW'' and emp_dept = ''Scholarships'';'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'RMS_DATE'
,p_ajax_items_to_submit=>'RMS_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59586316985495644)
,p_name=>'RMS_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(59585974116495640)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379425528705611)
,p_name=>'RMS_ACD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379574722705612)
,p_name=>'RMS_PHONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379638304705613)
,p_name=>'RMS_CURR_HS_EIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379747511705614)
,p_name=>'RMS_CURR_HS_EOUT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379856295705615)
,p_name=>'RMS_INC_TRANS_EIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379917563705616)
,p_name=>'RMS_INC_TRANS_EOUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc UG Trans Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380045194705617)
,p_name=>'RMS_INC_GRAD_EIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc Grad Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380114386705618)
,p_name=>'RMS_INC_GRAD_EOUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc Grad Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380272649705619)
,p_name=>'RMS_CURR_UG_EIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380373805705620)
,p_name=>'RMS_CURR_UG_EOUT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380436368705621)
,p_name=>'RMS_GRAD_VET_EIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Grad / Vet Med Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380574657705622)
,p_name=>'RMS_GRAD_VET_EOUT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Grad / Vet Med Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380600390705623)
,p_name=>'RMS_COMBO_EIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Combo/Other  Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380714966705624)
,p_name=>'RMS_COMBO_EOUT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Combo/Other  Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380860964705625)
,p_name=>'RMS_FORMER_STU_EIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Former Student Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380984275705626)
,p_name=>'RMS_FORMER_STU_EOUT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Former Student Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381040372705627)
,p_name=>'RMS_IN_PERSON'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381165349705628)
,p_name=>'RMS_EMAIL_IN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381284225705629)
,p_name=>'RMS_EMAIL_OUT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381337081705630)
,p_name=>'RMS_RTEPORTS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381439344705631)
,p_name=>'RMS_MISC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71941264925429228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_SCHOLARSHIPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO REC_MANG_SCHOL (RMS_EMP_ID,	RMS_DATE,',
'                        RMS_ACD,RMS_PHONE	,',
'                        RMS_CURR_HS_E_IN	,RMS_CURR_HS_E_OUT,	',
'                        RMS_INC_TRANS_E_IN	,RMS_INC_TRANS_E_OUT,	',
'                        RMS_INC_GRAD_E_IN	,RMS_INC_GRAD_E_OUT	,',
'                        RMS_CURR_UG_E_IN	,RMS_CURR_UG_E_OUT,	',
'                        RMS_GRAD_VET_MED_EIN,RMS_GRAD_VET_MED_EOUT	,',
'                        RMS_COMBO_OFFER_EIN	,RMS_COMBO_OFFER_EOUT,	',
'                        RMS_FOR_STUD_E_IN	,RMS_FOR_STUD_E_OUT	,',
'                        RMS_IN_PERSON,RMS_EMAIL_IN	,RMS_EMAIL_OUT	,RMS_REPORTS,RMS_MISC)',
'VALUES (:RMS_EMPID, :RMS_DATE,',
'        :RMS_ACD,:RMS_PHONE,',
'        :RMS_CURR_HS_EIN,:RMS_CURR_HS_EOUT,',
'        :RMS_INC_TRANS_EIN, :RMS_INC_TRANS_EOUT,',
'        :RMS_INC_GRAD_EIN, :RMS_INC_GRAD_EOUT,',
'        :RMS_CURR_UG_EIN, :RMS_CURR_UG_EOUT,',
'        :RMS_GRAD_VET_EIN, :RMS_GRAD_VET_EOUT, ',
'        :RMS_COMBO_EIN, :RMS_COMBO_EOUT,',
'        :RMS_FORMER_STU_EIN, :RMS_FORMER_STU_EOUT,',
'        :RMS_IN_PERSON, :RMS_EMAIL_IN,:RMS_EMAIL_OUT,:RMS_RTEPORTS,',
'        :RMS_MISC);',
'       ',
'       ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_New_records_Fileroom'
,p_step_title=>'Goto_New_records_Fileroom'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803154437'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66645951749304408)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66646055245304409)
,p_plug_name=>'Data Entry'
,p_parent_plug_id=>wwv_flow_api.id(66645951749304408)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66646500953304414)
,p_plug_name=>'File Room'
,p_parent_plug_id=>wwv_flow_api.id(66645951749304408)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66647462911304423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66645951749304408)
,p_button_name=>'RM_DE_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646181175304410)
,p_name=>'RM_DE_ISIR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_default=>'0'
,p_prompt=>'ISIR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646270795304411)
,p_name=>'RM_DE_TRK_STAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_default=>'0'
,p_prompt=>'TRK_STAT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646314379304412)
,p_name=>'RM_DE_AWARD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_default=>'0'
,p_prompt=>'AWARD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646425262304413)
,p_name=>'RM_DE_MIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_default=>'0'
,p_prompt=>'MIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646674201304415)
,p_name=>'FR_APPOINTMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66646500953304414)
,p_item_default=>'0'
,p_prompt=>'Std Hrs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646729046304416)
,p_name=>'FR_LTRS_MAILED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66646500953304414)
,p_item_default=>'0'
,p_prompt=>'FR LTRS MAILED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646809821304417)
,p_name=>'FR_DOC_SCAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66646500953304414)
,p_item_default=>'0'
,p_prompt=>'FR DOC SCAN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66646938136304418)
,p_name=>'FR_FAXIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66646500953304414)
,p_item_default=>'0'
,p_prompt=>'FR FAXIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66647287560304421)
,p_name=>'RM_DE_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66645951749304408)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Loans'';'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'FR_APPOINTMENTS'
,p_ajax_items_to_submit=>'FR_APPOINTMENTS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66647302240304422)
,p_name=>'RM_DE_ENTER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66645951749304408)
,p_prompt=>'ENTER DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71940958695429225)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_FILEROOM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO REC_MANG_DE_FR (ENTER_DATE, RM_DE_EMP_ID,	',
'                        RM_DE_ISIR	, RM_DE_MIL	,',
'                        RM_DE_AWARD,	RM_DE_TRK_STAT	,',
'                        FR_APPOINTMENTS, FR_LTRS_MAILED	,',
'                        FR_DOC_SCAN	,FR_FAXIN)',
'VALUES (:RM_DE_ENTER_DATE, :RM_DE_EMP_ID,',
'        :RM_DE_ISIR,:RM_DE_MIL,',
'        :RM_DE_AWARD,:RM_DE_TRK_STAT,:FR_APPOINTMENTS,:FR_LTRS_MAILED,',
'        :FR_DOC_SCAN, :FR_FAXIN);',
'      ',
'      ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_New_records_ACD_FIN'
,p_step_title=>'Goto_New_records_ACD_FIN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66648980257304438)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66647506350304424)
,p_plug_name=>'ACD'
,p_parent_plug_id=>wwv_flow_api.id(66648980257304438)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66647689668304425)
,p_plug_name=>'Finaid Received'
,p_parent_plug_id=>wwv_flow_api.id(66648980257304438)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66647784914304426)
,p_plug_name=>'Greeter'
,p_parent_plug_id=>wwv_flow_api.id(66648980257304438)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66647805618304427)
,p_plug_name=>'Fiscal Ops'
,p_parent_plug_id=>wwv_flow_api.id(66648980257304438)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66649097518304439)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66648980257304438)
,p_button_name=>'REC_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66647990523304428)
,p_name=>'TOTAL_OFFERED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_default=>'0'
,p_prompt=>'Total Offered'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648067169304429)
,p_name=>'TOTAL_ANSWERED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_default=>'0'
,p_prompt=>'Total Answered'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648176605304430)
,p_name=>'IN_QUEUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_default=>'0'
,p_prompt=>'In Queue'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648243538304431)
,p_name=>'AVG_QUEUE_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_default=>'0'
,p_prompt=>'Avg Queue time in mm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648399332304432)
,p_name=>'FINAID_RECEIVED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647689668304425)
,p_item_default=>'0'
,p_prompt=>'Finaid Received'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648500648304434)
,p_name=>'STDS_IN_DOOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647784914304426)
,p_item_default=>'0'
,p_prompt=>'# Students in door'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648669260304435)
,p_name=>'AVG_WAIT_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66647784914304426)
,p_item_default=>'0'
,p_prompt=>'Avg Wait Time in mm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648762079304436)
,p_name=>'HW_PHONE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647805618304427)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66648885945304437)
,p_name=>'HW_ACD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66647805618304427)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66649156222304440)
,p_name=>'RM_FIN_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66648980257304438)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Fiscal Ops'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66649281265304441)
,p_name=>'RM_FIN_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66648980257304438)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66649339221304442)
,p_name=>'AVG_QUEUE_TIME_SEC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_default=>'0'
,p_prompt=>'Avg Queue Time Sec'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66649407044304443)
,p_name=>'AVG_WAIT_TIME_SEC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66647784914304426)
,p_item_default=>'0'
,p_prompt=>'Avg Wait Time Sec'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71941009601429226)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_ACD_FIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO REC_MANG_ACD_FIN (RM_FIN_EMP_ID,RM_FIN_DATE,	',
'                            ACD_TOTAL_OFFERED,ACD_TOTAL_ANSWERED,ACD_IN_QUEUE	,',
'                            ACD_AVG_QUEUE_TIME	,ACD_AVG_QUEUE_SEC	,',
'                            GR_STD_IN_DOOR	,GR_AVG_WAIT_TIME,GR_AVG_WAIT_SEC	,',
'                            FINAID_RECEIVED	,HW_PHONE,HW_ACD)',
'VALUES (:RM_FIN_EMP_ID, :RM_FIN_DATE,',
'        :TOTAL_OFFERED,:TOTAL_ANSWERED,',
'        :IN_QUEUE,:AVG_QUEUE_TIME,:AVG_QUEUE_TIME_SEC,:STDS_IN_DOOR,',
'        :AVG_WAIT_TIME, :AVG_WAIT_TIME_SEC,',
'       :FINAID_RECEIVED,:HW_PHONE,:HW_ACD);',
'      ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_SPecific_Date_Scholarships'
,p_step_title=>'Goto_SPecific_Date_Scholarships'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710102924'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71484163030251207)
,p_plug_name=>'Specific date Scholarships'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71484615432251212)
,p_plug_name=>'Scholarships_report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select * from rec_mang_schol where rms_date = :RMS_ENTER_DATE;'
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
,p_plug_header=>'Specific Date Scholarships Report '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71484856761251214)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71484856761251214
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71484956568251215)
,p_db_column_name=>'RMS_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485077059251216)
,p_db_column_name=>'RMS_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485101755251217)
,p_db_column_name=>'RMS_ACD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485257796251218)
,p_db_column_name=>'RMS_PHONE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485329821251219)
,p_db_column_name=>'RMS_CURR_HS_E_IN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485484720251220)
,p_db_column_name=>'RMS_CURR_HS_E_OUT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485589322251221)
,p_db_column_name=>'RMS_INC_TRANS_E_IN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485682242251222)
,p_db_column_name=>'RMS_INC_TRANS_E_OUT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485761628251223)
,p_db_column_name=>'RMS_INC_GRAD_E_IN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485868243251224)
,p_db_column_name=>'RMS_INC_GRAD_E_OUT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485984146251225)
,p_db_column_name=>'RMS_CURR_UG_E_IN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486023562251226)
,p_db_column_name=>'RMS_CURR_UG_E_OUT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486106811251227)
,p_db_column_name=>'RMS_GRAD_VET_MED_EIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486274518251228)
,p_db_column_name=>'RMS_GRAD_VET_MED_EOUT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486303752251229)
,p_db_column_name=>'RMS_COMBO_OFFER_EIN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486489504251230)
,p_db_column_name=>'RMS_COMBO_OFFER_EOUT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486585170251231)
,p_db_column_name=>'RMS_FOR_STUD_E_IN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486660319251232)
,p_db_column_name=>'RMS_FOR_STUD_E_OUT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486736368251233)
,p_db_column_name=>'RMS_IN_PERSON'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486821094251234)
,p_db_column_name=>'RMS_EMAIL_IN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486901784251235)
,p_db_column_name=>'RMS_EMAIL_OUT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487026633251236)
,p_db_column_name=>'RMS_REPORTS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487122494251237)
,p_db_column_name=>'RMS_MISC'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71511632863338563)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'715117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RMS_EMP_ID:RMS_DATE:RMS_ACD:RMS_PHONE:RMS_CURR_HS_E_IN:RMS_CURR_HS_E_OUT:RMS_INC_TRANS_E_IN:RMS_INC_TRANS_E_OUT:RMS_INC_GRAD_E_IN:RMS_INC_GRAD_E_OUT:RMS_CURR_UG_E_IN:RMS_CURR_UG_E_OUT:RMS_GRAD_VET_MED_EIN:RMS_GRAD_VET_MED_EOUT:RMS_COMBO_OFFER_EIN:RMS'
||'_COMBO_OFFER_EOUT:RMS_FOR_STUD_E_IN:RMS_FOR_STUD_E_OUT:RMS_IN_PERSON:RMS_EMAIL_IN:RMS_EMAIL_OUT:RMS_REPORTS:RMS_MISC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71487243327251238)
,p_plug_name=>'Specificdate Scholarships record'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select * from rec_mang_acd_fin where rm_fin_date = :RMS_ENTER_DATE;'
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
,p_plug_header=>'Specific Date FinAid Scholarships details'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71487346600251239)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71487346600251239
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487470562251240)
,p_db_column_name=>'RM_FIN_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487558918251241)
,p_db_column_name=>'RM_FIN_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487646847251242)
,p_db_column_name=>'ACD_TOTAL_OFFERED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Acd Total Offered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487771578251243)
,p_db_column_name=>'ACD_TOTAL_ANSWERED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Acd Total Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487856646251244)
,p_db_column_name=>'ACD_IN_QUEUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Acd In Queue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487992151251245)
,p_db_column_name=>'ACD_AVG_QUEUE_TIME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Acd Avg Queue Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488097473251246)
,p_db_column_name=>'ACD_AVG_QUEUE_SEC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Acd Avg Queue Sec'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488161262251247)
,p_db_column_name=>'GR_STD_IN_DOOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Std In Door'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488213436251248)
,p_db_column_name=>'GR_AVG_WAIT_TIME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Avg Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488395600251249)
,p_db_column_name=>'GR_AVG_WAIT_SEC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Avg Wait Sec'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488488189251250)
,p_db_column_name=>'FINAID_RECEIVED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Finaid Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71512442063357901)
,p_db_column_name=>'HW_PHONE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fiscal Ops Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71512537080357902)
,p_db_column_name=>'HW_ACD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fiscal Ops ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71527449960609770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'715275'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RM_FIN_EMP_ID:RM_FIN_DATE:ACD_TOTAL_OFFERED:ACD_TOTAL_ANSWERED:ACD_IN_QUEUE:ACD_AVG_QUEUE_TIME:ACD_AVG_QUEUE_SEC:GR_STD_IN_DOOR:GR_AVG_WAIT_TIME:GR_AVG_WAIT_SEC:FINAID_RECEIVED:HW_PHONE:HW_ACD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71484512606251211)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(71484163030251207)
,p_button_name=>'GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Data'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71484234556251208)
,p_name=>'RMS_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71484163030251207)
,p_prompt=>'Enter Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update Scholarships Records'
,p_step_title=>'Update Scholarships Records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710103133'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139372656741782502)
,p_plug_name=>'Update Scholarships Records'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132577046411572510)
,p_plug_name=>'Record Management Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(139372656741782502)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139370386762782480)
,p_plug_name=>'Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(139372656741782502)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72991609945076890)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(139372656741782502)
,p_button_name=>'RMS_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'RMS UPDATE'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72992369477076891)
,p_name=>'RMSU_EMPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(132577046411572510)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'RMS_DATE'
,p_ajax_items_to_submit=>'RMS_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72992701124076891)
,p_name=>'RMSU_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(132577046411572510)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72993498549076892)
,p_name=>'RMSU_ACD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72993831534076892)
,p_name=>'RMSU_PHONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72994252294076892)
,p_name=>'RMSU_CURR_HS_EIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72994643936076893)
,p_name=>'RMSU_CURR_HS_EOUT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72995038980076893)
,p_name=>'RMSU_INC_TRANS_EIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72995462494076893)
,p_name=>'RMSU_INC_TRANS_EOUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Inc UG Trans Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72995878811076893)
,p_name=>'RMSU_INC_GRAD_EIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Inc Grad Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72996252160076894)
,p_name=>'RMSU_INC_GRAD_EOUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Inc Grad Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72996625008076894)
,p_name=>'RMSU_CURR_UG_EIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72997046814076894)
,p_name=>'RMSU_CURR_UG_EOUT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72997439712076894)
,p_name=>'RMSU_GRAD_VET_EIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Grad / Vet Med Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72997852114076894)
,p_name=>'RMSU_GRAD_VET_EOUT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Grad / Vet Med Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72998223229076895)
,p_name=>'RMSU_COMBO_EIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Combo/Other  Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73008673789076895)
,p_name=>'RMSU_COMBO_EOUT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Combo/Other  Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73009072536076896)
,p_name=>'RMSU_FORMER_STU_EIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Former Student Email-In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73009436398076896)
,p_name=>'RMSU_FORMER_STU_EOUT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Former Student Email-Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73009898161076896)
,p_name=>'RMSU_IN_PERSON'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73010233622076896)
,p_name=>'RMSU_EMAIL_IN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73010683583076896)
,p_name=>'RMSU_EMAIL_OUT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73011031207076897)
,p_name=>'RMSU_RTEPORTS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73011453977076897)
,p_name=>'RMSU_MISC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(139370386762782480)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73011866665076898)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_SCHOLARSHIPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       ',
'Update REC_MANG_SCHOL',
'set RMS_ACD =:RMSU_ACD ,',
'    RMS_PHONE =:RMSU_PHONE	,',
'    RMS_CURR_HS_E_IN =:RMSU_CURR_HS_EIN	,',
'    RMS_CURR_HS_E_OUT =:RMLU_CURR_HS_EOUT ,	',
'    RMS_INC_TRANS_E_IN =:RMSU_INC_TRANS_EIN	,',
'    RMS_INC_TRANS_E_OUT =:RMSU_INC_TRANS_EOUT ,	',
'    RMS_INC_GRAD_E_IN =:RMSU_INC_GRAD_EIN	,',
'    RMS_INC_GRAD_E_OUT =:RMSU_INC_GRAD_EOUT	,',
'    RMS_CURR_UG_E_IN =:RMSU_CURR_UG_EIN	,',
'    RMS_CURR_UG_E_OUT =:RMSU_CURR_UG_EOUT ,	',
'    RMS_GRAD_VET_MED_EIN =:RMSU_GRAD_VET_EIN ,',
'    RMS_GRAD_VET_MED_EOUT =:RMSU_GRAD_VET_EOUT	,',
'    RMS_COMBO_OFFER_EIN	=:RMSU_COMBO_EIN ,',
'    RMS_COMBO_OFFER_EOUT =:RMSU_COMBO_EOUT ,	',
'    RMS_FOR_STUD_E_IN =:RMSU_FORMER_STU_EIN	,',
'    RMS_FOR_STUD_E_OUT =:RMSU_FORMER_STU_EOUT	,',
'    RMS_IN_PERSON =:RMSU_IN_PERSON ,',
'    RMS_EMAIL_IN =:RMSU_EMAIL_IN	,',
'    RMS_EMAIL_OUT =:RMSU_EMAIL_OUT	,',
'    RMS_REPORTS =:RMSU_RTEPORTS ,',
'    RMS_MISC =:RMSU_MISC ',
'WHERE RMS_EMP_ID =:RMSU_EMPID and 	RMS_DATE =:RMSU_DATE ;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update-OSFA_FC'
,p_step_title=>'Update-OSFA_FC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_browser_cache=>'Y'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803131150'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(411671308916023667)
,p_plug_name=>'Update Front Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(411672870907023683)
,p_plug_name=>'Finaid Emails Answered'
,p_parent_plug_id=>wwv_flow_api.id(411671308916023667)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72835655489776259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(411671308916023667)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update_FC'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72836029229776264)
,p_name=>'FCU_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72836490715776266)
,p_name=>'FCU_FC_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72836815551776266)
,p_name=>'FCU_COUNS_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72837205057776266)
,p_name=>'FCU_ACD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72837624910776267)
,p_name=>'FCU_IN_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72838043692776267)
,p_name=>'FCU_NOT_SIGNED_IN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Not Signed In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72838456865776267)
,p_name=>'FCU_MY_EMAIL_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'My Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72848867955776268)
,p_name=>'FCU_MY_EMAIL_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'My Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72849295872776268)
,p_name=>'FCU_CERT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Cert'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72849617601776268)
,p_name=>'FCU_STL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'STL''s'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72850015932776268)
,p_name=>'FCU_REPORTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72850483978776269)
,p_name=>'FCU_MISC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72850854361776269)
,p_name=>'FCU_EVALS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Evals'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72851288947776269)
,p_name=>'FCU_PROF_JUDG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(411671308916023667)
,p_item_default=>'0'
,p_prompt=>'Prof Judg'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72851922524776273)
,p_name=>'FCU_CURRENT_HS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72852335602776273)
,p_name=>'FCU_INC_TRANSFER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72852781945776274)
,p_name=>'FCU_INCOMING_GRAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Inc Grad / vet Med'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72853176906776274)
,p_name=>'FCU_CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Curr UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72853572730776274)
,p_name=>'FCU_GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Curr GRAD / VET_MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72853975158776274)
,p_name=>'FCU_COMBO_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Combo/Other'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72854319004776275)
,p_name=>'FCU_FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Former Student'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72854718731776275)
,p_name=>'FCU_ROUTED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(411672870907023683)
,p_item_default=>'0'
,p_prompt=>'Finaid Email Routed'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72855162186776280)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       ',
'         ',
'Update FRONTCOUNS',
'set COUNS_PHONE = :FCU_COUNS_PHONE  ,',
' ACD = :FCU_ACD,',
' IN_PERSON  =:FCU_IN_PERSON,',
' NOT_SIGNED_IN  =:FCU_NOT_SIGNED_IN ,',
' EMAILIN  =:FCU_MY_EMAIL_IN ,',
' EMAILOUT  = :FCU_MY_EMAIL_OUT,',
' CERT  =:FCU_CERT ,',
' STL  =:FCU_STL ,',
' REPORTS  =:FCU_REPORTS ,',
' MISC  =:FCU_MISC ,',
' EVALS =:FCU_EVALS , ',
' PJ  = :FCU_PROF_JUDG, ',
' CURR_HS  =:FCU_CURRENT_HS , ',
' INC_TRANSFER  =:FCU_INC_TRANSFER ,',
' INC_GRAD  =:FCU_INCOMING_GRAD , ',
' CURR_UG  =:FCU_CURRENT_UG ,',
' MED  =:FCU_GRAD_VET_MED , ',
' COMBO = :FCU_COMBO_OTHER, ',
' FOR_STU  =:FCU_FORMER_STUDENT , ',
' ROUTED  =:FCU_ROUTED',
'',
'WHERE ENTER_DATE = :FCU_ENTER_DATE and FC_EMP_ID = :FCU_FC_EMP_ID ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Sucessfully submitted '
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update OSFA BC'
,p_step_title=>'Update OSFA BC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803131208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468512605823228702)
,p_plug_name=>'Update Back Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468514167814228718)
,p_plug_name=>'Back counselor details'
,p_parent_plug_id=>wwv_flow_api.id(468512605823228702)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72860590776219240)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(468512605823228702)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BC_UPDATE'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72860980564219246)
,p_name=>'BCU_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72861338390219249)
,p_name=>'BCU_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72861759976219249)
,p_name=>'BCU_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72862101547219249)
,p_name=>'BCU_ACD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72862528617219250)
,p_name=>'BCU_CURRENT_HS_APPT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72862993001219250)
,p_name=>'BCU_CURRENT_HS_E_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr HS  / Inc FR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72863333666219250)
,p_name=>'BCU_CURRENT_HS_E_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr HS / Inc FR Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72863712470219250)
,p_name=>'BCU_CURR_HS_FINAID_ANS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72864170963219251)
,p_name=>'BCU_INC_TRANSFER_APPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72864558326219251)
,p_name=>'BCU_INC_TRANSFER_E_IN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72864939662219251)
,p_name=>'BCU_INC_TRANSFER_E_OUT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72865316274219252)
,p_name=>'BCU_INC_TRANS_FIN_ANS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72865763155219252)
,p_name=>'BCU_INC_GRAD_APPT_VET_MED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc Grad/ Vet Med APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72866191100219252)
,p_name=>'BCU_INC_GRAD_E_IN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc Grad/ Vet Med Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72866510234219252)
,p_name=>'BCU_INC_GRAD_E_OUT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc Grad/ Vet Med Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72866926592219253)
,p_name=>'BCU_INC_GRAD_FIN_ANS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Inc Grad/ Vet Med Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72867309140219253)
,p_name=>'BCU_CURRENT_UG_APPT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr UG APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72867702466219253)
,p_name=>'BCU_CURRENT_UG_E_IN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72868193262219253)
,p_name=>'BCU_CURRENT_UG_E_OUT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72868564522219254)
,p_name=>'BCU_CURR_UG_FIN_ANS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr UG Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72868956586219254)
,p_name=>'BCU_GRAD_VET_MED_APPT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr Grad / Vet Med APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72869329452219254)
,p_name=>'BCU_GRAD_VET_MED_E_IN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr Grad / Vet Med Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72869707853219255)
,p_name=>'BCU_GRAD_VET_MED_E_OUT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr Grad / Vet Med Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72870162135219255)
,p_name=>'BCU_GRAD_VET_FIN_ANS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Curr Grad / Vet Med Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72870567148219255)
,p_name=>'BCU_COMBO_OTHER_APPT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Combo/Other APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72870965802219255)
,p_name=>'BCU_COMBO_OTHER_E_IN'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Combo/Other Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72871358629219256)
,p_name=>'BCU_COMBO_OTHER_E_OUT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Combo/Other Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72871763667219256)
,p_name=>'BCU_COMBO_FIN_ANS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'Combo/Other Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72872199948219256)
,p_name=>'BCU_FORMER_STUDENT_APPT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'FS APPT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72872565597219257)
,p_name=>'BCU_FORMER_STUDENT_E_IN'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'FS Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72872944817219257)
,p_name=>'BCU_FORMER_STUDENT_E_OUT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'FS Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72873344011219257)
,p_name=>'BCU_FORMER_STU_FIN_ANS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(468512605823228702)
,p_item_default=>'0'
,p_prompt=>'FS Finaid Ans'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72874023620219261)
,p_name=>'BCU_IN_PERSON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72874422729219262)
,p_name=>'BCU_EVALS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'Evals'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72874803721219262)
,p_name=>'BCU_EMAILS_IN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'Other emails in '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72875254022219262)
,p_name=>'BCU_EMAILS_OUT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'Other Emails Out '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72875668524219262)
,p_name=>'BCU_PROF_JUDG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'Prof Judg'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72876082446219263)
,p_name=>'BCU_REPORTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72876495200219263)
,p_name=>'BCU_MISC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(468514167814228718)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72876860395219277)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BC_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'          ',
'Update BACK_COUNS ',
'set COUNS_PHONE =:BCU_PHONES ,',
'    ACD =:BCU_ACD ,',
'    BC_CURRENT_HS_APPT =:BCU_CURRENT_HS_APPT ,',
'    BC_CURRENT_HS_E_IN =:BCU_CURRENT_HS_E_IN ,',
'    BC_CURRENT_HS_E_OUT =:BCU_CURRENT_HS_E_OUT ,',
'    BC_INC_TRANSFER_APPT =:BCU_INC_TRANSFER_APPT, ',
'    BC_INC_TRANSFER_E_IN =:BCU_INC_TRANSFER_E_IN , ',
'    BC_INC_TRANSFER_E_OUT =:BCU_INC_TRANSFER_E_OUT ,',
'    BC_INC_GRAD_APPT =:BCU_INC_GRAD_APPT_VET_MED , ',
'    BC_INC_GRAD_E_IN =:BCU_INC_GRAD_E_IN , ',
'    BC_INC_GRAD_E_OUT =:BCU_INC_GRAD_E_OUT ,',
'    BC_CURRENT_UG_APPT =:BCU_CURRENT_UG_APPT , ',
'    BC_CURRENT_UG_E_IN =:BCU_CURRENT_UG_E_IN , ',
'    BC_CURRENT_UG_E_OUT =:BCU_CURRENT_UG_E_OUT ,',
'    BC_GRAD_VET_MED_APPT =:BCU_GRAD_VET_MED_APPT ,',
'    BC_GRAD_VET_MED_E_IN =:BCU_GRAD_VET_MED_E_IN ,',
'    BC_GRAD_VET_MED_E_OUT =:BCU_GRAD_VET_MED_E_OUT ,',
'    BC_COMBO_OTHER_APPT =:BCU_COMBO_OTHER_APPT ,  ',
'    BC_COMBO_OTHER_E_IN =:BCU_COMBO_OTHER_E_IN , ',
'    BC_COMBO_OTHER_E_OUT =:BCU_COMBO_OTHER_E_OUT ,',
'    BC_FORMER_STUDENT_APPT =:BCU_FORMER_STUDENT_APPT , ',
'    BC_FORMER_STUDENT_E_IN =:BCU_FORMER_STUDENT_E_IN ,',
'    BC_FORMER_STUDENT_E_OUT =:BCU_FORMER_STUDENT_E_OUT ,',
'    BC_IN_PERSON =:BCU_IN_PERSON , ',
'    BC_EVALS =:BCU_EVALS , ',
'    BC_EMAILS_IN =:BCU_EMAILS_IN , ',
'    BC_EMAILS_OUT =:BCU_EMAILS_OUT ,',
'    BC_PROF_JUDG =:BCU_PROF_JUDG ,',
'    BC_REPORTS =:BCU_REPORTS , ',
'    BC_MISC =:BCU_MISC ,',
'    BC_CURR_HS_FIN_ANS =:BCU_CURR_HS_FINAID_ANS  ,',
'    BC_INC_TRANS_FIN_ANS =:BCU_INC_TRANS_FIN_ANS ,',
'    BC_INC_GRAD_FIN_ANS =:BCU_INC_GRAD_FIN_ANS ,',
'    BC_CURR_UG_FIN_ANS =:BCU_CURR_UG_FIN_ANS ,',
'    BC_CURR_GRAD_FIN_ANS =:BCU_GRAD_VET_FIN_ANS ,',
'    BC_COMBO_FIN_ANS =:BCU_COMBO_FIN_ANS ,',
'    BC_FOR_STU_FIN_ANS =:BCU_FORMER_STU_FIN_ANS  ',
' where ENTER_DATE =:BCU_ENTER_DATE and BC_EMP_ID =:BCU_EMP_ID ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully submitted'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update Loan Records'
,p_step_title=>'Update Loan Records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803131234'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130209796161319914)
,p_plug_name=>'Update_Records_Management_Loans'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130210004055319916)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_parent_plug_id=>wwv_flow_api.id(130209796161319914)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130212417011319940)
,p_plug_name=>'Loans'
,p_parent_plug_id=>wwv_flow_api.id(130210004055319916)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130320075140796520)
,p_plug_name=>'Data Entry for Loans'
,p_parent_plug_id=>wwv_flow_api.id(130210004055319916)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72846791889790341)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130209796161319914)
,p_button_name=>'RML_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'RML_UPDATE'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72847425312790354)
,p_name=>'RMLU_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(130210004055319916)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72847897816790358)
,p_name=>'RMLU_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(130210004055319916)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72898544982790359)
,p_name=>'RMLU_DEFAULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'DEFAULT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72898969733790359)
,p_name=>'RMLU_TRAN_MON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'TRAN MON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72899347498790360)
,p_name=>'RMLU_SUMMER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'SUMMER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72899738489790360)
,p_name=>'RMLU_DOC_DELETE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'Doc Delete'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72900187728790360)
,p_name=>'RMLU_DL_RECON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'DL RECON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72900522335790361)
,p_name=>'RMLU_PEND_LOANS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'PEND LOANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72900988929790361)
,p_name=>'RMLU_STAFF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'Staff'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72901392460790361)
,p_name=>'RMLU_PLUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'PLUS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72901710007790361)
,p_name=>'RMLU_COGNOS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'COGNOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72902134323790362)
,p_name=>'RMLU_AGGR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'AGGR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72902580697790362)
,p_name=>'RMLU_DL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'DL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72902902729790362)
,p_name=>'RMLU_LOAN_ADJ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'LOAN ADJ'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72903355517790363)
,p_name=>'RMLU_DISCRP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'RM DISCRP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72903795841790363)
,p_name=>'RMLU_NON_FED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'NON FED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72904178000790363)
,p_name=>'RMLU_PRORATION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(130320075140796520)
,p_item_default=>'0'
,p_prompt=>'PRORATION'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72905237918790365)
,p_name=>'RMLU_ACD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72905693544790365)
,p_name=>'RMLU_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'PHONE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72906088099790365)
,p_name=>'RMLU_CURR_HS_E_IN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72906413575790366)
,p_name=>'RMLU_CURR_HS_E_OUT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72906859235790366)
,p_name=>'RMLU_INC_TRANS_E_IN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72907283260790366)
,p_name=>'RMLU_INC_TRANS_E_OUT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72907645341790367)
,p_name=>'RMLU_INC_GRAD_E_IN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Inc GR / Vet Med Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72908033202790367)
,p_name=>'RMLU_INC_GRAD_E_OUT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Inc GR / Vet Med Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72908493930790367)
,p_name=>'RMLU_CURR_UG_E_IN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72908854960790368)
,p_name=>'RMLU_CURR_UG_E_OUT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72909245622790368)
,p_name=>'RMLU_GRAD_VET_MED_EIN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Curr GR / Vet Med Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72909614589790369)
,p_name=>'RMLU_GRAD_VET_MED_EOUT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Curr GR / Vet Med Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72910010786790369)
,p_name=>'RMLU_COMBO_OFFER_EIN'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Combo / Other Email in'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72910483931790369)
,p_name=>'RMLU_COMBO_OFFER_EOUT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'Combo / Other Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72910868208790370)
,p_name=>'RMLU_FOR_STUD_E_IN'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'FS Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72911214524790370)
,p_name=>'RMLU_FOR_STUD_E_OUT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(130212417011319940)
,p_item_default=>'0'
,p_prompt=>'FS Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72911603698790395)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_LOANS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       ',
'Update  REC_MANG_LOANS',
'SET RML_ACD =:RMLU_ACD,',
'    RML_PHONE =:RMLU_PHONE	,',
'    RML_CURR_HS_E_IN =:RMLU_CURR_HS_E_IN	,',
'    RML_CURR_HS_E_OUT =:RMLU_CURR_HS_E_OUT ,	',
'    RML_INC_TRANS_E_IN =:RMLU_INC_TRANS_E_IN	,',
'    RML_INC_TRANS_E_OUT =:RMLU_INC_TRANS_E_OUT ,	',
'    RML_INC_GRAD_E_IN =:RMLU_INC_GRAD_E_IN	,',
'    RML_INC_GRAD_E_OUT =:RMLU_INC_GRAD_E_OUT	,',
'    RML_CURR_UG_E_IN =:RMLU_CURR_UG_E_IN	,',
'    RML_CURR_UG_E_OUT =:RMLU_CURR_UG_E_OUT ,	',
'    RML_GRAD_VET_MED_EIN =:RMLU_GRAD_VET_MED_EIN ,',
'    RML_GRAD_VET_MED_EOUT =:RMLU_GRAD_VET_MED_EOUT	,',
'    RML_COMBO_OFFER_EIN	 =:RMLU_COMBO_OFFER_EIN ,',
'    RML_COMBO_OFFER_EOUT =:RMLU_COMBO_OFFER_EOUT ,	',
'    RML_FOR_STUD_E_IN =:RMLU_FOR_STUD_E_IN	,',
'    RML_FOR_STUD_E_OUT	=:RMLU_FOR_STUD_E_OUT ,',
'    RM_DEFAULT =:RMLU_DEFAULT ,',
'    TRAN_MON =:RMLU_TRAN_MON	,',
'    SUMMER	=:RMLU_SUMMER ,',
'    DOC_DELETE=:RMLU_DOC_DELETE ,',
'    DL_RECON =:RMLU_DL_RECON ,',
'    PEND_LOANS =:RMLU_PEND_LOANS	,',
'    STAFF =:RMLU_STAFF	,',
'    PLUS =:RMLU_PLUS	,',
'    COGNOS =:RMLU_COGNOS	,',
'    AGGR =:RMLU_AGGR ,',
'    RM_DL =:RMLU_DL	,',
'    LOAN_ADJ =:RMLU_LOAN_ADJ ,',
'    DISCRP =:RMLU_DISCRP 	,',
'    NON_FED	 =:RMLU_NON_FED ,',
'    PRORATION =:RMLU_PRORATION ',
' ',
' Where RML_EMP_ID =:RMLU_EMP_ID and ',
'    RML_DATE =:RMLU_DATE ;',
'       ',
'       ',
'       ',
'       ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully submitted'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update DataEntry Records'
,p_step_title=>'Update DataEntry Records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803131250'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130476040505592911)
,p_plug_name=>'Update_Data_Entry_Staff'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72914669944036112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130476040505592911)
,p_button_name=>'DES_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'DES_UPDATE'
,p_button_position=>'REGION_TEMPLATE_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72915041624036113)
,p_name=>'DESU_EMP_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72915405398036113)
,p_name=>'DESU_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72915875523036114)
,p_name=>'DESU_SCHOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'SCHOL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72916230062036114)
,p_name=>'DESU_RCRSUSP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'RCRSUSP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72916663051036114)
,p_name=>'DESU_INBOXES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'INBOXES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72917037887036114)
,p_name=>'DESU_WORKFLOW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'WORKFLOW'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72917404562036115)
,p_name=>'DESU_MIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'MIL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72917826625036115)
,p_name=>'DESU_COGNOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'COGNOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72918216692036115)
,p_name=>'DESU_FAXES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'FAXES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72938630037036116)
,p_name=>'DESU_UPLOADS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'UPLOADS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72939065672036116)
,p_name=>'DESU_EXNA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'EXNA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72939424191036117)
,p_name=>'DESU_BOUNCE_BACK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'Bounce Back'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72939883996036118)
,p_name=>'DESU_SKIP_TRACE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'SKIP TRACE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72940201955036118)
,p_name=>'DESU_AWDLTR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'AWDLTR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72940607337036118)
,p_name=>'DESU_RTLTR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'RTLTR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72941001754036119)
,p_name=>'DESU_THANKU'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'THANKU'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72941436201036119)
,p_name=>'DESU_DUPID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'DUPID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72941849260036119)
,p_name=>'DESU_CPS_CORR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'CPS CORR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72942281193036119)
,p_name=>'DESU_EMAILS_MOVED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'EMAILS MOVED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72942694694036120)
,p_name=>'DESU_IMG_CORR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'IMG CORR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72943039379036120)
,p_name=>'DESU_COLLATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(130476040505592911)
,p_item_default=>'0'
,p_prompt=>'COLLATE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72943865136036121)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_DATAENTRY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      ',
'       ',
'UPDATE DATA_ENTRY_STAFF',
'SET  SCHOL =:DESU_SCHOL	,',
'     RCRSUSP =:DESU_RCRSUSP	, ',
'     INBOXES =:DESU_INBOXES ,',
'     WORKFLOW =:DESU_WORKFLOW ,	',
'     DES_MIL =:DESU_MIL	, ',
'     COGNOS =:DESU_COGNOS ,',
'     FAXES =:DESU_FAXES	,',
'     UPLOADS =:DESU_UPLOADS	, ',
'     EXNA =:DESU_EXNA	,',
'     BOUNCE_BACK =:DESU_BOUNCE_BACK ,	',
'     SKIP_TRACE =:DESU_SKIP_TRACE ,	',
'     AWDLTR =:DESU_AWDLTR	,',
'     RTLTR =:DESU_RTLTR	, ',
'     THANKU	=:DESU_THANKU , ',
'     DUPID =:DESU_DUPID	,',
'     CPS_CORR =:DESU_CPS_CORR , ',
'     EMAILS_MOVED =:DESU_EMAILS_MOVED	, ',
'     IMG_CORR =:DESU_IMG_CORR	,',
'     COLLATE =:DESU_COLLATE',
'Where DES_EMP_ID =:DESU_EMP_NAME and DES_DATE =:DESU_DATE; ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update Fileroom Records'
,p_step_title=>'Update Fileroom Records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803131304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139597879825414873)
,p_plug_name=>'Update Fileroom records'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139597983321414874)
,p_plug_name=>'Data Entry'
,p_parent_plug_id=>wwv_flow_api.id(139597879825414873)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139598429029414879)
,p_plug_name=>'File Room'
,p_parent_plug_id=>wwv_flow_api.id(139597879825414873)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72952588617110467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(139597879825414873)
,p_button_name=>'RMU_DE_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'RMU_DE_UPDATE'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72952942176110467)
,p_name=>'RMU_DE_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139597879825414873)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'FR_APPOINTMENTS'
,p_ajax_items_to_submit=>'FR_APPOINTMENTS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72953308052110468)
,p_name=>'RMU_DE_ENTER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139597879825414873)
,p_prompt=>'Enter Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72954042256110469)
,p_name=>'RMU_DE_ISIR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139597983321414874)
,p_item_default=>'0'
,p_prompt=>'Rm De Isir'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72954416307110469)
,p_name=>'RMU_DE_MIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139597983321414874)
,p_item_default=>'0'
,p_prompt=>'mil'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72954868233110470)
,p_name=>'RMU_DE_AWARD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139597983321414874)
,p_item_default=>'0'
,p_prompt=>'Award'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72955267511110470)
,p_name=>'RMU_DE_TRK_STAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(139597983321414874)
,p_item_default=>'0'
,p_prompt=>'track stats'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72955921504110471)
,p_name=>'RMU_FR_APPOINTMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139598429029414879)
,p_item_default=>'0'
,p_prompt=>'Std Hrs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72956332202110471)
,p_name=>'RMU_FR_LTRS_MAILED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139598429029414879)
,p_item_default=>'0'
,p_prompt=>'Ltrs Mailed'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72956720459110471)
,p_name=>'RMU_FR_DOC_SCAN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139598429029414879)
,p_item_default=>'0'
,p_prompt=>'Doc Scan'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72957105455110471)
,p_name=>'RMU_FR_FAXIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(139598429029414879)
,p_item_default=>'0'
,p_prompt=>'Faxes In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72957561943110472)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_FILEROOM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      ',
'Update REC_MANG_DE_FR',
'SET  RM_DE_ISIR =:RMU_DE_ISIR	, ',
'     RM_DE_MIL =:RMU_DE_MIL	,',
'     RM_DE_AWARD =:RMU_DE_AWARD ,	',
'     RM_DE_TRK_STAT =:RMU_DE_TRK_STAT	,',
'     FR_APPOINTMENTS =:RMU_FR_APPOINTMENTS , ',
'     FR_LTRS_MAILED =:RMU_FR_LTRS_MAILED 	,',
'     FR_DOC_SCAN =:RMU_FR_DOC_SCAN 	,',
'     FR_FAXIN =:RMU_FR_FAXIN',
'Where ENTER_DATE =:RMU_DE_ENTER_DATE  and  RM_DE_EMP_ID =:RMU_DE_EMP_ID ;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Update ACD FINAID Records'
,p_step_title=>'Update ACD FINAID Records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(75608151129338813)
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803131318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139617149012269667)
,p_plug_name=>'Update ACD FINAID Records'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139615675105269653)
,p_plug_name=>'ACD'
,p_parent_plug_id=>wwv_flow_api.id(139617149012269667)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139615858423269654)
,p_plug_name=>'Finaid Received'
,p_parent_plug_id=>wwv_flow_api.id(139617149012269667)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139615953669269655)
,p_plug_name=>'Greeter'
,p_parent_plug_id=>wwv_flow_api.id(139617149012269667)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139615974373269656)
,p_plug_name=>'Fiscal Ops'
,p_parent_plug_id=>wwv_flow_api.id(139617149012269667)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72978708068965232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(139617149012269667)
,p_button_name=>'REC_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'REC_UPDATE'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72979164793965233)
,p_name=>'RMU_FIN_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139617149012269667)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72979504433965234)
,p_name=>'RMU_FIN_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139617149012269667)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72980295008965234)
,p_name=>'RMU_TOTAL_OFFERED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139615675105269653)
,p_item_default=>'0'
,p_prompt=>'Total Offered'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72980681924965234)
,p_name=>'RMU_TOTAL_ANSWERED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139615675105269653)
,p_item_default=>'0'
,p_prompt=>'Total Answered'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72981009953965235)
,p_name=>'RMU_IN_QUEUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139615675105269653)
,p_item_default=>'0'
,p_prompt=>'In Queue'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72981423273965235)
,p_name=>'RMU_AVG_QUEUE_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(139615675105269653)
,p_item_default=>'0'
,p_prompt=>'Avg Queue time in mm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72981845246965236)
,p_name=>'RMU_AVG_QUEUE_TIME_SEC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(139615675105269653)
,p_item_default=>'0'
,p_prompt=>'Avg Queue Time Sec'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72982573808965236)
,p_name=>'RMU_FINAID_RECEIVED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139615858423269654)
,p_item_default=>'0'
,p_prompt=>'Finaid Received'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72983245809965237)
,p_name=>'RMU_STDS_IN_DOOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139615953669269655)
,p_item_default=>'0'
,p_prompt=>'# Students in door'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72983610373965237)
,p_name=>'RMU_AVG_WAIT_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139615953669269655)
,p_item_default=>'0'
,p_prompt=>'Avg Wait Time in mm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72984005262965237)
,p_name=>'RMU_AVG_WAIT_TIME_SEC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139615953669269655)
,p_item_default=>'0'
,p_prompt=>'Avg Wait Time Sec'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72984706187965238)
,p_name=>'RMU_HW_PHONE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139615974373269656)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72985144256965238)
,p_name=>'RMU_HW_ACD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139615974373269656)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72985573347965239)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_ACD_FIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'UPDATE REC_MANG_ACD_FIN',
'  SET  ACD_TOTAL_OFFERED =:RMU_TOTAL_OFFERED ,',
'        ACD_TOTAL_ANSWERED =:RMU_TOTAL_ANSWERED ,',
'        ACD_IN_QUEUE =:RMU_IN_QUEUE 	,',
'        ACD_AVG_QUEUE_TIME =:RMU_AVG_QUEUE_TIME 	,',
'        ACD_AVG_QUEUE_SEC =:RMU_AVG_QUEUE_TIME_SEC 	,',
'        GR_STD_IN_DOOR =:RMU_STDS_IN_DOOR 	,',
'        GR_AVG_WAIT_TIME =:RMU_AVG_WAIT_TIME ,',
'        GR_AVG_WAIT_SEC =:RMU_AVG_WAIT_TIME_SEC 	,',
'        FINAID_RECEIVED =:RMU_FINAID_RECEIVED 	,',
'        HW_PHONE =:RMU_HW_PHONE  ,',
'        HW_ACD =:RMU_HW_ACD ',
'Where RM_FIN_EMP_ID =:RMU_FIN_EMP_ID and  RM_FIN_DATE =:RMU_FIN_DATE ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Summary Loans'
,p_step_title=>'Summary Loans'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710115352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74151475056523120)
,p_plug_name=>'Loans Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74151882327523124)
,p_plug_name=>'Loan Details'
,p_parent_plug_id=>wwv_flow_api.id(74151475056523120)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select RML_EMP_ID,',
'sum(RML_ACD) as ACD	,sum(RML_PHONE) as Phone,	sum(RML_CURR_HS_E_IN) as CURR_HS_E_IN,	sum(RML_CURR_HS_E_OUT) as CURR_HS_E_OUT ,	sum(RML_INC_TRANS_E_IN) as INC_TRANS_E_IN,',
'sum(RML_INC_TRANS_E_OUT) as INC_TRANS_E_OUT ,sum(RML_INC_GRAD_E_IN) as INC_GRAD_E_IN,	',
'sum(RML_INC_GRAD_E_OUT) as INC_GRAD_E_OUT,	sum(RML_CURR_UG_E_IN) as CURR_UG_E_IN,	sum(RML_CURR_UG_E_OUT) as CURR_UG_E_OUT , sum(RML_GRAD_VET_MED_EIN) as GRAD_VET_MED_EIN ,',
'sum(RML_GRAD_VET_MED_EOUT) as GRAD_VET_MED_EOUT,	sum(RML_COMBO_OFFER_EIN) as COMBO_OFFER_EIN,',
'sum(RML_COMBO_OFFER_EOUT) as COMBO_OFFER_EOUT, sum(RML_FOR_STUD_E_IN) as FOR_STUD_E_IN ,	sum(RML_FOR_STUD_E_OUT) as FOR_STUD_E_OUT , sum(RM_DEFAULT) as RM_DEFAULT,',
'sum(TRAN_MON) as TRAN_MON,	sum(SUMMER) as SUMMER 	,sum(DOC_DELETE) as DOC_DELETE	,sum(DL_RECON) as DL_RECON,	sum(PEND_LOANS) as PEND_LOANS ,	sum(STAFF) as STAFF ,	sum(PLUS) as PLUS ,	',
'sum(COGNOS) as COGNOS ,	sum(AGGR) as AGGR ,	sum(RM_DL) as RM_DL,	sum(LOAN_ADJ) as LOAN_ADJ,	',
'sum(DISCRP) as DISCRP,	sum(NON_FED) as	NON_FED,sum(PRORATION) as PRORATION  from rec_Mang_loans where RML_DATE >= :LOANS_FROM_DATE AND  RML_DATE <= :LOANS_TO_DATE GROUP BY  RML_EMP_ID ; '))
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
,p_plug_header=>'Loans Details'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74151902872523125)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74151902872523125
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152066919523126)
,p_db_column_name=>'RML_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152165112523127)
,p_db_column_name=>'ACD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152214980523128)
,p_db_column_name=>'PHONE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152300059523129)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152407159523130)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152510650523131)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152668355523132)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152738806523133)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152830063523134)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74152994917523135)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153036366523136)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153144446523137)
,p_db_column_name=>'GRAD_VET_MED_EIN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153288480523138)
,p_db_column_name=>'GRAD_VET_MED_EOUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153337473523139)
,p_db_column_name=>'COMBO_OFFER_EIN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153427817523140)
,p_db_column_name=>'COMBO_OFFER_EOUT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153586397523141)
,p_db_column_name=>'FOR_STUD_E_IN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153647207523142)
,p_db_column_name=>'FOR_STUD_E_OUT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153725827523143)
,p_db_column_name=>'RM_DEFAULT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Default'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153878310523144)
,p_db_column_name=>'TRAN_MON'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tran Mon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74153976732523145)
,p_db_column_name=>'SUMMER'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Summer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74154008203523146)
,p_db_column_name=>'DOC_DELETE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Doc Delete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74154111661523147)
,p_db_column_name=>'DL_RECON'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'DL Recon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74154284289523148)
,p_db_column_name=>'PEND_LOANS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Pend Loans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74154320025523149)
,p_db_column_name=>'STAFF'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74154403972523150)
,p_db_column_name=>'PLUS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228161521870301)
,p_db_column_name=>'COGNOS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228238219870302)
,p_db_column_name=>'AGGR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Aggr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228301093870303)
,p_db_column_name=>'RM_DL'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'DL'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228477028870304)
,p_db_column_name=>'LOAN_ADJ'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Loan Adj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228566410870305)
,p_db_column_name=>'DISCRP'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Discrp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228627141870306)
,p_db_column_name=>'NON_FED'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Non Fed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74228740122870307)
,p_db_column_name=>'PRORATION'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Proration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74254173316873649)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'742542'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RML_EMP_ID:ACD:PHONE:CURR_HS_E_IN:CURR_HS_E_OUT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_GRAD_E_IN:INC_GRAD_E_OUT:CURR_UG_E_IN:CURR_UG_E_OUT:GRAD_VET_MED_EIN:GRAD_VET_MED_EOUT:COMBO_OFFER_EIN:COMBO_OFFER_EOUT:FOR_STUD_E_IN:FOR_STUD_E_OUT:RM_DEFAULT:TRAN_MO'
||'N:SUMMER:DOC_DELETE:DL_RECON:PEND_LOANS:STAFF:PLUS:COGNOS:AGGR:RM_DL:LOAN_ADJ:DISCRP:NON_FED:PRORATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74228850294870308)
,p_plug_name=>'Summary_details'
,p_parent_plug_id=>wwv_flow_api.id(74151475056523120)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'sum(RML_ACD) as ACD	,sum(RML_PHONE) as Phone,	sum(RML_CURR_HS_E_IN) as CURR_HS_E_IN,	sum(RML_CURR_HS_E_OUT) as CURR_HS_E_OUT ,	sum(RML_INC_TRANS_E_IN) as INC_TRANS_E_IN,',
'sum(RML_INC_TRANS_E_OUT) as INC_TRANS_E_OUT ,sum(RML_INC_GRAD_E_IN) as INC_GRAD_E_IN,	',
'sum(RML_INC_GRAD_E_OUT) as INC_GRAD_E_OUT,	sum(RML_CURR_UG_E_IN) as CURR_UG_E_IN,	sum(RML_CURR_UG_E_OUT) as CURR_UG_E_OUT , sum(RML_GRAD_VET_MED_EIN) as GRAD_VET_MED_EIN ,',
'sum(RML_GRAD_VET_MED_EOUT) as GRAD_VET_MED_EOUT,	sum(RML_COMBO_OFFER_EIN) as COMBO_OFFER_EIN,',
'sum(RML_COMBO_OFFER_EOUT) as COMBO_OFFER_EOUT, sum(RML_FOR_STUD_E_IN) as FOR_STUD_E_IN ,	sum(RML_FOR_STUD_E_OUT) as FOR_STUD_E_OUT , sum(RM_DEFAULT) as RM_DEFAULT,',
'sum(TRAN_MON) as TRAN_MON,	sum(SUMMER) as SUMMER 	,sum(DOC_DELETE) as DOC_DELETE	,sum(DL_RECON) as DL_RECON,	sum(PEND_LOANS) as PEND_LOANS ,	sum(STAFF) as STAFF ,	sum(PLUS) as PLUS ,	',
'sum(COGNOS) as COGNOS ,	sum(AGGR) as AGGR ,	sum(RM_DL) as RM_DL,	sum(LOAN_ADJ) as LOAN_ADJ,	',
'sum(DISCRP) as DISCRP,	sum(NON_FED) as	NON_FED,sum(PRORATION) as PRORATION  from rec_Mang_loans where RML_DATE >= :LOANS_FROM_DATE AND  RML_DATE <= :LOANS_TO_DATE  ; '))
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
,p_plug_header=>'Loans Summary Details '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74228996050870309)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>74228996050870309
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229187626870311)
,p_db_column_name=>'ACD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229235601870312)
,p_db_column_name=>'PHONE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229371368870313)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr HS / Inc FR Email In '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229423334870314)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229588754870315)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229606534870316)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229727615870317)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74229817391870318)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74239972924870319)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240093917870320)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240189911870321)
,p_db_column_name=>'GRAD_VET_MED_EIN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240211451870322)
,p_db_column_name=>'GRAD_VET_MED_EOUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240339592870323)
,p_db_column_name=>'COMBO_OFFER_EIN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240437808870324)
,p_db_column_name=>'COMBO_OFFER_EOUT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240571156870325)
,p_db_column_name=>'FOR_STUD_E_IN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>' FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240693978870326)
,p_db_column_name=>'FOR_STUD_E_OUT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240719181870327)
,p_db_column_name=>'RM_DEFAULT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Default'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240878317870328)
,p_db_column_name=>'TRAN_MON'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tran Mon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74240981738870329)
,p_db_column_name=>'SUMMER'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Summer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241020974870330)
,p_db_column_name=>'DOC_DELETE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Doc Delete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241168812870331)
,p_db_column_name=>'DL_RECON'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'DL Recon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241277659870332)
,p_db_column_name=>'PEND_LOANS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Pend Loans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241312087870333)
,p_db_column_name=>'STAFF'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241432636870334)
,p_db_column_name=>'PLUS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241548962870335)
,p_db_column_name=>'COGNOS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241696017870336)
,p_db_column_name=>'AGGR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Aggr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241704584870337)
,p_db_column_name=>'RM_DL'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'DL'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241864991870338)
,p_db_column_name=>'LOAN_ADJ'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Loan Adj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74241951879870339)
,p_db_column_name=>'DISCRP'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Discrp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242036923870340)
,p_db_column_name=>'NON_FED'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Non Fed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242125911870341)
,p_db_column_name=>'PRORATION'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Proration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74265882643909671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'742659'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACD:PHONE:CURR_HS_E_IN:CURR_HS_E_OUT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_GRAD_E_IN:INC_GRAD_E_OUT:CURR_UG_E_IN:CURR_UG_E_OUT:GRAD_VET_MED_EIN:GRAD_VET_MED_EOUT:COMBO_OFFER_EIN:COMBO_OFFER_EOUT:FOR_STUD_E_IN:FOR_STUD_E_OUT:RM_DEFAULT:TRAN_MON:SUMMER:DO'
||'C_DELETE:DL_RECON:PEND_LOANS:STAFF:PLUS:COGNOS:AGGR:RM_DL:LOAN_ADJ:DISCRP:NON_FED:PRORATION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74151742843523123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74151475056523120)
,p_button_name=>'FETCH_LOANS_SUMMARY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Loans Summary'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74151526822523121)
,p_name=>'LOANS_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74151475056523120)
,p_prompt=>'Loans From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74151617346523122)
,p_name=>'LOANS_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74151475056523120)
,p_prompt=>'Loans To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Home page  - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(56640445306843625)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230213131609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56765265177843789)
,p_plug_name=>'Home page '
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56680174205843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56769932186843803)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(56765265177843789)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(56657369414843641)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56768077147843799)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(56765265177843789)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56765695172843791)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56765265177843789)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(56737226364843708)
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
 p_id=>wwv_flow_api.id(56766035619843792)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56765265177843789)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(56737226364843708)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56767170255843795)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56765265177843789)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(56766307993843792)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(56737226364843708)
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
 p_id=>wwv_flow_api.id(56768840787843801)
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
 p_id=>wwv_flow_api.id(56768457324843800)
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
 p_id=>wwv_flow_api.id(56769654651843802)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56769204081843801)
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
