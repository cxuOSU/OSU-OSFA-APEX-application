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
--   Date and Time:   10:24 Monday October 9, 2023
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
,p_last_upd_yyyymmddhh24miss=>'20231009101618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(395652690614009503)
,p_plug_name=>'Back Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(395654252605009519)
,p_plug_name=>'Back counselor details'
,p_parent_plug_id=>wwv_flow_api.id(395652690614009503)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56816981911762075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(395652690614009503)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542162092650613)
,p_name=>'BC_CURRENT_HS_APPT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS / INC FR STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542211664650614)
,p_name=>'BC_CURRENT_HS_E_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS  / INC FR  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542892102650620)
,p_name=>'BC_INC_TRANSFER_E_IN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56542907443650621)
,p_name=>'BC_INC_TRANSFER_E_OUT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543036041650622)
,p_name=>'BC_INC_GRAD_APPT_VET_MED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543130661650623)
,p_name=>'BC_INC_GRAD_E_IN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543295801650624)
,p_name=>'BC_INC_GRAD_E_OUT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543363100650625)
,p_name=>'BC_CURRENT_UG_E_IN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543461546650626)
,p_name=>'BC_CURRENT_UG_E_OUT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543536981650627)
,p_name=>'BC_GRAD_VET_MED_E_IN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543617073650628)
,p_name=>'BC_GRAD_VET_MED_E_OUT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543795586650629)
,p_name=>'BC_COMBO_OTHER_E_IN'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543888224650630)
,p_name=>'BC_COMBO_OTHER_E_OUT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER  STU EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56543943863650631)
,p_name=>'BC_FORMER_STUDENT_E_IN'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS  EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56544058538650632)
,p_name=>'BC_FORMER_STUDENT_E_OUT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56817379806762075)
,p_name=>'BC_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56817760429762076)
,p_name=>'BC_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Counselor'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56838137813762077)
,p_name=>'BC_PHONES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'PHONES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56838562889762077)
,p_name=>'BC_ACD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56838960367762078)
,p_name=>'BC_CURRENT_HS_E_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS  / INC FR  STU EMAILS IN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56839345806762078)
,p_name=>'BC_INC_TRANSFER_APPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56840532298762079)
,p_name=>'BC_EMAILS_IN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'OTHER EMAILS IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56841361274762079)
,p_name=>'BC_EMAILS_OUT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'OTHER EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56842187813762080)
,p_name=>'BC_EVALS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'EVALS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56842549605762080)
,p_name=>'BC_IN_PERSON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'IN PERSON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56843233032762082)
,p_name=>'BC_PROF_JUDG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'PROF JUDG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56843686094762082)
,p_name=>'BC_REPORTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56844483996762082)
,p_name=>'BC_CURRENT_UG_APPT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56844832220762083)
,p_name=>'BC_GRAD_VET_MED_APPT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56845220720762083)
,p_name=>'BC_COMBO_OTHER_APPT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>' COMBO / OTHER  STU APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56845606733762083)
,p_name=>'BC_FORMER_STUDENT_APPT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS  APPTs'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56846045878762084)
,p_name=>'BC_MISC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(395654252605009519)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381710843705634)
,p_name=>'BC_CURR_HS_FINAID_ANS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR HS  / INC FR FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381849157705635)
,p_name=>'BC_INC_TRANS_FIN_ANS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC UG TR  FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381961897705636)
,p_name=>'BC_INC_GRAD_FIN_ANS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'INC GR / VET MED  FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382086249705637)
,p_name=>'BC_CURR_UG_FIN_ANS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR UG FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382173628705638)
,p_name=>'BC_GRAD_VET_FIN_ANS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'CURR GR / VET MED FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382261024705639)
,p_name=>'BC_COMBO_FIN_ANS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66382388274705640)
,p_name=>'BC_FORMER_STU_FIN_ANS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(395652690614009503)
,p_item_default=>'0'
,p_prompt=>'FS  FINAID ANS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56913446178068503)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BC_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO BACK_COUNS (ENTER_DATE,',
'                        BC_EMP_ID,COUNS_PHONE,',
'                        ACD,BC_CURRENT_HS_APPT,BC_CURRENT_HS_E_IN,BC_CURRENT_HS_E_OUT,',
'                        BC_INC_TRANSFER_APPT, BC_INC_TRANSFER_E_IN, BC_INC_TRANSFER_E_OUT,',
'                        BC_INC_GRAD_APPT, BC_INC_GRAD_E_IN, BC_INC_GRAD_E_OUT,',
'                        BC_CURRENT_UG_APPT, BC_CURRENT_UG_E_IN, BC_CURRENT_UG_E_OUT,',
'                        BC_GRAD_VET_MED_APPT,BC_GRAD_VET_MED_E_IN,BC_GRAD_VET_MED_E_OUT,',
'                        BC_COMBO_OTHER_APPT, BC_COMBO_OTHER_E_IN, BC_COMBO_OTHER_E_OUT,',
'                        BC_FORMER_STUDENT_APPT, BC_FORMER_STUDENT_E_IN,BC_FORMER_STUDENT_E_OUT,',
'                       BC_IN_PERSON, BC_EVALS, BC_EMAILS_IN, BC_EMAILS_OUT,BC_PROF_JUDG,',
'                       BC_REPORTS, BC_MISC, BC_CURR_HS_FIN_ANS,BC_INC_TRANS_FIN_ANS,BC_INC_GRAD_FIN_ANS,BC_CURR_UG_FIN_ANS,BC_CURR_GRAD_FIN_ANS ,BC_COMBO_FIN_ANS,BC_FOR_STU_FIN_ANS     )',
'VALUES (:BC_ENTER_DATE,',
'        :BC_EMP_ID,:BC_PHONES,',
'        :BC_ACD,:BC_CURRENT_HS_APPT,:BC_CURRENT_HS_E_IN,:BC_CURRENT_HS_E_OUT,',
'        :BC_INC_TRANSFER_APPT, :BC_INC_TRANSFER_E_IN, :BC_INC_TRANSFER_E_OUT,',
'        :BC_INC_GRAD_APPT_VET_MED, :BC_INC_GRAD_E_IN, :BC_INC_GRAD_E_OUT,',
'        :BC_CURRENT_UG_APPT, :BC_CURRENT_UG_E_IN, :BC_CURRENT_UG_E_OUT,',
'        :BC_GRAD_VET_MED_APPT,:BC_GRAD_VET_MED_E_IN,:BC_GRAD_VET_MED_E_OUT,',
'        :BC_COMBO_OTHER_APPT, :BC_COMBO_OTHER_E_IN, :BC_COMBO_OTHER_E_OUT,',
'        :BC_FORMER_STUDENT_APPT, :BC_FORMER_STUDENT_E_IN,:BC_FORMER_STUDENT_E_OUT,',
'       :BC_IN_PERSON,:BC_EVALS,:BC_EMAILS_IN,:BC_EMAILS_OUT,:BC_PROF_JUDG,',
'       :BC_REPORTS, :BC_MISC , :BC_CURR_HS_FINAID_ANS, :BC_INC_TRANS_FIN_ANS, :BC_INC_GRAD_FIN_ANS, :BC_CURR_UG_FIN_ANS, :BC_GRAD_VET_FIN_ANS, :BC_COMBO_FIN_ANS,:BC_FORMER_STU_FIN_ANS );',
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
