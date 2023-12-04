CLASS z2ui5_cl_fw_http_handler DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS http_post
      IMPORTING
        body          TYPE string
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS http_get
      IMPORTING
        t_config                  TYPE z2ui5_if_client=>ty_t_name_value OPTIONAL
        content_security_policy   TYPE clike                            OPTIONAL
        check_logging             TYPE abap_bool                        OPTIONAL
        custom_js                 TYPE string                           OPTIONAL
        custom_js_oneventfrontend TYPE string                           OPTIONAL
        json_model_limit          TYPE string                           DEFAULT '100'
          PREFERRED PARAMETER t_config
      RETURNING
        VALUE(r_result)           TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS z2ui5_cl_fw_http_handler IMPLEMENTATION.


  METHOD http_get.

    DATA lt_config LIKE t_config.
      DATA temp1 TYPE z2ui5_if_client=>ty_t_name_value.
      DATA temp2 LIKE LINE OF temp1.
    DATA lv_add_js TYPE string.
      DATA lv_sec_policy TYPE string.
    DATA temp3 LIKE LINE OF lt_config.
    DATA lr_config LIKE REF TO temp3.
    lt_config = t_config.
    IF lt_config IS INITIAL.
      
      CLEAR temp1.
      
      temp2-n = `data-sap-ui-theme`.
      temp2-v = `sap_horizon`.
      INSERT temp2 INTO TABLE temp1.
      temp2-n = `src`.
      temp2-v = `https://sdk.openui5.org/resources/sap-ui-cachebuster/sap-ui-core.js`.
      INSERT temp2 INTO TABLE temp1.
      temp2-n = `data-sap-ui-bindingSyntax`.
      temp2-v = `complex`.
      INSERT temp2 INTO TABLE temp1.
      temp2-n = `data-sap-ui-frameOptions`.
      temp2-v = `trusted`.
      INSERT temp2 INTO TABLE temp1.
      temp2-n = `data-sap-ui-compatVersion`.
      temp2-v = `edge`.
      INSERT temp2 INTO TABLE temp1.
      lt_config = temp1.
    ENDIF.

    
    lv_add_js = z2ui5_cl_cc__factory_fw=>get_js_startup( ) && custom_js.

    IF content_security_policy IS NOT SUPPLIED.
      
      lv_sec_policy = `<meta http-equiv="Content-Security-Policy" content="default-src 'self' 'unsafe-inline' 'unsafe-eval' data: ` &&
        `ui5.sap.com *.ui5.sap.com sapui5.hana.ondemand.com *.sapui5.hana.ondemand.com sdk.openui5.org *.sdk.openui5.org cdn.jsdelivr.net *.cdn.jsdelivr.net cdnjs.cloudflare.com *.cdnjs.cloudflare.com"/>`.
    ELSE.
      lv_sec_policy = content_security_policy.
    ENDIF.
    z2ui5_cl_fw_db=>cleanup( ).

    r_result = `<!DOCTYPE html>` && |\n| &&
               `<html lang="en">` && |\n| &&
               `<head>` && |\n| &&
                  lv_sec_policy && |\n| &&
               `    <meta charset="UTF-8">` && |\n| &&
               `    <meta name="viewport" content="width=device-width, initial-scale=1.0">` && |\n| &&
               `    <meta http-equiv="X-UA-Compatible" content="IE=edge">` && |\n| &&
               `    <title>abap2UI5</title>` && |\n| &&
               `    <style>` && |\n| &&
               `        html, body, body > div, #container, #container-uiarea {` && |\n| &&
               `            height: 100%;` && |\n| &&
               `        }` && |\n| &&
               `    </style> ` &&
               `    <script id="sap-ui-bootstrap"`.

    
    
    LOOP AT lt_config REFERENCE INTO lr_config.
      r_result = r_result && | { lr_config->n }="{ lr_config->v }"|.
    ENDLOOP.

    r_result = r_result &&
        ` ></script></head>` && |\n| &&
        `<body class="sapUiBody sapUiSizeCompact" >` && |\n| &&
        `    <div id="content"  data-handle-validation="true" ></div>` && |\n| &&
        `<abc/>` && |\n|.

    r_result = r_result && `<script>` && |\n|  &&
        `            sap.ui.core.BusyIndicator.show();` && |\n|  &&
        `            sap.ui.getCore().attachInit(function() {` && |\n|  &&
        `                "use strict";` && |\n|  &&
        |\n|  &&
        `                sap.ui.controller("z2ui5_controller", {` && |\n|  &&
        `                    onAfterRendering: function() {` && |\n|  &&
        |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_POPUP.CHECK_DESTROY == true) {` && |\n|  &&
        `                            sap.z2ui5.oController.PopupDestroy();` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_POPUP.XML) {` && |\n|  &&
        `                            sap.z2ui5.oController.PopupDestroy();` && |\n|  &&
        `                            sap.ui.core.Fragment.load({` && |\n|  &&
        `                                definition: sap.z2ui5.oResponse.PARAMS.S_POPUP.XML,` && |\n|  &&
        `                                controller: sap.z2ui5.oController,` && |\n|  &&
        `                            }).then(oFragment=>{` && |\n|  &&
        `                                var oview_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                oview_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                oFragment.setModel(oview_model)` && |\n|  &&
        `                                sap.z2ui5.oView.addDependent(oFragment);` && |\n|  &&
        `                                oFragment.open();` && |\n|  &&
        `                                sap.z2ui5.oViewPopup = oFragment;` && |\n|  &&
        `                            }` && |\n|  &&
        `                            );` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.checkNestAfter == false) {` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.XML !== '') {` && |\n|  &&
        `                                sap.z2ui5.oController.NestViewDestroy();` && |\n|  &&
        `                                new sap.ui.core.mvc.XMLView.create({` && |\n|  &&
        `                                    definition: sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.XML,` && |\n|  &&
        `                                    controller: sap.z2ui5.oControllerNest,` && |\n|  &&
        `                                }).then(oView=>{` && |\n|  &&
        `                                    var oview_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                    oview_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                    oView.setModel(oview_model);` && |\n|  &&
        `                                    var oParent = sap.z2ui5.oView.byId(sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.ID);` && |\n|  &&
        `                                    try {` && |\n|  &&
        `                                        oParent[sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.METHOD_DESTROY]();` && |\n|  &&
        `                                    } catch {}` && |\n|  &&
        `                                    oParent[sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.METHOD_INSERT](oView);` && |\n|  &&
        `                                    sap.z2ui5.checkNestAfter = true;` && |\n|  &&
        `                                    sap.z2ui5.oViewNest = oView;` && |\n|  &&
        `                                }` && |\n|  &&
        `                                , );` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.checkNestAfter2 == false) {` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.XML !== '') {` && |\n|  &&
        `                                sap.z2ui5.oController.NestViewDestroy2();` && |\n|  &&
        `                                new sap.ui.core.mvc.XMLView.create({` && |\n|  &&
        `                                    definition: sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.XML,` && |\n|  &&
        `                                    controller: sap.z2ui5.oControllerNest2,` && |\n|  &&
        `                                }).then(oView=>{` && |\n|  &&
        `                                    var oview_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                    oview_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                    oView.setModel(oview_model);` && |\n|  &&
        `                                    var oParent = sap.z2ui5.oView.byId(sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.ID);` && |\n|  &&
        `                                    try {` && |\n|  &&
        `                                        oParent[sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.METHOD_DESTROY]();` && |\n|  &&
        `                                    } catch {}` && |\n|  &&
        `                                    oParent[sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.METHOD_INSERT](oView);` && |\n|  &&
        `                                    sap.z2ui5.checkNestAfter2 = true;` && |\n|  &&
        `                                    sap.z2ui5.oViewNest2 = oView;` && |\n|  &&
        `                                }` && |\n|  &&
        `                                , );` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_POPOVER.CHECK_DESTROY == true) {` && |\n|  &&
        `                            sap.z2ui5.oController.PopoverDestroy();` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_POPOVER.XML) {` && |\n|  &&
        `                            sap.z2ui5.oController.PopoverDestroy();` && |\n|  &&
        `                            sap.ui.core.Fragment.load({` && |\n|  &&
        `                                definition: sap.z2ui5.oResponse.PARAMS.S_POPOVER.XML,` && |\n|  &&
        `                                controller: sap.z2ui5.oController,` && |\n|  &&
        `                            }).then(oFragment=>{` && |\n|  &&
        `                                var oview_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                oview_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                oFragment.setModel(oview_model)` && |\n|  &&
        `                                sap.z2ui5.oView.addDependent(oFragment);` && |\n|  &&
        `                                var oControl = sap.ui.getCore().byId(sap.z2ui5.oResponse.PARAMS.S_POPOVER.OPEN_BY_ID);` && |\n|  &&
        `                                if (oControl === undefined) {` && |\n|  &&
        `                                    oControl = sap.z2ui5.oView.byId(sap.z2ui5.oResponse.PARAMS.S_POPOVER.OPEN_BY_ID);` && |\n|  &&
        `                                }` && |\n|  &&
        `                                if (oControl === undefined) {` && |\n|  &&
        `                                    oControl = sap.z2ui5.oViewNest.byId(sap.z2ui5.oResponse.PARAMS.S_POPOVER.OPEN_BY_ID);` && |\n|  &&
        `                                }` && |\n|  &&
        `                                if (oControl === undefined) {` && |\n|  &&
        `                                    oControl = sap.z2ui5.oViewNest2.byId(sap.z2ui5.oResponse.PARAMS.S_POPOVER.OPEN_BY_ID);` && |\n|  &&
        `                                }` && |\n|  &&
        `                                oFragment.openBy(oControl);` && |\n|  &&
        `                                sap.z2ui5.oViewPopover = oFragment;` && |\n|  &&
        `                        } ); }` && |\n|  &&
        `                        sap.ui.core.BusyIndicator.hide();` && |\n|  &&
        `                        if (sap.z2ui5.isBusy) {` && |\n|  &&
        `                            sap.z2ui5.isBusy = false;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.b) {` && |\n|  &&
        `                            sap.z2ui5.b.close();` && |\n|  &&
        `                        }` && |\n|  &&
        `                    },` && |\n|  &&
        `                    PopupDestroy: ()=>{` && |\n|  &&
        `                        if (!sap.z2ui5.oViewPopup) {` && |\n|  &&
        `                            return;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oViewPopup.close) {` && |\n|  &&
        `                            try {` && |\n|  &&
        `                                sap.z2ui5.oViewPopup.close();` && |\n|  &&
        `                            } catch {}` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oViewPopup.destroy();` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    PopoverDestroy: ()=>{` && |\n|  &&
        `                        if (!sap.z2ui5.oViewPopover) {` && |\n|  &&
        `                            return;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oViewPopover.close) {` && |\n|  &&
        `                            try {` && |\n|  &&
        `                                sap.z2ui5.oViewPopover.close();` && |\n|  &&
        `                            } catch {}` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oViewPopover.destroy();` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    NestViewDestroy: ()=>{` && |\n|  &&
        `                        if (!sap.z2ui5.oViewNest) {` && |\n|  &&
        `                            return;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oViewNest.destroy();` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    NestViewDestroy2: ()=>{` && |\n|  &&
        `                        if (!sap.z2ui5.oViewNest2) {` && |\n|  &&
        `                            return;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oViewNest2.destroy();` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    ViewDestroy: ()=>{` && |\n|  &&
        `                        if (!sap.z2ui5.oView) {` && |\n|  &&
        `                            return;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oView.destroy();` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    onEventFrontend: (...args)=>{` && |\n|  &&  custom_js_oneventfrontend &&
        `                        switch (args[0].EVENT) {` && |\n|  &&
        `                        case 'CROSS_APP_NAV_TO_PREV_APP':` && |\n|  &&
        `                            var oCrossAppNavigator = sap.ushell.Container.getService("CrossApplicationNavigation");` && |\n|  &&
        `                            oCrossAppNavigator.backToPreviousApp();` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'CROSS_APP_NAV_TO_EXT':` && |\n|  &&
        `                            var oCrossAppNavigator = sap.ushell.Container.getService("CrossApplicationNavigation");` && |\n|  &&
        `                            const hash = (oCrossAppNavigator.hrefForExternal({` && |\n|  &&
        `                                target: args[1],` && |\n|  &&
        `                                params: args[2]` && |\n|  &&
        `                            })) || "";` && |\n|  &&
        `                            if (args[3] === 'EXT') {` && |\n|  &&
        `                                var url = window.location.href.split('#')[0] + hash;` && |\n|  &&
        `                                sap.m.URLHelper.redirect(url, true);` && |\n|  &&
        `                            } else {` && |\n|  &&
        `                                oCrossAppNavigator.toExternal({` && |\n|  &&
        `                                    target: {` && |\n|  &&
        `                                        shellHash: hash` && |\n|  &&
        `                                    }` && |\n|  &&
        `                                });` && |\n|  &&
        `                            }` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'LOCATION_RELOAD':` && |\n|  &&
        `                            window.location = args[1];` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'OPEN_NEW_TAB':` && |\n|  &&
        `                            window.open(args[1], '_blank');` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'POPUP_CLOSE':` && |\n|  &&
        `                            sap.z2ui5.oController.PopupDestroy();` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'POPOVER_CLOSE':` && |\n|  &&
        `                            sap.z2ui5.oController.PopoverDestroy();` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'NAV_CONTAINER_TO':` && |\n|  &&
        `                            var navCon = sap.z2ui5.oView.byId(args[1]);` && |\n|  &&
        `                            var navConTo = sap.z2ui5.oView.byId(args[2]);` && |\n|  &&
        `                            navCon.to(navConTo);` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'NEST_NAV_CONTAINER_TO':` && |\n|  &&
        `                            var navCon = sap.z2ui5.oViewNest.byId(args[1]);` && |\n|  &&
        `                            var navConTo = sap.z2ui5.oViewNest.byId(args[2]);` && |\n|  &&
        `                            navCon.to(navConTo);` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        case 'NEST2_NAV_CONTAINER_TO':` && |\n|  &&
        `                            var navCon = sap.z2ui5.oViewNest2.byId(args[1]);` && |\n|  &&
        `                            var navConTo = sap.z2ui5.oViewNest.byId(args[2]);` && |\n|  &&
        `                            navCon.to(navConTo);` && |\n|  &&
        `                            break;` && |\n|  &&
        `                        }` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        |\n|  &&
        `                    onEvent: function(...args) {` && |\n|  &&
        `                        if (sap.z2ui5.isBusy) {` && |\n|  &&
        `                            if (sap.z2ui5.isBusy == true) {` && |\n|  &&
        `                                sap.z2ui5.b = new sap.m.BusyDialog();` && |\n|  &&
        `                                sap.z2ui5.b.open();` && |\n|  &&
        `                                return;` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.isBusy = true;` && |\n|  &&
        `                        if (!window.navigator.onLine) {` && |\n|  &&
        `                            sap.m.MessageBox.alert('No internet connection! Please reconnect to the server and try again.');` && |\n|  &&
        `                            sap.z2ui5.isBusy = false;` && |\n|  &&
        `                            return;` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.ui.core.BusyIndicator.show();` && |\n|  &&
        `                        sap.z2ui5.oBody = {};` && |\n|  &&
        `                        let isUpdated = false;` && |\n|  &&
        `                        if (sap.z2ui5.oViewPopup) {` && |\n|  &&
        `                            if (!sap.z2ui5.oViewPopup.isOpen || sap.z2ui5.oViewPopup.isOpen() == true) {` && |\n|  &&
        `                                sap.z2ui5.oBody.EDIT = sap.z2ui5.oViewPopup.getModel().getData().EDIT;` && |\n|  &&
        `                                isUpdated = true;` && |\n|  &&
        `                                sap.z2ui5.oBody.VIEWNAME = 'MAIN';` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (isUpdated == false) {` && |\n|  &&
        `                            if (sap.z2ui5.oViewPopover) {` && |\n|  &&
        `                                if (sap.z2ui5.oViewPopover.isOpen) {` && |\n|  &&
        `                                    if (sap.z2ui5.oViewPopover.isOpen() == true) {` && |\n|  &&
        `                                        sap.z2ui5.oBody.EDIT = sap.z2ui5.oViewPopover.getModel().getData().EDIT;` && |\n|  &&
        `                                        isUpdated = true;` && |\n|  &&
        `                                        sap.z2ui5.oBody.VIEWNAME = 'MAIN';` && |\n|  &&
        `                                    }` && |\n|  &&
        `                                }` && |\n|  &&
        `                                sap.z2ui5.oViewPopover.destroy();` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (isUpdated == false) {` && |\n|  &&
        `                            if (sap.z2ui5.oViewNest == this.getView()) {` && |\n|  &&
        `                                sap.z2ui5.oBody.EDIT = sap.z2ui5.oViewNest.getModel().getData().EDIT;` && |\n|  &&
        `                                sap.z2ui5.oBody.VIEWNAME = 'NEST';` && |\n|  &&
        `                                isUpdated = true;` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (isUpdated == false) {` && |\n|  &&
        `                            sap.z2ui5.oBody.EDIT = sap.z2ui5.oView.getModel().getData().EDIT;` && |\n|  &&
        `                            sap.z2ui5.oBody.VIEWNAME = 'MAIN';` && |\n|  &&
        `                        }` && |\n|  &&
        |\n|  &&
        `                        sap.z2ui5.onBeforeRoundtrip.forEach(item=>{` && |\n|  &&
        `                            if (item !== undefined) {` && |\n|  &&
        `                                item();` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        )` && |\n|  &&
        `                        if (args[0].CHECK_VIEW_DESTROY) {` && |\n|  &&
        `                            sap.z2ui5.oController.ViewDestroy();` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oBody.ID = sap.z2ui5.oResponse.ID;` && |\n|  &&
        `                        sap.z2ui5.oBody.ARGUMENTS = args;` && |\n|  &&
        |\n|  &&
        `                        if (sap.z2ui5.checkLogActive) {` && |\n|  &&
        `                            console.log('Request Object:');` && |\n|  &&
        `                            console.log(sap.z2ui5.oBody);` && |\n|  &&
        `                        }` && |\n|  &&
        `                        sap.z2ui5.oResponseOld = sap.z2ui5.oResponse;` && |\n|  &&
        `                        sap.z2ui5.oResponse = {};` && |\n|  &&
        `                        sap.z2ui5.oController.Roundtrip();` && |\n|  &&
        `                    },` && |\n|  &&
        `                    responseError: response=>{` && |\n|  &&
        `                        document.write(response);` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    responseSuccess: response=>{` && |\n|  &&
        |\n|  &&
        `                        sap.z2ui5.oResponse = JSON.parse(response);` && |\n|  &&
        |\n|  &&
        `                        if (sap.z2ui5.checkLogActive) {` && |\n|  &&
        `                            console.log('Response Object:');` && |\n|  &&
        `                            console.log(JSON.parse(JSON.stringify(sap.z2ui5.oResponse)));` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW.XML !== '') {` && |\n|  &&
        `                                console.log('UI5-XML-View:');` && |\n|  &&
        `                                console.log(sap.z2ui5.oResponse.PARAMS.S_VIEW.XML);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_POPUP.XML !== '') {` && |\n|  &&
        `                                console.log('UI5-XML-Popup:');` && |\n|  &&
        `                                console.log(sap.z2ui5.oResponse.PARAMS.S_POPUP.XML);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_POPOVER.XML !== '') {` && |\n|  &&
        `                                console.log('UI5-XML-Popover:');` && |\n|  &&
        `                                console.log(sap.z2ui5.oResponse.PARAMS.S_POPOVER.XML);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.XML !== '') {` && |\n|  &&
        `                                console.log('UI5-XML-Nest:');` && |\n|  &&
        `                                console.log(sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.XML);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.XML !== '') {` && |\n|  &&
        `                                console.log('UI5-XML-Nest2:');` && |\n|  &&
        `                                console.log(sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.XML);` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_VIEW.CHECK_DESTROY == true) {` && |\n|  &&
        `                            sap.z2ui5.oController.ViewDestroy();` && |\n|  &&
        `                        }` && |\n|  &&
        |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_VIEW.XML !== '') {` && |\n|  &&
        |\n|  &&
        `                            sap.z2ui5.oController.ViewDestroy();` && |\n|  &&
        |\n|  &&
        `                            new sap.ui.core.mvc.XMLView.create({` && |\n|  &&
        `                                definition: sap.z2ui5.oResponse.PARAMS.S_VIEW.XML,` && |\n|  &&
        `                                controller: sap.z2ui5.oController,` && |\n|  &&
        `                            }).then(oView=>{` && |\n|  &&
        `                                try {` && |\n|  &&
        `                                    var oview_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                    oview_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                    try {` && |\n|  &&
        `                                        oView.setModel(oview_model);` && |\n|  &&
        `                                    } catch (e) {` && |\n|  &&
        `                                        oView.setModel(oview_model);` && |\n|  &&
        `                                    }` && |\n|  &&
        `                                } catch (e) {` && |\n|  &&
        `                                    sap.m.MessageBox.error('Error while creating Main View - ' + e.message);` && |\n|  &&
        `                                }` && |\n|  &&
        `                                if (sap.z2ui5.oParent) {` && |\n|  &&
        `                                    sap.z2ui5.oParent.removeAllPages();` && |\n|  &&
        `                                    sap.z2ui5.oParent.insertPage(oView);` && |\n|  &&
        `                                } else {` && |\n|  &&
        `                                    oView.placeAt("content")` && |\n|  &&
        `                                }` && |\n|  &&
        `                                ;sap.ui.getCore().getMessageManager().registerObject(oView, true);` && |\n|  &&
        `                                sap.z2ui5.oView = oView;` && |\n|  &&
        `                            }` && |\n|  &&
        `                            , );` && |\n|  &&
        `                        } else {` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW.CHECK_UPDATE_MODEL == true) {` && |\n|  &&
        `                                var main_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                main_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                sap.z2ui5.oView.setModel(main_model);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST.CHECK_UPDATE_MODEL == true) {` && |\n|  &&
        `                                var nest_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                nest_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                sap.z2ui5.oViewNest.setModel(nest_model);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_VIEW_NEST2.CHECK_UPDATE_MODEL == true) {` && |\n|  &&
        `                                var nest2_model = new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                                nest2_model.setSizeLimit(sap.z2ui5.JSON_MODEL_LIMIT);` && |\n|  &&
        `                                sap.z2ui5.oViewNest2.setModel(nest2_model);` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_POPUP.CHECK_UPDATE_MODEL == true) {` && |\n|  &&
        `                                sap.z2ui5.oViewPopup.setModel(new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL));` && |\n|  &&
        `                            }` && |\n|  &&
        `                            if (sap.z2ui5.oResponse.PARAMS.S_POPOVER.CHECK_UPDATE_MODEL == true) {` && |\n|  &&
        `                                sap.z2ui5.oViewPopover.setModel(new sap.ui.model.json.JSONModel(sap.z2ui5.oResponse.OVIEWMODEL));` && |\n|  &&
        `                            }` && |\n|  &&
        `                            sap.z2ui5.oController.onAfterRendering();` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_MSG_TOAST.TEXT !== '') {` && |\n|  &&
        `                            sap.m.MessageToast.show(sap.z2ui5.oResponse.PARAMS.S_MSG_TOAST.TEXT);` && |\n|  &&
        `                        }` && |\n|  &&
        `                        if (sap.z2ui5.oResponse.PARAMS.S_MSG_BOX.TEXT !== '') {` && |\n|  &&
        `                            sap.m.MessageBox[sap.z2ui5.oResponse.PARAMS.S_MSG_BOX.TYPE](sap.z2ui5.oResponse.PARAMS.S_MSG_BOX.TEXT);` && |\n|  &&
        `                        }` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    readHttp: ()=>{` && |\n|  &&
        |\n|  &&
        `                        var xhr = new XMLHttpRequest();` && |\n|  &&
        `                        xhr.open("POST", sap.z2ui5.pathname, true);` && |\n|  &&
        `                        xhr.onload = (that)=>{` && |\n|  &&
        `                            if (that.target.status !== 200) {` && |\n|  &&
        `                                sap.z2ui5.oController.responseError(that.target.response);` && |\n|  &&
        `                            } else {` && |\n|  &&
        `                                sap.z2ui5.oController.responseSuccess(that.target.response);` && |\n|  &&
        `                            }` && |\n|  &&
        `                        }` && |\n|  &&
        `                        xhr.send(JSON.stringify(sap.z2ui5.oBody));` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                    Roundtrip: ()=>{` && |\n|  &&
        |\n|  &&
        `                        sap.z2ui5.checkTimerActive = false;` && |\n|  &&
        `                        sap.z2ui5.checkNestAfter = false;` && |\n|  &&
        `                        sap.z2ui5.checkNestAfter2 = false;` && |\n|  &&
        |\n|  &&
        `                        sap.z2ui5.oBody.OLOCATION = {` && |\n|  &&
        `                            ORIGIN: window.location.origin,` && |\n|  &&
        `                            PATHNAME: sap.z2ui5.pathname,` && |\n|  &&
        `                            SEARCH: window.location.search,` && |\n|  &&
        `                            VERSION: sap.ui.getVersionInfo().gav,` && |\n|  &&
        `                            CHECK_LAUNCHPAD_ACTIVE: sap.ushell !== undefined,` && |\n|  &&
        `                            STARTUP_PARAMETERS: sap.z2ui5.startupParameters,` && |\n|  &&
        `                        };` && |\n|  &&
        `                        if (sap.z2ui5.search) {` && |\n|  &&
        `                            sap.z2ui5.oBody.OLOCATION.SEARCH = sap.z2ui5.search;` && |\n|  &&
        `                        }` && |\n|  &&
        |\n|  &&
        `                        if (sap.z2ui5.readOData) {` && |\n|  &&
        `                            sap.z2ui5.readOData();` && |\n|  &&
        `                        } else {` && |\n|  &&
        `                            sap.z2ui5.oController.readHttp();` && |\n|  &&
        `                        }` && |\n|  &&
        `                    }` && |\n|  &&
        `                    ,` && |\n|  &&
        `                });` && |\n|  &&
        |\n|  &&
        `                if (!sap.z2ui5) {` && |\n|  &&
        `                    sap.z2ui5 = {};` && |\n|  &&
        `                }` && |\n|  &&
        `                if (!sap.z2ui5.pathname) {` && |\n|  &&
        `                    sap.z2ui5.pathname = window.location.pathname;` && |\n|  &&
        `                    // sap.z2ui5.pathname = ``/sap/bc/http/sap/y2ui5_http_handler``;` && |\n|  &&
        `                }` && |\n|  &&
        `                sap.z2ui5.checkNestAfter = false;` && |\n|  &&
        `                jQuery.sap.require("sap.ui.core.Fragment");` && |\n|  &&
        `                jQuery.sap.require("sap.m.MessageToast");` && |\n|  &&
        `                jQuery.sap.require("sap.m.MessageBox");` && |\n|  &&
        `                jQuery.sap.require("sap.ui.model.json.JSONModel");` && |\n|  &&
        `                var xml = atob('PA==') + 'mvc:View controllerName="z2ui5_controller" xmlns:mvc="sap.ui.core.mvc" /' + atob('Pg==');` && |\n|  &&
        `                var oView = sap.ui.xmlview({` && |\n|  &&
        `                    viewContent: xml` && |\n|  &&
        `                });` && |\n|  &&
        `                sap.z2ui5.oController = oView.getController();` && |\n|  &&
        `                var oViewNest = sap.ui.xmlview({` && |\n|  &&
        `                    viewContent: xml` && |\n|  &&
        `                });` && |\n|  &&
        `                var oViewNest2 = sap.ui.xmlview({` && |\n|  &&
        `                    viewContent: xml` && |\n|  &&
        `                });` && |\n|  &&
        `                sap.z2ui5.oControllerNest = oViewNest.getController();` && |\n|  &&
        `                sap.z2ui5.oControllerNest2 = oViewNest.getController();` && |\n|  &&
        `                sap.z2ui5.oBody = {};` && |\n|  &&
        `                sap.z2ui5.oBody.APP_START = sap.z2ui5.APP_START;` && |\n|  &&
        `                sap.z2ui5.oController.Roundtrip();` && |\n|  &&
        `                sap.z2ui5.log = ()=>{` && |\n|  &&
        `                    console.log(sap.z2ui5.oResponse.OVIEWMODEL);` && |\n|  &&
        `                }` && |\n|  &&
        `                ;` && |\n|  &&
        `                sap.z2ui5.oController.oUtil = {};` && |\n|  &&
        `                sap.z2ui5.oController.oUtil.oDate = {};` && |\n|  &&
        `                sap.z2ui5.oController.oUtil.oDate.createObject = (s)=>{` && |\n|  &&
        `                    return new Date(s);` && |\n|  &&
        `                }` && |\n|  &&
        `                jQuery.sap.declare("sap.z2ui5.Helper");` && |\n|  &&
        `                sap.z2ui5.onBeforeRoundtrip = [];` && |\n|  &&
        `                sap.z2ui5.Helper = {};` && |\n|  &&
        `                sap.z2ui5.Helper.DateCreateObject = (s=>new Date(s));` && |\n|  &&
        `                sap.z2ui5.Helper.DateAbapTimestampToDate = (sTimestamp=>new sap.gantt.misc.Format.abapTimestampToDate(sTimestamp));` && |\n|  &&
        `                sap.z2ui5.Helper.DateAbapDateToDateObject = (d=>new Date(d.slice(0, 4),(d[4] + d[5]) - 1,d[6] + d[7]));` && |\n|  &&
        `                sap.z2ui5.Helper.DateAbapDateTimeToDateObject = ((d,t='000000')=>new Date(d.slice(0, 4),(d[4] + d[5]) - 1,d[6] + d[7],t.slice(0, 2),t.slice(2, 4),t.slice(4, 6)));` && |\n|  &&
        `                sap.z2ui5.JSON_MODEL_LIMIT = ` && json_model_limit && `;` && |\n| &&
        `                sap.z2ui5.checkLogActive = ` && z2ui5_cl_util_func=>boolean_abap_2_json( check_logging ) && `;` && |\n| &&
                           lv_add_js && |\n| &&
                           ` });` && |\n| &&
                           `</script>` && |\n| &&
                           `<abc/></body></html>`.

  ENDMETHOD.


  METHOD http_post.
        DATA lo_handler TYPE REF TO z2ui5_cl_fw_handler.
        DATA x TYPE REF TO cx_root.
          DATA temp4 TYPE REF TO z2ui5_if_app.
          DATA temp1 TYPE REF TO z2ui5_cl_fw_client.

    TRY.
        
        lo_handler = z2ui5_cl_fw_handler=>request_begin( body ).
        
      CATCH cx_root INTO x.
        lo_handler = z2ui5_cl_fw_handler=>app_system_factory( x ).
    ENDTRY.

    DO.
      TRY.

          ROLLBACK WORK.
          
          temp4 ?= lo_handler->ms_db-app.
          
          CREATE OBJECT temp1 TYPE z2ui5_cl_fw_client EXPORTING HANDLER = lo_handler.
          temp4->main( temp1 ).
          ROLLBACK WORK.

          IF lo_handler->ms_next-o_app_leave IS NOT INITIAL.
            lo_handler = lo_handler->app_leave_factory( ).
            CONTINUE.
          ENDIF.

          IF lo_handler->ms_next-o_app_call IS NOT INITIAL.
            lo_handler = lo_handler->app_call_factory( ).
            CONTINUE.
          ENDIF.

          result = lo_handler->request_end( ).

        CATCH cx_root INTO x.
          lo_handler = z2ui5_cl_fw_handler=>app_system_factory( x ).
          CONTINUE.
      ENDTRY.

      EXIT.
    ENDDO.

  ENDMETHOD.
ENDCLASS.
