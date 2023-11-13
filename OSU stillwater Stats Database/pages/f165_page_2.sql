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
--   Date and Time:   16:50 Wednesday October 11, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00002
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
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
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231011114640'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79909198354916222)
,p_plug_name=>'Back counselor details'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'BACK_COUNS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79923796991265113)
,p_plug_name=>'Appts'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79923892150265114)
,p_plug_name=>'Student Emails In'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79923906332265115)
,p_plug_name=>'Students Emails Out'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79924051325265116)
,p_plug_name=>'Finaid Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79925064211265126)
,p_plug_name=>'Back Counselors'
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
 p_id=>wwv_flow_api.id(79995727042542306)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79909198354916222)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to delete this record?'',''DELETE'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79925132143265127)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79909198354916222)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create / Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80420787249594615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79909198354916222)
,p_button_name=>'SPECIFIC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Go to specific date'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79995950863542308)
,p_branch_name=>'AFTER DELETE'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:P2_ENTER_DATE,P2_BC_EMP_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(79995727042542306)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79909315594916224)
,p_name=>'P2_ENTER_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79925064211265126)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Date'
,p_source=>'ENTER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79909443620916225)
,p_name=>'P2_BC_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79925064211265126)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_prompt=>'Emp ID'
,p_source=>'BC_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name as EMP_NAME  ',
'from emp_details ',
'where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Counselor'';'))
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
 p_id=>wwv_flow_api.id(79909519718916226)
,p_name=>'P2_COUNS_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79925064211265126)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Phone'
,p_source=>'COUNS_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79909643374916227)
,p_name=>'P2_ACD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79925064211265126)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_source=>'ACD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79909707948916228)
,p_name=>'P2_BC_CURRENT_HS_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current HS or Incoming FR'
,p_source=>'BC_CURRENT_HS_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79909802601916229)
,p_name=>'P2_BC_CURRENT_HS_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current HS or Incoming FR'
,p_source=>'BC_CURRENT_HS_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79909950796916230)
,p_name=>'P2_BC_CURRENT_HS_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Undergrad TR'
,p_source=>'BC_CURRENT_HS_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910042828916231)
,p_name=>'P2_BC_INC_TRANSFER_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Undergrad TR'
,p_source=>'BC_INC_TRANSFER_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910135848916232)
,p_name=>'P2_BC_INC_TRANSFER_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Undergrad TR'
,p_source=>'BC_INC_TRANSFER_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910269107916233)
,p_name=>'P2_BC_INC_TRANSFER_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current HS or Incoming FR'
,p_source=>'BC_INC_TRANSFER_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910386425916234)
,p_name=>'P2_BC_INC_GRAD_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Grad or Vet Med'
,p_source=>'BC_INC_GRAD_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910485811916235)
,p_name=>'P2_BC_INC_GRAD_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Grad or Vet Med'
,p_source=>'BC_INC_GRAD_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910596408916236)
,p_name=>'P2_BC_INC_GRAD_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Grad or Vet Med'
,p_source=>'BC_INC_GRAD_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910612999916237)
,p_name=>'P2_BC_CURRENT_UG_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Undergrad'
,p_source=>'BC_CURRENT_UG_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910719820916238)
,p_name=>'P2_BC_CURRENT_UG_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Undergrad'
,p_source=>'BC_CURRENT_UG_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910861429916239)
,p_name=>'P2_BC_CURRENT_UG_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Undergrad'
,p_source=>'BC_CURRENT_UG_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79910990157916240)
,p_name=>'P2_BC_GRAD_VET_MED_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Grad or Vet Med'
,p_source=>'BC_GRAD_VET_MED_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911020308916241)
,p_name=>'P2_BC_GRAD_VET_MED_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Grad or Vet Med'
,p_source=>'BC_GRAD_VET_MED_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911111903916242)
,p_name=>'P2_BC_GRAD_VET_MED_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Grad or Vet Med'
,p_source=>'BC_GRAD_VET_MED_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911259695916243)
,p_name=>'P2_BC_COMBO_OTHER_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Combo of Students/Other'
,p_source=>'BC_COMBO_OTHER_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911347857916244)
,p_name=>'P2_BC_COMBO_OTHER_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Combo of Students/Other'
,p_source=>'BC_COMBO_OTHER_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911498610916245)
,p_name=>'P2_BC_COMBO_OTHER_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Combo of Students/Other'
,p_source=>'BC_COMBO_OTHER_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911521079916246)
,p_name=>'P2_BC_FORMER_STUDENT_APPT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79923796991265113)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Former Student'
,p_source=>'BC_FORMER_STUDENT_APPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911685667916247)
,p_name=>'P2_BC_FORMER_STUDENT_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79923892150265114)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Former Student'
,p_source=>'BC_FORMER_STUDENT_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911792409916248)
,p_name=>'P2_BC_FORMER_STUDENT_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79923906332265115)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Former Student'
,p_source=>'BC_FORMER_STUDENT_E_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911849431916249)
,p_name=>'P2_BC_IN_PERSON'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'In-Person Contact'
,p_source=>'BC_IN_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79911942500916250)
,p_name=>'P2_BC_EVALS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Evals'
,p_source=>'BC_EVALS'
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
 p_id=>wwv_flow_api.id(79922571406265101)
,p_name=>'P2_BC_EMAILS_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Other Emails In'
,p_source=>'BC_EMAILS_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79922644869265102)
,p_name=>'P2_BC_EMAILS_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Other Emails Out'
,p_source=>'BC_EMAILS_OUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79922743862265103)
,p_name=>'P2_BC_PROF_JUDG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Prof Judg'
,p_source=>'BC_PROF_JUDG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79922824181265104)
,p_name=>'P2_BC_REPORTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_source=>'BC_REPORTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79922973156265105)
,p_name=>'P2_BC_MISC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_source=>'BC_MISC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923069676265106)
,p_name=>'P2_BC_CURR_HS_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current HS or Incoming FR'
,p_source=>'BC_CURR_HS_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923100176265107)
,p_name=>'P2_BC_INC_TRANS_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Undergrad TR'
,p_source=>'BC_INC_TRANS_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923240023265108)
,p_name=>'P2_BC_INC_GRAD_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Incoming Grad or Vet Med'
,p_source=>'BC_INC_GRAD_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923339012265109)
,p_name=>'P2_BC_CURR_UG_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Undergrad'
,p_source=>'BC_CURR_UG_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923457975265110)
,p_name=>'P2_BC_CURR_GRAD_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Current Grad or Vet Med'
,p_source=>'BC_CURR_GRAD_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923572020265111)
,p_name=>'P2_BC_COMBO_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Combo of Students/Other'
,p_source=>'BC_COMBO_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79923670935265112)
,p_name=>'P2_BC_FOR_STU_FIN_ANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79924051325265116)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_default=>'0'
,p_prompt=>'Former Student'
,p_source=>'BC_FOR_STU_FIN_ANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80420681880594614)
,p_name=>'P2_NOTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(79909198354916222)
,p_item_source_plug_id=>wwv_flow_api.id(79909198354916222)
,p_prompt=>'Note'
,p_source=>'NOTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>400
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79925209018265128)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_BACK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  -- Try to update the existing row',
'  UPDATE BACK_COUNS',
'  SET',
'    COUNS_PHONE = :P2_COUNS_PHONE,',
'    ACD = :P2_ACD,',
'    BC_CURRENT_HS_APPT = :P2_BC_CURRENT_HS_APPT,',
'    BC_CURRENT_HS_E_IN = :P2_BC_CURRENT_HS_E_IN,',
'    BC_CURRENT_HS_E_OUT = :P2_BC_CURRENT_HS_E_OUT,',
'    BC_INC_TRANSFER_APPT = :P2_BC_INC_TRANSFER_APPT,',
'    BC_INC_TRANSFER_E_IN = :P2_BC_INC_TRANSFER_E_IN,',
'    BC_INC_TRANSFER_E_OUT = :P2_BC_INC_TRANSFER_E_OUT,',
'    BC_INC_GRAD_APPT = :P2_BC_INC_GRAD_APPT,',
'    BC_INC_GRAD_E_IN = :P2_BC_INC_GRAD_E_IN,',
'    BC_INC_GRAD_E_OUT = :P2_BC_INC_GRAD_E_OUT,',
'    BC_CURRENT_UG_APPT = :P2_BC_CURRENT_UG_APPT, ',
'    BC_CURRENT_UG_E_IN = :P2_BC_CURRENT_UG_E_IN, ',
'    BC_CURRENT_UG_E_OUT = :P2_BC_CURRENT_UG_E_OUT,',
'    BC_GRAD_VET_MED_APPT = :P2_BC_GRAD_VET_MED_APPT,',
'    BC_GRAD_VET_MED_E_IN = :P2_BC_GRAD_VET_MED_E_IN,',
'    BC_GRAD_VET_MED_E_OUT = :P2_BC_GRAD_VET_MED_E_OUT,',
'    BC_COMBO_OTHER_APPT = :P2_BC_COMBO_OTHER_APPT,',
'    BC_COMBO_OTHER_E_IN = :P2_BC_COMBO_OTHER_E_IN, ',
'    BC_COMBO_OTHER_E_OUT = :P2_BC_COMBO_OTHER_E_OUT,',
'    BC_FORMER_STUDENT_APPT = :P2_BC_FORMER_STUDENT_APPT, ',
'    BC_FORMER_STUDENT_E_IN =  :P2_BC_FORMER_STUDENT_E_IN,',
'    BC_FORMER_STUDENT_E_OUT =  :P2_BC_FORMER_STUDENT_E_OUT,',
'    BC_IN_PERSON = :P2_BC_IN_PERSON, ',
'    BC_EVALS = :P2_BC_IN_PERSON, ',
'    BC_EMAILS_IN = :P2_BC_EMAILS_IN, ',
'    BC_EMAILS_OUT = :P2_BC_EMAILS_OUT,',
'    BC_PROF_JUDG = :P2_BC_PROF_JUDG,',
'    BC_REPORTS = :P2_BC_REPORTS, ',
'    BC_MISC = :P2_BC_MISC, ',
'    BC_CURR_HS_FIN_ANS = :P2_BC_CURR_HS_FIN_ANS,',
'    BC_INC_TRANS_FIN_ANS = :P2_BC_INC_TRANS_FIN_ANS,',
'    BC_INC_GRAD_FIN_ANS = :P2_BC_INC_GRAD_FIN_ANS,',
'    BC_CURR_UG_FIN_ANS = :P2_BC_CURR_UG_FIN_ANS,',
'    BC_CURR_GRAD_FIN_ANS = :P2_BC_CURR_GRAD_FIN_ANS,',
'    BC_COMBO_FIN_ANS = :P2_BC_COMBO_FIN_ANS,',
'    BC_FOR_STU_FIN_ANS = :P2_BC_FOR_STU_FIN_ANS,',
'    NOTE = :P2_NOTE',
'  WHERE',
'    ENTER_DATE = :P2_ENTER_DATE',
'    AND BC_EMP_ID = :P2_BC_EMP_ID;',
'',
'  -- If no rows were updated, insert a new row',
'  IF SQL%ROWCOUNT = 0 THEN',
'    INSERT INTO BACK_COUNS (',
'      ENTER_DATE,',
'      BC_EMP_ID,',
'      COUNS_PHONE,',
'      ACD,',
'      BC_CURRENT_HS_APPT,',
'      BC_CURRENT_HS_E_IN,',
'      BC_CURRENT_HS_E_OUT,',
'      BC_INC_TRANSFER_APPT,',
'      BC_INC_TRANSFER_E_IN,',
'      BC_INC_TRANSFER_E_OUT,',
'      BC_INC_GRAD_APPT,',
'      BC_INC_GRAD_E_IN,',
'      BC_INC_GRAD_E_OUT,',
'      BC_CURRENT_UG_APPT, ',
'      BC_CURRENT_UG_E_IN, ',
'      BC_CURRENT_UG_E_OUT,',
'      BC_GRAD_VET_MED_APPT,',
'      BC_GRAD_VET_MED_E_IN,',
'      BC_GRAD_VET_MED_E_OUT,',
'      BC_COMBO_OTHER_APPT,',
'      BC_COMBO_OTHER_E_IN, ',
'      BC_COMBO_OTHER_E_OUT,',
'      BC_FORMER_STUDENT_APPT, ',
'      BC_FORMER_STUDENT_E_IN,',
'      BC_FORMER_STUDENT_E_OUT,',
'      BC_IN_PERSON, ',
'      BC_EVALS, ',
'      BC_EMAILS_IN, ',
'      BC_EMAILS_OUT,',
'      BC_PROF_JUDG,',
'      BC_REPORTS, ',
'      BC_MISC, ',
'      BC_CURR_HS_FIN_ANS,',
'      BC_INC_TRANS_FIN_ANS,',
'      BC_INC_GRAD_FIN_ANS,',
'      BC_CURR_UG_FIN_ANS,',
'      BC_CURR_GRAD_FIN_ANS,',
'      BC_COMBO_FIN_ANS,',
'      BC_FOR_STU_FIN_ANS,',
'      NOTE',
'    ) VALUES (',
'      :P2_ENTER_DATE,',
'      :P2_BC_EMP_ID,',
'      :P2_COUNS_PHONE,',
'      :P2_ACD,',
'      :P2_BC_CURRENT_HS_APPT,',
'      :P2_BC_CURRENT_HS_E_IN,',
'      :P2_BC_CURRENT_HS_E_OUT,',
'      :P2_BC_INC_TRANSFER_APPT,',
'      :P2_BC_INC_TRANSFER_E_IN,',
'      :P2_BC_INC_TRANSFER_E_OUT,',
'      :P2_BC_INC_GRAD_APPT,',
'      :P2_BC_INC_GRAD_E_IN,',
'      :P2_BC_INC_GRAD_E_OUT,',
'      :P2_BC_CURRENT_UG_APPT, ',
'      :P2_BC_CURRENT_UG_E_IN, ',
'      :P2_BC_CURRENT_UG_E_OUT,',
'      :P2_BC_GRAD_VET_MED_APPT,',
'      :P2_BC_GRAD_VET_MED_E_IN,',
'      :P2_BC_GRAD_VET_MED_E_OUT,',
'      :P2_BC_COMBO_OTHER_APPT,',
'      :P2_BC_COMBO_OTHER_E_IN, ',
'      :P2_BC_COMBO_OTHER_E_OUT,',
'      :P2_BC_FORMER_STUDENT_APPT, ',
'      :P2_BC_FORMER_STUDENT_E_IN,',
'      :P2_BC_FORMER_STUDENT_E_OUT,',
'      :P2_BC_IN_PERSON, ',
'      :P2_BC_EVALS, ',
'      :P2_BC_EMAILS_IN, ',
'      :P2_BC_EMAILS_OUT,',
'      :P2_BC_PROF_JUDG,',
'      :P2_BC_REPORTS, ',
'      :P2_BC_MISC, ',
'      :P2_BC_CURR_HS_FIN_ANS,',
'      :P2_BC_INC_TRANS_FIN_ANS,',
'      :P2_BC_INC_GRAD_FIN_ANS,',
'      :P2_BC_CURR_UG_FIN_ANS,',
'      :P2_BC_CURR_GRAD_FIN_ANS,',
'      :P2_BC_COMBO_FIN_ANS,',
'      :P2_BC_FOR_STU_FIN_ANS,',
'      :P2_NOTE',
'    );',
'  END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79925132143265127)
,p_process_success_message=>'Successfully Submitted'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79995828702542307)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_BACK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM BACK_COUNS',
'WHERE ENTER_DATE = :P2_ENTER_DATE',
'  AND BC_EMP_ID = :P2_BC_EMP_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79995727042542306)
,p_process_success_message=>'Deletion successful'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79909200232916223)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(79909198354916222)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form New_date-OSFA - Back Counselors'
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
