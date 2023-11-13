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

prompt --application/pages/delete_00035
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>35);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Summary Office Contacts'
,p_step_title=>'Summary Office Contacts'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231012152514'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80748638344666501)
,p_plug_name=>'Summary Office Contacts records'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    RM_FIN_EMP_ID AS EMP_ID,',
'    SUM(ACD_TOTAL_OFFERED) AS TOTAL_OFFERED,',
'    SUM(ACD_TOTAL_ANSWERED) AS TOTAL_ANSWERED,',
'    SUM(ACD_IN_QUEUE) AS TOTAL_IN_QUEUE,',
'    SUM(ACD_AVG_QUEUE_TIME) AS AVG_QUEUE_TIME,',
'    SUM(ACD_AVG_QUEUE_SEC) AS AVG_QUEUE_SEC,',
'    SUM(GR_STD_IN_DOOR) AS STD_IN_DOOR,',
'    SUM(GR_AVG_WAIT_TIME) AS AVG_WAIT_TIME,',
'    SUM(GR_AVG_WAIT_SEC) AS AVG_WAIT_SEC,',
'    SUM(FINAID_RECEIVED) AS FINANCIAL_AID_RECEIVED',
'FROM REC_MANG_ACD_FIN',
'WHERE RM_FIN_DATE >= :P35_FROM_DATE',
'    AND RM_FIN_DATE <= :P35_TO_DATE',
'GROUP BY RM_FIN_EMP_ID;',
''))
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Office Contacts summary</h3>',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80748761856666502)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'XCHEN'
,p_internal_uid=>80748761856666502
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750153133666516)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Emp Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80749177968666506)
,p_db_column_name=>'TOTAL_OFFERED'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Total Offered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80749294526666507)
,p_db_column_name=>'TOTAL_ANSWERED'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Total Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80749372308666508)
,p_db_column_name=>'TOTAL_IN_QUEUE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Total In Queue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750277480666517)
,p_db_column_name=>'AVG_QUEUE_TIME'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Avg Queue Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750359284666518)
,p_db_column_name=>'AVG_QUEUE_SEC'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Avg Queue Sec'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750403655666519)
,p_db_column_name=>'STD_IN_DOOR'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Std In Door'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750575696666520)
,p_db_column_name=>'AVG_WAIT_TIME'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Avg Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750663328666521)
,p_db_column_name=>'AVG_WAIT_SEC'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Avg Wait Sec'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80750738319666522)
,p_db_column_name=>'FINANCIAL_AID_RECEIVED'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Financial Aid Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80754193863697787)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'807542'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_OFFERED:TOTAL_ANSWERED:TOTAL_IN_QUEUE:ACD_TOTAL_ACD_TOTAL_GR_TOTAL_GR_TOTAL_GR_TOTAL_TOTAL_EMP_ID:AVG_QUEUE_TIME:AVG_QUEUE_SEC:STD_IN_DOOR:AVG_WAIT_TIME:AVG_WAIT_SEC:FINANCIAL_AID_RECEIVED'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80748820478666503)
,p_plug_name=>'DateSelector'
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
 p_id=>wwv_flow_api.id(80750880631666523)
,p_plug_name=>'Fisco Ops'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FO_EMP_ID,',
'       SUM(FO_PHONE),',
'       SUM(FO_ACD)',
'from FISCO_OPS',
'where FO_DATE >= :P35_FROM_DATE AND FO_DATE <= :P35_TO_DATE',
'group by FO_EMP_ID',
'  '))
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
,p_plug_header=>'<h3>Fisco Ops summary</h3>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80750949084666524)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'XCHEN'
,p_internal_uid=>80750949084666524
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80751482485666529)
,p_db_column_name=>'SUM(FO_PHONE)'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Phone '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80751564673666530)
,p_db_column_name=>'SUM(FO_ACD)'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80751605726666531)
,p_db_column_name=>'FO_EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80771937686136514)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'807720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUM(FO_PHONE):SUM(FO_ACD):FO_EMP_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80750043453666515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80748820478666503)
,p_button_name=>'FETCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80748932601666504)
,p_name=>'P35_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80748820478666503)
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
 p_id=>wwv_flow_api.id(80749010288666505)
,p_name=>'P35_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80748820478666503)
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
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
