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
--   Date and Time:   15:24 Thursday October 5, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00003
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>3);
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
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231005143002'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(338836306848247430)
,p_plug_name=>'Front Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FRONTCOUNS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(338837868839247446)
,p_plug_name=>'Finaid Emails Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56819108312700714)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(338836306848247430)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create / Update'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79586160332980727)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(338836306848247430)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79586552308980731)
,p_branch_name=>'After Delete'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ENTER_DATE,P3_FC_EMP_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(79586160332980727)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79521484520422749)
,p_name=>'P3_ENTER_DATE'
,p_source_data_type=>'DATE'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_prompt=>'Date'
,p_source=>'ENTER_DATE'
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
 p_id=>wwv_flow_api.id(79521558684422750)
,p_name=>'P3_FC_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_prompt=>'Emp Name'
,p_source=>'FC_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name AS emp_name',
'FROM emp_details',
'WHERE activate_flag = 1',
'  AND emp_campus = ''STW''',
'  AND emp_dept = ''Counselor'';'))
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
 p_id=>wwv_flow_api.id(79583557732980701)
,p_name=>'P3_COUNS_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Phone'
,p_source=>'COUNS_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79583693183980702)
,p_name=>'P3_ACD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_source=>'ACD'
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
 p_id=>wwv_flow_api.id(79583721664980703)
,p_name=>'P3_IN_PERSON'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_source=>'IN_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79583873137980704)
,p_name=>'P3_NOT_SIGNED_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Not Signed In'
,p_source=>'NOT_SIGNED_IN'
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
 p_id=>wwv_flow_api.id(79583965317980705)
,p_name=>'P3_EMAILIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'My Email In'
,p_source=>'EMAILIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79584013816980706)
,p_name=>'P3_EMAILOUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'My Email Out'
,p_source=>'EMAILOUT'
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
 p_id=>wwv_flow_api.id(79584142376980707)
,p_name=>'P3_CERT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Cert'
,p_source=>'CERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79584260728980708)
,p_name=>'P3_STL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'STL''s'
,p_source=>'STL'
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
 p_id=>wwv_flow_api.id(79584335044980709)
,p_name=>'P3_REPORTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_source=>'REPORTS'
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
 p_id=>wwv_flow_api.id(79584467294980710)
,p_name=>'P3_MISC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_source=>'MISC'
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
 p_id=>wwv_flow_api.id(79584568195980711)
,p_name=>'P3_EVALS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Evals'
,p_source=>'EVALS'
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
 p_id=>wwv_flow_api.id(79584692822980712)
,p_name=>'P3_PJ'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Prof Judg'
,p_source=>'PJ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79584791740980713)
,p_name=>'P3_CURR_HS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Current H.S.'
,p_source=>'CURR_HS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79584806814980714)
,p_name=>'P3_INC_TRANSFER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Inc Transfer'
,p_source=>'INC_TRANSFER'
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
 p_id=>wwv_flow_api.id(79584900468980715)
,p_name=>'P3_INC_GRAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Incoming Grad'
,p_source=>'INC_GRAD'
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
 p_id=>wwv_flow_api.id(79585076862980716)
,p_name=>'P3_CURR_UG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Current UG'
,p_source=>'CURR_UG'
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
 p_id=>wwv_flow_api.id(79585126854980717)
,p_name=>'P3_MED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Grad/Vet Med'
,p_source=>'MED'
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
 p_id=>wwv_flow_api.id(79585277610980718)
,p_name=>'P3_COMBO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Combo/Other'
,p_source=>'COMBO'
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
 p_id=>wwv_flow_api.id(79585317703980719)
,p_name=>'P3_FOR_STU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Former Stud'
,p_source=>'FOR_STU'
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
 p_id=>wwv_flow_api.id(79585403382980720)
,p_name=>'P3_ROUTED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(338837868839247446)
,p_item_source_plug_id=>wwv_flow_api.id(338836306848247430)
,p_item_default=>'0'
,p_prompt=>'Routed'
,p_source=>'ROUTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79586016098980726)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO FRONTCOUNS fc',
'USING (SELECT :P3_ENTER_DATE AS ENTER_DATE,',
'              :P3_FC_EMP_ID AS FC_EMP_ID,',
'              :P3_COUNS_PHONE AS COUNS_PHONE,',
'              :P3_ACD AS ACD,',
'              :P3_IN_PERSON AS IN_PERSON,',
'              :P3_NOT_SIGNED_IN AS NOT_SIGNED_IN,',
'              :P3_EMAILIN AS EMAILIN,',
'              :P3_EMAILOUT AS EMAILOUT,',
'              :P3_CERT AS CERT,',
'              :P3_STL AS STL,',
'              :P3_REPORTS AS REPORTS,',
'              :P3_MISC AS MISC,',
'              :P3_EVALS AS EVALS,',
'              :P3_PJ AS PJ,',
'              :P3_CURR_HS AS CURR_HS,',
'              :P3_INC_TRANSFER AS INC_TRANSFER,',
'              :P3_INC_GRAD AS INC_GRAD,',
'              :P3_CURR_UG AS CURR_UG,',
'              :P3_MED AS MED,',
'              :P3_COMBO AS COMBO,',
'              :P3_FOR_STU AS FOR_STU,',
'              :P3_ROUTED AS ROUTED',
'       FROM DUAL) data_to_insert',
'ON (fc.ENTER_DATE = data_to_insert.ENTER_DATE) -- Define your condition for matching existing rows',
'WHEN MATCHED THEN',
'  UPDATE SET',
'    fc.FC_EMP_ID = data_to_insert.FC_EMP_ID,',
'    fc.COUNS_PHONE = data_to_insert.COUNS_PHONE,',
'    fc.ACD = data_to_insert.ACD,',
'    fc.IN_PERSON = data_to_insert.IN_PERSON,',
'    fc.NOT_SIGNED_IN = data_to_insert.NOT_SIGNED_IN,',
'    fc.EMAILIN = data_to_insert.EMAILIN,',
'    fc.EMAILOUT = data_to_insert.EMAILOUT,',
'    fc.CERT = data_to_insert.CERT,',
'    fc.STL = data_to_insert.STL,',
'    fc.REPORTS = data_to_insert.REPORTS,',
'    fc.MISC = data_to_insert.MISC,',
'    fc.EVALS = data_to_insert.EVALS,',
'    fc.PJ = data_to_insert.PJ,',
'    fc.CURR_HS = data_to_insert.CURR_HS,',
'    fc.INC_TRANSFER = data_to_insert.INC_TRANSFER,',
'    fc.INC_GRAD = data_to_insert.INC_GRAD,',
'    fc.CURR_UG = data_to_insert.CURR_UG,',
'    fc.MED = data_to_insert.MED,',
'    fc.COMBO = data_to_insert.COMBO,',
'    fc.FOR_STU = data_to_insert.FOR_STU,',
'    fc.ROUTED = data_to_insert.ROUTED',
'WHEN NOT MATCHED THEN',
'  INSERT (',
'    ENTER_DATE,',
'    FC_EMP_ID,',
'    COUNS_PHONE,',
'    ACD,',
'    IN_PERSON,',
'    NOT_SIGNED_IN,',
'    EMAILIN,',
'    EMAILOUT,',
'    CERT,',
'    STL,',
'    REPORTS,',
'    MISC,',
'    EVALS,',
'    PJ,',
'    CURR_HS,',
'    INC_TRANSFER,',
'    INC_GRAD,',
'    CURR_UG,',
'    MED,',
'    COMBO,',
'    FOR_STU,',
'    ROUTED',
'  )',
'  VALUES (',
'    data_to_insert.ENTER_DATE,',
'    data_to_insert.FC_EMP_ID,',
'    data_to_insert.COUNS_PHONE,',
'    data_to_insert.ACD,',
'    data_to_insert.IN_PERSON,',
'    data_to_insert.NOT_SIGNED_IN,',
'    data_to_insert.EMAILIN,',
'    data_to_insert.EMAILOUT,',
'    data_to_insert.CERT,',
'    data_to_insert.STL,',
'    data_to_insert.REPORTS,',
'    data_to_insert.MISC,',
'    data_to_insert.EVALS,',
'    data_to_insert.PJ,',
'    data_to_insert.CURR_HS,',
'    data_to_insert.INC_TRANSFER,',
'    data_to_insert.INC_GRAD,',
'    data_to_insert.CURR_UG,',
'    data_to_insert.MED,',
'    data_to_insert.COMBO,',
'    data_to_insert.FOR_STU,',
'    data_to_insert.ROUTED',
'  );',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56819108312700714)
,p_process_success_message=>'Successfully submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79586298252980728)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM FRONTCOUNS',
'WHERE ENTER_DATE = :P3_ENTER_DATE',
'  AND FC_EMP_ID = :P3_FC_EMP_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79586160332980727)
,p_process_success_message=>'Record Deleted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79521301301422748)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(338836306848247430)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form New_date-OSFA - Front Counselors'
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
