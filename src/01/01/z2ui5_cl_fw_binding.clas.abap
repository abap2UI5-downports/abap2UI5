CLASS z2ui5_cl_fw_binding DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS:
      BEGIN OF cs_bind_type,
        one_way  TYPE string VALUE `ONE_WAY`,
        two_way  TYPE string VALUE `TWO_WAY`,
        one_time TYPE string VALUE `ONE_TIME`,
      END OF cs_bind_type.

    CONSTANTS cv_model_edit_name TYPE string VALUE `EDIT`.

    TYPES:
      BEGIN OF ty_s_attri,
        name            TYPE string,
        name_front      TYPE string,
        type_kind       TYPE string,
        type            TYPE string,
        bind_type       TYPE string,
        data_stringify  TYPE string,
        data_rtti       TYPE string,
        check_ready     TYPE abap_bool,
        check_dissolved TYPE abap_bool,
        check_temp      TYPE abap_bool,
        viewname        TYPE string,
        pretty_name     TYPE string,
        depth           TYPE i,
      END OF ty_s_attri.
    TYPES ty_t_attri TYPE SORTED TABLE OF ty_s_attri WITH UNIQUE KEY name.

    CLASS-METHODS factory
      IMPORTING
        app             TYPE REF TO object OPTIONAL
        attri           TYPE ty_t_attri OPTIONAL
        type            TYPE string OPTIONAL
        data            TYPE data OPTIONAL
        check_attri     TYPE data OPTIONAL
        view            TYPE string OPTIONAL
        pretty_name     TYPE clike OPTIONAL
      RETURNING
        VALUE(r_result) TYPE REF TO z2ui5_cl_fw_binding.

    METHODS main
      RETURNING
        VALUE(result) TYPE string.

    DATA mo_app   TYPE REF TO object.
    DATA mt_attri TYPE ty_t_attri.
    DATA mv_type  TYPE string.
    DATA mr_data TYPE REF TO data.
    DATA mv_check_attri TYPE abap_bool.
    DATA mv_view TYPE string.
    DATA mv_pretty_name TYPE string.

    CLASS-METHODS update_attri
      IMPORTING
        t_attri       TYPE ty_t_attri
        app           TYPE REF TO object
      RETURNING
        VALUE(result) TYPE ty_t_attri.

  PROTECTED SECTION.

    METHODS bind_local
      RETURNING
        VALUE(result) TYPE string.

    METHODS get_t_attri_by_dref
      IMPORTING
        val           TYPE clike
      RETURNING
        VALUE(result) TYPE ty_t_attri.

    METHODS get_t_attri_by_struc
      IMPORTING
        val           TYPE clike
      RETURNING
        VALUE(result) TYPE ty_t_attri.

    METHODS get_t_attri_by_include
      IMPORTING
        type          TYPE REF TO cl_abap_datadescr
        attri         TYPE clike
      RETURNING
        VALUE(result) TYPE ty_t_attri.

    METHODS get_t_attri_by_oref
      IMPORTING
        val           TYPE clike OPTIONAL
          PREFERRED PARAMETER val
      RETURNING
        VALUE(result) TYPE ty_t_attri.

    METHODS bind
      IMPORTING
        bind          TYPE REF TO ty_s_attri
      RETURNING
        VALUE(result) TYPE string.

    METHODS dissolve_init.

    METHODS dissolve_struc.

    METHODS dissolve_dref.

    METHODS search_binding
      RETURNING
        VALUE(result) TYPE string.

    METHODS dissolve_oref.

    METHODS set_attri_ready
      IMPORTING
        t_attri       TYPE REF TO ty_t_attri
      RETURNING
        VALUE(result) TYPE REF TO ty_s_attri.

    METHODS name_front_create
      IMPORTING
        val           TYPE clike
      RETURNING
        VALUE(result) TYPE string.

  PRIVATE SECTION.

ENDCLASS.



CLASS z2ui5_cl_fw_binding IMPLEMENTATION.


  METHOD bind.

    FIELD-SYMBOLS <attri> TYPE any.
    DATA lv_name TYPE string.
    DATA lr_ref TYPE REF TO data.
    DATA temp1 TYPE string.
      DATA temp2 TYPE string.
    lv_name = `MO_APP->` && bind->name.
    ASSIGN (lv_name) TO <attri>.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.

    
    GET REFERENCE OF <attri> INTO lr_ref.

    IF mr_data <> lr_ref.
      RETURN.
    ENDIF.

    IF bind->bind_type <> mv_type AND bind->bind_type IS NOT INITIAL.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = `<p>Binding Error - Two different binding types for same attribute used (` && bind->name && `).`.
    ENDIF.

    bind->bind_type   = mv_type.
    bind->pretty_name = mv_pretty_name.
    bind->name_front  = name_front_create( bind->name ).
    bind->viewname    = mv_view.

    
    IF mv_type = cs_bind_type-two_way.
      temp1 = `/` && cv_model_edit_name && `/`.
    ELSE.
      temp1 = `/`.
    ENDIF.
    result = temp1 && bind->name_front.
    IF strlen( result ) > 30.
      bind->name_front = z2ui5_cl_util_func=>func_get_uuid_22( ).
      
      IF mv_type = cs_bind_type-two_way.
        temp2 = `/` && cv_model_edit_name && `/`.
      ELSE.
        temp2 = `/`.
      ENDIF.
      result = temp2 && bind->name_front.
    ENDIF.

  ENDMETHOD.


  METHOD bind_local.

    FIELD-SYMBOLS <any> TYPE any.
    DATA lv_id TYPE string.
    DATA temp3 TYPE z2ui5_cl_fw_binding=>ty_s_attri.
    ASSIGN mr_data->* TO <any>.
    
    lv_id = z2ui5_cl_util_func=>func_get_uuid_22( ).

    
    CLEAR temp3.
    temp3-name = lv_id.
    temp3-data_stringify = z2ui5_cl_util_func=>trans_json_any_2( mr_data ).
    temp3-bind_type = cs_bind_type-one_time.
    INSERT temp3
           INTO TABLE mt_attri.
    result = |/{ lv_id }|.

  ENDMETHOD.


  METHOD dissolve_dref.

    DATA temp4 LIKE LINE OF mt_attri.
    DATA lr_bind LIKE REF TO temp4.
      DATA lt_attri TYPE z2ui5_cl_fw_binding=>ty_t_attri.
    LOOP AT mt_attri REFERENCE INTO lr_bind
        WHERE type_kind = cl_abap_classdescr=>typekind_dref
        AND   check_dissolved = abap_false.

      
      lt_attri = get_t_attri_by_dref( lr_bind->name ).
      IF lt_attri IS INITIAL.
        CONTINUE.
      ENDIF.
      lr_bind->check_dissolved = abap_true.
      INSERT LINES OF lt_attri INTO TABLE mt_attri.
    ENDLOOP.

  ENDMETHOD.


  METHOD dissolve_init.

    IF mt_attri IS INITIAL.
      mt_attri  = get_t_attri_by_oref( ).
    ENDIF.

  ENDMETHOD.


  METHOD dissolve_oref.

    DATA temp5 LIKE LINE OF mt_attri.
    DATA lr_bind LIKE REF TO temp5.
      DATA lt_attri TYPE z2ui5_cl_fw_binding=>ty_t_attri.
      DATA temp6 LIKE LINE OF lt_attri.
      DATA lr_attri LIKE REF TO temp6.
    LOOP AT mt_attri REFERENCE INTO lr_bind
      WHERE type_kind = cl_abap_classdescr=>typekind_oref
      AND   check_dissolved = abap_false
      AND   depth < 5.

      
      lt_attri = get_t_attri_by_oref( val = lr_bind->name ).
      IF lt_attri IS INITIAL.
        CONTINUE.
      ENDIF.
      lr_bind->check_dissolved = abap_true.
      
      
      LOOP AT lt_attri REFERENCE INTO lr_attri.
        lr_attri->depth = lr_bind->depth + 1.
      ENDLOOP.
      INSERT LINES OF lt_attri INTO TABLE mt_attri.
    ENDLOOP.

  ENDMETHOD.


  METHOD dissolve_struc.

    DATA temp7 LIKE LINE OF mt_attri.
    DATA lr_attri LIKE REF TO temp7.
      DATA lt_attri TYPE z2ui5_cl_fw_binding=>ty_t_attri.
    LOOP AT mt_attri REFERENCE INTO lr_attri
        WHERE ( type_kind = cl_abap_classdescr=>typekind_struct1
        OR    type_kind = cl_abap_classdescr=>typekind_struct2 )
        AND   check_dissolved = abap_false.

      lr_attri->check_dissolved = abap_true.
      lr_attri->check_ready     = abap_true.
      
      lt_attri = get_t_attri_by_struc( lr_attri->name ).
      INSERT LINES OF lt_attri INTO TABLE mt_attri.
    ENDLOOP.

  ENDMETHOD.


  METHOD factory.

    CREATE OBJECT r_result.
    r_result->mo_app = app.
    r_result->mt_attri = attri.
    r_result->mv_type = type.
    r_result->mv_check_attri = check_attri.
    r_result->mv_view = view.
    r_result->mv_pretty_name = pretty_name.


    IF z2ui5_cl_util_func=>rtti_check_type_kind_dref( data ) IS NOT INITIAL.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = `BINDING_WITH_REFERENCES_NOT_ALLOWED`.
    ENDIF.
    GET REFERENCE OF data INTO r_result->mr_data.

  ENDMETHOD.


  METHOD get_t_attri_by_dref.

    DATA lv_name TYPE string.
    FIELD-SYMBOLS <data> TYPE any.
    DATA lo_descr TYPE REF TO cl_abap_typedescr.
    DATA temp8 TYPE ty_s_attri.
    DATA ls_new_bind LIKE temp8.
    lv_name = `MO_APP->` && val && `->*`.
    
    ASSIGN (lv_name) TO <data>.
    IF <data> IS NOT ASSIGNED.
      RETURN.
    ENDIF.

    
    lo_descr = cl_abap_datadescr=>describe_by_data( <data> ).

    
    CLEAR temp8.
    temp8-name = val && `->*`.
    temp8-type_kind = lo_descr->type_kind.
    temp8-type = lo_descr->get_relative_name( ).
    temp8-check_ready = abap_true.
    temp8-check_temp = abap_true.
    
    ls_new_bind = temp8.

    INSERT ls_new_bind INTO TABLE result.

  ENDMETHOD.


  METHOD get_t_attri_by_oref.

    DATA temp9 TYPE string.
    DATA lv_name LIKE temp9.
    FIELD-SYMBOLS <obj> TYPE any.
    DATA lt_attri2 TYPE abap_attrdescr_tab.
    DATA ls_attri2 LIKE LINE OF lt_attri2.
      DATA temp10 TYPE ty_s_attri.
      DATA ls_attri LIKE temp10.
    IF val IS NOT INITIAL.
      temp9 = `MO_APP` && `->` && val.
    ELSE.
      temp9 = `MO_APP`.
    ENDIF.
    
    lv_name = temp9.
    
    ASSIGN (lv_name) TO <obj>.
    IF sy-subrc <> 0 OR <obj> IS NOT BOUND.
      RETURN.
    ENDIF.

    
    lt_attri2 = z2ui5_cl_util_func=>rtti_get_t_attri_by_object( <obj> ).

    
    LOOP AT lt_attri2 INTO ls_attri2
        WHERE visibility = cl_abap_classdescr=>public
           AND is_interface = abap_false.
      
      CLEAR temp10.
      MOVE-CORRESPONDING ls_attri2 TO temp10.
      
      ls_attri = temp10.
      IF val IS NOT INITIAL.
        ls_attri-name = val && `->` && ls_attri-name.
        ls_attri-check_temp = abap_true.
      ENDIF.
      INSERT ls_attri INTO TABLE result.
    ENDLOOP.

  ENDMETHOD.


  METHOD get_t_attri_by_include.

    DATA temp11 TYPE REF TO cl_abap_structdescr.
    DATA sdescr LIKE temp11.
    DATA temp12 LIKE LINE OF sdescr->components.
    DATA lr_comp LIKE REF TO temp12.
      DATA lv_element TYPE string.
      DATA temp13 TYPE ty_s_attri.
      DATA ls_attri LIKE temp13.
    temp11 ?= cl_abap_typedescr=>describe_by_name( type->absolute_name ).
    
    sdescr = temp11.

    
    
    LOOP AT sdescr->components REFERENCE INTO lr_comp.

      
      lv_element = attri && lr_comp->name.

      
      CLEAR temp13.
      temp13-name = lv_element.
      temp13-type_kind = lr_comp->type_kind.
      
      ls_attri = temp13.
      INSERT ls_attri INTO TABLE result.

    ENDLOOP.


  ENDMETHOD.

  METHOD get_t_attri_by_struc.

    DATA lv_name TYPE string.
    FIELD-SYMBOLS <attribute> TYPE any.
    DATA temp1 TYPE xsdboolean.
    DATA lt_comp TYPE abap_component_tab.
    DATA lv_attri TYPE string.
    DATA temp14 LIKE LINE OF lt_comp.
    DATA lr_comp LIKE REF TO temp14.
      DATA lv_element TYPE string.
          DATA lt_attri TYPE z2ui5_cl_fw_binding=>ty_t_attri.
          DATA temp15 TYPE ty_s_attri.
          DATA ls_attri LIKE temp15.
    lv_name = `MO_APP->` && val.
    
    ASSIGN (lv_name) TO <attribute>.
    
    temp1 = boolc( sy-subrc <> 0 ).
    z2ui5_cl_util_func=>x_check_raise( temp1 ).

    
    lt_comp = z2ui5_cl_util_func=>rtti_get_t_comp_by_struc( <attribute> ).

    
    lv_attri = z2ui5_cl_util_func=>c_replace_assign_struc( val ).
    
    
    LOOP AT lt_comp REFERENCE INTO lr_comp.

      
      lv_element = lv_attri && lr_comp->name.

      IF lr_comp->as_include = abap_true
      OR lr_comp->type->type_kind = cl_abap_classdescr=>typekind_struct2
      OR lr_comp->type->type_kind = cl_abap_classdescr=>typekind_struct1.

        IF lr_comp->name IS INITIAL.
          
          lt_attri = me->get_t_attri_by_include( type = lr_comp->type attri = lv_attri ).
        ELSE.
          lt_attri = get_t_attri_by_struc( lv_element ).
        ENDIF.

        INSERT LINES OF lt_attri INTO TABLE result.

      ELSE.

        IF lr_comp->type->absolute_name = '\TYPE=XSDBOOLEAN'
        OR lr_comp->type->absolute_name = '\TYPE=ABAP_BOOL'.

          
          CLEAR temp15.
          temp15-name = lv_element.
          temp15-type = 'ABAP_BOOL'.
          temp15-type_kind = lr_comp->type->type_kind.
          
          ls_attri = temp15.

        ELSE.

          CLEAR ls_attri.
          ls_attri-name = lv_element.
          ls_attri-type_kind = lr_comp->type->type_kind.

        ENDIF.
        INSERT ls_attri INTO TABLE result.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.


  METHOD main.

    "step 0 / MO_APP->MV_VAL
    dissolve_init( ).

    IF mv_type = cs_bind_type-one_time.
      result = bind_local(  ).
      RETURN.
    ENDIF.

    result = search_binding(  ).
    IF result IS NOT INITIAL.
      RETURN.
    ENDIF.

    "step 1 / MO_APP->MS_STRUC-COMP
    dissolve_struc( ).
    "step 2 / MO_APP->MR_DATA->*
    dissolve_dref( ).
    "step 3 / MO_APP->MR_STRUC->COMP
    dissolve_struc( ).
    "step 4 / MO_APP->MO_OBJ->MV_VAL
    dissolve_oref( ).
    "step 5 / MO_APP->MO_OBJ->MR_STRUC-COMP
    dissolve_struc( ).
    "step 6 / MO_APP->MO_OBJ->MR_VAL->*
    dissolve_dref( ).
    "step 7 / MO_APP->MO_OBJ->MR_STRUC->COMP
    dissolve_struc( ).

    result = search_binding(  ).
    IF result IS NOT INITIAL.
      RETURN.
    ENDIF.

    RAISE EXCEPTION TYPE z2ui5_cx_util_error
      EXPORTING
        val = `BINDING_ERROR - No class attribute for binding found - Please check if the binded values are public attributes of your class`.

  ENDMETHOD.


  METHOD name_front_create.

    result = replace( val = val    sub = `*` with = `_` occ = 0 ).
    result = replace( val = result sub = `>` with = `_` occ = 0 ).
    result = replace( val = result sub = `-` with = `_` occ = 0 ).

  ENDMETHOD.


  METHOD search_binding.

    DATA temp16 LIKE REF TO mt_attri.
    DATA temp17 LIKE LINE OF mt_attri.
    DATA lr_bind LIKE REF TO temp17.
    GET REFERENCE OF mt_attri INTO temp16.
set_attri_ready( temp16 ).

    
    
    LOOP AT mt_attri REFERENCE INTO lr_bind
        WHERE check_ready = abap_true.

      result = bind( lr_bind ).
      IF result IS NOT INITIAL.
        RETURN.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.


  METHOD set_attri_ready.

    LOOP AT t_attri->*  REFERENCE INTO  result
      WHERE check_ready = abap_false AND
            bind_type <> cs_bind_type-one_time.

      CASE result->type_kind.
        WHEN cl_abap_classdescr=>typekind_iref
          OR cl_abap_classdescr=>typekind_intf.
          DELETE t_attri->*.

        WHEN cl_abap_classdescr=>typekind_oref
          OR cl_abap_classdescr=>typekind_dref
          OR cl_abap_classdescr=>typekind_struct2
          OR cl_abap_classdescr=>typekind_struct1.

        WHEN OTHERS.
          result->check_ready = abap_true.
      ENDCASE.
    ENDLOOP.

  ENDMETHOD.


  METHOD update_attri.

    DATA lo_bind TYPE REF TO z2ui5_cl_fw_binding.
    CREATE OBJECT lo_bind TYPE z2ui5_cl_fw_binding.
    lo_bind->mo_app = app.
    lo_bind->mt_attri = t_attri.

    lo_bind->dissolve_init( ).

    lo_bind->dissolve_oref( ).
    lo_bind->dissolve_oref( ).
    lo_bind->dissolve_dref( ).

    result = lo_bind->mt_attri.

  ENDMETHOD.
ENDCLASS.
