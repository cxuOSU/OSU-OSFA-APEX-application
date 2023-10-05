prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>72161827091790489751
,p_default_application_id=>285425
,p_default_id_offset=>75072647766412272755
,p_default_owner=>'WKSP_LZXCL118'
);
end;
/
 
prompt APPLICATION 285425 - OSU - Stillwater Stats Database
--
-- Application Export:
--   Application:     285425
--   Name:            OSU - Stillwater Stats Database
--   Date and Time:   20:08 Thursday October 5, 2023
--   Exported By:     LZXCL118@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 3
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00003
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>3);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'New_date-OSFA - Front Counselors'
,p_step_title=>'New_date-OSFA - Front Counselors'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230803153402'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75411484073260520185)
,p_plug_name=>'Front Counselors'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(75129328396709116411)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75411485635251520201)
,p_plug_name=>'Finaid Emails Answered'
,p_parent_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(75129328396709116411)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75129466874724973469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75129386366853116467)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129467317124973470)
,p_name=>'ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129467686716973473)
,p_name=>'FC_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_prompt=>'EMP NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select   emp_first_name, emp_first_name as EMP_NAME  from emp_details where activate_flag = 1 and EMP_CAMPUS = ''STW'' and emp_dept = ''Counselor'';'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129468148172973473)
,p_name=>'COUNS_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'COUNS PHONE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129468497545973473)
,p_name=>'ACD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'ACD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129468926573973474)
,p_name=>'IN_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'IN PERSON'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129469357664973474)
,p_name=>'NOT_SIGNED_IN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'NOT SIGNED IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129469678791973474)
,p_name=>'MY_EMAIL_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS IN '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129470141286973475)
,p_name=>'MY_EMAIL_OUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'MY EMAILS OUT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129470504340973475)
,p_name=>'CERT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'CERT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129470925584973475)
,p_name=>'STL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'STL''s'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129471340473973476)
,p_name=>'REPORTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'REPORTS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129471720853973476)
,p_name=>'MISC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'MISC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129472147023973476)
,p_name=>'EVALS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'EVALS '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129472539470973477)
,p_name=>'PROF_JUDG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(75411484073260520185)
,p_item_default=>'0'
,p_prompt=>'PROF JUDG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129473180819973478)
,p_name=>'CURRENT_HS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'CURR HS / INC FR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129473631479973478)
,p_name=>'INC_TRANSFER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'INC UG TR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129474064257973478)
,p_name=>'INCOMING_GRAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'INC GRAD / VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129474429312973479)
,p_name=>'CURRENT_UG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'CURR UG'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129474792482973479)
,p_name=>'GRAD_VET_MED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'CURR GRAD / VET MED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129475251294973479)
,p_name=>'COMBO_OTHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'COMBO / OTHER'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129475620493973480)
,p_name=>'FORMER_STUDENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'FORMER STUDENT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129476006961973480)
,p_name=>'ROUTED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(75411485635251520201)
,p_item_default=>'0'
,p_prompt=>'FINAID EMAILS ROUTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(75129385339751116465)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75129561472328341261)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FC_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO FRONTCOUNS (ENTER_DATE,',
'                        FC_EMP_ID,COUNS_PHONE,',
'                        ACD,IN_PERSON,NOT_SIGNED_IN,EMAILIN,EMAILOUT,CERT,STL,REPORTS,',
'                       MISC,EVALS, PJ, CURR_HS, INC_TRANSFER,INC_GRAD, CURR_UG, MED, COMBO, FOR_STU, ROUTED)',
'VALUES (:ENTER_DATE,',
'        :FC_EMP_ID,:COUNS_PHONE,',
'        :ACD,:IN_PERSON,:NOT_SIGNED_IN,:MY_EMAIL_IN, :MY_EMAIL_OUT, :CERT,:STL,:REPORTS,',
'         :MISC,:EVALS, :PROF_JUDG, :CURRENT_HS, :INC_TRANSFER,:INCOMING_GRAD, :CURRENT_UG, :GRAD_VET_MED,',
'         :COMBO_OTHER, :FORMER_STUDENT,:ROUTED );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Sucessfully submitted '
,p_internal_uid=>75129561472328341261
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
