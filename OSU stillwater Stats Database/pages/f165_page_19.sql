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
--   Date and Time:   14:09 Friday October 6, 2023
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
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231006140933'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66648980257304438)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
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
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
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
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66648980257304438)
,p_prompt=>'Emp Name'
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
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66649281265304441)
,p_name=>'RM_FIN_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66648980257304438)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
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
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
