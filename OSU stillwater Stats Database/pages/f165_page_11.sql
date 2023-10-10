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
--   Date and Time:   10:22 Tuesday October 10, 2023
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
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231010102237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57562032801556801)
,p_plug_name=>'Data Entry Staff'
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
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
