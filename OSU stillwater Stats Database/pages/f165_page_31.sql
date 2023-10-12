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
--   Date and Time:   16:37 Thursday October 12, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00031
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>31);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Fisco Ops'
,p_step_title=>'Fisco Ops'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231012143019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80674694979033114)
,p_plug_name=>'Fisco Ops'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FISCO_OPS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80675421244033122)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80674694979033114)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to delete this record?'',''DELETE'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80675760836033125)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80674694979033114)
,p_button_name=>'SPECIFIC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Go to a specific date'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80675255128033120)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80674694979033114)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create / Update'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80675646714033124)
,p_branch_name=>'AFTER_DELETE'
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:P31_FO_DATE,P31_FO_EMP_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80675421244033122)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80674863954033116)
,p_name=>'P31_FO_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_source_plug_id=>wwv_flow_api.id(80674694979033114)
,p_prompt=>'Emp ID'
,p_source=>'FO_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name as EMP_NAME  ',
'from emp_details ',
'where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Fiscal Ops'';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80674945230033117)
,p_name=>'P31_FO_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_source_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Date'
,p_source=>'FO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80675080386033118)
,p_name=>'P31_FO_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_source_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_default=>'0'
,p_prompt=>'Phone'
,p_source=>'FO_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80675168039033119)
,p_name=>'P31_FO_ACD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_source_plug_id=>wwv_flow_api.id(80674694979033114)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_source=>'FO_ACD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80675375722033121)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FO_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO FISCO_OPS fo',
'USING (SELECT :P31_FO_EMP_ID AS NEW_FO_EMP_ID,',
'              :P31_FO_DATE AS NEW_FO_DATE,',
'              :P31_FO_PHONE AS NEW_FO_PHONE,',
'              :P31_FO_ACD AS NEW_FO_ACD',
'       FROM DUAL) new_data',
'ON (fo.FO_EMP_ID = new_data.NEW_FO_EMP_ID AND fo.FO_DATE = new_data.NEW_FO_DATE)',
'WHEN MATCHED THEN',
'  UPDATE SET',
'    fo.FO_PHONE = new_data.NEW_FO_PHONE,',
'    fo.FO_ACD = new_data.NEW_FO_ACD',
'WHEN NOT MATCHED THEN',
'  INSERT (FO_EMP_ID, FO_DATE, FO_PHONE, FO_ACD)',
'  VALUES (new_data.NEW_FO_EMP_ID, new_data.NEW_FO_DATE, new_data.NEW_FO_PHONE, new_data.NEW_FO_ACD);',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80675513080033123)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FO_DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM FISCO_OPS fo',
'WHERE fo.FO_EMP_ID = :P31_FO_EMP_ID AND fo.FO_DATE = :P31_FO_DATE;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80675421244033122)
,p_process_success_message=>'Delete Completed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80674757687033115)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(80674694979033114)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Fisco Ops'
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
