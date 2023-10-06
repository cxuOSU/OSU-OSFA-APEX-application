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
--   Date and Time:   12:03 Friday October 6, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00017
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>17);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_New_Records_Scholarships'
,p_step_title=>'New Records Management scholarships'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_IMAGES#main.css'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231006120244'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79711958088254824)
,p_plug_name=>'Scholarships'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'REC_MANG_SCHOL'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79714419171254849)
,p_plug_name=>'Scholarships_1'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79714544646254850)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(79714419171254849)
,p_button_name=>'CREATE/UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create &#x2F; Update'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79712165423254826)
,p_name=>'P17_RMS_EMP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_prompt=>'Rms Emp Id'
,p_source=>'RMS_EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select emp_first_name || '' '' || emp_last_name, emp_first_name || '' '' || emp_last_name as EMP_NAME  ',
'from emp_details ',
'where activate_flag = 1  and EMP_CAMPUS = ''STW'' and emp_dept = ''Scholarships'';'))
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
 p_id=>wwv_flow_api.id(79712293317254827)
,p_name=>'P17_RMS_DATE'
,p_source_data_type=>'DATE'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_prompt=>'Rms Date'
,p_source=>'RMS_DATE'
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
 p_id=>wwv_flow_api.id(79712303081254828)
,p_name=>'P17_RMS_ACD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Acd'
,p_source=>'RMS_ACD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79712466602254829)
,p_name=>'P17_RMS_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Phone'
,p_source=>'RMS_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79712593232254830)
,p_name=>'P17_RMS_CURR_HS_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Curr Hs E In'
,p_source=>'RMS_CURR_HS_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79712660830254831)
,p_name=>'P17_RMS_CURR_HS_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Curr Hs E Out'
,p_source=>'RMS_CURR_HS_E_OUT'
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
 p_id=>wwv_flow_api.id(79712704141254832)
,p_name=>'P17_RMS_INC_TRANS_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Inc Trans E In'
,p_source=>'RMS_INC_TRANS_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79712868938254833)
,p_name=>'P17_RMS_INC_TRANS_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Inc Trans E Out'
,p_source=>'RMS_INC_TRANS_E_OUT'
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
 p_id=>wwv_flow_api.id(79712954498254834)
,p_name=>'P17_RMS_INC_GRAD_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Inc Grad E In'
,p_source=>'RMS_INC_GRAD_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79713069256254835)
,p_name=>'P17_RMS_INC_GRAD_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Inc Grad E Out'
,p_source=>'RMS_INC_GRAD_E_OUT'
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
 p_id=>wwv_flow_api.id(79713157620254836)
,p_name=>'P17_RMS_CURR_UG_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Curr Ug E In'
,p_source=>'RMS_CURR_UG_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79713292721254837)
,p_name=>'P17_RMS_CURR_UG_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Curr Ug E Out'
,p_source=>'RMS_CURR_UG_E_OUT'
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
 p_id=>wwv_flow_api.id(79713351337254838)
,p_name=>'P17_RMS_GRAD_VET_MED_EIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Grad Vet Med Ein'
,p_source=>'RMS_GRAD_VET_MED_EIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79713459190254839)
,p_name=>'P17_RMS_GRAD_VET_MED_EOUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Grad Vet Med Eout'
,p_source=>'RMS_GRAD_VET_MED_EOUT'
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
 p_id=>wwv_flow_api.id(79713555650254840)
,p_name=>'P17_RMS_COMBO_OFFER_EIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Combo Offer Ein'
,p_source=>'RMS_COMBO_OFFER_EIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79713662247254841)
,p_name=>'P17_RMS_COMBO_OFFER_EOUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Combo Offer Eout'
,p_source=>'RMS_COMBO_OFFER_EOUT'
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
 p_id=>wwv_flow_api.id(79713751347254842)
,p_name=>'P17_RMS_FOR_STUD_E_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms For Stud E In'
,p_source=>'RMS_FOR_STUD_E_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79713801642254843)
,p_name=>'P17_RMS_FOR_STUD_E_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms For Stud E Out'
,p_source=>'RMS_FOR_STUD_E_OUT'
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
 p_id=>wwv_flow_api.id(79713934106254844)
,p_name=>'P17_RMS_IN_PERSON'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79714419171254849)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms In Person'
,p_source=>'RMS_IN_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79714014489254845)
,p_name=>'P17_RMS_EMAIL_IN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79714419171254849)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Email In'
,p_source=>'RMS_EMAIL_IN'
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
 p_id=>wwv_flow_api.id(79714164816254846)
,p_name=>'P17_RMS_EMAIL_OUT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79714419171254849)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Email Out'
,p_source=>'RMS_EMAIL_OUT'
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
 p_id=>wwv_flow_api.id(79714276422254847)
,p_name=>'P17_RMS_REPORTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79714419171254849)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Reports'
,p_source=>'RMS_REPORTS'
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
 p_id=>wwv_flow_api.id(79714373031254848)
,p_name=>'P17_RMS_MISC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79714419171254849)
,p_item_source_plug_id=>wwv_flow_api.id(79711958088254824)
,p_item_default=>'0'
,p_prompt=>'Rms Misc'
,p_source=>'RMS_MISC'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71941264925429228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_SCHOLARSHIPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO REC_MANG_SCHOL rms',
'USING (',
'  SELECT',
'    :P17_RMS_EMP_ID AS RMS_EMP_ID,',
'    :P17_RMS_DATE AS RMS_DATE,',
'    :P17_RMS_ACD AS RMS_ACD,',
'    :P17_RMS_PHONE AS RMS_PHONE,',
'    :P17_RMS_CURR_HS_E_IN AS RMS_CURR_HS_E_IN,',
'    :P17_RMS_CURR_HS_E_OUT AS RMS_CURR_HS_E_OUT,',
'    :P17_RMS_INC_TRANS_E_IN AS RMS_INC_TRANS_E_IN,',
'    :P17_RMS_INC_TRANS_E_OUT AS RMS_INC_TRANS_E_OUT,',
'    :P17_RMS_INC_GRAD_E_IN AS RMS_INC_GRAD_E_IN,',
'    :P17_RMS_INC_GRAD_E_OUT AS RMS_INC_GRAD_E_OUT,',
'    :P17_RMS_CURR_UG_E_IN AS RMS_CURR_UG_E_IN,',
'    :P17_RMS_CURR_UG_E_OUT AS RMS_CURR_UG_E_OUT,',
'    :P17_RMS_GRAD_VET_MED_EIN AS RMS_GRAD_VET_MED_EIN,',
'    :P17_RMS_GRAD_VET_MED_EOUT AS RMS_GRAD_VET_MED_EOUT,',
'    :P17_RMS_COMBO_OFFER_EIN AS RMS_COMBO_OFFER_EIN,',
'    :P17_RMS_COMBO_OFFER_EOUT AS RMS_COMBO_OFFER_EOUT,',
'    :P17_RMS_FOR_STUD_E_IN AS RMS_FOR_STUD_E_IN,',
'    :P17_RMS_FOR_STUD_E_OUT AS RMS_FOR_STUD_E_OUT,',
'    :P17_RMS_IN_PERSON AS RMS_IN_PERSON,',
'    :P17_RMS_EMAIL_IN AS RMS_EMAIL_IN,',
'    :P17_RMS_EMAIL_OUT AS RMS_EMAIL_OUT,',
'    :P17_RMS_REPORTS AS RMS_REPORTS,',
'    :P17_RMS_MISC AS RMS_MISC',
'  FROM DUAL',
') data_to_insert',
'ON (',
'  rms.RMS_EMP_ID = data_to_insert.RMS_EMP_ID',
'  AND rms.RMS_DATE = data_to_insert.RMS_DATE',
')',
'WHEN MATCHED THEN',
'  UPDATE SET',
'    rms.RMS_ACD = data_to_insert.RMS_ACD,',
'    rms.RMS_PHONE = data_to_insert.RMS_PHONE,',
'    rms.RMS_CURR_HS_E_IN = data_to_insert.RMS_CURR_HS_E_IN,',
'    rms.RMS_CURR_HS_E_OUT = data_to_insert.RMS_CURR_HS_E_OUT,',
'    rms.RMS_INC_TRANS_E_IN = data_to_insert.RMS_INC_TRANS_E_IN,',
'    rms.RMS_INC_TRANS_E_OUT = data_to_insert.RMS_INC_TRANS_E_OUT,',
'    rms.RMS_INC_GRAD_E_IN = data_to_insert.RMS_INC_GRAD_E_IN,',
'    rms.RMS_INC_GRAD_E_OUT = data_to_insert.RMS_INC_GRAD_E_OUT,',
'    rms.RMS_CURR_UG_E_IN = data_to_insert.RMS_CURR_UG_E_IN,',
'    rms.RMS_CURR_UG_E_OUT = data_to_insert.RMS_CURR_UG_E_OUT,',
'    rms.RMS_GRAD_VET_MED_EIN = data_to_insert.RMS_GRAD_VET_MED_EIN,',
'    rms.RMS_GRAD_VET_MED_EOUT = data_to_insert.RMS_GRAD_VET_MED_EOUT,',
'    rms.RMS_COMBO_OFFER_EIN = data_to_insert.RMS_COMBO_OFFER_EIN,',
'    rms.RMS_COMBO_OFFER_EOUT = data_to_insert.RMS_COMBO_OFFER_EOUT,',
'    rms.RMS_FOR_STUD_E_IN = data_to_insert.RMS_FOR_STUD_E_IN,',
'    rms.RMS_FOR_STUD_E_OUT = data_to_insert.RMS_FOR_STUD_E_OUT,',
'    rms.RMS_EMAIL_IN = data_to_insert.RMS_EMAIL_IN,',
'    rms.RMS_EMAIL_OUT = data_to_insert.RMS_EMAIL_OUT,',
'    rms.RMS_REPORTS = data_to_insert.RMS_REPORTS,',
'    rms.RMS_MISC = data_to_insert.RMS_MISC',
'WHEN NOT MATCHED THEN',
'  INSERT (',
'    RMS_EMP_ID,',
'    RMS_DATE,',
'    RMS_ACD,',
'    RMS_PHONE,',
'    RMS_CURR_HS_E_IN,',
'    RMS_CURR_HS_E_OUT,',
'    RMS_INC_TRANS_E_IN,',
'    RMS_INC_TRANS_E_OUT,',
'    RMS_INC_GRAD_E_IN,',
'    RMS_INC_GRAD_E_OUT,',
'    RMS_CURR_UG_E_IN,',
'    RMS_CURR_UG_E_OUT,',
'    RMS_GRAD_VET_MED_EIN,',
'    RMS_GRAD_VET_MED_EOUT,',
'    RMS_COMBO_OFFER_EIN,',
'    RMS_COMBO_OFFER_EOUT,',
'    RMS_FOR_STUD_E_IN,',
'    RMS_FOR_STUD_E_OUT,',
'    RMS_IN_PERSON,',
'    RMS_EMAIL_IN,',
'    RMS_EMAIL_OUT,',
'    RMS_REPORTS,',
'    RMS_MISC',
'  )',
'  VALUES (',
'    data_to_insert.RMS_EMP_ID,',
'    data_to_insert.RMS_DATE,',
'    data_to_insert.RMS_ACD,',
'    data_to_insert.RMS_PHONE,',
'    data_to_insert.RMS_CURR_HS_E_IN,',
'    data_to_insert.RMS_CURR_HS_E_OUT,',
'    data_to_insert.RMS_INC_TRANS_E_IN,',
'    data_to_insert.RMS_INC_TRANS_E_OUT,',
'    data_to_insert.RMS_INC_GRAD_E_IN,',
'    data_to_insert.RMS_INC_GRAD_E_OUT,',
'    data_to_insert.RMS_CURR_UG_E_IN,',
'    data_to_insert.RMS_CURR_UG_E_OUT,',
'    data_to_insert.RMS_GRAD_VET_MED_EIN,',
'    data_to_insert.RMS_GRAD_VET_MED_EOUT,',
'    data_to_insert.RMS_COMBO_OFFER_EIN,',
'    data_to_insert.RMS_COMBO_OFFER_EOUT,',
'    data_to_insert.RMS_FOR_STUD_E_IN,',
'    data_to_insert.RMS_FOR_STUD_E_OUT,',
'    data_to_insert.RMS_IN_PERSON,',
'    data_to_insert.RMS_EMAIL_IN,',
'    data_to_insert.RMS_EMAIL_OUT,',
'    data_to_insert.RMS_REPORTS,',
'    data_to_insert.RMS_MISC',
'  );',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79714544646254850)
,p_process_success_message=>'Successfully Submitted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79712065735254825)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(79711958088254824)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Goto_New_Records_Scholarships'
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
