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
--   Date and Time:   16:37 Thursday October 12, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00033
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>33);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Specific Date Office Contacts'
,p_step_title=>'Specific Date Office Contacts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231012152819'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80675990176033127)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'REC_MANG_ACD_FIN'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RM_FIN_DATE = :P33_DATE',
''))
,p_include_rowid_column=>false
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
,p_plug_header=>'<h3>Office Contacts</h3>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80676021485033128)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP:P19_RM_FIN_DATE,P19_RM_FIN_EMP_ID:#RM_FIN_DATE#,#RM_FIN_EMP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'XCHEN'
,p_internal_uid=>80676021485033128
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80676196347033129)
,p_db_column_name=>'RM_FIN_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80676275473033130)
,p_db_column_name=>'RM_FIN_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80676314734033131)
,p_db_column_name=>'ACD_TOTAL_OFFERED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Offered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80696408666033132)
,p_db_column_name=>'ACD_TOTAL_ANSWERED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80696570356033133)
,p_db_column_name=>'ACD_IN_QUEUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'In Queue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80696604485033134)
,p_db_column_name=>'ACD_AVG_QUEUE_TIME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'ACD AVG Queue Time (mm)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80696711529033135)
,p_db_column_name=>'ACD_AVG_QUEUE_SEC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'ACD AVG Queue Time (ss)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80696833593033136)
,p_db_column_name=>'GR_STD_IN_DOOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'# stds in door'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80696925434033137)
,p_db_column_name=>'GR_AVG_WAIT_TIME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Greeter AVG Wait Time (mm)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80697078977033138)
,p_db_column_name=>'GR_AVG_WAIT_SEC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Greeter AVG Wait Time (ss)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80697102837033139)
,p_db_column_name=>'FINAID_RECEIVED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Finaid Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80738275550827948)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'807383'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RM_FIN_EMP_ID:RM_FIN_DATE:ACD_TOTAL_OFFERED:ACD_TOTAL_ANSWERED:ACD_IN_QUEUE:ACD_AVG_QUEUE_TIME:ACD_AVG_QUEUE_SEC:GR_STD_IN_DOOR:GR_AVG_WAIT_TIME:GR_AVG_WAIT_SEC:FINAID_RECEIVED'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80697201618033140)
,p_plug_name=>'Specific Date Office Contacts'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h2>Specific Date Office Contacts</h2>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80697661236033144)
,p_plug_name=>'Fisco Ops'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FISCO_OPS'
,p_query_where=>'FO_DATE = :P33_DATE'
,p_include_rowid_column=>false
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
,p_plug_header=>'<h3>Fisco Ops</h3>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80697761726033145)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:P31_FO_EMP_ID,P31_FO_DATE:#FO_EMP_ID#,#FO_DATE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'XCHEN'
,p_internal_uid=>80697761726033145
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80697898382033146)
,p_db_column_name=>'FO_EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80697958330033147)
,p_db_column_name=>'FO_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80698008091033148)
,p_db_column_name=>'FO_PHONE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80698118604033149)
,p_db_column_name=>'FO_ACD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80739253249863618)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'807393'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FO_EMP_ID:FO_DATE:FO_PHONE:FO_ACD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80697532777033143)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80697201618033140)
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
 p_id=>wwv_flow_api.id(80697318199033141)
,p_name=>'P33_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80697201618033140)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>3
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
