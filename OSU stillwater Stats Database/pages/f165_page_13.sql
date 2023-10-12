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

prompt --application/pages/delete_00013
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>13);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Goto_FC_Summary_Stats'
,p_step_title=>'Goto_FC_Summary_Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231012163605'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57035085589237845)
,p_plug_name=>'Front Counselor Summary Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(56680630296843656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h2>Front Counselor Summary Stats</h2>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57035191779237846)
,p_plug_name=>'Summary Stats Report '
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select FC_EMP_ID as FC_Name_EMP  , ',
'        sum (COUNS_PHONE) as FC_Phones,  ',
'        sum (ACD) as FC_ACD , ',
'        sum (IN_PERSON) as FC_In_Person,  ',
'        sum (NOT_SIGNED_IN) as FC_Not_Signed_In,  ',
'        sum (EMAILIN) as FC_Email_In ,',
'        sum (EMAILOUT) as FC_Email_Out,	',
'        sum (CERT) as FC_CERT,  ',
'        sum (STL) as FC_STL, ',
'        sum (REPORTS) as FC_Reports,  ',
'        sum (MISC) as FC_Misc,    ',
'        sum (EVALS) as FC_Evals,	',
'        sum (PJ) as FC_PJ,	',
'        sum (CURR_HS) as FC_Current_HS,    ',
'        sum (INC_TRANSFER) as FC_Inc_TR, ',
'        sum (INC_GRAD) as FC_Inc_GR, ',
'        sum (CURR_UG) as FC_Curr_UG, ',
'        sum (MED) as FC_Cur_GR_Vet_Med,',
'        sum (COMBO) as FC_Combo, ',
'        sum (FOR_STU) as FC_FS_STU, ',
'        sum (ROUTED) as FC_Routed,',
'        sum (CURR_HS) +  sum (INC_TRANSFER)+  sum (INC_GRAD)+  sum (CURR_UG)+  sum (MED) ',
'            + sum (COMBO) + sum (FOR_STU) as FC_Fin_Email_Ans',
'             ',
'       from frontcouns where ENTER_DATE >= :FC_FROM_DATE AND ENTER_DATE <= :FC_TO_DATE group by FC_EMP_ID ;',
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
,p_plug_header=>'<h3>Front Counselor Stats</h3>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(57063560813688201)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_ACD,P36_CERT,P36_COMBO,P36_COUNS_PHONE,P36_CURR_HS,P36_CURR_UG,P36_EMAILIN,P36_EMAILOUT,P36_EMP_ID,P36_EVALS,P36_FIN_EMAIL_ANS,P36_FOR_STU,P36_FROM_DATE,P36_IN_PERSON,P36_INC_GRAD,P36_INC_TRANSFER,P36_MED,P36'
||'_MISC,P36_NOT_SIGNED_IN,P36_PJ,P36_REPORTS,P36_ROUTED,P36_STL,P36_TO_DATE:#FC_ACD#,#FC_CERT#,#FC_COMBO#,#FC_PHONES#,#FC_CURRENT_HS#,#FC_CURR_UG#,#FC_EMAIL_IN#,#FC_EMAIL_OUT#,#FC_NAME_EMP#,#FC_EVALS#,#FC_FIN_EMAIL_ANS#,#FC_FS_STU#,&FC_FROM_DATE.,#FC_I'
||'N_PERSON#,#FC_INC_GR#,#FC_INC_TR#,#FC_CUR_GR_VET_MED#,#FC_MISC#,#FC_NOT_SIGNED_IN#,#FC_PJ#,#FC_REPORTS#,#FC_ROUTED#,#FC_STL#,&FC_TO_DATE.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'MMINUMU'
,p_internal_uid=>57063560813688201
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274316602397046)
,p_db_column_name=>'FC_NAME_EMP'
,p_display_order=>10
,p_column_identifier=>'AQ'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274493627397047)
,p_db_column_name=>'FC_PHONES'
,p_display_order=>20
,p_column_identifier=>'AR'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274543137397048)
,p_db_column_name=>'FC_ACD'
,p_display_order=>30
,p_column_identifier=>'AS'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274695082397049)
,p_db_column_name=>'FC_IN_PERSON'
,p_display_order=>40
,p_column_identifier=>'AT'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73274755741397050)
,p_db_column_name=>'FC_NOT_SIGNED_IN'
,p_display_order=>50
,p_column_identifier=>'AU'
,p_column_label=>'Not Signed In '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518325547568001)
,p_db_column_name=>'FC_EMAIL_IN'
,p_display_order=>60
,p_column_identifier=>'AV'
,p_column_label=>'Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518462687568002)
,p_db_column_name=>'FC_EMAIL_OUT'
,p_display_order=>70
,p_column_identifier=>'AW'
,p_column_label=>'Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518533865568003)
,p_db_column_name=>'FC_CERT'
,p_display_order=>80
,p_column_identifier=>'AX'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518651258568004)
,p_db_column_name=>'FC_STL'
,p_display_order=>90
,p_column_identifier=>'AY'
,p_column_label=>'STL''s'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518749795568005)
,p_db_column_name=>'FC_REPORTS'
,p_display_order=>100
,p_column_identifier=>'AZ'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518897403568006)
,p_db_column_name=>'FC_MISC'
,p_display_order=>110
,p_column_identifier=>'BA'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73518989242568007)
,p_db_column_name=>'FC_EVALS'
,p_display_order=>120
,p_column_identifier=>'BB'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519091825568008)
,p_db_column_name=>'FC_PJ'
,p_display_order=>130
,p_column_identifier=>'BC'
,p_column_label=>'PJ'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519182798568009)
,p_db_column_name=>'FC_CURRENT_HS'
,p_display_order=>140
,p_column_identifier=>'BD'
,p_column_label=>'Curr HS / Inc FR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519247236568010)
,p_db_column_name=>'FC_INC_TR'
,p_display_order=>150
,p_column_identifier=>'BE'
,p_column_label=>'Inc UG TR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519353583568011)
,p_db_column_name=>'FC_INC_GR'
,p_display_order=>160
,p_column_identifier=>'BF'
,p_column_label=>'Inc GR / Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519423397568012)
,p_db_column_name=>'FC_CURR_UG'
,p_display_order=>170
,p_column_identifier=>'BG'
,p_column_label=>'Curr UG'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519549309568013)
,p_db_column_name=>'FC_CUR_GR_VET_MED'
,p_display_order=>180
,p_column_identifier=>'BH'
,p_column_label=>'Curr GR / Vet Med '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519670232568014)
,p_db_column_name=>'FC_COMBO'
,p_display_order=>190
,p_column_identifier=>'BI'
,p_column_label=>'Combo / Other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519730499568015)
,p_db_column_name=>'FC_FS_STU'
,p_display_order=>200
,p_column_identifier=>'BJ'
,p_column_label=>'FS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519894830568016)
,p_db_column_name=>'FC_ROUTED'
,p_display_order=>210
,p_column_identifier=>'BK'
,p_column_label=>'Email Routed '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73519977614568017)
,p_db_column_name=>'FC_FIN_EMAIL_ANS'
,p_display_order=>220
,p_column_identifier=>'BL'
,p_column_label=>'Total Finaid Email Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57098365118960125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570984'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FC_CURRENT_HSANSFERAD:FC_NAME_EMP:FC_PHONES:FC_ACD:FC_IN_PERSON:FC_NOT_SIGNED_IN:FC_EMAIL_IN:FC_EMAIL_OUT:FC_CERT:FC_STL:FC_REPORTS:FC_MISC:FC_EVALS:FC_PJ:FC_CURRENT_HS:FC_INC_TR:FC_INC_GR:FC_CURR_UG:FC_CUR_GR_VET_MED:FC_COMBO:FC_FS_STU:FC_ROUTED:FC_'
||'FIN_EMAIL_ANS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58840295392145104)
,p_plug_name=>'FC_Total_Summary'
,p_parent_plug_id=>wwv_flow_api.id(57035191779237846)
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select sum (COUNS_PHONE) as FC_Phones   ,  sum(ACD) as FC_ACD ,  sum (IN_PERSON) as FC_In_Person,  sum (NOT_SIGNED_IN) as FC_Not_SIgned_In,  sum (EMAILIN) as FC_Email_In ,',
'       sum (EMAILOUT) as FC_Email_Out,	sum (CERT) as FC_CERT,  sum (STL) as FC_STL, ',
'       sum (REPORTS) as FC_Reports,  sum (MISC) as FC_Misc,    sum (EVALS) as FC_Evals,	',
'       sum (PJ) as FC_PJ,	sum (CURR_HS) as FC_Current_HS,    sum (INC_TRANSFER) as FC_Inc_TR, ',
'       sum (INC_GRAD) as FC_Inc_GR, sum (CURR_UG) as FC_Curr_UG, sum (MED) as FC_Curr_GR_Vet_Med,',
'       sum (COMBO) as FC_Combo,  sum (FOR_STU) as FC_STU, ',
'       sum (ROUTED) as FC_Routed,',
'       sum (CURR_HS) +  sum (INC_TRANSFER)+  sum (INC_GRAD)+  sum (CURR_UG)+  sum (MED) ',
'        + sum (COMBO) + sum (FOR_STU) as FC_Fin_Email_Ans  ',
'       from frontcouns where ENTER_DATE >= :FC_FROM_DATE AND ENTER_DATE <= :FC_TO_DATE ;'))
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
,p_plug_header=>'<h3>Total Summary</h3>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80496579455253936)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_ACD,P36_CERT,P36_COMBO,P36_COUNS_PHONE,P36_CURR_HS,P36_CURR_UG,P36_EMAILIN,P36_EMAILOUT,P36_EVALS,P36_FOR_STU,P36_IN_PERSON,P36_INC_GRAD,P36_INC_TRANSFER,P36_MED,P36_MISC,P36_NOT_SIGNED_IN,P36_PJ,P36_REPORTS,'
||'P36_ROUTED,P36_STL,P36_FROM_DATE,P36_TO_DATE,P36_EMP_ID,P36_FIN_EMAIL_ANS:#FC_ACD#,#FC_CERT#,#FC_COMBO#,#FC_PHONES#,#FC_CURRENT_HS#,#FC_CURR_UG#,#FC_EMAIL_IN#,#FC_EMAIL_OUT#,#FC_EVALS#,#FC_STU#,#FC_IN_PERSON#,#FC_INC_GR#,#FC_INC_TR#,#FC_CURR_GR_VET_M'
||'ED#,#FC_MISC#,#FC_NOT_SIGNED_IN#,#FC_PJ#,#FC_REPORTS#,#FC_ROUTED#,#FC_STL#,&FC_FROM_DATE.,&FC_TO_DATE.,Total summary,#FC_FIN_EMAIL_ANS#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'XCHEN'
,p_internal_uid=>80496579455253936
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80496630243253937)
,p_db_column_name=>'FC_PHONES'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fc Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80496783502253938)
,p_db_column_name=>'FC_ACD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fc Acd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80496859325253939)
,p_db_column_name=>'FC_IN_PERSON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fc In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80496934866253940)
,p_db_column_name=>'FC_NOT_SIGNED_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fc Not Signed In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497072389253941)
,p_db_column_name=>'FC_EMAIL_IN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fc Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497162241253942)
,p_db_column_name=>'FC_EMAIL_OUT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fc Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497211817253943)
,p_db_column_name=>'FC_CERT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fc Cert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497388163253944)
,p_db_column_name=>'FC_STL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fc Stl'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497440060253945)
,p_db_column_name=>'FC_REPORTS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fc Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497502062253946)
,p_db_column_name=>'FC_MISC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fc Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497694307253947)
,p_db_column_name=>'FC_EVALS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fc Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497705162253948)
,p_db_column_name=>'FC_PJ'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fc Pj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497876481253949)
,p_db_column_name=>'FC_CURRENT_HS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fc Current Hs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80497995417253950)
,p_db_column_name=>'FC_INC_TR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fc Inc Tr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80504919225478901)
,p_db_column_name=>'FC_INC_GR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fc Inc Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80505004829478902)
,p_db_column_name=>'FC_CURR_UG'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fc Curr Ug'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80505130492478903)
,p_db_column_name=>'FC_CURR_GR_VET_MED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fc Curr Gr Vet Med'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80505261067478904)
,p_db_column_name=>'FC_COMBO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fc Combo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80505375665478905)
,p_db_column_name=>'FC_STU'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fc Stu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80505456862478906)
,p_db_column_name=>'FC_ROUTED'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fc Routed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80505589753478907)
,p_db_column_name=>'FC_FIN_EMAIL_ANS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fc Fin Email Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80539915298492044)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'805400'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FC_PHONES:FC_ACD:FC_IN_PERSON:FC_NOT_SIGNED_IN:FC_EMAIL_IN:FC_EMAIL_OUT:FC_CERT:FC_STL:FC_REPORTS:FC_MISC:FC_EVALS:FC_PJ:FC_CURRENT_HS:FC_INC_TR:FC_INC_GR:FC_CURR_UG:FC_CURR_GR_VET_MED:FC_COMBO:FC_STU:FC_ROUTED:FC_FIN_EMAIL_ANS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57035523240237850)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57035085589237845)
,p_button_name=>'Fetch_Summary_Stats'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Summary Stats'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57035392098237848)
,p_name=>'FC_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57035085589237845)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57035444531237849)
,p_name=>'FC_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57035085589237845)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
