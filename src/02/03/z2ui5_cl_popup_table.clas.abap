CLASS z2ui5_cl_popup_table DEFINITION
  PUBLIC
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    INTERFACES z2ui5_if_app.

    CLASS-METHODS factory
      IMPORTING
        i_tab           TYPE STANDARD TABLE
      RETURNING
        VALUE(r_result) TYPE REF TO z2ui5_cl_popup_table.

    TYPES:
      BEGIN OF ty_s_result,
        row             TYPE REF TO data,
        check_confirmed TYPE abap_bool,
      END OF ty_s_result.
    DATA ms_result TYPE ty_s_result.

    METHODS result
      RETURNING
        VALUE(result) TYPE ty_s_result.

    DATA mr_tab TYPE REF TO data.

  PROTECTED SECTION.
    DATA check_initialized TYPE abap_bool.
    DATA client TYPE REF TO z2ui5_if_client.
    METHODS on_event.
    METHODS display.
    METHODS on_event_confirm.

  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_popup_table IMPLEMENTATION.


  METHOD display.

    FIELD-SYMBOLS <tab_out> TYPE STANDARD TABLE.
    DATA popup TYPE REF TO z2ui5_cl_xml_view.
    DATA tab TYPE REF TO z2ui5_cl_xml_view.
    DATA lt_comp TYPE abap_component_tab.
    DATA list TYPE REF TO z2ui5_cl_xml_view.
    DATA cells TYPE REF TO z2ui5_cl_xml_view.
    DATA ls_comp LIKE LINE OF lt_comp.
    DATA columns TYPE REF TO z2ui5_cl_xml_view.
    ASSIGN mr_tab->* TO <tab_out>.

    
    popup = z2ui5_cl_xml_view=>factory_popup( )->dialog(
              afterclose = client->_event( 'BUTTON_CONFIRM' )
              stretch    = abap_true
              title      = 'Table View'
*              icon = 'sap-icon://edit'
          )->content( ).

    
    tab = popup->table(
       items = client->_bind( <tab_out> ) ).
*           )->header_toolbar(
*             )->overflow_toolbar(
*                 )->toolbar_spacer(
*                 )->button( text = `Filter` press = client->_event( `PREVIEW_FILTER` ) icon = `sap-icon://filter`
*           )->button(  text = `Display Popup` press = client->_event( `BUTTON_START` ) type = `Emphasized`
*            )->get_parent( )->get_parent( ).

    
    lt_comp = z2ui5_cl_util_func=>rtti_get_t_comp_by_data( <tab_out> ).

    
    list = tab->column_list_item( valign = `Top` ).
    
    cells = list->cells( ).

    
    LOOP AT lt_comp INTO ls_comp.
      cells->text( text = `{` && ls_comp-name && `}` ).
    ENDLOOP.

    
    columns = tab->columns( ).
    LOOP AT lt_comp INTO ls_comp.
      columns->column( width = '8rem' )->header( ns = `` )->text( text = ls_comp-name ).
    ENDLOOP.

    popup->get_parent(
        )->footer( )->overflow_toolbar(
            )->toolbar_spacer(
*              )->button(
*                  text  = 'Cancel'
*                  press = client->_event( 'BUTTON_TEXTAREA_CANCEL' )
            )->button(
                text  = 'OK'
                press = client->_event( 'BUTTON_CONFIRM' )
                type  = 'Emphasized' ).

    client->popup_display( popup->stringify( ) ).

  ENDMETHOD.


  METHOD factory.
    FIELD-SYMBOLS <tab> TYPE any.

    CREATE OBJECT r_result.
    CREATE DATA r_result->mr_tab LIKE i_tab.
    CREATE DATA r_result->ms_result-row LIKE LINE OF i_tab.

    ASSIGN r_result->mr_tab->* TO <tab>.
    <tab> = i_tab.

  ENDMETHOD.


  METHOD on_event.

    CASE client->get( )-event.

      WHEN 'BUTTON_CONFIRM'.
        ms_result-check_confirmed = abap_true.
        on_event_confirm( ).

      WHEN 'CANCEL'.
        client->popup_destroy( ).
        client->nav_app_leave( client->get_app( client->get( )-s_draft-id_prev_app_stack ) ).


    ENDCASE.

  ENDMETHOD.


  METHOD on_event_confirm.

    client->popup_destroy( ).
    client->nav_app_leave( client->get_app( client->get( )-s_draft-id_prev_app_stack ) ).

  ENDMETHOD.


  METHOD result.

    result = ms_result.

  ENDMETHOD.

  METHOD z2ui5_if_app~main.

    me->client     = client.

    IF check_initialized = abap_false.
      check_initialized = abap_true.
      display( ).
      RETURN.
    ENDIF.

    on_event( ).

  ENDMETHOD.
ENDCLASS.
