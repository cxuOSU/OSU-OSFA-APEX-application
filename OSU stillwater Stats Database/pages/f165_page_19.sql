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
--   Date and Time:   09:16 Monday October 9, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00019
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>19);
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
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231009091554'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66647506350304424)
,p_plug_name=>'ACD'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66647689668304425)
,p_plug_name=>'Finaid Received'
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
 p_id=>wwv_flow_api.id(66647784914304426)
,p_plug_name=>'Greeter'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66648980257304438)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79907042588916201)
,p_plug_name=>'Fiscal Ops'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'REC_MANG_ACD_FIN'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66649097518304439)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66647784914304426)
,p_button_name=>'REC_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create / Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907223701916203)
,p_name=>'P19_RM_FIN_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66648980257304438)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Rm Fin Emp Id'
,p_source=>'RM_FIN_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name as EMP_NAME  ',
'from emp_details ',
'where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Fiscal Ops'';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907397525916204)
,p_name=>'P19_RM_FIN_DATE'
,p_source_data_type=>'DATE'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66648980257304438)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Rm Fin Date'
,p_source=>'RM_FIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907455224916205)
,p_name=>'P19_ACD_TOTAL_OFFERED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Acd Total Offered'
,p_source=>'ACD_TOTAL_OFFERED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907509809916206)
,p_name=>'P19_ACD_TOTAL_ANSWERED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Acd Total Answered'
,p_source=>'ACD_TOTAL_ANSWERED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907654438916207)
,p_name=>'P19_ACD_IN_QUEUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Acd In Queue'
,p_source=>'ACD_IN_QUEUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907721372916208)
,p_name=>'P19_ACD_AVG_QUEUE_TIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Acd Avg Queue Time'
,p_source=>'ACD_AVG_QUEUE_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79907868827916209)
,p_name=>'P19_ACD_AVG_QUEUE_SEC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66647506350304424)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Acd Avg Queue Sec'
,p_source=>'ACD_AVG_QUEUE_SEC'
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
 p_id=>wwv_flow_api.id(79907991525916210)
,p_name=>'P19_GR_STD_IN_DOOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647784914304426)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Gr Std In Door'
,p_source=>'GR_STD_IN_DOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79908079005916211)
,p_name=>'P19_GR_AVG_WAIT_TIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66647784914304426)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Gr Avg Wait Time'
,p_source=>'GR_AVG_WAIT_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79908146469916212)
,p_name=>'P19_GR_AVG_WAIT_SEC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66647784914304426)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Gr Avg Wait Sec'
,p_source=>'GR_AVG_WAIT_SEC'
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
 p_id=>wwv_flow_api.id(79908278337916213)
,p_name=>'P19_FINAID_RECEIVED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66647689668304425)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Finaid Received'
,p_source=>'FINAID_RECEIVED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79908322656916214)
,p_name=>'P19_HW_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(79907042588916201)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Hw Phone'
,p_source=>'HW_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79908473809916215)
,p_name=>'P19_HW_ACD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(79907042588916201)
,p_item_source_plug_id=>wwv_flow_api.id(79907042588916201)
,p_prompt=>'Hw Acd'
,p_source=>'HW_ACD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71941009601429226)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_ACD_FIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO REC_MANG_ACD_FIN rmaf',
'USING (',
'  SELECT',
'    :P19_RM_FIN_EMP_ID AS RM_FIN_EMP_ID,',
'    :P19_RM_FIN_DATE AS RM_FIN_DATE,',
'    :P19_ACD_TOTAL_OFFERED AS ACD_TOTAL_OFFERED,',
'    :P19_ACD_TOTAL_ANSWERED AS ACD_TOTAL_ANSWERED,',
'    :P19_ACD_IN_QUEUE AS ACD_IN_QUEUE,',
'    :P19_ACD_AVG_QUEUE_TIME AS ACD_AVG_QUEUE_TIME,',
'    :P19_ACD_AVG_QUEUE_SEC AS ACD_AVG_QUEUE_SEC,',
'    :P19_GR_STD_IN_DOOR AS GR_STD_IN_DOOR,',
'    :P19_GR_AVG_WAIT_TIME AS GR_AVG_WAIT_TIME,',
'    :P19_GR_AVG_WAIT_SEC AS GR_AVG_WAIT_SEC,',
'    :P19_FINAID_RECEIVED AS FINAID_RECEIVED,',
'    :P19_HW_PHONE AS HW_PHONE,',
'    :P19_HW_ACD AS HW_ACD',
'  FROM DUAL',
') data_to_insert',
'ON (',
'  rmaf.RM_FIN_EMP_ID = data_to_insert.RM_FIN_EMP_ID',
'  AND rmaf.RM_FIN_DATE = data_to_insert.RM_FIN_DATE',
')',
'WHEN MATCHED THEN',
'  UPDATE SET',
'    rmaf.ACD_TOTAL_OFFERED = data_to_insert.ACD_TOTAL_OFFERED,',
'    rmaf.ACD_TOTAL_ANSWERED = data_to_insert.ACD_TOTAL_ANSWERED,',
'    rmaf.ACD_IN_QUEUE = data_to_insert.ACD_IN_QUEUE,',
'    rmaf.ACD_AVG_QUEUE_TIME = data_to_insert.ACD_AVG_QUEUE_TIME,',
'    rmaf.ACD_AVG_QUEUE_SEC = data_to_insert.ACD_AVG_QUEUE_SEC,',
'    rmaf.GR_STD_IN_DOOR = data_to_insert.GR_STD_IN_DOOR,',
'    rmaf.GR_AVG_WAIT_TIME = data_to_insert.GR_AVG_WAIT_TIME,',
'    rmaf.GR_AVG_WAIT_SEC = data_to_insert.GR_AVG_WAIT_SEC,',
'    rmaf.FINAID_RECEIVED = data_to_insert.FINAID_RECEIVED,',
'    rmaf.HW_PHONE = data_to_insert.HW_PHONE,',
'    rmaf.HW_ACD = data_to_insert.HW_ACD',
'WHEN NOT MATCHED THEN',
'  INSERT (',
'    RM_FIN_EMP_ID,',
'    RM_FIN_DATE,',
'    ACD_TOTAL_OFFERED,',
'    ACD_TOTAL_ANSWERED,',
'    ACD_IN_QUEUE,',
'    ACD_AVG_QUEUE_TIME,',
'    ACD_AVG_QUEUE_SEC,',
'    GR_STD_IN_DOOR,',
'    GR_AVG_WAIT_TIME,',
'    GR_AVG_WAIT_SEC,',
'    FINAID_RECEIVED,',
'    HW_PHONE,',
'    HW_ACD',
'  )',
'  VALUES (',
'    data_to_insert.RM_FIN_EMP_ID,',
'    data_to_insert.RM_FIN_DATE,',
'    data_to_insert.ACD_TOTAL_OFFERED,',
'    data_to_insert.ACD_TOTAL_ANSWERED,',
'    data_to_insert.ACD_IN_QUEUE,',
'    data_to_insert.ACD_AVG_QUEUE_TIME,',
'    data_to_insert.ACD_AVG_QUEUE_SEC,',
'    data_to_insert.GR_STD_IN_DOOR,',
'    data_to_insert.GR_AVG_WAIT_TIME,',
'    data_to_insert.GR_AVG_WAIT_SEC,',
'    data_to_insert.FINAID_RECEIVED,',
'    data_to_insert.HW_PHONE,',
'    data_to_insert.HW_ACD',
'  );',
'',
'',
'      ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79907102872916202)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(79907042588916201)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Goto_New_records_ACD_FIN'
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
