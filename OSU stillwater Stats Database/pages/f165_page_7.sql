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
--   Date and Time:   13:52 Friday October 6, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00007
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>7);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'FC Goto Sepcific date '
,p_step_title=>'FC Goto Sepcific date '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231006135206'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56915561374068524)
,p_plug_name=>'Front Counselor Specific date Stats'
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
 p_id=>wwv_flow_api.id(79823554720203527)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FRONTCOUNS'
,p_query_where=>'ENTER_DATE = :FC_DATE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'FC_DATE'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79823609685203528)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ENTER_DATE,P3_FC_EMP_ID:#ENTER_DATE#,#FC_EMP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'XCHEN'
,p_internal_uid=>79823609685203528
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79823728599203529)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79823809068203530)
,p_db_column_name=>'FC_EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fc Emp Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79823905472203531)
,p_db_column_name=>'COUNS_PHONE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Couns Phone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824026730203532)
,p_db_column_name=>'ACD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Acd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824104868203533)
,p_db_column_name=>'IN_PERSON'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824268264203534)
,p_db_column_name=>'NOT_SIGNED_IN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Not Signed In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824392457203535)
,p_db_column_name=>'EMAILIN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emailin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824472561203536)
,p_db_column_name=>'EMAILOUT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Emailout'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824534941203537)
,p_db_column_name=>'CERT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824652542203538)
,p_db_column_name=>'STL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Stl'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824780529203539)
,p_db_column_name=>'REPORTS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824881416203540)
,p_db_column_name=>'MISC'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79824954236203541)
,p_db_column_name=>'EVALS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825050961203542)
,p_db_column_name=>'PJ'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825107666203543)
,p_db_column_name=>'CURR_HS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Curr Hs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825290900203544)
,p_db_column_name=>'INC_TRANSFER'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Inc Transfer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825356578203545)
,p_db_column_name=>'INC_GRAD'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Inc Grad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825485848203546)
,p_db_column_name=>'CURR_UG'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Curr Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825593264203547)
,p_db_column_name=>'MED'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825697881203548)
,p_db_column_name=>'COMBO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Combo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825700649203549)
,p_db_column_name=>'FOR_STU'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'For Stu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79825852309203550)
,p_db_column_name=>'ROUTED'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79882818975845647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'798829'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENTER_DATE:FC_EMP_ID:COUNS_PHONE:ACD:IN_PERSON:NOT_SIGNED_IN:EMAILIN:EMAILOUT:CERT:STL:REPORTS:MISC:EVALS:PJ:CURR_HS:INC_TRANSFER:INC_GRAD:CURR_UG:MED:COMBO:FOR_STU:ROUTED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56915710373068526)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(56915561374068524)
,p_button_name=>'FC_Fetch_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'FC FETCH DATA'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56915678890068525)
,p_name=>'FC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56915561374068524)
,p_prompt=>'FC DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
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
