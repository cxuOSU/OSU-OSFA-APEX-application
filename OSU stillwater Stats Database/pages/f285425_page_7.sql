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
--   Date and Time:   20:10 Thursday October 5, 2023
--   Exported By:     LZXCL118@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 7
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00007
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>7);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'FC Goto Sepcific date '
,p_step_title=>'FC Goto Sepcific date '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230628100110'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75129563327786341279)
,p_plug_name=>'Front Counselor Specific date Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(75129328396709116411)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75129596335895184129)
,p_plug_name=>'FC Sepcific date Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(75129327356897116411)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ENTER_DATE as FC_EnterDATE,FC_EMP_ID as FC_Name, COUNS_PHONE as FC_Phones,ACD as FC_ACD, IN_PERSON as FC_InPerson,',
'NOT_SIGNED_IN as FC_NotSIgnedIn, EMAILIN as FC_EmailIn ,EMAILOUT as FC_EmailOut,	',
'CERT as FC_CERT, STL as FC_STL, REPORTS as FC_Reports, MISC as FC_Misc,EVALS as FC_Evals,	PJ as FC_PJ,	',
'CURR_HS as FC_CurrentHS, INC_TRANSFER as FC_IncTransfer, INC_GRAD as FC_IncGrad, CURR_UG as FC_CurrUg, MED as FC_Med,COMBO as FC_Combo,',
'FOR_STU as FC_STU, CURR_HS+ INC_TRANSFER+ INC_GRAD+ CURR_UG +MED+ COMBO+	FOR_STU as FinAid_Emails_Answered,	',
'ROUTED as FC_Routed from frontcouns where ENTER_DATE = :FC_DATE ;'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(75129596465955184129)
,p_name=>'FC Goto Sepcific date '
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MMINUMU'
,p_internal_uid=>56948699542911374
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129680509405510577)
,p_db_column_name=>'FC_ENTERDATE'
,p_display_order=>10
,p_column_identifier=>'BP'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129680598308510578)
,p_db_column_name=>'FC_NAME'
,p_display_order=>20
,p_column_identifier=>'BQ'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129680726668510579)
,p_db_column_name=>'FC_PHONES'
,p_display_order=>30
,p_column_identifier=>'BR'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129680857334510580)
,p_db_column_name=>'FC_ACD'
,p_display_order=>40
,p_column_identifier=>'BS'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129680932695510581)
,p_db_column_name=>'FC_INPERSON'
,p_display_order=>50
,p_column_identifier=>'BT'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681009891510582)
,p_db_column_name=>'FC_NOTSIGNEDIN'
,p_display_order=>60
,p_column_identifier=>'BU'
,p_column_label=>'Not Signed In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681143444510583)
,p_db_column_name=>'FC_EMAILIN'
,p_display_order=>70
,p_column_identifier=>'BV'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681189771510584)
,p_db_column_name=>'FC_EMAILOUT'
,p_display_order=>80
,p_column_identifier=>'BW'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681321880510585)
,p_db_column_name=>'FC_CERT'
,p_display_order=>90
,p_column_identifier=>'BX'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681366999510586)
,p_db_column_name=>'FC_STL'
,p_display_order=>100
,p_column_identifier=>'BY'
,p_column_label=>'STL''s'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681483739510587)
,p_db_column_name=>'FC_REPORTS'
,p_display_order=>110
,p_column_identifier=>'BZ'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681640382510588)
,p_db_column_name=>'FC_MISC'
,p_display_order=>120
,p_column_identifier=>'CA'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681690772510589)
,p_db_column_name=>'FC_EVALS'
,p_display_order=>130
,p_column_identifier=>'CB'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681853678510590)
,p_db_column_name=>'FC_PJ'
,p_display_order=>140
,p_column_identifier=>'CC'
,p_column_label=>'PJ'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129681868145510591)
,p_db_column_name=>'FC_CURRENTHS'
,p_display_order=>150
,p_column_identifier=>'CD'
,p_column_label=>'Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682014336510592)
,p_db_column_name=>'FC_INCTRANSFER'
,p_display_order=>160
,p_column_identifier=>'CE'
,p_column_label=>'Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682089143510593)
,p_db_column_name=>'FC_INCGRAD'
,p_display_order=>170
,p_column_identifier=>'CF'
,p_column_label=>'Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682222507510594)
,p_db_column_name=>'FC_CURRUG'
,p_display_order=>180
,p_column_identifier=>'CG'
,p_column_label=>'Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682335511510595)
,p_db_column_name=>'FC_MED'
,p_display_order=>190
,p_column_identifier=>'CH'
,p_column_label=>'Curr GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682366672510596)
,p_db_column_name=>'FC_COMBO'
,p_display_order=>200
,p_column_identifier=>'CI'
,p_column_label=>'Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682530790510597)
,p_db_column_name=>'FC_STU'
,p_display_order=>210
,p_column_identifier=>'CJ'
,p_column_label=>'FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682643906510598)
,p_db_column_name=>'FC_ROUTED'
,p_display_order=>220
,p_column_identifier=>'CK'
,p_column_label=>'Email Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75129682689735510599)
,p_db_column_name=>'FINAID_EMAILS_ANSWERED'
,p_display_order=>230
,p_column_identifier=>'CL'
,p_column_label=>'Total Finaid Emails Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(75129586263960924683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'569385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FC_FC_FC_FC_FC_FC_FC_FC_FC_FC_FC_FC_ENTER_DATE:FC_ENTERDATE:FC_NAME:FC_PHONES:FC_ACD:FC_INPERSON:FC_NOTSIGNEDIN:FC_EMAILIN:FC_EMAILOUT:FC_CERT:FC_STL:FC_REPORTS:FC_MISC:FC_EVALS:FC_PJ:FC_CURRENTHS:FC_INCTRANSFER:FC_INCGRAD:FC_CURRUG:FC_MED:FC_COMBO:F'
||'C_STU:FC_ROUTED:FINAID_EMAILS_ANSWERED'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75129563476785341281)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(75129563327786341279)
,p_button_name=>'FC_Fetch_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75129386366853116467)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'FC FETCH DATA'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75129563445302341280)
,p_name=>'FC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75129563327786341279)
,p_prompt=>'FC DATE'
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
