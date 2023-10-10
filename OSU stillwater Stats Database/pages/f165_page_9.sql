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
--   Date and Time:   09:58 Tuesday October 10, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00009
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>9);
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
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231010095818'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57363615725529608)
,p_plug_name=>'New_Records_Management_Loans'
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
 p_id=>wwv_flow_api.id(57363823619529610)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_parent_plug_id=>wwv_flow_api.id(57363615725529608)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
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
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
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
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
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
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57363823619529610)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
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
,p_begin_on_new_line=>'N'
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
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
