
CLASS lcl_github DEFINITION.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_s_app,
        name       TYPE string,
        descr      TYPE string,
        classname  TYPE string,
        check_hide TYPE abap_bool,
      END OF ty_s_app.
    TYPES ty_t_app TYPE STANDARD TABLE OF ty_s_app WITH DEFAULT KEY.

    TYPES:
      BEGIN OF ty_s_repo,
        name                 TYPE string,
        descr                TYPE string,
        author_link          TYPE string,
        author_name          TYPE string,
        check_abap_for_cloud TYPE abap_bool,
        check_standard_abap  TYPE abap_bool,
        min_release          TYPE string,
        link                 TYPE string,
        t_app                TYPE ty_t_app,
        check_installed      TYPE abap_bool,
        number_of_app        TYPE i,
      END OF ty_s_repo.
    TYPES ty_t_repo TYPE STANDARD TABLE OF ty_s_repo WITH DEFAULT KEY.

    METHODS get_repositories
      RETURNING
        VALUE(result) TYPE ty_t_repo.

ENDCLASS.

CLASS lcl_github IMPLEMENTATION.

  METHOD get_repositories.

    DATA temp14 TYPE lcl_github=>ty_t_repo.
    DATA temp15 LIKE LINE OF temp14.
    DATA temp10 TYPE lcl_github=>ty_t_app.
    DATA temp11 LIKE LINE OF temp10.
    DATA temp12 TYPE lcl_github=>ty_t_app.
    DATA temp13 LIKE LINE OF temp12.
    DATA temp18 TYPE lcl_github=>ty_t_app.
    DATA temp19 LIKE LINE OF temp18.
    DATA temp16 LIKE LINE OF result.
    DATA lr_repo LIKE REF TO temp16.
      DATA temp17 LIKE LINE OF lr_repo->t_app.
      DATA lr_app LIKE REF TO temp17.
    CLEAR temp14.
    
    temp15-name = `Table Loader`.
    temp15-descr = `Upload, Edit & Download Table Content (CSV, JSON)`.
    temp15-author_link = `https://github.com/oblomov-dev`.
    temp15-author_name = `oblomov`.
    temp15-check_abap_for_cloud = abap_true.
    temp15-min_release = `750`.
    temp15-link = `https://github.com/oblomov-dev/a2UI5-db_table_loader`.
    
    CLEAR temp10.
    
    temp11-name = `Upload JSON`.
    temp11-descr = `Modify DB Table with JSON Data`.
    temp11-classname = `z2ui5_dbl_cl_app_01`.
    INSERT temp11 INTO TABLE temp10.
    temp11-name = `Download (CSV, JSON)`.
    temp11-descr = `Download DB Table as JSON and CSV`.
    temp11-classname = `z2ui5_dbl_cl_app_01`.
    INSERT temp11 INTO TABLE temp10.
    temp15-t_app = temp10.
    INSERT temp15 INTO TABLE temp14.
    temp15-name = `The Quest`.
    temp15-descr = `A wizard's adventure game based on a fork of the AXAGE game engine (ABAP teXt Adventure Game Engine) and abap2UI5. The game is set in a fantasy world, where the player takes on the role of a wizard's apprentice. The play` && `er explores the wizard's house, interacts with various objects and explores. The Quest is work in progress...`.
    temp15-check_abap_for_cloud = abap_true.
    temp15-min_release = `750`.
    temp15-link = `https://github.com/nomssi/axage`.
    temp15-author_link = `https://github.com/nomssi`.
    temp15-author_name = `Nomssi`.
    
    CLEAR temp12.
    
    temp13-name = `The Quest - Start the Adventure`.
    temp13-descr = `Adventure Game: The Wizard&amp;apos;s Aspirant Quest`.
    temp13-classname = `zcl_axage_wizard_ui.clas.abap`.
    INSERT temp13 INTO TABLE temp12.
    temp15-t_app = temp12.
    INSERT temp15 INTO TABLE temp14.
    temp15-name = `Advent of Code`.
    temp15-descr = `Advent of Code 2023 in ABAP`.
    temp15-author_link = `https://github.com/joltdx`.
    temp15-author_name = `joltdx`.
    temp15-link = `https://github.com/joltdx/abap-advent-2023`.
    temp15-check_abap_for_cloud = abap_true.
    temp15-min_release = `750`.
    
    CLEAR temp18.
    
    temp19-name = `Advent of Code 2023 in ABAP`.
    temp19-descr = `Advent of Code 2023 - ABAP2UI5 app`.
    temp19-classname = `zcl_advent_2023_a2ui5.clas.abap`.
    INSERT temp19 INTO TABLE temp18.
    temp15-t_app = temp18.
    INSERT temp15 INTO TABLE temp14.
    result = temp14.


    
    
    LOOP AT result REFERENCE INTO lr_repo.

      
      
      LOOP AT lr_repo->t_app REFERENCE INTO lr_app.

        IF z2ui5_cl_util_func=>rtti_check_class_exists( lr_app->classname ) IS NOT INITIAL.
          lr_repo->check_installed = abap_true.
        ENDIF.
        EXIT.
      ENDLOOP.

      lr_repo->number_of_app = lines( lr_repo->t_app ).
      lr_repo->author_name = shift_left( val = lr_repo->author_link
                                         sub = `https://github.com/` ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
