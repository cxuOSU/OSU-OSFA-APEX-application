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
,p_name=>'Data entry file room Specific date'
,p_step_title=>'FC Goto Specific data _ Chen version'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'XCHEN'
,p_last_upd_yyyymmddhh24miss=>'20231011140237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79365509997193109)
,p_plug_name=>'Data Entry File Room Specific date'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody:margin-bottom-lg'
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
,p_query_table=>'REC_MANG_DE_FR'
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
,p_detail_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_ENTER_DATE,P18_RM_DE_EMP_ID:#ENTER_DATE#,#RM_DE_EMP_ID##FC_EMP_ID##ROWID#\'
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
 p_id=>wwv_flow_api.id(80215880113236311)
,p_db_column_name=>'RM_DE_EMP_ID'
,p_display_order=>12
,p_column_identifier=>'X'
,p_column_label=>'Rm De Emp Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80215919222236312)
,p_db_column_name=>'RM_DE_ISIR'
,p_display_order=>22
,p_column_identifier=>'Y'
,p_column_label=>'Rm De Isir'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216079242236313)
,p_db_column_name=>'RM_DE_MIL'
,p_display_order=>32
,p_column_identifier=>'Z'
,p_column_label=>'Rm De Mil'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216155455236314)
,p_db_column_name=>'RM_DE_AWARD'
,p_display_order=>42
,p_column_identifier=>'AA'
,p_column_label=>'Rm De Award'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216260477236315)
,p_db_column_name=>'RM_DE_TRK_STAT'
,p_display_order=>52
,p_column_identifier=>'AB'
,p_column_label=>'Rm De Trk Stat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216392786236316)
,p_db_column_name=>'FR_APPOINTMENTS'
,p_display_order=>62
,p_column_identifier=>'AC'
,p_column_label=>'Fr Appointments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216495981236317)
,p_db_column_name=>'FR_LTRS_MAILED'
,p_display_order=>72
,p_column_identifier=>'AD'
,p_column_label=>'Fr Ltrs Mailed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216541926236318)
,p_db_column_name=>'FR_DOC_SCAN'
,p_display_order=>82
,p_column_identifier=>'AE'
,p_column_label=>'Fr Doc Scan'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80216687402236319)
,p_db_column_name=>'FR_FAXIN'
,p_display_order=>92
,p_column_identifier=>'AF'
,p_column_label=>'Fr Faxin'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79466939243136865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'794670'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENTER_DATE:RM_DE_EMP_ID:RM_DE_ISIR:RM_DE_MIL:RM_DE_AWARD:RM_DE_TRK_STAT:FR_APPOINTMENTS:FR_LTRS_MAILED:FR_DOC_SCAN:FR_FAXIN'
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
,p_button_image_alt=>'Fetch'
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
,p_colspan=>3
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
