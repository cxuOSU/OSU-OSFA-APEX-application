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
--   Date and Time:   08:54 Friday October 6, 2023
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
,p_step_title=>'New_Records_Management_scholarships'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231006085320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66381584446705632)
,p_plug_name=>'Office of Scholarships and Financial Aid'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59585974116495640)
,p_plug_name=>'Record Management Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(66381584446705632)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66379314467705610)
,p_plug_name=>'Scholarships'
,p_parent_plug_id=>wwv_flow_api.id(66381584446705632)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66381638544705633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66381584446705632)
,p_button_name=>'RMS_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59586226687495643)
,p_name=>'RMS_EMPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(59585974116495640)
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1  and EMP_CAMPUS = ''STW'' and emp_dept = ''Scholarships'';'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'RMS_DATE'
,p_ajax_items_to_submit=>'RMS_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59586316985495644)
,p_name=>'RMS_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(59585974116495640)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379425528705611)
,p_name=>'RMS_ACD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379574722705612)
,p_name=>'RMS_PHONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Phones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379638304705613)
,p_name=>'RMS_CURR_HS_EIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379747511705614)
,p_name=>'RMS_CURR_HS_EOUT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr Hs / Inc FR Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379856295705615)
,p_name=>'RMS_INC_TRANS_EIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc UG TR Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66379917563705616)
,p_name=>'RMS_INC_TRANS_EOUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc UG Trans Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380045194705617)
,p_name=>'RMS_INC_GRAD_EIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc Grad Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380114386705618)
,p_name=>'RMS_INC_GRAD_EOUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Inc Grad Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380272649705619)
,p_name=>'RMS_CURR_UG_EIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380373805705620)
,p_name=>'RMS_CURR_UG_EOUT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Curr UG Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380436368705621)
,p_name=>'RMS_GRAD_VET_EIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Grad / Vet Med Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380574657705622)
,p_name=>'RMS_GRAD_VET_EOUT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Grad / Vet Med Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380600390705623)
,p_name=>'RMS_COMBO_EIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Combo/Other  Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380714966705624)
,p_name=>'RMS_COMBO_EOUT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Combo/Other  Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380860964705625)
,p_name=>'RMS_FORMER_STU_EIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Former Student Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66380984275705626)
,p_name=>'RMS_FORMER_STU_EOUT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Former Student Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381040372705627)
,p_name=>'RMS_IN_PERSON'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'In Person'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381165349705628)
,p_name=>'RMS_EMAIL_IN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Email In'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381284225705629)
,p_name=>'RMS_EMAIL_OUT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Email Out'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381337081705630)
,p_name=>'RMS_RTEPORTS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Reports'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66381439344705631)
,p_name=>'RMS_MISC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(66379314467705610)
,p_item_default=>'0'
,p_prompt=>'Misc'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71941264925429228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_SCHOLARSHIPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO REC_MANG_SCHOL (RMS_EMP_ID,	RMS_DATE,',
'                        RMS_ACD,RMS_PHONE	,',
'                        RMS_CURR_HS_E_IN	,RMS_CURR_HS_E_OUT,	',
'                        RMS_INC_TRANS_E_IN	,RMS_INC_TRANS_E_OUT,	',
'                        RMS_INC_GRAD_E_IN	,RMS_INC_GRAD_E_OUT	,',
'                        RMS_CURR_UG_E_IN	,RMS_CURR_UG_E_OUT,	',
'                        RMS_GRAD_VET_MED_EIN,RMS_GRAD_VET_MED_EOUT	,',
'                        RMS_COMBO_OFFER_EIN	,RMS_COMBO_OFFER_EOUT,	',
'                        RMS_FOR_STUD_E_IN	,RMS_FOR_STUD_E_OUT	,',
'                        RMS_IN_PERSON,RMS_EMAIL_IN	,RMS_EMAIL_OUT	,RMS_REPORTS,RMS_MISC)',
'VALUES (:RMS_EMPID, :RMS_DATE,',
'        :RMS_ACD,:RMS_PHONE,',
'        :RMS_CURR_HS_EIN,:RMS_CURR_HS_EOUT,',
'        :RMS_INC_TRANS_EIN, :RMS_INC_TRANS_EOUT,',
'        :RMS_INC_GRAD_EIN, :RMS_INC_GRAD_EOUT,',
'        :RMS_CURR_UG_EIN, :RMS_CURR_UG_EOUT,',
'        :RMS_GRAD_VET_EIN, :RMS_GRAD_VET_EOUT, ',
'        :RMS_COMBO_EIN, :RMS_COMBO_EOUT,',
'        :RMS_FORMER_STU_EIN, :RMS_FORMER_STU_EOUT,',
'        :RMS_IN_PERSON, :RMS_EMAIL_IN,:RMS_EMAIL_OUT,:RMS_RTEPORTS,',
'        :RMS_MISC);',
'       ',
'       ',
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
