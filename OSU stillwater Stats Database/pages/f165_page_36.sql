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
--   Date and Time:   16:38 Thursday October 12, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00036
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>36);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Front Counselors total '
,p_step_title=>'Front Counselors total '
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231012162302'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80751813613666533)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161198498105554902)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(419614436454207721)
,p_plug_name=>'Front Counselors - Client Service'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody:t-Form--labelsAbove'
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
,p_plug_header=>'<h2>Front Counselor Summary Stats</h2>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(419615998445207737)
,p_plug_name=>'Finaid Emails Answered'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h2>Finaid Emails Answered</h2>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80807897605960352)
,p_branch_name=>'AFTER_DELETE'
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_ENTER_DATE,P36_FC_EMP_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80751997686666534)
,p_name=>'P36_EMP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_prompt=>'Emp Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80752198121666536)
,p_name=>'P36_FIN_EMAIL_ANS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_prompt=>'Finaid Email Ans. Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80778700681960323)
,p_name=>'P36_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80779150608960325)
,p_name=>'P36_TO_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_prompt=>'To Date'
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
 p_id=>wwv_flow_api.id(80779581832960326)
,p_name=>'P36_COUNS_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80779997182960326)
,p_name=>'P36_ACD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80780329562960326)
,p_name=>'P36_IN_PERSON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80780791978960327)
,p_name=>'P36_NOT_SIGNED_IN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'Not Signed In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80781168845960327)
,p_name=>'P36_EMAILIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'My Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80781557515960327)
,p_name=>'P36_EMAILOUT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'My Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80781991896960327)
,p_name=>'P36_CERT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'Cert.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80782373181960328)
,p_name=>'P36_REPORTS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80782766002960328)
,p_name=>'P36_STL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'STL''s'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80783164523960328)
,p_name=>'P36_MISC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(419614436454207721)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80784696171960334)
,p_name=>'P36_CURR_HS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Current HS or Incoming FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80785055054960334)
,p_name=>'P36_INC_GRAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Incoming Grad or Vet Med'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80785456202960334)
,p_name=>'P36_MED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Current Grad or Vet Med'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80785802696960335)
,p_name=>'P36_FOR_STU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Former Student'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80786223856960335)
,p_name=>'P36_ROUTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80751813613666533)
,p_item_default=>'0'
,p_prompt=>'Finaid Email Routed'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80796656375960335)
,p_name=>'P36_INC_TRANSFER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Incoming Undergrad TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80797000804960336)
,p_name=>'P36_CURR_UG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Current Undergrad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80797486204960336)
,p_name=>'P36_COMBO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(419615998445207737)
,p_item_default=>'0'
,p_prompt=>'Combination of Students / Other'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80799317748960338)
,p_name=>'P36_EVALS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161198498105554902)
,p_item_default=>'0'
,p_prompt=>'Evals'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80799778088960338)
,p_name=>'P36_PJ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(161198498105554902)
,p_item_default=>'0'
,p_prompt=>'Prof Judg'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80806933844960349)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO FRONTCOUNS fc',
'USING (',
'    SELECT',
'        :P36_ENTER_DATE AS ENTER_DATE,',
'        :P36_FC_EMP_ID AS FC_EMP_ID,',
'        :P36_COUNS_PHONE AS COUNS_PHONE,',
'        :P36_ACD AS ACD,',
'        :P36_IN_PERSON AS IN_PERSON,',
'        :P36_NOT_SIGNED_IN AS NOT_SIGNED_IN,',
'        :P36_EMAILIN AS EMAILIN,',
'        :P36_EMAILOUT AS EMAILOUT,',
'        :P36_CERT AS CERT,',
'        :P36_STL AS STL,',
'        :P36_REPORTS AS REPORTS,',
'        :P36_MISC AS MISC,',
'        :P36_EVALS AS EVALS,',
'        :P36_PJ AS PJ,',
'        :P36_CURR_HS AS CURR_HS,',
'        :P36_INC_TRANSFER AS INC_TRANSFER,',
'        :P36_INC_GRAD AS INC_GRAD,',
'        :P36_CURR_UG AS CURR_UG,',
'        :P36_MED AS MED,',
'        :P36_COMBO AS COMBO,',
'        :P36_FOR_STU AS FOR_STU,',
'        :P36_ROUTED AS ROUTED,',
'        :P36_NOTE AS NOTE',
'    FROM DUAL',
') data_to_insert',
'ON (fc.FC_EMP_ID = data_to_insert.FC_EMP_ID AND fc.ENTER_DATE = data_to_insert.ENTER_DATE)',
'WHEN MATCHED THEN',
'    UPDATE SET',
'        fc.COUNS_PHONE = data_to_insert.COUNS_PHONE,',
'        fc.ACD = data_to_insert.ACD,',
'        fc.IN_PERSON = data_to_insert.IN_PERSON,',
'        fc.NOT_SIGNED_IN = data_to_insert.NOT_SIGNED_IN,',
'        fc.EMAILIN = data_to_insert.EMAILIN,',
'        fc.EMAILOUT = data_to_insert.EMAILOUT,',
'        fc.CERT = data_to_insert.CERT,',
'        fc.STL = data_to_insert.STL,',
'        fc.REPORTS = data_to_insert.REPORTS,',
'        fc.MISC = data_to_insert.MISC,',
'        fc.EVALS = data_to_insert.EVALS,',
'        fc.PJ = data_to_insert.PJ,',
'        fc.CURR_HS = data_to_insert.CURR_HS,',
'        fc.INC_TRANSFER = data_to_insert.INC_TRANSFER,',
'        fc.INC_GRAD = data_to_insert.INC_GRAD,',
'        fc.CURR_UG = data_to_insert.CURR_UG,',
'        fc.MED = data_to_insert.MED,',
'        fc.COMBO = data_to_insert.COMBO,',
'        fc.FOR_STU = data_to_insert.FOR_STU,',
'        fc.ROUTED = data_to_insert.ROUTED,',
'        fc.NOTE = data_to_insert.NOTE',
'WHEN NOT MATCHED THEN',
'    INSERT (',
'        ENTER_DATE,',
'        FC_EMP_ID,',
'        COUNS_PHONE,',
'        ACD,',
'        IN_PERSON,',
'        NOT_SIGNED_IN,',
'        EMAILIN,',
'        EMAILOUT,',
'        CERT,',
'        STL,',
'        REPORTS,',
'        MISC,',
'        EVALS,',
'        PJ,',
'        CURR_HS,',
'        INC_TRANSFER,',
'        INC_GRAD,',
'        CURR_UG,',
'        MED,',
'        COMBO,',
'        FOR_STU,',
'        ROUTED,',
'        NOTE',
'    ) VALUES (',
'        data_to_insert.ENTER_DATE,',
'        data_to_insert.FC_EMP_ID,',
'        data_to_insert.COUNS_PHONE,',
'        data_to_insert.ACD,',
'        data_to_insert.IN_PERSON,',
'        data_to_insert.NOT_SIGNED_IN,',
'        data_to_insert.EMAILIN,',
'        data_to_insert.EMAILOUT,',
'        data_to_insert.CERT,',
'        data_to_insert.STL,',
'        data_to_insert.REPORTS,',
'        data_to_insert.MISC,',
'        data_to_insert.EVALS,',
'        data_to_insert.PJ,',
'        data_to_insert.CURR_HS,',
'        data_to_insert.INC_TRANSFER,',
'        data_to_insert.INC_GRAD,',
'        data_to_insert.CURR_UG,',
'        data_to_insert.MED,',
'        data_to_insert.COMBO,',
'        data_to_insert.FOR_STU,',
'        data_to_insert.ROUTED,',
'        data_to_insert.NOTE',
'    );',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56819108312700714)
,p_process_success_message=>'Successfully submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80807393553960350)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM FRONTCOUNS',
'WHERE ENTER_DATE = :P36_ENTER_DATE',
'  AND FC_EMP_ID = :P36_FC_EMP_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Delete Completed'
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
