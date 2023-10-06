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
--   Date and Time:   10:07 Friday October 6, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00020
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>20);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_SPecific_Date_Scholarships'
,p_step_title=>'Goto_SPecific_Date_Scholarships'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MMINUMU'
,p_last_upd_yyyymmddhh24miss=>'20230710102924'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71484163030251207)
,p_plug_name=>'Specific date Scholarships'
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
 p_id=>wwv_flow_api.id(71484615432251212)
,p_plug_name=>'Scholarships_report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select * from rec_mang_schol where rms_date = :RMS_ENTER_DATE;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_header=>'Specific Date Scholarships Report '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71484856761251214)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71484856761251214
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71484956568251215)
,p_db_column_name=>'RMS_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485077059251216)
,p_db_column_name=>'RMS_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485101755251217)
,p_db_column_name=>'RMS_ACD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485257796251218)
,p_db_column_name=>'RMS_PHONE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485329821251219)
,p_db_column_name=>'RMS_CURR_HS_E_IN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr HS / Inc FR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485484720251220)
,p_db_column_name=>'RMS_CURR_HS_E_OUT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curr HS / Inc FR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485589322251221)
,p_db_column_name=>'RMS_INC_TRANS_E_IN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc UG TR Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485682242251222)
,p_db_column_name=>'RMS_INC_TRANS_E_OUT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc UG TR Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485761628251223)
,p_db_column_name=>'RMS_INC_GRAD_E_IN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485868243251224)
,p_db_column_name=>'RMS_INC_GRAD_E_OUT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inc GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71485984146251225)
,p_db_column_name=>'RMS_CURR_UG_E_IN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Curr UG Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486023562251226)
,p_db_column_name=>'RMS_CURR_UG_E_OUT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Curr UG Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486106811251227)
,p_db_column_name=>'RMS_GRAD_VET_MED_EIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Curr GR / Vet Med Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486274518251228)
,p_db_column_name=>'RMS_GRAD_VET_MED_EOUT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Curr GR / Vet Med Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486303752251229)
,p_db_column_name=>'RMS_COMBO_OFFER_EIN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Combo / Offer Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486489504251230)
,p_db_column_name=>'RMS_COMBO_OFFER_EOUT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Combo / Offer Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486585170251231)
,p_db_column_name=>'RMS_FOR_STUD_E_IN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486660319251232)
,p_db_column_name=>'RMS_FOR_STUD_E_OUT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486736368251233)
,p_db_column_name=>'RMS_IN_PERSON'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486821094251234)
,p_db_column_name=>'RMS_EMAIL_IN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71486901784251235)
,p_db_column_name=>'RMS_EMAIL_OUT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487026633251236)
,p_db_column_name=>'RMS_REPORTS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487122494251237)
,p_db_column_name=>'RMS_MISC'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71511632863338563)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'715117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RMS_EMP_ID:RMS_DATE:RMS_ACD:RMS_PHONE:RMS_CURR_HS_E_IN:RMS_CURR_HS_E_OUT:RMS_INC_TRANS_E_IN:RMS_INC_TRANS_E_OUT:RMS_INC_GRAD_E_IN:RMS_INC_GRAD_E_OUT:RMS_CURR_UG_E_IN:RMS_CURR_UG_E_OUT:RMS_GRAD_VET_MED_EIN:RMS_GRAD_VET_MED_EOUT:RMS_COMBO_OFFER_EIN:RMS'
||'_COMBO_OFFER_EOUT:RMS_FOR_STUD_E_IN:RMS_FOR_STUD_E_OUT:RMS_IN_PERSON:RMS_EMAIL_IN:RMS_EMAIL_OUT:RMS_REPORTS:RMS_MISC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71487243327251238)
,p_plug_name=>'Specificdate Scholarships record'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Select * from rec_mang_acd_fin where rm_fin_date = :RMS_ENTER_DATE;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_header=>'Specific Date FinAid Scholarships details'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71487346600251239)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>71487346600251239
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487470562251240)
,p_db_column_name=>'RM_FIN_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487558918251241)
,p_db_column_name=>'RM_FIN_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487646847251242)
,p_db_column_name=>'ACD_TOTAL_OFFERED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Acd Total Offered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487771578251243)
,p_db_column_name=>'ACD_TOTAL_ANSWERED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Acd Total Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487856646251244)
,p_db_column_name=>'ACD_IN_QUEUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Acd In Queue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71487992151251245)
,p_db_column_name=>'ACD_AVG_QUEUE_TIME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Acd Avg Queue Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488097473251246)
,p_db_column_name=>'ACD_AVG_QUEUE_SEC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Acd Avg Queue Sec'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488161262251247)
,p_db_column_name=>'GR_STD_IN_DOOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Std In Door'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488213436251248)
,p_db_column_name=>'GR_AVG_WAIT_TIME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Avg Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488395600251249)
,p_db_column_name=>'GR_AVG_WAIT_SEC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Avg Wait Sec'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71488488189251250)
,p_db_column_name=>'FINAID_RECEIVED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Finaid Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71512442063357901)
,p_db_column_name=>'HW_PHONE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fiscal Ops Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71512537080357902)
,p_db_column_name=>'HW_ACD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fiscal Ops ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71527449960609770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'715275'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RM_FIN_EMP_ID:RM_FIN_DATE:ACD_TOTAL_OFFERED:ACD_TOTAL_ANSWERED:ACD_IN_QUEUE:ACD_AVG_QUEUE_TIME:ACD_AVG_QUEUE_SEC:GR_STD_IN_DOOR:GR_AVG_WAIT_TIME:GR_AVG_WAIT_SEC:FINAID_RECEIVED:HW_PHONE:HW_ACD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71484512606251211)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(71484163030251207)
,p_button_name=>'GET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(56738723496843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Data'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71484234556251208)
,p_name=>'RMS_ENTER_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71484163030251207)
,p_prompt=>'Enter Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
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
