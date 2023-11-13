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

prompt --application/pages/delete_00008
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>8);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'Back Counselor Summary Stats'
,p_step_title=>'BC_Summary_Stats'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231011164409'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57119813105314913)
,p_plug_name=>'Back Counselor Summary Stats'
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
 p_id=>wwv_flow_api.id(57119958916314914)
,p_plug_name=>'BC_Summary_stats'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select BC_EMP_ID as BC_NAME, ',
'sum(COUNS_PHONE) as BC_Phones, sum(ACD) as BC_ACD , ',
'sum(BC_CURRENT_HS_APPT) as CURR_HS_APPT, sum(BC_CURRENT_HS_E_IN) as CURR_HS_E_IN, sum(BC_CURRENT_HS_E_OUT) as CURR_HS_E_OUT,	sum(BC_CURR_HS_FIN_ANS) as Curr_Hs_Fin_Ans,',
'sum(BC_INC_TRANSFER_APPT) as INC_TRANS_APPT,sum(BC_INC_TRANSFER_E_IN) as INC_TRANS_E_IN, sum(BC_INC_TRANSFER_E_OUT) as INC_TRANS_E_OUT, sum(BC_INC_TRANS_FIN_ANS) as Inc_Trans_Fin_Ans,',
'sum(BC_INC_GRAD_APPT) as INC_GRAD_APPT, sum(BC_INC_GRAD_E_IN) as INC_GRAD_E_IN,sum(BC_INC_GRAD_E_OUT) as INC_GRAD_E_OUT, sum(BC_INC_GRAD_FIN_ANS)	 as Inc_Grad_Fin_Ans,',
'sum(BC_CURRENT_UG_APPT) as CURR_UG_APPT	,sum(BC_CURRENT_UG_E_IN) as CURR_UG_E_IN,sum(BC_CURRENT_UG_E_OUT) as CURR_UG_E_OUT, sum(BC_CURR_UG_FIN_ANS) as Curr_Ug_Fin_Ans,',
'sum(BC_GRAD_VET_MED_APPT) as GRAD_VET_MED_APPT, sum(BC_GRAD_VET_MED_E_IN) as GRAD_VET_MED_E_IN ,sum(BC_GRAD_VET_MED_E_OUT) as GRAD_VET_MED_E_OUT, sum(BC_CURR_GRAD_FIN_ANS) as Curr_Grad_Fin_Ans ,',
'sum(BC_COMBO_OTHER_APPT) as COM_OTH_APPT	, sum(BC_COMBO_OTHER_E_IN) as COM_OTH_E_IN, sum(BC_COMBO_OTHER_E_OUT) as COM_OTH_E_OUT , sum(BC_COMBO_FIN_ANS) as Combo_Fin_Ans,',
'sum(BC_FORMER_STUDENT_APPT) as FOR_STU_APPT , sum(BC_FORMER_STUDENT_E_IN) as FOR_STU_E_IN, sum(BC_FORMER_STUDENT_E_OUT) as FOR_STU_E_OUT ,	sum(BC_FOR_STU_FIN_ANS) as FS_Fin_Ans,',
'',
'sum(BC_IN_PERSON) as BC_IN_PERSON , sum(BC_EVALS) as BC_EVALS , sum(BC_EMAILS_IN) as BC_EMAILS_IN,	',
'sum(BC_EMAILS_OUT) as BC_EMAILS_OUT, sum(BC_PROF_JUDG) as BC_PROF_JUDG, sum(BC_REPORTS) as BC_REPORTS,	',
'sum(BC_MISC) as BC_MISC ,  ',
'',
'sum(BC_CURR_HS_FIN_ANS) + sum(BC_INC_TRANS_FIN_ANS) + sum(BC_INC_GRAD_FIN_ANS) + sum(BC_CURR_UG_FIN_ANS) + ',
'sum(BC_CURR_GRAD_FIN_ANS) + sum(BC_COMBO_FIN_ANS) +  sum(BC_FOR_STU_FIN_ANS) as Total_Fin_Ans ,',
'',
'',
'sum(BC_CURRENT_HS_APPT) + sum(BC_INC_TRANSFER_APPT) + sum(BC_INC_GRAD_APPT) + sum(BC_CURRENT_UG_APPT) +',
'sum(BC_GRAD_VET_MED_APPT) + sum(BC_COMBO_OTHER_APPT) + sum(BC_FORMER_STUDENT_APPT)   as Total_Stu_Appointments , ',
'',
'sum(BC_CURRENT_HS_E_IN)+ sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_GRAD_E_IN) + sum(BC_CURRENT_UG_E_IN) + sum(BC_GRAD_VET_MED_E_IN) + ',
'sum(BC_COMBO_OTHER_E_IN) + sum(BC_FORMER_STUDENT_E_IN) as Total_Stu_Emailsin,',
'',
'sum(BC_CURRENT_HS_E_OUT) + sum(BC_INC_TRANSFER_E_OUT) + sum(BC_INC_GRAD_E_OUT) + sum(BC_CURRENT_UG_E_OUT) + sum(BC_GRAD_VET_MED_E_OUT) +',
'sum(BC_COMBO_OTHER_E_OUT)+ sum(BC_FORMER_STUDENT_E_OUT) as Total_Stu_EmailsOut',
'',
'From back_couns where Enter_date>= :BC_DATE1 and Enter_date <= :BC_DATE2 group by BC_EMP_ID;',
'',
'',
'',
'		',
'	'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'<span style="display:block;width:300 px;"</span>'
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
 p_id=>wwv_flow_api.id(80539843996478950)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'XCHEN'
,p_internal_uid=>80539843996478950
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80592754112668001)
,p_db_column_name=>'BC_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80592880846668002)
,p_db_column_name=>'BC_PHONES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80592967366668003)
,p_db_column_name=>'BC_ACD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593089015668004)
,p_db_column_name=>'CURR_HS_APPT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Current HS or Incoming FR (Appts)'
,p_column_html_expression=>'<span style="display:block; width:80px">#CURR_HS_APPT#</span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593141298668005)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Current HS or Incoming FR (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593290522668006)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Current HS or Incoming FR (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593322534668007)
,p_db_column_name=>'CURR_HS_FIN_ANS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Current HS or Incoming FR (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593434795668008)
,p_db_column_name=>'INC_TRANS_APPT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Incoming Undergrad TR (Appts)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593542648668009)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Incoming Undergrad TR (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593671796668010)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Incoming Undergrad TR (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593759936668011)
,p_db_column_name=>'INC_TRANS_FIN_ANS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Incoming Undergrad TR (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593804203668012)
,p_db_column_name=>'INC_GRAD_APPT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Incoming Grad or Vet Med (Appts)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80593901895668013)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Incoming Grad or Vet Med (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594089463668014)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Incoming Grad or Vet Med (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594100301668015)
,p_db_column_name=>'INC_GRAD_FIN_ANS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Incoming Grad or Vet Med (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594280657668016)
,p_db_column_name=>'CURR_UG_APPT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Current Undergrad (Appts)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594306993668017)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Current Undergrad (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594492007668018)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Current Undergrad (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594576909668019)
,p_db_column_name=>'CURR_UG_FIN_ANS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Current Undergrad (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594637878668020)
,p_db_column_name=>'GRAD_VET_MED_APPT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Current Grad or Vet Med (Appts)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594709765668021)
,p_db_column_name=>'GRAD_VET_MED_E_IN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Current Grad or Vet Med (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594803339668022)
,p_db_column_name=>'GRAD_VET_MED_E_OUT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Current Grad or Vet Med (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80594936011668023)
,p_db_column_name=>'CURR_GRAD_FIN_ANS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Current Grad or Vet Med (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595079029668024)
,p_db_column_name=>'COM_OTH_APPT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Comb of Students/Other (Appts)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595196139668025)
,p_db_column_name=>'COM_OTH_E_IN'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Comb of Students/Other (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595204287668026)
,p_db_column_name=>'COM_OTH_E_OUT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Comb of Students/Other (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595312728668027)
,p_db_column_name=>'COMBO_FIN_ANS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Comb of Students/Other (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595414071668028)
,p_db_column_name=>'FOR_STU_APPT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Former Student (Appts)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595573882668029)
,p_db_column_name=>'FOR_STU_E_IN'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Former Student (Emails In)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595651791668030)
,p_db_column_name=>'FOR_STU_E_OUT'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Former Student (Emails Out)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595774567668031)
,p_db_column_name=>'FS_FIN_ANS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Former Student (Finaid Answered)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595874581668032)
,p_db_column_name=>'BC_IN_PERSON'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'In-Person Contact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80595972629668033)
,p_db_column_name=>'BC_EVALS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596056841668034)
,p_db_column_name=>'BC_EMAILS_IN'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Other Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596196102668035)
,p_db_column_name=>'BC_EMAILS_OUT'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Other Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596200694668036)
,p_db_column_name=>'BC_PROF_JUDG'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596303358668037)
,p_db_column_name=>'BC_REPORTS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596449149668038)
,p_db_column_name=>'BC_MISC'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596552513668039)
,p_db_column_name=>'TOTAL_FIN_ANS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Total Finaid Email Ans.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596692360668040)
,p_db_column_name=>'TOTAL_STU_APPOINTMENTS'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Total Stu Appointments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596780398668041)
,p_db_column_name=>'TOTAL_STU_EMAILSIN'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Total Stu Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80596858212668042)
,p_db_column_name=>'TOTAL_STU_EMAILSOUT'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Total Stu Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80627891867742777)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'806279'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BC_NAME:BC_PHONES:BC_ACD:CURR_HS_APPT:CURR_HS_E_IN:CURR_HS_E_OUT:CURR_HS_FIN_ANS:INC_TRANS_APPT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_TRANS_FIN_ANS:INC_GRAD_APPT:INC_GRAD_E_IN:INC_GRAD_E_OUT:INC_GRAD_FIN_ANS:CURR_UG_APPT:CURR_UG_E_IN:CURR_UG_E_OUT:CURR_'
||'UG_FIN_ANS:GRAD_VET_MED_APPT:GRAD_VET_MED_E_IN:GRAD_VET_MED_E_OUT:CURR_GRAD_FIN_ANS:COM_OTH_APPT:COM_OTH_E_IN:COM_OTH_E_OUT:COMBO_FIN_ANS:FOR_STU_APPT:FOR_STU_E_IN:FOR_STU_E_OUT:FS_FIN_ANS:BC_IN_PERSON:BC_EVALS:BC_EMAILS_IN:BC_EMAILS_OUT:BC_PROF_JUDG'
||':BC_REPORTS:BC_MISC:TOTAL_FIN_ANS:TOTAL_STU_APPOINTMENTS:TOTAL_STU_EMAILSIN:TOTAL_STU_EMAILSOUT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58842621071145128)
,p_plug_name=>'Total_BC_Summary'
,p_parent_plug_id=>wwv_flow_api.id(57119958916314914)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'sum(COUNS_PHONE) as BC_Phones, sum(ACD) as BC_ACD	, ',
'sum(BC_CURRENT_HS_APPT) as CURR_HS_APPT, sum(BC_CURRENT_HS_E_IN) as CURR_HS_E_IN, sum(BC_CURRENT_HS_E_OUT) as CURR_HS_E_OUT,	sum(BC_CURR_HS_FIN_ANS) as Curr_Hs_Fin_Ans,',
'sum(BC_INC_TRANSFER_APPT) as INC_TRANS_APPT,sum(BC_INC_TRANSFER_E_IN) as INC_TRANS_E_IN, sum(BC_INC_TRANSFER_E_OUT) as INC_TRANS_E_OUT, sum(BC_INC_TRANS_FIN_ANS) as Inc_Trans_Fin_Ans,',
'sum(BC_INC_GRAD_APPT) as INC_GRAD_APPT, sum(BC_INC_GRAD_E_IN) as INC_GRAD_E_IN,sum(BC_INC_GRAD_E_OUT) as INC_GRAD_E_OUT,	sum(BC_INC_GRAD_FIN_ANS)	 as Inc_Grad_Fin_Ans,',
'sum(BC_CURRENT_UG_APPT) as CURR_UG_APPT	,sum(BC_CURRENT_UG_E_IN) as CURR_UG_E_IN,sum(BC_CURRENT_UG_E_OUT) as CURR_UG_E_OUT, sum(BC_CURR_UG_FIN_ANS) as Curr_Ug_Fin_Ans,',
'sum(BC_GRAD_VET_MED_APPT) as GRAD_VET_MED_APPT, sum(BC_GRAD_VET_MED_E_IN) as GRAD_VET_MED_E_IN ,sum(BC_GRAD_VET_MED_E_OUT) as GRAD_VET_MED_E_OUT	, sum(BC_CURR_GRAD_FIN_ANS) as Curr_Grad_Fin_Ans ,',
'sum(BC_COMBO_OTHER_APPT) as COM_OTH_APPT	, sum(BC_COMBO_OTHER_E_IN) as COM_OTH_E_IN, sum(BC_COMBO_OTHER_E_OUT) as COM_OTH_E_OUT , sum(BC_COMBO_FIN_ANS) as Combo_Fin_Ans,',
'sum(BC_FORMER_STUDENT_APPT) as FOR_STU_APPT , sum(BC_FORMER_STUDENT_E_IN) as FOR_STU_E_IN, sum(BC_FORMER_STUDENT_E_OUT) as FOR_STU_E_OUT ,	sum(BC_FOR_STU_FIN_ANS) as FS_Fin_Ans,',
'',
'sum(BC_IN_PERSON) as BC_IN_PERSON , sum(BC_EVALS) as BC_EVALS , sum(BC_EMAILS_IN) as BC_EMAILS_IN,	',
'sum(BC_EMAILS_OUT) as BC_EMAILS_OUT, sum(BC_PROF_JUDG) as BC_PROF_JUDG, sum(BC_REPORTS) as BC_REPORTS,	',
'sum(BC_MISC) as BC_MISC ,  ',
'',
'sum(BC_CURR_HS_FIN_ANS) + sum(BC_INC_TRANS_FIN_ANS) + sum(BC_INC_GRAD_FIN_ANS) + sum(BC_CURR_UG_FIN_ANS) + ',
'sum(BC_CURR_GRAD_FIN_ANS) + sum(BC_COMBO_FIN_ANS) +  sum(BC_FOR_STU_FIN_ANS) as Total_Fin_Ans ,',
'',
'sum(BC_CURRENT_HS_APPT) + sum(BC_INC_TRANSFER_APPT) + sum(BC_INC_GRAD_APPT) + sum(BC_CURRENT_UG_APPT) +',
'sum(BC_GRAD_VET_MED_APPT) + sum(BC_COMBO_OTHER_APPT) + sum(BC_FORMER_STUDENT_APPT)   as Total_Stu_Appointments , ',
'',
'sum(BC_CURRENT_HS_E_IN)+ sum(BC_INC_TRANSFER_E_IN) + sum(BC_INC_GRAD_E_IN) + sum(BC_CURRENT_UG_E_IN) + sum(BC_GRAD_VET_MED_E_IN) + ',
'sum(BC_COMBO_OTHER_E_IN) + sum(BC_FORMER_STUDENT_E_IN) as Total_Stu_Emailsin,',
'',
'sum(BC_CURRENT_HS_E_OUT) + sum(BC_INC_TRANSFER_E_OUT) + sum(BC_INC_GRAD_E_OUT) + sum(BC_CURRENT_UG_E_OUT) + sum(BC_GRAD_VET_MED_E_OUT) +',
'sum(BC_COMBO_OTHER_E_OUT)+ sum(BC_FORMER_STUDENT_E_OUT) as Total_Stu_EmailsOut',
'',
'From back_couns where Enter_date>= :BC_DATE1 and Enter_date <= :BC_DATE2 ;',
'',
'',
'',
'',
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(58842791991145129)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MMINUMU'
,p_internal_uid=>58842791991145129
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58842854743145130)
,p_db_column_name=>'BC_PHONES'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Couns Phones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58842976059145131)
,p_db_column_name=>'BC_ACD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ACD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101041859516831)
,p_db_column_name=>'CURR_HS_APPT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Curr HS / Inc FR STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101166492516832)
,p_db_column_name=>'CURR_HS_E_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Curr HS / Inc FR STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101273862516833)
,p_db_column_name=>'CURR_HS_E_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Curr HS / Inc FR STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101311238516834)
,p_db_column_name=>'CURR_HS_FIN_ANS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curr HS / Inc FR Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101465949516835)
,p_db_column_name=>'INC_TRANS_APPT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inc UG TR STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101565473516836)
,p_db_column_name=>'INC_TRANS_E_IN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inc UG TR STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101614442516837)
,p_db_column_name=>'INC_TRANS_E_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Inc UG TR STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101775694516838)
,p_db_column_name=>'INC_TRANS_FIN_ANS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Inc UG TR Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101832858516839)
,p_db_column_name=>'INC_GRAD_APPT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inc GR / Vet Med STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74101910853516840)
,p_db_column_name=>'INC_GRAD_E_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Inc GR / Vet Med STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102046624516841)
,p_db_column_name=>'INC_GRAD_E_OUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Inc GR / Vet Med STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102163638516842)
,p_db_column_name=>'INC_GRAD_FIN_ANS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Inc GR / Vet Med Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102261547516843)
,p_db_column_name=>'CURR_UG_APPT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Curr UG STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102359383516844)
,p_db_column_name=>'CURR_UG_E_IN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Curr UG STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102435038516845)
,p_db_column_name=>'CURR_UG_E_OUT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Curr UG STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102507508516846)
,p_db_column_name=>'CURR_UG_FIN_ANS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Curr UG Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102620653516847)
,p_db_column_name=>'GRAD_VET_MED_APPT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Curr GR / Vet Med STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102717142516848)
,p_db_column_name=>'GRAD_VET_MED_E_IN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Curr GR / Vet Med STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102845837516849)
,p_db_column_name=>'GRAD_VET_MED_E_OUT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Curr GR / Vet Med STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74102994126516850)
,p_db_column_name=>'CURR_GRAD_FIN_ANS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Curr GR / Vet Med Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149537720523101)
,p_db_column_name=>'COM_OTH_APPT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Combo / Other STU Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149609443523102)
,p_db_column_name=>'COM_OTH_E_IN'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Combo / Other STU Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149790401523103)
,p_db_column_name=>'COM_OTH_E_OUT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Combo / Other STU Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149878502523104)
,p_db_column_name=>'COMBO_FIN_ANS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Combo / Other Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74149911172523105)
,p_db_column_name=>'FOR_STU_APPT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'FS Appt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150095511523106)
,p_db_column_name=>'FOR_STU_E_IN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'FS Email In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150134053523107)
,p_db_column_name=>'FOR_STU_E_OUT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'FS Email Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150261635523108)
,p_db_column_name=>'FS_FIN_ANS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'FS Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150399110523109)
,p_db_column_name=>'BC_IN_PERSON'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150403448523110)
,p_db_column_name=>'BC_EVALS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150549278523111)
,p_db_column_name=>'BC_EMAILS_IN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150653055523112)
,p_db_column_name=>'BC_EMAILS_OUT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150729553523113)
,p_db_column_name=>'BC_PROF_JUDG'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Prof Judg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150885643523114)
,p_db_column_name=>'BC_REPORTS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74150946417523115)
,p_db_column_name=>'BC_MISC'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151029146523116)
,p_db_column_name=>'TOTAL_FIN_ANS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Total Fin Ans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151128693523117)
,p_db_column_name=>'TOTAL_STU_APPOINTMENTS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Total STU Appts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151203483523118)
,p_db_column_name=>'TOTAL_STU_EMAILSIN'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Total STU Emails In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
end;
/
begin
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74151394874523119)
,p_db_column_name=>'TOTAL_STU_EMAILSOUT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Total STU Emails Out'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58957807589272450)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'589579'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BC_PHONES:BC_ACD:CURR_HS_APPT:CURR_HS_E_IN:CURR_HS_E_OUT:CURR_HS_FIN_ANS:INC_TRANS_APPT:INC_TRANS_E_IN:INC_TRANS_E_OUT:INC_TRANS_FIN_ANS:INC_GRAD_APPT:INC_GRAD_E_IN:INC_GRAD_E_OUT:INC_GRAD_FIN_ANS:CURR_UG_APPT:CURR_UG_E_IN:CURR_UG_E_OUT:CURR_UG_FIN_A'
||'NS:GRAD_VET_MED_APPT:GRAD_VET_MED_E_IN:GRAD_VET_MED_E_OUT:CURR_GRAD_FIN_ANS:COM_OTH_APPT:COM_OTH_E_IN:COM_OTH_E_OUT:COMBO_FIN_ANS:FOR_STU_APPT:FOR_STU_E_IN:FOR_STU_E_OUT:FS_FIN_ANS:BC_IN_PERSON:BC_EVALS:BC_EMAILS_IN:BC_EMAILS_OUT:BC_PROF_JUDG:BC_REPO'
||'RTS:BC_MISC:TOTAL_FIN_ANS:TOTAL_STU_APPOINTMENTS:TOTAL_STU_EMAILSIN:TOTAL_STU_EMAILSOUT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57144205708661801)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57119813105314913)
,p_button_name=>'BC_Fetch_details'
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
 p_id=>wwv_flow_api.id(57123364963314948)
,p_name=>'BC_DATE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57119813105314913)
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
 p_id=>wwv_flow_api.id(57123406861314949)
,p_name=>'BC_DATE2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57119813105314913)
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
