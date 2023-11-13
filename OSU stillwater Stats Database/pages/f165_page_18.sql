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
--   Date and Time:   15:41 Monday October 9, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00018
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>18);
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
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231009154015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66645951749304408)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
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
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80157878933550935)
,p_plug_name=>'File room'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'REC_MANG_DE_FR'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80216892100236321)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66646055245304409)
,p_button_name=>'SPEC_DATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Go to specific date'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80216949354236322)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80157878933550935)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to delete this record?'',''DELETE'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66647462911304423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80157878933550935)
,p_button_name=>'RM_DE_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create / Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80217113385236324)
,p_branch_name=>'AFTER_DELETE'
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_ENTER_DATE,P18_RM_DE_EMP_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80216949354236322)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80158086276550937)
,p_name=>'P18_ENTER_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66645951749304408)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_prompt=>'Enter Date'
,p_source=>'ENTER_DATE'
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
 p_id=>wwv_flow_api.id(80158135098550938)
,p_name=>'P18_RM_DE_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66645951749304408)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_prompt=>'Rm De Emp Id'
,p_source=>'RM_DE_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select   emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name as EMP_NAME  ',
'from emp_details',
'where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Loans'';'))
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
 p_id=>wwv_flow_api.id(80158221037550939)
,p_name=>'P18_RM_DE_ISIR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Rm De Isir'
,p_source=>'RM_DE_ISIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80158365672550940)
,p_name=>'P18_RM_DE_MIL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Rm De Mil'
,p_source=>'RM_DE_MIL'
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
 p_id=>wwv_flow_api.id(80158402277550941)
,p_name=>'P18_RM_DE_AWARD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Rm De Award'
,p_source=>'RM_DE_AWARD'
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
 p_id=>wwv_flow_api.id(80158533473550942)
,p_name=>'P18_RM_DE_TRK_STAT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66646055245304409)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Rm De Trk Stat'
,p_source=>'RM_DE_TRK_STAT'
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
 p_id=>wwv_flow_api.id(80158643568550943)
,p_name=>'P18_FR_APPOINTMENTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Fr Appointments'
,p_source=>'FR_APPOINTMENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80158728161550944)
,p_name=>'P18_FR_LTRS_MAILED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Fr Ltrs Mailed'
,p_source=>'FR_LTRS_MAILED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80158884032550945)
,p_name=>'P18_FR_DOC_SCAN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Fr Doc Scan'
,p_source=>'FR_DOC_SCAN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80158984779550946)
,p_name=>'P18_FR_FAXIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_source_plug_id=>wwv_flow_api.id(80157878933550935)
,p_item_default=>'0'
,p_prompt=>'Fr Faxin'
,p_source=>'FR_FAXIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71940958695429225)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_FILEROOM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO REC_MANG_DE_FR rm',
'USING (SELECT :P18_ENTER_DATE AS ENTER_DATE,',
'              :P18_RM_DE_EMP_ID AS RM_DE_EMP_ID,',
'              :P18_RM_DE_ISIR AS RM_DE_ISIR,',
'              :P18_RM_DE_MIL AS RM_DE_MIL,',
'              :P18_RM_DE_AWARD AS RM_DE_AWARD,',
'              :P18_RM_DE_TRK_STAT AS RM_DE_TRK_STAT,',
'              :P18_FR_APPOINTMENTS AS FR_APPOINTMENTS,',
'              :P18_FR_LTRS_MAILED AS FR_LTRS_MAILED,',
'              :P18_FR_DOC_SCAN AS FR_DOC_SCAN,',
'              :P18_FR_FAXIN AS FR_FAXIN',
'       FROM DUAL) data_to_insert',
'ON (rm.ENTER_DATE = data_to_insert.ENTER_DATE AND rm.RM_DE_EMP_ID = data_to_insert.RM_DE_EMP_ID)',
'WHEN MATCHED THEN',
'  UPDATE SET',
'    rm.RM_DE_ISIR = data_to_insert.RM_DE_ISIR,',
'    rm.RM_DE_MIL = data_to_insert.RM_DE_MIL,',
'    rm.RM_DE_AWARD = data_to_insert.RM_DE_AWARD,',
'    rm.RM_DE_TRK_STAT = data_to_insert.RM_DE_TRK_STAT,',
'    rm.FR_APPOINTMENTS = data_to_insert.FR_APPOINTMENTS,',
'    rm.FR_LTRS_MAILED = data_to_insert.FR_LTRS_MAILED,',
'    rm.FR_DOC_SCAN = data_to_insert.FR_DOC_SCAN,',
'    rm.FR_FAXIN = data_to_insert.FR_FAXIN',
'WHEN NOT MATCHED THEN',
'  INSERT (',
'    ENTER_DATE,',
'    RM_DE_EMP_ID,',
'    RM_DE_ISIR,',
'    RM_DE_MIL,',
'    RM_DE_AWARD,',
'    RM_DE_TRK_STAT,',
'    FR_APPOINTMENTS,',
'    FR_LTRS_MAILED,',
'    FR_DOC_SCAN,',
'    FR_FAXIN',
'  )',
'  VALUES (',
'    data_to_insert.ENTER_DATE,',
'    data_to_insert.RM_DE_EMP_ID,',
'    data_to_insert.RM_DE_ISIR,',
'    data_to_insert.RM_DE_MIL,',
'    data_to_insert.RM_DE_AWARD,',
'    data_to_insert.RM_DE_TRK_STAT,',
'    data_to_insert.FR_APPOINTMENTS,',
'    data_to_insert.FR_LTRS_MAILED,',
'    data_to_insert.FR_DOC_SCAN,',
'    data_to_insert.FR_FAXIN',
'  );',
'',
'      ',
'      ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66647462911304423)
,p_process_success_message=>'Successfully Submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80217032311236323)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_FILEROOM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM REC_MANG_DE_FR',
'WHERE ENTER_DATE = :P18_ENTER_DATE AND RM_DE_EMP_ID = :P18_RM_DE_EMP_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80216949354236322)
,p_process_success_message=>'Deletion complete'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80157956282550936)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(80157878933550935)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Goto_New_records_Fileroom'
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
