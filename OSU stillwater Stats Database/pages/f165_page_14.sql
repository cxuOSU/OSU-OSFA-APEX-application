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
--   Date and Time:   16:50 Wednesday October 11, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00014
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>14);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Specific_Date_Data_records'
,p_step_title=>'Specific_Date_Data_records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231011145201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58488369662158023)
,p_plug_name=>'Specific Date Data Entry Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58488406826158024)
,p_plug_name=>'Specific_Date_Data_report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DATA_ENTRY_STAFF'
,p_query_where=>'DES_DATE =:SPECIFIC_DATE'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(58488547014158025)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_DES_EMP_ID,P11_DES_DATE:#DES_EMP_ID#,#DES_DATE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'MMINUMU'
,p_internal_uid=>58488547014158025
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58488725626158027)
,p_db_column_name=>'DES_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242211384870342)
,p_db_column_name=>'DES_EMP_ID'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242383144870343)
,p_db_column_name=>'SCHOL'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Schol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242417927870344)
,p_db_column_name=>'RCRSUSP'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Rcrsusp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242508871870345)
,p_db_column_name=>'INBOXES'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Inboxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242602029870346)
,p_db_column_name=>'WORKFLOW'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Workflow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242744143870347)
,p_db_column_name=>'DES_MIL'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242813057870348)
,p_db_column_name=>'COGNOS'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cognos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74242948001870349)
,p_db_column_name=>'FAXES'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Faxes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74243080626870350)
,p_db_column_name=>'UPLOADS'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Uploads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319328592160401)
,p_db_column_name=>'EXNA'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Exna'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319402330160402)
,p_db_column_name=>'BOUNCE_BACK'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Bounce Back'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319532949160403)
,p_db_column_name=>'SKIP_TRACE'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Skip Trace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319616008160404)
,p_db_column_name=>'AWDLTR'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Awdltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319708626160405)
,p_db_column_name=>'RTLTR'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Rtltr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319879256160406)
,p_db_column_name=>'THANKU'
,p_display_order=>380
,p_column_identifier=>'AK'
,p_column_label=>'Thanku'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74319998368160407)
,p_db_column_name=>'DUPID'
,p_display_order=>390
,p_column_identifier=>'AL'
,p_column_label=>'Dup Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320032357160408)
,p_db_column_name=>'CPS_CORR'
,p_display_order=>400
,p_column_identifier=>'AM'
,p_column_label=>'Cps Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320111021160409)
,p_db_column_name=>'EMAILS_MOVED'
,p_display_order=>410
,p_column_identifier=>'AN'
,p_column_label=>'Emails Moved'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320291547160410)
,p_db_column_name=>'IMG_CORR'
,p_display_order=>420
,p_column_identifier=>'AO'
,p_column_label=>'Img Corr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320370554160411)
,p_db_column_name=>'COLLATE'
,p_display_order=>430
,p_column_identifier=>'AP'
,p_column_label=>'Collate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74320460873160412)
,p_db_column_name=>'NOTES'
,p_display_order=>440
,p_column_identifier=>'AQ'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58522032613539564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'585221'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DES_DATE:DES_EMP_ID:SCHOL:RCRSUSP:INBOXES:WORKFLOW:DES_MIL:COGNOS:FAXES:UPLOADS:EXNA:BOUNCE_BACK:SKIP_TRACE:AWDLTR:RTLTR:THANKU:DUPID:CPS_CORR:EMAILS_MOVED:IMG_CORR:COLLATE:NOTES'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(72046562914347550)
,p_name=>'Specific Date Total'
,p_template=>wwv_flow_api.id(56680630296843656)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'sum(SCHOL) as 	SCHOL,',
'sum(RCRSUSP) as	RCRSUSP,',
'sum(INBOXES	) as INBOXES,',
'sum(WORKFLOW) as WORKFLOW,	',
'sum(DES_MIL	) as DES_MIL,',
'sum(COGNOS	) as COGNOS,',
'sum(FAXES	) as FAXES,',
'sum(UPLOADS	) as UPLOADS,',
'sum(EXNA	) as EXNA,',
'sum(BOUNCE_BACK	) as BOUNCE_BACK,',
'sum(SKIP_TRACE	) as SKIP_TRACE,',
'sum(AWDLTR	) as AWDLTR,',
'sum(RTLTR	) as RTLTR,',
'sum(THANKU	) as THANKU,',
'sum(DUPID	) as DUPID,',
'sum(CPS_CORR	) as CPS_CORR,',
'sum(EMAILS_MOVED	) as EMAILS_MOVED,',
'sum(IMG_CORR	) as IMG_CORR,',
'sum(COLLATE) as COLLATE from DATA_ENTRY_STAFF where DES_DATE =:SPECIFIC_DATE ;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(56705216907843678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80342557123357135)
,p_query_column_id=>1
,p_column_alias=>'SCHOL'
,p_column_display_sequence=>1
,p_column_heading=>'Schol'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80342677637357136)
,p_query_column_id=>2
,p_column_alias=>'RCRSUSP'
,p_column_display_sequence=>2
,p_column_heading=>'Rcrsusp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80342799257357137)
,p_query_column_id=>3
,p_column_alias=>'INBOXES'
,p_column_display_sequence=>3
,p_column_heading=>'Inboxes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80342846596357138)
,p_query_column_id=>4
,p_column_alias=>'WORKFLOW'
,p_column_display_sequence=>4
,p_column_heading=>'Workflow'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80342904777357139)
,p_query_column_id=>5
,p_column_alias=>'DES_MIL'
,p_column_display_sequence=>5
,p_column_heading=>'Des Mil'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343009914357140)
,p_query_column_id=>6
,p_column_alias=>'COGNOS'
,p_column_display_sequence=>6
,p_column_heading=>'Cognos'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343136515357141)
,p_query_column_id=>7
,p_column_alias=>'FAXES'
,p_column_display_sequence=>7
,p_column_heading=>'Faxes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343221143357142)
,p_query_column_id=>8
,p_column_alias=>'UPLOADS'
,p_column_display_sequence=>8
,p_column_heading=>'Uploads'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343323934357143)
,p_query_column_id=>9
,p_column_alias=>'EXNA'
,p_column_display_sequence=>9
,p_column_heading=>'Exna'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343406629357144)
,p_query_column_id=>10
,p_column_alias=>'BOUNCE_BACK'
,p_column_display_sequence=>10
,p_column_heading=>'Bounce Back'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343581350357145)
,p_query_column_id=>11
,p_column_alias=>'SKIP_TRACE'
,p_column_display_sequence=>11
,p_column_heading=>'Skip Trace'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343613663357146)
,p_query_column_id=>12
,p_column_alias=>'AWDLTR'
,p_column_display_sequence=>12
,p_column_heading=>'Awdltr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343726257357147)
,p_query_column_id=>13
,p_column_alias=>'RTLTR'
,p_column_display_sequence=>13
,p_column_heading=>'Rtltr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343867816357148)
,p_query_column_id=>14
,p_column_alias=>'THANKU'
,p_column_display_sequence=>14
,p_column_heading=>'Thanku'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80343913369357149)
,p_query_column_id=>15
,p_column_alias=>'DUPID'
,p_column_display_sequence=>15
,p_column_heading=>'Dupid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80344040286357150)
,p_query_column_id=>16
,p_column_alias=>'CPS_CORR'
,p_column_display_sequence=>16
,p_column_heading=>'Cps Corr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80419331339594601)
,p_query_column_id=>17
,p_column_alias=>'EMAILS_MOVED'
,p_column_display_sequence=>17
,p_column_heading=>'Emails Moved'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80419496766594602)
,p_query_column_id=>18
,p_column_alias=>'IMG_CORR'
,p_column_display_sequence=>18
,p_column_heading=>'Img Corr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80419524646594603)
,p_query_column_id=>19
,p_column_alias=>'COLLATE'
,p_column_display_sequence=>19
,p_column_heading=>'Collate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80474358464253914)
,p_plug_name=>'Notes in this day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DATA_ENTRY_STAFF'
,p_query_where=>'DES_DATE =:SPECIFIC_DATE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'NOTES'
,p_attribute_06=>'DES_EMP_ID'
,p_attribute_16=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_DES_EMP_ID,P11_DES_DATE:&DES_EMP_ID.,&DES_DATE.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58490915522158049)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(58488369662158023)
,p_button_name=>'Fetch_Details'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58490853655158048)
,p_name=>'SPECIFIC_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58488369662158023)
,p_prompt=>'Specific Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
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
