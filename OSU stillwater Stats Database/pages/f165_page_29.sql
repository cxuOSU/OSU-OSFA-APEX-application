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
--   Date and Time:   15:28 Thursday October 5, 2023
--   Exported By:     XCHEN
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         19.1.0.00.15
--   Instance ID:     63116608715554
--

prompt --application/pages/delete_00029
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>29);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(56761143659843755)
,p_name=>'FC Goto Specific data _ Chen version'
,p_step_title=>'FC Goto Specific data _ Chen version'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231005152758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79365509997193109)
,p_plug_name=>'DateSelector'
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
 p_id=>wwv_flow_api.id(79456734819135032)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(56679590484843656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FRONTCOUNS'
,p_query_where=>'ENTER_DATE = :P29_DATE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P29_DATE'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79457150037135035)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ENTER_DATE,P3_FC_EMP_ID:#ENTER_DATE#,#FC_EMP_ID##ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'XCHEN'
,p_internal_uid=>79457150037135035
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79457534381135046)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79457926969135047)
,p_db_column_name=>'FC_EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fc Emp Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79458390547135047)
,p_db_column_name=>'COUNS_PHONE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Couns Phone'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79458720376135047)
,p_db_column_name=>'ACD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Acd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79459185439135048)
,p_db_column_name=>'IN_PERSON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'In Person'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79459539659135048)
,p_db_column_name=>'NOT_SIGNED_IN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Not Signed In'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79459975440135048)
,p_db_column_name=>'EMAILIN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Emailin'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79460391949135048)
,p_db_column_name=>'EMAILOUT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Emailout'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79460785938135048)
,p_db_column_name=>'CERT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79461152357135049)
,p_db_column_name=>'STL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Stl'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79461551352135049)
,p_db_column_name=>'REPORTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Reports'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79461910832135049)
,p_db_column_name=>'MISC'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Misc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79462303243135049)
,p_db_column_name=>'EVALS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Evals'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79462763032135050)
,p_db_column_name=>'PJ'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Pj'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79463128808135050)
,p_db_column_name=>'CURR_HS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Curr Hs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79463504776135050)
,p_db_column_name=>'INC_TRANSFER'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Inc Transfer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79463976513135050)
,p_db_column_name=>'INC_GRAD'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Inc Grad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79464312342135051)
,p_db_column_name=>'CURR_UG'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Curr Ug'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79464725604135051)
,p_db_column_name=>'MED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Med'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79465134093135051)
,p_db_column_name=>'COMBO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Combo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79465509257135052)
,p_db_column_name=>'FOR_STU'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'For Stu'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79465977082135052)
,p_db_column_name=>'ROUTED'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Routed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79466939243136865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'794670'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENTER_DATE:FC_EMP_ID:COUNS_PHONE:ACD:IN_PERSON:NOT_SIGNED_IN:EMAILIN:EMAILOUT:CERT:STL:REPORTS:MISC:EVALS:PJ:CURR_HS:INC_TRANSFER:INC_GRAD:CURR_UG:MED:COMBO:FOR_STU:ROUTED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79521136750422746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79365509997193109)
,p_button_name=>'FETCH_DATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(56738600440843712)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch Date'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79365711223193111)
,p_name=>'P29_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79365509997193109)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(56737573338843710)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
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
