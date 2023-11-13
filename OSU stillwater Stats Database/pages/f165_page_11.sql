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
--   Date and Time:   15:17 Tuesday October 10, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00011
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>11);
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
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231010151701'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80339676117357106)
,p_plug_name=>'Data Entry Staff 2'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DATA_ENTRY_STAFF'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80342042487357130)
,p_plug_name=>'Data Entry Staff'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80342457342357134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80339676117357106)
,p_button_name=>'SPECIFIC_DATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Go to specific date'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80342391245357133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80339676117357106)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to delete this record?'',''DELETE'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57564289296556823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80339676117357106)
,p_button_name=>'DES_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create / Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80342241588357132)
,p_branch_name=>'AFTER_DELETE'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_DES_DATE,P11_DES_EMP_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80342391245357133)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80339882332357108)
,p_name=>'P11_DES_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80342042487357130)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_prompt=>'Des Emp Id'
,p_source=>'DES_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select   emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name as EMP_NAME  ',
'from emp_details ',
'where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Data Entry'';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80339952489357109)
,p_name=>'P11_DES_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80342042487357130)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Des Date'
,p_source=>'DES_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340048309357110)
,p_name=>'P11_SCHOL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Schol'
,p_source=>'SCHOL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340133084357111)
,p_name=>'P11_RCRSUSP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'RCRSUSP'
,p_source=>'RCRSUSP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340287965357112)
,p_name=>'P11_INBOXES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Inboxes'
,p_source=>'INBOXES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340360717357113)
,p_name=>'P11_WORKFLOW'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Workflow'
,p_source=>'WORKFLOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340497824357114)
,p_name=>'P11_DES_MIL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'MIL'
,p_source=>'DES_MIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340568681357115)
,p_name=>'P11_COGNOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Cognos'
,p_source=>'COGNOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340619934357116)
,p_name=>'P11_FAXES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Faxes'
,p_source=>'FAXES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340754508357117)
,p_name=>'P11_UPLOADS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Uploads'
,p_source=>'UPLOADS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340837417357118)
,p_name=>'P11_EXNA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Exna'
,p_source=>'EXNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80340956785357119)
,p_name=>'P11_BOUNCE_BACK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Bounce Back'
,p_source=>'BOUNCE_BACK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341072226357120)
,p_name=>'P11_SKIP_TRACE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Skip Trace'
,p_source=>'SKIP_TRACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341166617357121)
,p_name=>'P11_AWDLTR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'AWDLTR'
,p_source=>'AWDLTR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341235384357122)
,p_name=>'P11_RTLTR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Rtltr'
,p_source=>'RTLTR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341386218357123)
,p_name=>'P11_THANKU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Thanku'
,p_source=>'THANKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341497785357124)
,p_name=>'P11_DUPID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Dupid'
,p_source=>'DUPID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341577526357125)
,p_name=>'P11_CPS_CORR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'CPS Corr'
,p_source=>'CPS_CORR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341662162357126)
,p_name=>'P11_EMAILS_MOVED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Emails Moved'
,p_source=>'EMAILS_MOVED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341766992357127)
,p_name=>'P11_IMG_CORR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'IMG Corr'
,p_source=>'IMG_CORR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341898175357128)
,p_name=>'P11_COLLATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_default=>'0'
,p_prompt=>'Collate'
,p_source=>'COLLATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80341993306357129)
,p_name=>'P11_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(80339676117357106)
,p_item_source_plug_id=>wwv_flow_api.id(80339676117357106)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
'MERGE INTO DATA_ENTRY_STAFF des',
'USING (SELECT',
'         :P11_DES_EMP_ID AS DES_EMP_ID,',
'         :P11_DES_DATE AS DES_DATE,',
'         :P11_SCHOL AS SCHOL,',
'         :P11_RCRSUSP AS RCRSUSP,',
'         :P11_INBOXES AS INBOXES,',
'         :P11_WORKFLOW AS WORKFLOW,',
'         :P11_DES_MIL AS DES_MIL,',
'         :P11_COGNOS AS COGNOS,',
'         :P11_FAXES AS FAXES,',
'         :P11_UPLOADS AS UPLOADS,',
'         :P11_EXNA AS EXNA,',
'         :P11_BOUNCE_BACK AS BOUNCE_BACK,',
'         :P11_SKIP_TRACE AS SKIP_TRACE,',
'         :P11_AWDLTR AS AWDLTR,',
'         :P11_RTLTR AS RTLTR,',
'         :P11_THANKU AS THANKU,',
'         :P11_DUPID AS DUPID,',
'         :P11_CPS_CORR AS CPS_CORR,',
'         :P11_EMAILS_MOVED AS EMAILS_MOVED,',
'         :P11_IMG_CORR AS IMG_CORR,',
'         :P11_COLLATE AS COLLATE,',
'         :P11_NOTES AS NOTES',
'       FROM DUAL) data_to_insert',
'ON (des.DES_EMP_ID = data_to_insert.DES_EMP_ID AND des.DES_DATE = data_to_insert.DES_DATE)',
'WHEN MATCHED THEN',
'  UPDATE SET',
'    des.SCHOL = data_to_insert.SCHOL,',
'    des.RCRSUSP = data_to_insert.RCRSUSP,',
'    des.INBOXES = data_to_insert.INBOXES,',
'    des.WORKFLOW = data_to_insert.WORKFLOW,',
'    des.DES_MIL = data_to_insert.DES_MIL,',
'    des.COGNOS = data_to_insert.COGNOS,',
'    des.FAXES = data_to_insert.FAXES,',
'    des.UPLOADS = data_to_insert.UPLOADS,',
'    des.EXNA = data_to_insert.EXNA,',
'    des.BOUNCE_BACK = data_to_insert.BOUNCE_BACK,',
'    des.SKIP_TRACE = data_to_insert.SKIP_TRACE,',
'    des.AWDLTR = data_to_insert.AWDLTR,',
'    des.RTLTR = data_to_insert.RTLTR,',
'    des.THANKU = data_to_insert.THANKU,',
'    des.DUPID = data_to_insert.DUPID,',
'    des.CPS_CORR = data_to_insert.CPS_CORR,',
'    des.EMAILS_MOVED = data_to_insert.EMAILS_MOVED,',
'    des.IMG_CORR = data_to_insert.IMG_CORR,',
'    des.COLLATE = data_to_insert.COLLATE,',
'    des.NOTES = data_to_insert.NOTES',
'WHEN NOT MATCHED THEN',
'  INSERT (',
'    DES_EMP_ID,',
'    DES_DATE,',
'    SCHOL,',
'    RCRSUSP,',
'    INBOXES,',
'    WORKFLOW,',
'    DES_MIL,',
'    COGNOS,',
'    FAXES,',
'    UPLOADS,',
'    EXNA,',
'    BOUNCE_BACK,',
'    SKIP_TRACE,',
'    AWDLTR,',
'    RTLTR,',
'    THANKU,',
'    DUPID,',
'    CPS_CORR,',
'    EMAILS_MOVED,',
'    IMG_CORR,',
'    COLLATE,',
'    NOTES',
'  )',
'  VALUES (',
'    data_to_insert.DES_EMP_ID,',
'    data_to_insert.DES_DATE,',
'    data_to_insert.SCHOL,',
'    data_to_insert.RCRSUSP,',
'    data_to_insert.INBOXES,',
'    data_to_insert.WORKFLOW,',
'    data_to_insert.DES_MIL,',
'    data_to_insert.COGNOS,',
'    data_to_insert.FAXES,',
'    data_to_insert.UPLOADS,',
'    data_to_insert.EXNA,',
'    data_to_insert.BOUNCE_BACK,',
'    data_to_insert.SKIP_TRACE,',
'    data_to_insert.AWDLTR,',
'    data_to_insert.RTLTR,',
'    data_to_insert.THANKU,',
'    data_to_insert.DUPID,',
'    data_to_insert.CPS_CORR,',
'    data_to_insert.EMAILS_MOVED,',
'    data_to_insert.IMG_CORR,',
'    data_to_insert.COLLATE,',
'    data_to_insert.NOTES',
'  );',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80342101988357131)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_DATAENTRY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM DATA_ENTRY_STAFF',
'WHERE DES_EMP_ID = :P11_DES_EMP_ID AND DES_DATE = :P11_DES_DATE;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80342391245357133)
,p_process_success_message=>'Delete Completed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80339703581357107)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(80339676117357106)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Goto_New_DataEntry_Records'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
