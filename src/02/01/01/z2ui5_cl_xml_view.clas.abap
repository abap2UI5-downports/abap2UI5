CLASS z2ui5_cl_xml_view DEFINITION
  PUBLIC FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.
    CLASS-METHODS factory
      IMPORTING t_ns          TYPE z2ui5_if_types=>ty_t_name_value OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    CLASS-METHODS factory_plain
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    CLASS-METHODS factory_popup
      IMPORTING t_ns          TYPE z2ui5_if_types=>ty_t_name_value OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS constructor.

    METHODS horizontal_layout
      IMPORTING !class        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                allowwrapping TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon
      IMPORTING src                   TYPE clike OPTIONAL
                press                 TYPE clike OPTIONAL
                !size                 TYPE clike OPTIONAL
                !color                TYPE clike OPTIONAL
                !class                TYPE clike OPTIONAL
                !id                   TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                useicontooltip        TYPE clike OPTIONAL
                notabstop             TYPE clike OPTIONAL
                hovercolor            TYPE clike OPTIONAL
                hoverbackgroundcolor  TYPE clike OPTIONAL
                height                TYPE clike OPTIONAL
                decorative            TYPE clike OPTIONAL
                backgroundcolor       TYPE clike OPTIONAL
                alt                   TYPE clike OPTIONAL
                activecolor           TYPE clike OPTIONAL
                activebackgroundcolor TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_page
      IMPORTING headerexpanded           TYPE clike OPTIONAL
                showfooter               TYPE clike OPTIONAL
                headerpinned             TYPE clike OPTIONAL
                toggleheaderontitleclick TYPE clike OPTIONAL
      RETURNING VALUE(result)            TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_page_title
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_page_header
      IMPORTING pinnable      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS html
      IMPORTING content         TYPE clike OPTIONAL
                afterrendering  TYPE clike OPTIONAL
                preferdom       TYPE clike OPTIONAL
                sanitizecontent TYPE clike OPTIONAL
                !visible        TYPE clike OPTIONAL
                !id             TYPE clike OPTIONAL
          PREFERRED PARAMETER content
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS illustrated_message
      IMPORTING enableverticalresponsiveness TYPE clike OPTIONAL
                enableformattedtext          TYPE clike OPTIONAL
                illustrationtype             TYPE clike OPTIONAL
                !title                       TYPE clike OPTIONAL
                !description                 TYPE clike OPTIONAL
                illustrationsize             TYPE clike OPTIONAL
      RETURNING VALUE(result)                TYPE REF TO z2ui5_cl_xml_view.

    METHODS additional_content
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS flex_box
      IMPORTING !class           TYPE clike OPTIONAL
                rendertype       TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                fitcontainer     TYPE clike OPTIONAL
                height           TYPE clike OPTIONAL
                alignitems       TYPE clike OPTIONAL
                justifycontent   TYPE clike OPTIONAL
                !wrap            TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                direction        TYPE clike OPTIONAL
                displayinline    TYPE clike OPTIONAL
                backgrounddesign TYPE clike OPTIONAL
                aligncontent     TYPE clike OPTIONAL
                items            TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS popover
      IMPORTING !title        TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                placement     TYPE clike OPTIONAL
                initialfocus  TYPE clike OPTIONAL
                contentwidth  TYPE clike OPTIONAL
                contentheight TYPE clike OPTIONAL
                showheader    TYPE clike OPTIONAL
                showarrow     TYPE clike OPTIONAL
                resizable     TYPE clike OPTIONAL
                modal         TYPE clike OPTIONAL
                horizontalscrolling TYPE clike OPTIONAL
                verticalscrolling   TYPE clike OPTIONAL
                visible             TYPE clike OPTIONAL
                offsetx             TYPE clike OPTIONAL
                offsety             TYPE clike OPTIONAL
                contentminwidth     TYPE clike OPTIONAL
                titlealignment      TYPE clike OPTIONAL
                beforeOpen      TYPE clike OPTIONAL
                beforeClose      TYPE clike OPTIONAL
                afterOpen      TYPE clike OPTIONAL
                afterClose      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS list_item
      IMPORTING !text          TYPE clike OPTIONAL
                additionaltext TYPE clike OPTIONAL
                !key           TYPE clike OPTIONAL
                !icon          TYPE clike OPTIONAL
                !enabled       TYPE clike OPTIONAL
                textdirection  TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS table
      IMPORTING !id                 TYPE clike OPTIONAL
                items               TYPE clike OPTIONAL
                growing             TYPE clike OPTIONAL
                growingthreshold    TYPE clike OPTIONAL
                growingscrolltoload TYPE clike OPTIONAL
                headertext          TYPE clike OPTIONAL
                sticky              TYPE clike OPTIONAL
                !mode               TYPE clike OPTIONAL
                !width              TYPE clike OPTIONAL
                selectionchange     TYPE clike OPTIONAL
                alternaterowcolors  TYPE clike OPTIONAL
                autopopinmode       TYPE clike OPTIONAL
                inset               TYPE clike OPTIONAL
                showseparators      TYPE clike OPTIONAL
                showoverlay         TYPE clike OPTIONAL
                hiddeninpopin       TYPE clike OPTIONAL
                popinlayout         TYPE clike OPTIONAL
                fixedlayout         TYPE clike OPTIONAL
                backgrounddesign    TYPE clike OPTIONAL
                !visible            TYPE clike OPTIONAL
          PREFERRED PARAMETER items
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_strip
      IMPORTING !text         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                showicon      TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS footer
      IMPORTING !ns           TYPE string OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_page
      IMPORTING show_header         TYPE clike OPTIONAL
                !text               TYPE clike OPTIONAL
                enableformattedtext TYPE clike OPTIONAL
                !description        TYPE clike OPTIONAL
                !icon               TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_layout
      IMPORTING showtitleinheadercontent       TYPE clike OPTIONAL
                showeditheaderbutton           TYPE clike OPTIONAL
                editheaderbuttonpress          TYPE clike OPTIONAL
                uppercaseanchorbar             TYPE clike OPTIONAL
                showfooter                     TYPE clike OPTIONAL
                alwaysshowcontentheader        TYPE clike OPTIONAL
                enablelazyloading              TYPE clike OPTIONAL
                flexenabled                    TYPE clike OPTIONAL
                headercontentpinnable          TYPE clike OPTIONAL
                headercontentpinned            TYPE clike OPTIONAL
                ischildpage                    TYPE clike OPTIONAL
                preserveheaderstateonscroll    TYPE clike OPTIONAL
                showanchorbar                  TYPE clike OPTIONAL
                showanchorbarpopover           TYPE clike OPTIONAL
                showheadercontent              TYPE clike OPTIONAL
                showonlyhighimportance         TYPE clike OPTIONAL
                subsectionlayout               TYPE clike OPTIONAL
                toggleheaderontitleclick       TYPE clike OPTIONAL
                useicontabbar                  TYPE clike OPTIONAL
                usetwocolumnsforlargescreen    TYPE clike OPTIONAL
                !visible                       TYPE clike OPTIONAL
                backgrounddesignanchorbar      TYPE clike OPTIONAL
                height                         TYPE clike OPTIONAL
                sectiontitlelevel              TYPE clike OPTIONAL
                beforenavigate                 TYPE clike OPTIONAL
                headercontentpinnedstatechange TYPE clike OPTIONAL
                navigate                       TYPE clike OPTIONAL
                sectionchange                  TYPE clike OPTIONAL
                subsectionvisibilitychange     TYPE clike OPTIONAL
                toggleanchorbar                TYPE clike OPTIONAL
      RETURNING VALUE(result)                  TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_header
      IMPORTING isactionareaalwaysvisible     TYPE clike OPTIONAL
                isobjecticonalwaysvisible     TYPE clike OPTIONAL
                isobjectsubtitlealwaysvisible TYPE clike OPTIONAL
                isobjecttitlealwaysvisible    TYPE clike OPTIONAL
                markchanges                   TYPE clike OPTIONAL
                markfavorite                  TYPE clike OPTIONAL
                markflagged                   TYPE clike OPTIONAL
                marklocked                    TYPE clike OPTIONAL
                objectimagealt                TYPE clike OPTIONAL
                objectimagebackgroundcolor    TYPE clike OPTIONAL
                objectimagedensityaware       TYPE clike OPTIONAL
                objectimageshape              TYPE clike OPTIONAL
                objectimageuri                TYPE clike OPTIONAL
                objectsubtitle                TYPE clike OPTIONAL
                objecttitle                   TYPE clike OPTIONAL
                showmarkers                   TYPE clike OPTIONAL
                showplaceholder               TYPE clike OPTIONAL
                showtitleselector             TYPE clike OPTIONAL
                !visible                      TYPE clike OPTIONAL
                markchangespress              TYPE clike OPTIONAL
                marklockedpress               TYPE clike OPTIONAL
                titleselectorpress            TYPE clike OPTIONAL
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_header_action_btn
      IMPORTING activeicon       TYPE clike OPTIONAL
                ariahaspopup     TYPE clike OPTIONAL
                !enabled         TYPE clike OPTIONAL
                hideicon         TYPE clike OPTIONAL
                hidetext         TYPE clike OPTIONAL
                !icon            TYPE clike OPTIONAL
                icondensityaware TYPE clike OPTIONAL
                iconfirst        TYPE clike OPTIONAL
                importance       TYPE clike OPTIONAL
                !text            TYPE clike OPTIONAL
                textdirection    TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                !type            TYPE clike OPTIONAL
                press            TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_dyn_header_title
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS generic_tile
      IMPORTING !class                 TYPE clike OPTIONAL
                !id                    TYPE clike OPTIONAL
                !header                TYPE clike OPTIONAL
                !mode                  TYPE clike OPTIONAL
                additionaltooltip      TYPE clike OPTIONAL
                appshortcut            TYPE clike OPTIONAL
                backgroundcolor        TYPE clike OPTIONAL
                backgroundimage        TYPE clike OPTIONAL
                dropareaoffset         TYPE clike OPTIONAL
                press                  TYPE clike OPTIONAL
                frametype              TYPE clike OPTIONAL
                failedtext             TYPE clike OPTIONAL
                headerimage            TYPE clike OPTIONAL
                !scope                 TYPE clike OPTIONAL
                sizebehavior           TYPE clike OPTIONAL
                !state                 TYPE clike OPTIONAL
                systeminfo             TYPE clike OPTIONAL
                tilebadge              TYPE clike OPTIONAL
                tileicon               TYPE clike OPTIONAL
                url                    TYPE clike OPTIONAL
                valuecolor             TYPE clike OPTIONAL
                !width                 TYPE clike OPTIONAL
                wrappingtype           TYPE clike OPTIONAL
                imagedescription       TYPE clike OPTIONAL
                navigationbuttontext   TYPE clike OPTIONAL
                !visible               TYPE clike OPTIONAL
                renderonthemechange    TYPE clike OPTIONAL
                enablenavigationbutton TYPE clike OPTIONAL
                pressenabled           TYPE clike OPTIONAL
                iconloaded             TYPE clike OPTIONAL
                subheader              TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS numeric_content
      IMPORTING !value            TYPE clike OPTIONAL
                !icon             TYPE clike OPTIONAL
                withmargin        TYPE clike OPTIONAL
                adaptivefontsize  TYPE clike OPTIONAL
                animatetextchange TYPE clike OPTIONAL
                formattervalue    TYPE clike OPTIONAL
                icondescription   TYPE clike OPTIONAL
                indicator         TYPE clike OPTIONAL
                nullifyvalue      TYPE clike OPTIONAL
                scale             TYPE clike OPTIONAL
                !state            TYPE clike OPTIONAL
                truncatevalueto   TYPE clike OPTIONAL
                valuecolor        TYPE clike OPTIONAL
                !visible          TYPE clike OPTIONAL
                !width            TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS link_tile_content
      IMPORTING linkhref      TYPE clike OPTIONAL
                linktext      TYPE clike OPTIONAL
                iconsrc       TYPE clike OPTIONAL
                linkpress     TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS image_content
      IMPORTING src           TYPE clike OPTIONAL
                !description  TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tile_content
      IMPORTING !unit         TYPE clike OPTIONAL
                footercolor   TYPE clike OPTIONAL
                !blocked      TYPE clike OPTIONAL
                frametype     TYPE clike OPTIONAL
                !priority     TYPE clike OPTIONAL
                prioritytext  TYPE clike OPTIONAL
                !state        TYPE clike OPTIONAL
                !disabled     TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                footer        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS expanded_heading
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS snapped_heading
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS expanded_content
      IMPORTING !ns           TYPE clike
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS snapped_content
      IMPORTING !ns           TYPE clike
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS heading
      IMPORTING !ns           TYPE clike
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS actions
      IMPORTING !ns           TYPE clike
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS snapped_title_on_mobile
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS header
      IMPORTING !ns           TYPE clike DEFAULT `f`
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS navigation_actions
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS avatar
      IMPORTING src               TYPE clike OPTIONAL
                !class            TYPE clike OPTIONAL
                displaysize       TYPE clike OPTIONAL
                ariahaspopup      TYPE clike OPTIONAL
                backgroundcolor   TYPE clike OPTIONAL
                badgeicon         TYPE clike OPTIONAL
                badgetooltip      TYPE clike OPTIONAL
                badgevaluestate   TYPE clike OPTIONAL
                customdisplaysize TYPE clike OPTIONAL
                customfontsize    TYPE clike OPTIONAL
                displayshape      TYPE clike OPTIONAL
                fallbackicon      TYPE clike OPTIONAL
                imagefittype      TYPE clike OPTIONAL
                initials          TYPE clike OPTIONAL
                showborder        TYPE clike OPTIONAL
                decorative        TYPE clike OPTIONAL
                !enabled          TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS header_title
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS sections
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_section
      IMPORTING titleuppercase TYPE clike OPTIONAL
                !title         TYPE clike OPTIONAL
                importance     TYPE clike OPTIONAL
                !id            TYPE clike OPTIONAL
                titlelevel     TYPE clike OPTIONAL
                showtitle      TYPE clike OPTIONAL
                !visible       TYPE clike OPTIONAL
                wraptitle      TYPE clike OPTIONAL
                anchorBarButtonColor      TYPE clike OPTIONAL
                titleVisible      TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS sub_sections
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_sub_section
      IMPORTING !id            TYPE clike OPTIONAL
                !title         TYPE clike OPTIONAL
                !mode          TYPE clike OPTIONAL
                importance     TYPE clike OPTIONAL
                titlelevel     TYPE clike OPTIONAL
                showtitle      TYPE clike OPTIONAL
                titleuppercase TYPE clike OPTIONAL
                !visible       TYPE clike OPTIONAL
                !titleVisible       TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS shell
      IMPORTING !ns             TYPE clike OPTIONAL
                appwidthlimited TYPE clike OPTIONAL
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS blocks
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS layout_data
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS flex_item_data
      IMPORTING growfactor       TYPE clike OPTIONAL
                basesize         TYPE clike OPTIONAL
                backgrounddesign TYPE clike OPTIONAL
                styleclass       TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS code_editor
      IMPORTING !value        TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                editable      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS suggestion_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS suggestion_item
      IMPORTING !description  TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS suggestion_columns
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS suggestion_rows
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS vertical_layout
      IMPORTING !class        TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS multi_input
      IMPORTING showclearicon    TYPE clike OPTIONAL
                showvaluehelp    TYPE clike OPTIONAL
                suggestionitems  TYPE clike OPTIONAL
                tokenupdate      TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !value           TYPE clike OPTIONAL
                !tokens          TYPE clike OPTIONAL
                !submit          TYPE clike OPTIONAL
                valuehelprequest TYPE clike OPTIONAL
                !enabled         TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                !change          TYPE clike OPTIONAL
                !required        TYPE clike OPTIONAL
                valuestate       TYPE clike OPTIONAL
                valuestatetext   TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS tokens
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS token
      IMPORTING !key          TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                editable      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS input
      IMPORTING !id                           TYPE clike OPTIONAL
                !value                        TYPE clike OPTIONAL
                placeholder                   TYPE clike OPTIONAL
                !type                         TYPE clike OPTIONAL
                showclearicon                 TYPE clike OPTIONAL
                valuestate                    TYPE clike OPTIONAL
                valuestatetext                TYPE clike OPTIONAL
                showtablesuggestionvaluehelp  TYPE clike OPTIONAL
                !description                  TYPE clike OPTIONAL
                editable                      TYPE clike OPTIONAL
                !enabled                      TYPE clike OPTIONAL
                suggestionitems               TYPE clike OPTIONAL
                suggestionrows                TYPE clike OPTIONAL
                showsuggestion                TYPE clike OPTIONAL
                showvaluehelp                 TYPE clike OPTIONAL
                valuehelprequest              TYPE clike OPTIONAL
                !required                     TYPE clike OPTIONAL
                suggest                       TYPE clike OPTIONAL
                !class                        TYPE clike OPTIONAL
                !visible                      TYPE clike OPTIONAL
                !submit                       TYPE clike OPTIONAL
                valueliveupdate               TYPE clike OPTIONAL
                autocomplete                  TYPE clike OPTIONAL
                maxsuggestionwidth            TYPE clike OPTIONAL
                fieldwidth                    TYPE clike OPTIONAL
                valuehelponly                 TYPE clike OPTIONAL
                !width                        TYPE clike OPTIONAL
                !change                       TYPE clike OPTIONAL
                valuehelpiconsrc              TYPE clike OPTIONAL
                textformatter                 TYPE clike OPTIONAL
                textformatmode                TYPE clike OPTIONAL
                maxlength                     TYPE clike OPTIONAL
                startsuggestion               TYPE clike OPTIONAL
                enablesuggestionshighlighting TYPE clike OPTIONAL
                enabletableautopopinmode      TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS dialog
      IMPORTING !title              TYPE clike OPTIONAL
                !icon               TYPE clike OPTIONAL
                showheader          TYPE clike OPTIONAL
                stretch             TYPE clike OPTIONAL
                contentheight       TYPE clike OPTIONAL
                contentwidth        TYPE clike OPTIONAL
                resizable           TYPE clike OPTIONAL
                horizontalscrolling TYPE clike OPTIONAL
                verticalscrolling   TYPE clike OPTIONAL
                afterclose          TYPE clike OPTIONAL
                beforeopen          TYPE clike OPTIONAL
                beforeclose         TYPE clike OPTIONAL
                afteropen           TYPE clike OPTIONAL
                draggable           TYPE clike OPTIONAL
                closeonnavigation   TYPE clike OPTIONAL
                escapehandler       TYPE clike OPTIONAL
                !type               TYPE clike OPTIONAL
                titlealignment      TYPE clike OPTIONAL
                !state              TYPE clike OPTIONAL
          PREFERRED PARAMETER title
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS carousel
      IMPORTING height                        TYPE clike OPTIONAL
                !class                        TYPE clike OPTIONAL
                !loop                         TYPE clike OPTIONAL
                !id                           TYPE clike OPTIONAL
                arrowsplacement               TYPE clike OPTIONAL
                backgrounddesign              TYPE clike OPTIONAL
                pageindicatorbackgrounddesign TYPE clike OPTIONAL
                pageindicatorborderdesign     TYPE clike OPTIONAL
                pageindicatorplacement        TYPE clike OPTIONAL
                !width                        TYPE clike OPTIONAL
                showpageindicator             TYPE clike OPTIONAL
                !visible                      TYPE clike OPTIONAL
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS buttons
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS get_root
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS get_parent
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS get
      IMPORTING !name         TYPE string OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS get_child
      IMPORTING !index        TYPE i DEFAULT 1
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS columns
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column
      IMPORTING !width            TYPE clike OPTIONAL
                !id               TYPE clike OPTIONAL
                minscreenwidth    TYPE clike OPTIONAL
                demandpopin       TYPE clike OPTIONAL
                halign            TYPE clike OPTIONAL
                !visible          TYPE clike OPTIONAL
                valign            TYPE clike OPTIONAL
                styleclass        TYPE clike OPTIONAL
                sortindicator     TYPE clike OPTIONAL
                popindisplay      TYPE clike OPTIONAL
                mergefunctionname TYPE clike OPTIONAL
                mergeduplicates   TYPE clike OPTIONAL
                importance        TYPE clike OPTIONAL
                autopopinwidth    TYPE clike OPTIONAL
                !class            TYPE clike OPTIONAL
                headermenu        TYPE clike OPTIONAL
          PREFERRED PARAMETER width
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS items
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS interact_donut_chart
      IMPORTING selectionchanged  TYPE clike OPTIONAL
                errormessage      TYPE clike OPTIONAL
                errormessagetitle TYPE clike OPTIONAL
                showerror         TYPE clike OPTIONAL
                displayedsegments TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                segments          TYPE clike OPTIONAL
                selectionEnabled          TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS segments
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS interact_donut_chart_segment
      IMPORTING label          TYPE clike OPTIONAL
                !value         TYPE clike OPTIONAL
                displayedvalue TYPE clike OPTIONAL
                selected       TYPE clike OPTIONAL
                !color         TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS interact_bar_chart
      IMPORTING selectionchanged  TYPE clike OPTIONAL
                selectionEnabled  TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                labelwidth        TYPE clike OPTIONAL
                errormessage      TYPE clike OPTIONAL
                errormessagetitle TYPE clike OPTIONAL
                showerror         TYPE clike OPTIONAL
                displayedBars     TYPE clike OPTIONAL
                bars              TYPE clike OPTIONAL
                max              TYPE clike OPTIONAL
                min              TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS bars
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS interact_bar_chart_bar
      IMPORTING label          TYPE clike OPTIONAL
                !value         TYPE clike OPTIONAL
                displayedvalue TYPE clike OPTIONAL
                selected       TYPE clike OPTIONAL
                !color         TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS interact_line_chart
      IMPORTING selectionchanged  TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                precedingpoint    TYPE clike OPTIONAL
                succeddingpoint   TYPE clike OPTIONAL
                errormessage      TYPE clike OPTIONAL
                errormessagetitle TYPE clike OPTIONAL
                showerror         TYPE clike OPTIONAL
                displayedPoints   TYPE clike OPTIONAL
                selectionEnabled  TYPE clike OPTIONAL
                points            TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS points
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS interact_line_chart_point
      IMPORTING label          TYPE clike OPTIONAL
                !value         TYPE clike OPTIONAL
                secondarylabel TYPE clike OPTIONAL
                displayedvalue TYPE clike OPTIONAL
                selected       TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS radial_micro_chart
      IMPORTING !size         TYPE clike OPTIONAL
                !percentage   TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                valuecolor    TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                aligncontent  TYPE clike OPTIONAL
                hideonnodata  TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_list_item
      IMPORTING !id           TYPE clike OPTIONAL
                valign        TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                counter       TYPE clike OPTIONAL
                highlight     TYPE clike OPTIONAL
                highlighttext TYPE clike OPTIONAL
                navigated     TYPE clike OPTIONAL
                unread        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                detailpress   TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS cells
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS bar
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS content_left
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS content_middle
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS content_right
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS custom_header
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS header_content
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS sub_header
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS custom_data
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS core_custom_data
      IMPORTING !key          TYPE clike OPTIONAL
                !value        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS badge_custom_data
      IMPORTING !key          TYPE clike OPTIONAL
                !value        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS toggle_button
      IMPORTING !text         TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS button
      IMPORTING !text            TYPE clike OPTIONAL
                !icon            TYPE clike OPTIONAL
                !type            TYPE clike OPTIONAL
                !enabled         TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                press            TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !ns              TYPE clike OPTIONAL
                tooltip          TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                iconfirst        TYPE clike OPTIONAL
                icondensityaware TYPE clike OPTIONAL
                ariahaspopup     TYPE clike OPTIONAL
                activeicon       TYPE clike OPTIONAL
                accessiblerole   TYPE clike OPTIONAL
                textdirection    TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS begin_button
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS end_button
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS search_field
      IMPORTING !search           TYPE clike OPTIONAL
                !width            TYPE clike OPTIONAL
                !value            TYPE clike OPTIONAL
                !id               TYPE clike OPTIONAL
                !change           TYPE clike OPTIONAL
                livechange        TYPE clike OPTIONAL
                suggest           TYPE clike OPTIONAL
                !enabled          TYPE clike OPTIONAL
                enablesuggestions TYPE clike OPTIONAL
                maxlength         TYPE clike OPTIONAL
                placeholder       TYPE clike OPTIONAL
                showrefreshbutton TYPE clike OPTIONAL
                showsearchbutton  TYPE clike OPTIONAL
                !visible          TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_view
      IMPORTING items         TYPE clike OPTIONAL
                groupitems    TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS barcode_scanner_button
      IMPORTING !id             TYPE clike OPTIONAL
                scansuccess     TYPE clike OPTIONAL
                scanfail        TYPE clike OPTIONAL
                inputliveupdate TYPE clike OPTIONAL
                dialogtitle     TYPE clike OPTIONAL
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_popover
      IMPORTING items             TYPE clike OPTIONAL
                groupitems        TYPE clike OPTIONAL
                listselect        TYPE clike OPTIONAL
                activetitlepress  TYPE clike OPTIONAL
                placement         TYPE clike OPTIONAL
                afterclose        TYPE clike OPTIONAL
                beforeclose       TYPE clike OPTIONAL
                initiallyexpanded TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_item
      IMPORTING !type             TYPE clike OPTIONAL
                !title            TYPE clike OPTIONAL
                subtitle          TYPE clike OPTIONAL
                !description      TYPE clike OPTIONAL
                groupname         TYPE clike OPTIONAL
                markupdescription TYPE clike OPTIONAL
                textdirection     TYPE clike OPTIONAL
                longtexturl       TYPE clike OPTIONAL
                counter           TYPE clike OPTIONAL
                activetitle       TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS page
      IMPORTING !title           TYPE clike OPTIONAL
                navbuttonpress   TYPE clike OPTIONAL
                shownavbutton    TYPE clike OPTIONAL
                showheader       TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                !ns              TYPE clike OPTIONAL
                backgrounddesign TYPE clike OPTIONAL
                contentonlybusy  TYPE clike OPTIONAL
                enablescrolling  TYPE clike OPTIONAL
                navbuttontooltip TYPE clike OPTIONAL
                floatingfooter   TYPE clike OPTIONAL
                showfooter       TYPE clike OPTIONAL
                showsubheader    TYPE clike OPTIONAL
                titlealignment   TYPE clike OPTIONAL
                titlelevel       TYPE clike OPTIONAL
          PREFERRED PARAMETER title
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS menu_button
      IMPORTING !text         TYPE clike OPTIONAL
                activeicon    TYPE clike OPTIONAL
                buttonmode    TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                defaultaction TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS panel
      IMPORTING expandable       TYPE clike OPTIONAL
                expanded         TYPE clike OPTIONAL
                headertext       TYPE clike OPTIONAL
                stickyheader     TYPE clike OPTIONAL
                height           TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                backgrounddesign TYPE clike OPTIONAL
                expandanimation  TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                !expand         TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS vbox
      IMPORTING !id              TYPE clike OPTIONAL
                height           TYPE clike OPTIONAL
                justifycontent   TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                rendertype       TYPE clike OPTIONAL
                aligncontent     TYPE clike OPTIONAL
                direction        TYPE clike OPTIONAL
                alignitems       TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                !wrap            TYPE clike OPTIONAL
                backgrounddesign TYPE clike OPTIONAL
                displayinline    TYPE clike OPTIONAL
                fitcontainer     TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
          PREFERRED PARAMETER class
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS hbox
      IMPORTING !id              TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                justifycontent   TYPE clike OPTIONAL
                aligncontent     TYPE clike OPTIONAL
                alignitems       TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                height           TYPE clike OPTIONAL
                rendertype       TYPE clike OPTIONAL
                !wrap            TYPE clike OPTIONAL
                backgrounddesign TYPE clike OPTIONAL
                direction        TYPE clike OPTIONAL
                displayinline    TYPE clike OPTIONAL
                fitcontainer     TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS scroll_container
      IMPORTING height        TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                vertical      TYPE clike OPTIONAL
                horizontal    TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
                focusable     TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
          PREFERRED PARAMETER height
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS simple_form
      IMPORTING !title                  TYPE clike OPTIONAL
                !layout                 TYPE clike OPTIONAL
                editable                TYPE clike OPTIONAL
                columnsxl               TYPE clike OPTIONAL
                columnsl                TYPE clike OPTIONAL
                columnsm                TYPE clike OPTIONAL
                !id                     TYPE clike OPTIONAL
                adjustlabelspan         TYPE clike OPTIONAL
                backgrounddesign        TYPE clike OPTIONAL
                breakpointl             TYPE clike OPTIONAL
                breakpointm             TYPE clike OPTIONAL
                breakpointxl            TYPE clike OPTIONAL
                emptyspanl              TYPE clike OPTIONAL
                emptyspanm              TYPE clike OPTIONAL
                emptyspans              TYPE clike OPTIONAL
                emptyspanxl             TYPE clike OPTIONAL
                labelspans              TYPE clike OPTIONAL
                labelspanm              TYPE clike OPTIONAL
                labelspanl              TYPE clike OPTIONAL
                labelspanxl             TYPE clike OPTIONAL
                maxcontainercols        TYPE clike OPTIONAL
                minwidth                TYPE clike OPTIONAL
                singlecontainerfullsize TYPE clike OPTIONAL
                !visible                TYPE clike OPTIONAL
                !width                  TYPE clike OPTIONAL
          PREFERRED PARAMETER title
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS _cc_plain_xml
      IMPORTING val           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS content
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS title
      IMPORTING !ns           TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                wrapping      TYPE clike OPTIONAL
                !level        TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
                textalign     TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
                titlestyle    TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                wrappingtype  TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tab_container
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tab
      IMPORTING !text         TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS overflow_toolbar
      IMPORTING press         TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                active        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                asyncmode     TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                design        TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !style        TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS overflow_toolbar_toggle_button
      IMPORTING !text         TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                tooltip       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS overflow_toolbar_button
      IMPORTING !text         TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                tooltip       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS overflow_toolbar_menu_button
      IMPORTING !text         TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                buttonmode    TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                tooltip       TYPE clike OPTIONAL
                defaultaction TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS menu_item
      IMPORTING press         TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS toolbar_spacer
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS label
      IMPORTING !text         TYPE clike OPTIONAL
                labelfor      TYPE clike OPTIONAL
                design        TYPE clike OPTIONAL
                displayonly   TYPE clike OPTIONAL
                !required     TYPE clike OPTIONAL
                showcolon     TYPE clike OPTIONAL
                textalign     TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
                valign        TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                wrapping      TYPE clike OPTIONAL
                wrappingtype  TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS image
      IMPORTING src                TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
                height             TYPE clike OPTIONAL
                !width             TYPE clike OPTIONAL
                usemap             TYPE clike OPTIONAL
                !mode              TYPE clike OPTIONAL
                lazyloading        TYPE clike OPTIONAL
                densityaware       TYPE clike OPTIONAL
                decorative         TYPE clike OPTIONAL
                backgroundsize     TYPE clike OPTIONAL
                backgroundrepeat   TYPE clike OPTIONAL
                backgroundposition TYPE clike OPTIONAL
                ariahaspopup       TYPE clike OPTIONAL
                alt                TYPE clike OPTIONAL
                activesrc          TYPE clike OPTIONAL
                press              TYPE clike OPTIONAL
                !load              TYPE clike OPTIONAL
                !error             TYPE clike OPTIONAL
                !id                TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS date_picker
      IMPORTING !value                  TYPE clike OPTIONAL
                placeholder             TYPE clike OPTIONAL
                displayformat           TYPE clike OPTIONAL
                valueformat             TYPE clike OPTIONAL
                !required               TYPE clike OPTIONAL
                valuestate              TYPE clike OPTIONAL
                valuestatetext          TYPE clike OPTIONAL
                !enabled                TYPE clike OPTIONAL
                showcurrentdatebutton   TYPE clike OPTIONAL
                !change                 TYPE clike OPTIONAL
                hideinput               TYPE clike OPTIONAL
                showfooter              TYPE clike OPTIONAL
                !visible                TYPE clike OPTIONAL
                showvaluestatemessage   TYPE clike OPTIONAL
                mindate                 TYPE clike OPTIONAL
                maxdate                 TYPE clike OPTIONAL
                editable                TYPE clike OPTIONAL
                !width                  TYPE clike OPTIONAL
                !id                     TYPE clike OPTIONAL
                calendarweeknumbering   TYPE clike OPTIONAL
                displayformattype       TYPE clike OPTIONAL
                !class                  TYPE clike OPTIONAL
                textdirection           TYPE clike OPTIONAL
                textalign               TYPE clike OPTIONAL
                !name                   TYPE clike OPTIONAL
                datevalue               TYPE clike OPTIONAL
                initialfocuseddatevalue TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS time_picker
      IMPORTING !value                  TYPE clike OPTIONAL
                placeholder             TYPE clike OPTIONAL
                !enabled                TYPE clike OPTIONAL
                valuestate              TYPE clike OPTIONAL
                displayformat           TYPE clike OPTIONAL
                valueformat             TYPE clike OPTIONAL
                !required               TYPE clike OPTIONAL
                !width                  TYPE clike OPTIONAL
                datevalue               TYPE clike OPTIONAL
                localeid                TYPE clike OPTIONAL
                !mask                   TYPE clike OPTIONAL
                maskmode                TYPE clike OPTIONAL
                minutesstep             TYPE clike OPTIONAL
                !name                   TYPE clike OPTIONAL
                placeholdersymbol       TYPE clike OPTIONAL
                secondsstep             TYPE clike OPTIONAL
                textalign               TYPE clike OPTIONAL
                textdirection           TYPE clike OPTIONAL
                !title                  TYPE clike OPTIONAL
                showcurrenttimebutton   TYPE clike OPTIONAL
                showvaluestatemessage   TYPE clike OPTIONAL
                support2400             TYPE clike OPTIONAL
                initialfocuseddatevalue TYPE clike OPTIONAL
                hideinput               TYPE clike OPTIONAL
                editable                TYPE clike OPTIONAL
                !visible                TYPE clike OPTIONAL
                valuestatetext          TYPE clike OPTIONAL
                livechange              TYPE clike OPTIONAL
                !change                 TYPE clike OPTIONAL
                aftervaluehelpopen      TYPE clike OPTIONAL
                aftervaluehelpclose     TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS date_time_picker
      IMPORTING !value        TYPE clike OPTIONAL
                placeholder   TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                valuestate    TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS link
      IMPORTING !text              TYPE clike OPTIONAL
                href               TYPE clike OPTIONAL
                !target            TYPE clike OPTIONAL
                !enabled           TYPE clike OPTIONAL
                press              TYPE clike OPTIONAL
                !id                TYPE clike OPTIONAL
                !ns                TYPE clike OPTIONAL
                wrapping           TYPE clike OPTIONAL
                !width             TYPE clike OPTIONAL
                validateurl        TYPE clike OPTIONAL
                textdirection      TYPE clike OPTIONAL
                textalign          TYPE clike OPTIONAL
                subtle             TYPE clike OPTIONAL
                rel                TYPE clike OPTIONAL
                emptyindicatormode TYPE clike OPTIONAL
                emphasized         TYPE clike OPTIONAL
                ariahaspopup       TYPE clike OPTIONAL
                accessiblerole     TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS list
      IMPORTING headertext             TYPE clike OPTIONAL
                items                  TYPE clike OPTIONAL
                !mode                  TYPE clike OPTIONAL
                selectionchange        TYPE clike OPTIONAL
                showseparators         TYPE clike OPTIONAL
                footertext             TYPE clike OPTIONAL
                growingdirection       TYPE clike OPTIONAL
                growingthreshold       TYPE clike OPTIONAL
                growingtriggertext     TYPE clike OPTIONAL
                headerlevel            TYPE clike OPTIONAL
                multiselectmode        TYPE clike OPTIONAL
                nodatatext             TYPE clike OPTIONAL
                sticky                 TYPE clike OPTIONAL
                modeanimationon        TYPE clike OPTIONAL
                growingscrolltoload    TYPE clike OPTIONAL
                includeiteminselection TYPE clike OPTIONAL
                growing                TYPE clike OPTIONAL
                inset                  TYPE clike OPTIONAL
                backgrounddesign       TYPE clike OPTIONAL
                rememberselections     TYPE clike OPTIONAL
                showunread             TYPE clike OPTIONAL
                !visible               TYPE clike OPTIONAL
                nodata                 TYPE clike OPTIONAL
                !id                    TYPE clike OPTIONAL
                itempress              TYPE clike OPTIONAL
                !select                TYPE clike OPTIONAL
                !delete                TYPE clike OPTIONAL
                !class                 TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS custom_list_item
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS input_list_item
      IMPORTING label         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS standard_list_item
      IMPORTING !title            TYPE clike OPTIONAL
                !description      TYPE clike OPTIONAL
                !icon             TYPE clike OPTIONAL
                info              TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                !type             TYPE clike OPTIONAL
                selected          TYPE clike OPTIONAL
                counter           TYPE clike OPTIONAL
                wrapping          TYPE clike OPTIONAL
                wrapcharlimit     TYPE clike OPTIONAL
                infostateinverted TYPE clike OPTIONAL
                infostate         TYPE clike OPTIONAL
                iconinset         TYPE clike OPTIONAL
                adapttitlesize    TYPE clike OPTIONAL
                activeicon        TYPE clike OPTIONAL
                unread            TYPE clike OPTIONAL
                highlight         TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS item
      IMPORTING !key          TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS segmented_button_item
      IMPORTING !icon         TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS combobox
      IMPORTING selectedkey           TYPE clike OPTIONAL
                showclearicon         TYPE clike OPTIONAL
                selectionchange       TYPE clike OPTIONAL
                selecteditem          TYPE clike OPTIONAL
                items                 TYPE clike OPTIONAL
                !change               TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                showsecondaryvalues   TYPE clike OPTIONAL
                placeholder           TYPE clike OPTIONAL
                selecteditemid        TYPE clike OPTIONAL
                !name                 TYPE clike OPTIONAL
                !value                TYPE clike OPTIONAL
                valuestate            TYPE clike OPTIONAL
                valuestatetext        TYPE clike OPTIONAL
                textalign             TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
                showvaluestatemessage TYPE clike OPTIONAL
                showbutton            TYPE clike OPTIONAL
                !required             TYPE clike OPTIONAL
                editable              TYPE clike OPTIONAL
                !enabled              TYPE clike OPTIONAL
                filtersecondaryvalues TYPE clike OPTIONAL
                !id                   TYPE clike OPTIONAL
                !class                TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS multi_combobox
      IMPORTING selectionchange       TYPE clike OPTIONAL
                selectedkeys          TYPE clike OPTIONAL
                selecteditems         TYPE clike OPTIONAL
                items                 TYPE clike OPTIONAL
                selectionfinish       TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                showclearicon         TYPE clike OPTIONAL
                showsecondaryvalues   TYPE clike OPTIONAL
                placeholder           TYPE clike OPTIONAL
                selecteditemid        TYPE clike OPTIONAL
                selectedkey           TYPE clike OPTIONAL
                !name                 TYPE clike OPTIONAL
                !value                TYPE clike OPTIONAL
                valuestate            TYPE clike OPTIONAL
                valuestatetext        TYPE clike OPTIONAL
                textalign             TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
                showvaluestatemessage TYPE clike OPTIONAL
                showbutton            TYPE clike OPTIONAL
                !required             TYPE clike OPTIONAL
                editable              TYPE clike OPTIONAL
                !enabled              TYPE clike OPTIONAL
                filtersecondaryvalues TYPE clike OPTIONAL
                showselectall         TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS grid
      IMPORTING !class        TYPE clike OPTIONAL
                default_span  TYPE clike OPTIONAL
          PREFERRED PARAMETER default_span
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS grid_data
      IMPORTING span          TYPE clike OPTIONAL
          PREFERRED PARAMETER span
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS text_area
      IMPORTING !value                TYPE clike OPTIONAL
                !rows                 TYPE clike OPTIONAL
                cols                  TYPE clike OPTIONAL
                height                TYPE clike OPTIONAL
                !class                TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                valueliveupdate       TYPE clike OPTIONAL
                editable              TYPE clike OPTIONAL
                !enabled              TYPE clike OPTIONAL
                growing               TYPE clike OPTIONAL
                growingmaxlines       TYPE clike OPTIONAL
                !id                   TYPE clike OPTIONAL
                !required             TYPE clike OPTIONAL
                placeholder           TYPE clike OPTIONAL
                valuestate            TYPE clike OPTIONAL
                valuestatetext        TYPE clike OPTIONAL
                wrapping              TYPE clike OPTIONAL
                maxlength             TYPE clike OPTIONAL
                textalign             TYPE clike OPTIONAL
                textdirection         TYPE clike OPTIONAL
                showvaluestatemessage TYPE clike OPTIONAL
                showexceededtext      TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS range_slider
      IMPORTING !max          TYPE clike OPTIONAL
                !min          TYPE clike OPTIONAL
                !step         TYPE clike OPTIONAL
                startvalue    TYPE clike OPTIONAL
                endvalue      TYPE clike OPTIONAL
                showtickmarks TYPE clike OPTIONAL
                labelinterval TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
                !value        TYPE clike OPTIONAL
                !value2       TYPE clike OPTIONAL
                !change       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS generic_tag
      IMPORTING !id            TYPE clike OPTIONAL
                arialabelledby TYPE clike OPTIONAL
                !text          TYPE clike OPTIONAL
                design         TYPE clike OPTIONAL
                !status        TYPE clike OPTIONAL
                !class         TYPE clike OPTIONAL
                press          TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_attribute
      IMPORTING !title        TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                active        TYPE clike OPTIONAL
                ariahaspopup  TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_number
      IMPORTING !state             TYPE clike OPTIONAL
                emphasized         TYPE clike OPTIONAL
                !number            TYPE clike OPTIONAL
                textdirection      TYPE clike OPTIONAL
                textalign          TYPE clike OPTIONAL
                numberunit         TYPE clike OPTIONAL
                !inverted          TYPE clike OPTIONAL
                emptyindicatormode TYPE clike OPTIONAL
                active             TYPE clike OPTIONAL
                !unit              TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
                !id                TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS switch
      IMPORTING !state        TYPE clike OPTIONAL
                customtexton  TYPE clike OPTIONAL
                customtextoff TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                !change       TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS step_input
      IMPORTING !value        TYPE clike OPTIONAL
                !min          TYPE clike OPTIONAL
                !max          TYPE clike OPTIONAL
                !step         TYPE clike OPTIONAL
                valuestate    TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                !description  TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS progress_indicator
      IMPORTING !class        TYPE clike OPTIONAL
                percentvalue  TYPE clike OPTIONAL
                displayvalue  TYPE clike OPTIONAL
                showvalue     TYPE clike OPTIONAL
                !state        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS segmented_button
      IMPORTING selected_key     TYPE clike
                selection_change TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                !enabled         TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS checkbox
      IMPORTING !text             TYPE clike OPTIONAL
                selected          TYPE clike OPTIONAL
                !enabled          TYPE clike OPTIONAL
                !select           TYPE clike OPTIONAL
                !id               TYPE clike OPTIONAL
                !class            TYPE clike OPTIONAL
                textalign         TYPE clike OPTIONAL
                textdirection     TYPE clike OPTIONAL
                !width            TYPE clike OPTIONAL
                activehandling    TYPE clike OPTIONAL
                !visible          TYPE clike OPTIONAL
                displayonly       TYPE clike OPTIONAL
                editable          TYPE clike OPTIONAL
                partiallyselected TYPE clike OPTIONAL
                useentirewidth    TYPE clike OPTIONAL
                wrapping          TYPE clike OPTIONAL
                !name             TYPE clike OPTIONAL
                valuestate        TYPE clike OPTIONAL
          PREFERRED PARAMETER selected
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS header_toolbar
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS toolbar
      IMPORTING !ns           TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                active        TYPE clike OPTIONAL
                ariahaspopup  TYPE clike OPTIONAL
                design        TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                !style        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS text
      IMPORTING !text              TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
                !ns                TYPE clike OPTIONAL
                emptyindicatormode TYPE clike OPTIONAL
                maxlines           TYPE clike OPTIONAL
                renderwhitespace   TYPE clike OPTIONAL
                textalign          TYPE clike OPTIONAL
                textdirection      TYPE clike OPTIONAL
                !width             TYPE clike OPTIONAL
                wrapping           TYPE clike OPTIONAL
                wrappingtype       TYPE clike OPTIONAL
                !id                TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS formatted_text
      IMPORTING htmltext                    TYPE clike OPTIONAL
                convertedlinksdefaulttarget TYPE clike OPTIONAL
                convertlinkstoanchortags    TYPE clike OPTIONAL
                height                      TYPE clike OPTIONAL
                textalign                   TYPE clike OPTIONAL
                textdirection               TYPE clike OPTIONAL
                !visible                    TYPE clike OPTIONAL
                !width                      TYPE clike OPTIONAL
                !id                         TYPE clike OPTIONAL
                !class                      TYPE clike OPTIONAL
                !controls                   TYPE clike OPTIONAL
          PREFERRED PARAMETER htmltext
      RETURNING VALUE(result)               TYPE REF TO z2ui5_cl_xml_view.

    METHODS _generic
      IMPORTING !name         TYPE clike
                !ns           TYPE clike                           OPTIONAL
                t_prop        TYPE z2ui5_if_types=>ty_t_name_value OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS _generic_property
      IMPORTING val           TYPE z2ui5_if_types=>ty_s_name_value OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS xml_get
      RETURNING VALUE(result) TYPE string.

    METHODS stringify
      RETURNING VALUE(result) TYPE string.

    METHODS tree_table
      IMPORTING !rows                  TYPE clike OPTIONAL
                selectionMode          TYPE clike OPTIONAL
                enableColumnReordering TYPE clike OPTIONAL
                expandFirstLevel       TYPE clike OPTIONAL
                columnSelect           TYPE clike OPTIONAL
                rowSelectionChange     TYPE clike OPTIONAL
                selectionBehavior      TYPE clike OPTIONAL
                !id                    TYPE clike OPTIONAL
                alternateRowColors     TYPE clike OPTIONAL
                columnHeaderVisible    TYPE clike OPTIONAL
                enableCellFilter       TYPE clike OPTIONAL
                enableColumnFreeze     TYPE clike OPTIONAL
                enableCustomFilter     TYPE clike OPTIONAL
                enableSelectAll        TYPE clike OPTIONAL
                showNoData             TYPE clike OPTIONAL
                showOverlay            TYPE clike OPTIONAL
                !visible               TYPE clike OPTIONAL
                columnHeaderHeight     TYPE clike OPTIONAL
                firstVisibleRow        TYPE clike OPTIONAL
                fixedColumnCount       TYPE clike OPTIONAL
                threshold              TYPE clike OPTIONAL
                !width                 TYPE clike OPTIONAL
                useGroupMode           TYPE clike OPTIONAL
                groupHeaderProperty    TYPE clike OPTIONAL
                rowActionCount         TYPE clike OPTIONAL
                selectedIndex          TYPE clike OPTIONAL
                visibleRowCount        TYPE clike OPTIONAL
                visibleRowCountMode    TYPE clike OPTIONAL
                minAutoRowCount        TYPE clike OPTIONAL
                fixedBottomRowCount    TYPE clike OPTIONAL
                fixedRowCount          TYPE clike OPTIONAL
                rowHeight              TYPE clike OPTIONAL
                toggleopenstate        TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS tree_columns
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tree_column
      IMPORTING label         TYPE clike
                template      TYPE clike OPTIONAL
                halign        TYPE clike DEFAULT 'Begin'
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tree_template
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS filter_bar
      IMPORTING usetoolbar                   TYPE clike DEFAULT 'false'
                !search                      TYPE clike OPTIONAL
                !id                          TYPE clike OPTIONAL
                persistencykey               TYPE clike OPTIONAL
                aftervariantload             TYPE clike OPTIONAL
                aftervariantsave             TYPE clike OPTIONAL
                assignedfilterschanged       TYPE clike OPTIONAL
                beforevariantfetch           TYPE clike OPTIONAL
                cancel                       TYPE clike OPTIONAL
                !clear                       TYPE clike OPTIONAL
                filterchange                 TYPE clike OPTIONAL
                filtersdialogbeforeopen      TYPE clike OPTIONAL
                filtersdialogcancel          TYPE clike OPTIONAL
                filtersdialogclosed          TYPE clike OPTIONAL
                initialise                   TYPE clike OPTIONAL
                initialized                  TYPE clike OPTIONAL
                !reset                       TYPE clike OPTIONAL
                filtercontainerwidth         TYPE clike OPTIONAL
                !header                      TYPE clike OPTIONAL
                advancedmode                 TYPE clike OPTIONAL
                isrunninginvaluehelpdialog   TYPE clike OPTIONAL
                showallfilters               TYPE clike OPTIONAL
                showclearonfb                TYPE clike OPTIONAL
                showfilterconfiguration      TYPE clike OPTIONAL
                showgoonfb                   TYPE clike OPTIONAL
                showrestorebutton            TYPE clike OPTIONAL
                showrestoreonfb              TYPE clike OPTIONAL
                usesnapshot                  TYPE clike OPTIONAL
                searchenabled                TYPE clike OPTIONAL
                considergrouptitle           TYPE clike OPTIONAL
                deltavariantmode             TYPE clike OPTIONAL
                disablesearchmatchespatternw TYPE clike OPTIONAL
                filterbarexpanded            TYPE clike OPTIONAL
      RETURNING VALUE(result)                TYPE REF TO z2ui5_cl_xml_view.

    METHODS filter_group_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS filter_group_item
      IMPORTING !name              TYPE clike
                label              TYPE clike
                groupname          TYPE clike
                visibleinfilterbar TYPE clike DEFAULT 'true'
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS filter_control
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS flexible_column_layout
      IMPORTING !layout                       TYPE clike
                !id                           TYPE clike
                backgrounddesign              TYPE clike OPTIONAL
                defaulttransitionnamebegincol TYPE clike OPTIONAL
                defaulttransitionnameendcol   TYPE clike OPTIONAL
                defaulttransitionnamemidcol   TYPE clike OPTIONAL
                autofocus                     TYPE clike OPTIONAL
                restorefocusonbacknavigation  TYPE clike OPTIONAL
                !class                        TYPE clike OPTIONAL
                afterbegincolumnnavigate      TYPE clike OPTIONAL
                afterendcolumnnavigate        TYPE clike OPTIONAL
                aftermidcolumnnavigate        TYPE clike OPTIONAL
                begincolumnnavigate           TYPE clike OPTIONAL
                columnresize                  TYPE clike OPTIONAL
                endcolumnnavigate             TYPE clike OPTIONAL
                midcolumnnavigate             TYPE clike OPTIONAL
                statechange                   TYPE clike OPTIONAL
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS begin_column_pages
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS mid_column_pages
      IMPORTING !id           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS end_column_pages
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_table
      IMPORTING !rows                    TYPE clike OPTIONAL
                columnheadervisible      TYPE clike OPTIONAL
                editable                 TYPE clike OPTIONAL
                enablecellfilter         TYPE clike OPTIONAL
                enablegrouping           TYPE clike OPTIONAL
                enableselectall          TYPE clike OPTIONAL
                firstvisiblerow          TYPE clike OPTIONAL
                fixedbottomrowcount      TYPE clike OPTIONAL
                fixedcolumncount         TYPE clike OPTIONAL
                fixedrowcount            TYPE clike OPTIONAL
                minautorowcount          TYPE clike OPTIONAL
                rowactioncount           TYPE clike OPTIONAL
                rowheight                TYPE clike OPTIONAL
                selectionmode            TYPE clike OPTIONAL
                showcolumnvisibilitymenu TYPE clike OPTIONAL
                shownodata               TYPE clike OPTIONAL
                selectedindex            TYPE clike OPTIONAL
                threshold                TYPE clike OPTIONAL
                visiblerowcount          TYPE clike OPTIONAL
                visiblerowcountmode      TYPE clike OPTIONAL
                alternaterowcolors       TYPE clike OPTIONAL
                footer                   TYPE clike OPTIONAL
                !filter                  TYPE clike OPTIONAL
                !sort                    TYPE clike OPTIONAL
                rowselectionchange       TYPE clike OPTIONAL
                customfilter             TYPE clike OPTIONAL
                !id                      TYPE clike OPTIONAL
                flex                     TYPE clike OPTIONAL
                selectionBehavior        TYPE clike OPTIONAL
                rowmode                  TYPE clike OPTIONAL
          PREFERRED PARAMETER rows
      RETURNING VALUE(result)            TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_column
      IMPORTING !id                   TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                showsortmenuentry     TYPE clike OPTIONAL
                sortproperty          TYPE clike OPTIONAL
                autoresizable         TYPE clike OPTIONAL
                filterproperty        TYPE clike OPTIONAL
                showfiltermenuentry   TYPE clike OPTIONAL
                defaultFilterOperator TYPE clike OPTIONAL
                filtertype            TYPE clike OPTIONAL
                hAlign                TYPE clike OPTIONAL
                minWidth              TYPE clike OPTIONAL
                resizable             TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
          PREFERRED PARAMETER width
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_columns
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_custom_data
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_extension
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_template
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS currency
      IMPORTING !value        TYPE clike
                !currency     TYPE clike
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_row_action
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_row_action_template
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS ui_row_action_item
      IMPORTING !icon         TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS radio_button
      IMPORTING activehandling TYPE clike OPTIONAL
                editable       TYPE clike OPTIONAL
                !enabled       TYPE clike OPTIONAL
                groupname      TYPE clike OPTIONAL
                selected       TYPE clike OPTIONAL
                !text          TYPE clike OPTIONAL
                textalign      TYPE clike OPTIONAL
                textdirection  TYPE clike OPTIONAL
                useentirewidth TYPE clike OPTIONAL
                valuestate     TYPE clike OPTIONAL
                !width         TYPE clike OPTIONAL
                !select        TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS radio_button_group
      IMPORTING !id           TYPE clike OPTIONAL
                !columns      TYPE clike OPTIONAL
                editable      TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                selectedindex TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
                valuestate    TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                !select       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_side_content
      IMPORTING !id                   TYPE clike OPTIONAL
                !class                TYPE clike OPTIONAL
                sidecontentvisibility TYPE clike OPTIONAL
                showsidecontent       TYPE clike OPTIONAL
                containerquery        TYPE clike OPTIONAL
          PREFERRED PARAMETER id
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS side_content
      IMPORTING !width        TYPE clike OPTIONAL
          PREFERRED PARAMETER width
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS planning_calendar
      IMPORTING !rows                     TYPE clike OPTIONAL
                id                 TYPE clike OPTIONAL
                class                 TYPE clike OPTIONAL
                startdate                 TYPE clike OPTIONAL
                appointmentsvisualization TYPE clike OPTIONAL
                appointmentselect         TYPE clike OPTIONAL
                showemptyintervalheaders  TYPE clike OPTIONAL
                showweeknumbers           TYPE clike OPTIONAL
                showdaynamesline          TYPE clike OPTIONAL
                legend                    TYPE clike OPTIONAL
                appointmentHeight                    TYPE clike OPTIONAL
                appointmentRoundWidth                    TYPE clike OPTIONAL
                builtInViews                    TYPE clike OPTIONAL
                calendarWeekNumbering                    TYPE clike OPTIONAL
                firstDayOfWeek                    TYPE clike OPTIONAL
                height                    TYPE clike OPTIONAL
                groupAppointmentsMode                    TYPE clike OPTIONAL
                iconShape                    TYPE clike OPTIONAL
                maxDate                    TYPE clike OPTIONAL
                minDate                    TYPE clike OPTIONAL
                noDataText                    TYPE clike OPTIONAL
                primaryCalendarType                    TYPE clike OPTIONAL
                secondaryCalendarType                    TYPE clike OPTIONAL
                intervalSelect                    TYPE clike OPTIONAL
                rowHeaderPress                    TYPE clike OPTIONAL
                rowSelectionChange                    TYPE clike OPTIONAL
                startDateChange                    TYPE clike OPTIONAL
                viewChange                    TYPE clike OPTIONAL
                stickyHeader                    TYPE clike OPTIONAL
                viewKey                    TYPE clike OPTIONAL
                width                    TYPE clike OPTIONAL
                singleSelection                    TYPE clike OPTIONAL
                showRowHeaders                    TYPE clike OPTIONAL
                multipleAppointmentsSelection                    TYPE clike OPTIONAL
                showIntervalHeaders                    TYPE clike OPTIONAL
          PREFERRED PARAMETER rows
      RETURNING VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.


    METHODS planning_calendar_view
      IMPORTING
        !appointmentHeight                     TYPE clike OPTIONAL
        !description                     TYPE clike OPTIONAL
        !intervalLabelFormatter                     TYPE clike OPTIONAL
        !intervalSize                     TYPE clike OPTIONAL
        !intervalsL                     TYPE clike OPTIONAL
        !intervalsM                     TYPE clike OPTIONAL
        !intervalsS                     TYPE clike OPTIONAL
        !intervalType                     TYPE clike OPTIONAL
        !key                     TYPE clike OPTIONAL
        !relative                     TYPE clike OPTIONAL
        !showSubIntervals                     TYPE clike OPTIONAL
      RETURNING VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS planning_calendar_row
      IMPORTING appointments                  TYPE clike OPTIONAL
                intervalheaders               TYPE clike OPTIONAL
                !icon                         TYPE clike OPTIONAL
                !title                        TYPE clike OPTIONAL
                !key                          TYPE clike OPTIONAL
                !text                         TYPE clike OPTIONAL
                enableappointmentscreate      TYPE clike OPTIONAL
                enableappointmentsdraganddrop TYPE clike OPTIONAL
                enableappointmentsresize      TYPE clike OPTIONAL
                noAppointmentsText                TYPE clike OPTIONAL
                nonWorkingHours                TYPE clike OPTIONAL
                rowHeaderDescription                TYPE clike OPTIONAL
                nonworkingdays                TYPE clike OPTIONAL
                selected                      TYPE clike OPTIONAL
                appointmentcreate             TYPE clike OPTIONAL
                appointmentdragenter          TYPE clike OPTIONAL
                appointmentdrop               TYPE clike OPTIONAL
                appointmentresize             TYPE clike OPTIONAL
                id             TYPE clike OPTIONAL
                class             TYPE clike OPTIONAL
          PREFERRED PARAMETER appointments
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS planning_calendar_legend
      IMPORTING items            TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                appointmentitems TYPE clike OPTIONAL
                standarditems    TYPE clike OPTIONAL
                columnWidth    TYPE clike OPTIONAL
                visible    TYPE clike OPTIONAL
          PREFERRED PARAMETER items
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS calendar_legend_item
      IMPORTING !text         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                tooltip       TYPE clike OPTIONAL
                !color        TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS appointment_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS info_label
      IMPORTING !id           TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                rendermode    TYPE clike OPTIONAL
                colorscheme   TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                displayonly   TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS rows
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS appointments
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS calendar_appointment
      IMPORTING startdate     TYPE clike OPTIONAL
                enddate       TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !title        TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                tentative     TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                !selected          TYPE clike OPTIONAL
          PREFERRED PARAMETER startdate
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS interval_headers
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS block_layout
      IMPORTING !background   TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS block_layout_row
      IMPORTING rowcolorset   TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS block_layout_cell
      IMPORTING backgroundcolorset   TYPE clike OPTIONAL
                backgroundcolorshade TYPE clike OPTIONAL
                !title               TYPE clike OPTIONAL
                titlealignment       TYPE clike OPTIONAL
                titlelevel           TYPE clike OPTIONAL
                !width               TYPE clike OPTIONAL
                !class               TYPE clike OPTIONAL
                !id                  TYPE clike OPTIONAL
      RETURNING VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_identifier
      IMPORTING emptyindicatormode TYPE clike OPTIONAL
                !text              TYPE clike OPTIONAL
                textdirection      TYPE clike OPTIONAL
                !title             TYPE clike OPTIONAL
                titleactive        TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                titlepress         TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_status
      IMPORTING active                TYPE clike OPTIONAL
                emptyindicatormode    TYPE clike OPTIONAL
                !icon                 TYPE clike OPTIONAL
                icondensityaware      TYPE clike OPTIONAL
                !inverted             TYPE clike OPTIONAL
                !state                TYPE clike OPTIONAL
                stateannouncementtext TYPE clike OPTIONAL
                !text                 TYPE clike OPTIONAL
                textdirection         TYPE clike OPTIONAL
                !title                TYPE clike OPTIONAL
                press                 TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
                !id                   TYPE clike OPTIONAL
                !class                TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS tree
      IMPORTING !id                    TYPE clike     OPTIONAL
                items                  TYPE clike     OPTIONAL
                headertext             TYPE clike     OPTIONAL
                footertext             TYPE clike     OPTIONAL
                !mode                  TYPE clike     OPTIONAL
                includeiteminselection TYPE abap_bool OPTIONAL
                inset                  TYPE abap_bool OPTIONAL
                !width                 TYPE clike     OPTIONAL
                toggleopenstate        TYPE clike     OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS standard_tree_item
      IMPORTING !title        TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                detailpress   TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                counter       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon_tab_bar
      IMPORTING !class                 TYPE clike OPTIONAL
                !select                TYPE clike OPTIONAL
                !expand                TYPE clike OPTIONAL
                expandable             TYPE clike OPTIONAL
                expanded               TYPE clike OPTIONAL
                selectedkey            TYPE clike OPTIONAL
                uppercase              TYPE clike OPTIONAL
                tabsoverflowmode       TYPE clike OPTIONAL
                tabdensitymode         TYPE clike OPTIONAL
                stretchcontentheight   TYPE clike OPTIONAL
                maxnestinglevel        TYPE clike OPTIONAL
                headermode             TYPE clike OPTIONAL
                headerbackgrounddesign TYPE clike OPTIONAL
                enabletabreordering    TYPE clike OPTIONAL
                backgrounddesign       TYPE clike OPTIONAL
                applycontentpadding    TYPE clike OPTIONAL
                items                  TYPE clike OPTIONAL
                content                TYPE clike OPTIONAL
                !id                    TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon_tab_filter
      IMPORTING items            TYPE clike OPTIONAL
                showall          TYPE clike OPTIONAL
                !icon            TYPE clike OPTIONAL
                iconcolor        TYPE clike OPTIONAL
                !count           TYPE clike OPTIONAL
                !text            TYPE clike OPTIONAL
                !key             TYPE clike OPTIONAL
                design           TYPE clike OPTIONAL
                icondensityaware TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                textdirection    TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon_tab_separator
      IMPORTING !icon            TYPE clike OPTIONAL
                icondensityaware TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS _z2ui5
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view_cc.

    METHODS gantt_chart_container
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS container_toolbar
      IMPORTING showsearchbutton          TYPE clike OPTIONAL
                aligncustomcontenttoright TYPE clike OPTIONAL
                findmode                  TYPE clike OPTIONAL
                findbuttonpress           TYPE clike OPTIONAL
                infoofselectitems         TYPE clike OPTIONAL
                showbirdeyebutton         TYPE clike OPTIONAL
                showdisplaytypebutton     TYPE clike OPTIONAL
                showlegendbutton          TYPE clike OPTIONAL
                showsettingbutton         TYPE clike OPTIONAL
                showtimezoomcontrol       TYPE clike OPTIONAL
                stepcountofslider         TYPE clike OPTIONAL
                zoomcontroltype           TYPE clike OPTIONAL
                zoomlevel                 TYPE clike OPTIONAL
      RETURNING VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS gantt_chart_with_table
      IMPORTING !id                       TYPE clike OPTIONAL
                shapeselectionmode        TYPE clike OPTIONAL
                isconnectordetailsvisible TYPE clike OPTIONAL
      RETURNING VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS axis_time_strategy
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS proportion_zoom_strategy
      IMPORTING zoomlevel     TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS total_horizon
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS time_horizon
      IMPORTING starttime     TYPE clike OPTIONAL
                endtime       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS visible_horizon
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS row_settings_template
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS gantt_row_settings
      IMPORTING rowid         TYPE clike OPTIONAL
                shapes1       TYPE clike OPTIONAL
                relationships TYPE clike OPTIONAL
                shapes2       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS shapes1
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS shapes2
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS task
      IMPORTING !id           TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                !color        TYPE clike OPTIONAL
                endtime       TYPE clike OPTIONAL
                !time         TYPE clike OPTIONAL
                !title        TYPE clike OPTIONAL
                showtitle     TYPE clike OPTIONAL
                connectable   TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS gantt_table
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS rating_indicator
      IMPORTING maxvalue      TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !value        TYPE clike OPTIONAL
                iconsize      TYPE clike OPTIONAL
                tooltip       TYPE clike OPTIONAL
                displayonly   TYPE clike OPTIONAL
                !change       TYPE clike OPTIONAL
                !id           TYPE clike OPTIONAL
                editable      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS gantt_toolbar
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS base_rectangle
      IMPORTING !time                   TYPE clike OPTIONAL
                shapeid                 TYPE clike OPTIONAL
                endtime                 TYPE clike OPTIONAL
                selectable              TYPE clike OPTIONAL
                selectedfill            TYPE clike OPTIONAL
                !fill                   TYPE clike OPTIONAL
                height                  TYPE clike OPTIONAL
                !title                  TYPE clike OPTIONAL
                animationsettings       TYPE clike OPTIONAL
                alignshape              TYPE clike OPTIONAL
                !color                  TYPE clike OPTIONAL
                fontsize                TYPE clike OPTIONAL
                connectable             TYPE clike OPTIONAL
                fontfamily              TYPE clike OPTIONAL
                !filter                 TYPE clike OPTIONAL
                transform               TYPE clike OPTIONAL
                countinbirdeye          TYPE clike OPTIONAL
                fontweight              TYPE clike OPTIONAL
                showtitle               TYPE clike OPTIONAL
                selected                TYPE clike OPTIONAL
                resizable               TYPE clike OPTIONAL
                horizontaltextalignment TYPE clike OPTIONAL
                highlighted             TYPE clike OPTIONAL
                highlightable           TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS tool_page
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tool_header
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon_tab_header
      IMPORTING selectedkey         TYPE clike OPTIONAL
                items               TYPE clike OPTIONAL
                !select             TYPE clike OPTIONAL
                !mode               TYPE clike OPTIONAL
                ariatexts           TYPE clike OPTIONAL
                backgrounddesign    TYPE clike OPTIONAL
                enabletabreordering TYPE clike OPTIONAL
                maxnestinglevel     TYPE clike OPTIONAL
                tabdensitymode      TYPE clike OPTIONAL
                tabsoverflowmode    TYPE clike OPTIONAL
                !visible            TYPE clike OPTIONAL
                !id                 TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS nav_container
      IMPORTING initialpage           TYPE clike OPTIONAL
                !id                   TYPE clike OPTIONAL
                defaulttransitionname TYPE clike OPTIONAL
                autofocus             TYPE clike OPTIONAL
                height                TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS pages
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS main_contents
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS table_select_dialog
      IMPORTING confirmbuttontext  TYPE clike OPTIONAL
                contentheight      TYPE clike OPTIONAL
                contentwidth       TYPE clike OPTIONAL
                draggable          TYPE clike OPTIONAL
                growing            TYPE clike OPTIONAL
                growingthreshold   TYPE clike OPTIONAL
                multiselect        TYPE clike OPTIONAL
                nodatatext         TYPE clike OPTIONAL
                rememberselections TYPE clike OPTIONAL
                resizable          TYPE clike OPTIONAL
                searchplaceholder  TYPE clike OPTIONAL
                showclearbutton    TYPE clike OPTIONAL
                !title             TYPE clike OPTIONAL
                titlealignment     TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                items              TYPE clike OPTIONAL
                livechange         TYPE clike OPTIONAL
                cancel             TYPE clike OPTIONAL
                !search            TYPE clike OPTIONAL
                confirm            TYPE clike OPTIONAL
                selectionchange    TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS process_flow
      IMPORTING !id           TYPE clike OPTIONAL
                foldedcorners TYPE clike OPTIONAL
                scrollable    TYPE clike OPTIONAL
                showlabels    TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                wheelzoomable TYPE clike OPTIONAL
                headerpress   TYPE clike OPTIONAL
                labelpress    TYPE clike OPTIONAL
                nodepress     TYPE clike OPTIONAL
                onerror       TYPE clike OPTIONAL
                lanes         TYPE clike OPTIONAL
                !nodes        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS nodes
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS node
      IMPORTING !id                   TYPE clike OPTIONAL
                !class                TYPE clike OPTIONAL
                altText               TYPE clike OPTIONAL
                collapsed             TYPE clike OPTIONAL
                coreNodeSize          TYPE clike OPTIONAL
                !description          TYPE clike OPTIONAL
                descriptionLineSize   TYPE clike OPTIONAL
                !group                TYPE clike OPTIONAL
                headerCheckBoxState   TYPE clike OPTIONAL
                height                TYPE clike OPTIONAL
                !title                TYPE clike OPTIONAL
                !icon                 TYPE clike OPTIONAL
                iconSize              TYPE clike OPTIONAL
                !key                  TYPE clike OPTIONAL
                maxWidth              TYPE clike OPTIONAL
                selected              TYPE clike OPTIONAL
                shape                 TYPE clike OPTIONAL
                showActionLinksButton TYPE clike OPTIONAL
                showDetailButton      TYPE clike OPTIONAL
                showExpandButton      TYPE clike OPTIONAL
                statusIcon            TYPE clike OPTIONAL
                titleLineSize         TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                !x                    TYPE clike OPTIONAL
                y                     TYPE clike OPTIONAL
                collapseExpand        TYPE clike OPTIONAL
                headerCheckBoxPress   TYPE clike OPTIONAL
                hover                 TYPE clike OPTIONAL
                press                 TYPE clike OPTIONAL
                !attributes           TYPE clike OPTIONAL
                actionbuttons         TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS node_image
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                src           TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS lanes
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS process_flow_node
      IMPORTING laneid            TYPE clike OPTIONAL
                nodeid            TYPE clike OPTIONAL
                !title            TYPE clike OPTIONAL
                titleabbreviation TYPE clike OPTIONAL
                children          TYPE clike OPTIONAL
                !state            TYPE clike OPTIONAL
                statetext         TYPE clike OPTIONAL
                texts             TYPE clike OPTIONAL
                highlighted       TYPE clike OPTIONAL
                focused           TYPE clike OPTIONAL
                selected          TYPE clike OPTIONAL
                tag               TYPE clike OPTIONAL
                !type             TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS process_flow_lane_header
      IMPORTING iconsrc       TYPE clike OPTIONAL
                laneid        TYPE clike OPTIONAL
                !position     TYPE clike OPTIONAL
                !state        TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                zoomlevel     TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS view_settings_dialog
      IMPORTING confirm                  TYPE clike OPTIONAL
                cancel                   TYPE clike OPTIONAL
                filterdetailpageopened   TYPE clike OPTIONAL
                !reset                   TYPE clike OPTIONAL
                resetfilters             TYPE clike OPTIONAL
                filtersearchoperator     TYPE clike OPTIONAL
                groupdescending          TYPE clike OPTIONAL
                sortdescending           TYPE clike OPTIONAL
                !title                   TYPE clike OPTIONAL
                titlealignment           TYPE clike OPTIONAL
                selectedgroupitem        TYPE clike OPTIONAL
                selectedpresetfilteritem TYPE clike OPTIONAL
                selectedsortitem         TYPE clike OPTIONAL
                filteritems              TYPE clike OPTIONAL
                sortitems                TYPE clike OPTIONAL
                groupitems               TYPE clike OPTIONAL
      RETURNING VALUE(result)            TYPE REF TO z2ui5_cl_xml_view.

    METHODS filter_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS sort_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS group_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS view_settings_filter_item
      IMPORTING !enabled      TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                multiselect   TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS view_settings_item
      IMPORTING !enabled      TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                textdirection TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_management
      IMPORTING defaultvariantkey      TYPE clike OPTIONAL
                !enabled               TYPE clike OPTIONAL
                inerrorstate           TYPE clike OPTIONAL
                initialselectionkey    TYPE clike OPTIONAL
                lifecyclesupport       TYPE clike OPTIONAL
                selectionkey           TYPE clike OPTIONAL
                showcreatetile         TYPE clike OPTIONAL
                showexecuteonselection TYPE clike OPTIONAL
                showsetasdefault       TYPE clike OPTIONAL
                showshare              TYPE clike OPTIONAL
                standarditemauthor     TYPE clike OPTIONAL
                standarditemtext       TYPE clike OPTIONAL
                usefavorites           TYPE clike OPTIONAL
                !visible               TYPE clike OPTIONAL
                variantitems           TYPE clike OPTIONAL
                manage                 TYPE clike OPTIONAL
                !save                  TYPE clike OPTIONAL
                !select                TYPE clike OPTIONAL
                uservarcreate          TYPE clike OPTIONAL
                !id                    TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_item
      IMPORTING executeonselection      TYPE clike OPTIONAL
                !global                 TYPE clike OPTIONAL
                labelreadonly           TYPE clike OPTIONAL
                lifecyclepackage        TYPE clike OPTIONAL
                lifecycletransportid    TYPE clike OPTIONAL
                namespace               TYPE clike OPTIONAL
                readonly                TYPE clike OPTIONAL
                executeonselect         TYPE clike OPTIONAL
                author                  TYPE clike OPTIONAL
                changeable              TYPE clike OPTIONAL
                !enabled                TYPE clike OPTIONAL
                favorite                TYPE clike OPTIONAL
                !key                    TYPE clike OPTIONAL
                !text                   TYPE clike OPTIONAL
                !title                  TYPE clike OPTIONAL
                textdirection           TYPE clike OPTIONAL
                originaltitle           TYPE clike OPTIONAL
                originalexecuteonselect TYPE clike OPTIONAL
                remove                  TYPE clike OPTIONAL
                !rename                 TYPE clike OPTIONAL
                originalfavorite        TYPE clike OPTIONAL
                !sharing                TYPE clike OPTIONAL
                !change                 TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.


    METHODS variant_management_sapm
      IMPORTING !creationAllowed      TYPE clike OPTIONAL
                !defaultKey               TYPE clike OPTIONAL
                !inErrorState           TYPE clike OPTIONAL
                !level    TYPE clike OPTIONAL
                !maxWidth       TYPE clike OPTIONAL
                !modified           TYPE clike OPTIONAL
                !popoverTitle         TYPE clike OPTIONAL
                !selectedKey TYPE clike OPTIONAL
                !showFooter       TYPE clike OPTIONAL
                !showSaveAs              TYPE clike OPTIONAL
                !supportApplyAutomatically     TYPE clike OPTIONAL
                !supportContexts       TYPE clike OPTIONAL
                !supportDefault           TYPE clike OPTIONAL
                !supportFavorites               TYPE clike OPTIONAL
                !supportPublic           TYPE clike OPTIONAL
                !titleStyle                 TYPE clike OPTIONAL
                !visible                  TYPE clike OPTIONAL
                !items                TYPE clike OPTIONAL
                !cancel          TYPE clike OPTIONAL
                !manage          TYPE clike OPTIONAL
                !manageCancel          TYPE clike OPTIONAL
                !save          TYPE clike OPTIONAL
                !select          TYPE clike OPTIONAL
                !id                    TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_item_sapm
      IMPORTING !author      TYPE clike OPTIONAL
                !changeable                 TYPE clike OPTIONAL
                !contexts                 TYPE clike OPTIONAL
                !executeOnSelect                 TYPE clike OPTIONAL
                !favorite                 TYPE clike OPTIONAL
                !key                 TYPE clike OPTIONAL
                !remove                 TYPE clike OPTIONAL
                !rename                 TYPE clike OPTIONAL
                !sharing                 TYPE clike OPTIONAL
                !title                 TYPE clike OPTIONAL
                !visible                 TYPE clike OPTIONAL
                !id                 TYPE clike OPTIONAL
                !textDirection                 TYPE clike OPTIONAL
                !text                 TYPE clike OPTIONAL
                !enabled                 TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS feed_input
      IMPORTING buttontooltip    TYPE clike OPTIONAL
                !enabled         TYPE clike OPTIONAL
                growing          TYPE clike OPTIONAL
                growingmaxlines  TYPE clike OPTIONAL
                !icon            TYPE clike OPTIONAL
                icondensityaware TYPE clike OPTIONAL
                icondisplayshape TYPE clike OPTIONAL
                iconinitials     TYPE clike OPTIONAL
                iconsize         TYPE clike OPTIONAL
                maxlength        TYPE clike OPTIONAL
                placeholder      TYPE clike OPTIONAL
                !rows            TYPE clike OPTIONAL
                showexceededtext TYPE clike OPTIONAL
                showicon         TYPE clike OPTIONAL
                !value           TYPE clike OPTIONAL
                post             TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS feed_list_item
      IMPORTING activeicon                  TYPE clike OPTIONAL
                convertedlinksdefaulttarget TYPE clike OPTIONAL
                convertlinkstoanchortags    TYPE clike OPTIONAL
                !icon                       TYPE clike OPTIONAL
                iconactive                  TYPE clike OPTIONAL
                icondensityaware            TYPE clike OPTIONAL
                icondisplayshape            TYPE clike OPTIONAL
                iconinitials                TYPE clike OPTIONAL
                iconsize                    TYPE clike OPTIONAL
                info                        TYPE clike OPTIONAL
                lesslabel                   TYPE clike OPTIONAL
                maxcharacters               TYPE clike OPTIONAL
                morelabel                   TYPE clike OPTIONAL
                sender                      TYPE clike OPTIONAL
                senderactive                TYPE clike OPTIONAL
                showicon                    TYPE clike OPTIONAL
                !text                       TYPE clike OPTIONAL
                !timestamp                  TYPE clike OPTIONAL
                iconpress                   TYPE clike OPTIONAL
                senderpress                 TYPE clike OPTIONAL
      RETURNING VALUE(result)               TYPE REF TO z2ui5_cl_xml_view.

    METHODS feed_list_item_action
      IMPORTING !enabled      TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS mask_input
      IMPORTING placeholder           TYPE clike OPTIONAL
                !mask                 TYPE clike OPTIONAL
                !name                 TYPE clike OPTIONAL
                textalign             TYPE clike OPTIONAL
                textdirection         TYPE clike OPTIONAL
                !value                TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                valuestate            TYPE clike OPTIONAL
                valuestatetext        TYPE clike OPTIONAL
                placeholdersymbol     TYPE clike OPTIONAL
                !required             TYPE clike OPTIONAL
                showclearicon         TYPE clike OPTIONAL
                showvaluestatemessage TYPE clike OPTIONAL
                !visible              TYPE clike OPTIONAL
                fieldwidth            TYPE clike OPTIONAL
                livechange            TYPE clike OPTIONAL
                !change               TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS responsive_splitter
      IMPORTING defaultpane   TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS pane_container
      IMPORTING resize        TYPE clike OPTIONAL
                orientation   TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS split_pane
      IMPORTING !id                 TYPE clike OPTIONAL
                requiredparentwidth TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS splitter_layout_data
      IMPORTING !size         TYPE clike OPTIONAL
                minsize       TYPE clike OPTIONAL
                resizable     TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_header
      IMPORTING backgrounddesign     TYPE clike OPTIONAL
                condensed            TYPE clike OPTIONAL
                fullscreenoptimized  TYPE clike OPTIONAL
                !icon                TYPE clike OPTIONAL
                iconactive           TYPE clike OPTIONAL
                iconalt              TYPE clike OPTIONAL
                icondensityaware     TYPE clike OPTIONAL
                icontooltip          TYPE clike OPTIONAL
                imageshape           TYPE clike OPTIONAL
                intro                TYPE clike OPTIONAL
                introactive          TYPE clike OPTIONAL
                introhref            TYPE clike OPTIONAL
                introtarget          TYPE clike OPTIONAL
                introtextdirection   TYPE clike OPTIONAL
                !number              TYPE clike OPTIONAL
                numberstate          TYPE clike OPTIONAL
                numbertextdirection  TYPE clike OPTIONAL
                numberunit           TYPE clike OPTIONAL
                responsive           TYPE clike OPTIONAL
                showtitleselector    TYPE clike OPTIONAL
                !title               TYPE clike OPTIONAL
                titleactive          TYPE clike OPTIONAL
                titlehref            TYPE clike OPTIONAL
                titlelevel           TYPE clike OPTIONAL
                titleselectortooltip TYPE clike OPTIONAL
                titletarget          TYPE clike OPTIONAL
                titletextdirection   TYPE clike OPTIONAL
                iconpress            TYPE clike OPTIONAL
                intropress           TYPE clike OPTIONAL
                titlepress           TYPE clike OPTIONAL
                titleselectorpress   TYPE clike OPTIONAL
      RETURNING VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS additional_numbers
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS header_container
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS markers
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS statuses
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS status
      IMPORTING !id                         TYPE clike OPTIONAL
                !class                      TYPE clike OPTIONAL
                backgroundColor             TYPE clike OPTIONAL
                borderColor                 TYPE clike OPTIONAL
                borderStyle                 TYPE clike OPTIONAL
                borderWidth                 TYPE clike OPTIONAL
                contentColor                TYPE clike OPTIONAL
                headerContentColor          TYPE clike OPTIONAL
                hoverBackgroundColor        TYPE clike OPTIONAL
                hoverBorderColor            TYPE clike OPTIONAL
                hoverContentColor           TYPE clike OPTIONAL
                !key                        TYPE clike OPTIONAL
                legendColor                 TYPE clike OPTIONAL
                selectedBackgroundColor     TYPE clike OPTIONAL
                selectedBorderColor         TYPE clike OPTIONAL
                selectedContentColor        TYPE clike OPTIONAL
                !title                      TYPE clike OPTIONAL
                useFocusColorAsContentColor TYPE clike OPTIONAL
                !visible                    TYPE clike OPTIONAL
      RETURNING VALUE(result)               TYPE REF TO z2ui5_cl_xml_view.

    METHODS first_status
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS second_status
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_marker
      IMPORTING additionalinfo TYPE clike OPTIONAL
                !type          TYPE clike OPTIONAL
                visibility     TYPE clike OPTIONAL
                !visible       TYPE clike OPTIONAL
                press          TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_list_item
      IMPORTING activeicon          TYPE clike OPTIONAL
                !icon               TYPE clike OPTIONAL
                icondensityaware    TYPE clike OPTIONAL
                intro               TYPE clike OPTIONAL
                introtextdirection  TYPE clike OPTIONAL
                !number             TYPE clike OPTIONAL
                numberstate         TYPE clike OPTIONAL
                numbertextdirection TYPE clike OPTIONAL
                numberunit          TYPE clike OPTIONAL
                !title              TYPE clike OPTIONAL
                titletextdirection  TYPE clike OPTIONAL
                press               TYPE clike OPTIONAL
                selected            TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS detail_box
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS light_box
      IMPORTING id           TYPE clike OPTIONAL
                class        TYPE clike OPTIONAL
                visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS light_box_item
      IMPORTING alt           TYPE clike OPTIONAL
                imagesrc      TYPE clike OPTIONAL
                subtitle      TYPE clike OPTIONAL
                title        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS line_micro_chart
      IMPORTING color                TYPE clike OPTIONAL
                height                TYPE clike OPTIONAL
                leftbottomlabel       TYPE clike OPTIONAL
                lefttoplabel          TYPE clike OPTIONAL
                maxxvalue             TYPE clike OPTIONAL
                minxvalue             TYPE clike OPTIONAL
                minyvalue             TYPE clike OPTIONAL
                rightbottomlabel      TYPE clike OPTIONAL
                righttoplabel         TYPE clike OPTIONAL
                !size                 TYPE clike OPTIONAL
                threshold             TYPE clike OPTIONAL
                thresholddisplayvalue TYPE clike OPTIONAL
                !width                TYPE clike OPTIONAL
                press                 TYPE clike OPTIONAL
                hideonnodata          TYPE clike OPTIONAL
                showbottomlabels      TYPE clike OPTIONAL
                showpoints            TYPE clike OPTIONAL
                showthresholdline     TYPE clike OPTIONAL
                showthresholdvalue    TYPE clike OPTIONAL
                showtoplabels         TYPE clike OPTIONAL
                maxyvalue             TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.
    METHODS line_micro_chart_line
      IMPORTING
        !points                TYPE clike OPTIONAL
        !color                TYPE clike OPTIONAL
        !type                TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.
    METHODS line_micro_chart_point
      IMPORTING
        !x                TYPE clike OPTIONAL
        !y                TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.
    METHODS line_micro_chart_empszd_point
      IMPORTING
        !x                TYPE clike OPTIONAL
        !y                TYPE clike OPTIONAL
        !color                TYPE clike OPTIONAL
        !show                TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.
    METHODS stacked_bar_micro_chart
      IMPORTING height           TYPE clike OPTIONAL
                press            TYPE clike OPTIONAL
                maxvalue         TYPE clike OPTIONAL
                precision        TYPE clike OPTIONAL
                !size            TYPE clike OPTIONAL
                hideonnodata     TYPE clike OPTIONAL
                displayzerovalue TYPE clike OPTIONAL
                showlabels       TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_micro_chart
      IMPORTING !width            TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                !size             TYPE clike OPTIONAL
                aligncontent      TYPE clike OPTIONAL
                hideonnodata      TYPE clike OPTIONAL
                allowcolumnlabels TYPE clike OPTIONAL
                showbottomlabels  TYPE clike OPTIONAL
                showtoplabels     TYPE clike OPTIONAL
                height            TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.
    METHODS column_micro_chart_data
      IMPORTING value            TYPE clike OPTIONAL
                label             TYPE clike OPTIONAL
                displayValue             TYPE clike OPTIONAL
                color      TYPE clike OPTIONAL
                press      TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.
    METHODS comparison_micro_chart
      IMPORTING colorpalette  TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                !size         TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                maxvalue      TYPE clike OPTIONAL
                minvalue      TYPE clike OPTIONAL
                scale         TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                hideonnodata  TYPE clike OPTIONAL
                shrinkable    TYPE clike OPTIONAL
                view          TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS delta_micro_chart
      IMPORTING !color            TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                !size             TYPE clike OPTIONAL
                height            TYPE clike OPTIONAL
                !width            TYPE clike OPTIONAL
                deltadisplayvalue TYPE clike OPTIONAL
                displayvalue1     TYPE clike OPTIONAL
                displayvalue2     TYPE clike OPTIONAL
                title2            TYPE clike OPTIONAL
                value1            TYPE clike OPTIONAL
                value2            TYPE clike OPTIONAL
                view              TYPE clike OPTIONAL
                hideonnodata      TYPE clike OPTIONAL
                title1            TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS bullet_micro_chart
      IMPORTING actualvaluelabel  TYPE clike OPTIONAL
                press             TYPE clike OPTIONAL
                !size             TYPE clike OPTIONAL
                height            TYPE clike OPTIONAL
                !width            TYPE clike OPTIONAL
                deltavaluelabel   TYPE clike OPTIONAL
                maxvalue          TYPE clike OPTIONAL
                minvalue          TYPE clike OPTIONAL
                !mode             TYPE clike OPTIONAL
                scale             TYPE clike OPTIONAL
                targetvalue       TYPE clike OPTIONAL
                targetvaluelabel  TYPE clike OPTIONAL
                scalecolor        TYPE clike OPTIONAL
                hideonnodata      TYPE clike OPTIONAL
                showactualvalue   TYPE clike OPTIONAL
                showdeltavalue    TYPE clike OPTIONAL
                showtargetvalue   TYPE clike OPTIONAL
                showthresholds    TYPE clike OPTIONAL
                showvaluemarker   TYPE clike OPTIONAL
                smallrangeallowed TYPE clike OPTIONAL
                forecastvalue     TYPE clike OPTIONAL
                savidm            TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS harvey_ball_micro_chart
      IMPORTING colorpalette   TYPE clike OPTIONAL
                press          TYPE clike OPTIONAL
                !size          TYPE clike OPTIONAL
                height         TYPE clike OPTIONAL
                !width         TYPE clike OPTIONAL
                !total         TYPE clike OPTIONAL
                totallabel     TYPE clike OPTIONAL
                aligncontent   TYPE clike OPTIONAL
                hideonnodata   TYPE clike OPTIONAL
                formattedlabel TYPE clike OPTIONAL
                showfractions  TYPE clike OPTIONAL
                showtotal      TYPE clike OPTIONAL
                totalscale     TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS area_micro_chart
      IMPORTING colorpalette  TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                !size         TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                maxxvalue     TYPE clike OPTIONAL
                maxyvalue     TYPE clike OPTIONAL
                minxvalue     TYPE clike OPTIONAL
                minyvalue     TYPE clike OPTIONAL
                view          TYPE clike OPTIONAL
                aligncontent  TYPE clike OPTIONAL
                hideonnodata  TYPE clike OPTIONAL
                showlabel     TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS data
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS rich_text_editor
      IMPORTING buttongroups       TYPE clike OPTIONAL
                customtoolbar      TYPE clike OPTIONAL
                editable           TYPE clike OPTIONAL
                editortype         TYPE clike OPTIONAL
                height             TYPE clike OPTIONAL
                plugins            TYPE clike OPTIONAL
                !required          TYPE clike OPTIONAL
                sanitizevalue      TYPE clike OPTIONAL
                showgroupclipboard TYPE clike OPTIONAL
                showgroupfont      TYPE clike OPTIONAL
                showgroupfontstyle TYPE clike OPTIONAL
                showgroupinsert    TYPE clike OPTIONAL
                showgrouplink      TYPE clike OPTIONAL
                showgroupstructure TYPE clike OPTIONAL
                showgrouptextalign TYPE clike OPTIONAL
                showgroupundo      TYPE clike OPTIONAL
                textdirection      TYPE clike OPTIONAL
                uselegacytheme     TYPE clike OPTIONAL
                !value             TYPE clike OPTIONAL
                !width             TYPE clike OPTIONAL
                wrapping           TYPE clike OPTIONAL
                beforeeditorinit   TYPE clike OPTIONAL
                !change            TYPE clike OPTIONAL
                ready              TYPE clike OPTIONAL
                readyrecurring     TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS slider
      IMPORTING !max            TYPE clike OPTIONAL
                !min            TYPE clike OPTIONAL
                !step           TYPE clike OPTIONAL
                !value          TYPE clike OPTIONAL
                enabletickmarks TYPE clike OPTIONAL
                !width          TYPE clike OPTIONAL
                !class          TYPE clike OPTIONAL
                !id             TYPE clike OPTIONAL
                !enabled        TYPE clike OPTIONAL
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS upload_set
      IMPORTING !id                     TYPE clike OPTIONAL
                instantupload           TYPE clike OPTIONAL
                showicons               TYPE clike OPTIONAL
                uploadenabled           TYPE clike OPTIONAL
                terminationenabled      TYPE clike OPTIONAL
                filetypes               TYPE clike OPTIONAL
                maxfilenamelength       TYPE clike OPTIONAL
                maxfilesize             TYPE clike OPTIONAL
                mediatypes              TYPE clike OPTIONAL
                uploadurl               TYPE clike OPTIONAL
                items                   TYPE clike OPTIONAL
                !mode                   TYPE clike OPTIONAL
                selectionchanged        TYPE clike OPTIONAL
                uploadcompleted         TYPE clike OPTIONAL
                afteritemadded          TYPE clike OPTIONAL
                samefilenameallowed     TYPE clike OPTIONAL
                uploadbuttoninvisible   TYPE clike OPTIONAL
                !directory              TYPE clike OPTIONAL
                !multiple               TYPE clike OPTIONAL
                dragdropdescription     TYPE clike OPTIONAL
                dragdroptext            TYPE clike OPTIONAL
                nodatatext              TYPE clike OPTIONAL
                nodatadescription       TYPE clike OPTIONAL
                nodataillustrationtype  TYPE clike OPTIONAL
                afteritemedited         TYPE clike OPTIONAL
                afteritemremoved        TYPE clike OPTIONAL
                beforeitemadded         TYPE clike OPTIONAL
                beforeitemedited        TYPE clike OPTIONAL
                beforeitemremoved       TYPE clike OPTIONAL
                beforeuploadstarts      TYPE clike OPTIONAL
                beforeuploadtermination TYPE clike OPTIONAL
                filenamelengthexceeded  TYPE clike OPTIONAL
                filerenamed             TYPE clike OPTIONAL
                filesizeexceeded        TYPE clike OPTIONAL
                filetypemismatch        TYPE clike OPTIONAL
                itemdragstart           TYPE clike OPTIONAL
                itemdrop                TYPE clike OPTIONAL
                mediatypemismatch       TYPE clike OPTIONAL
                uploadterminated        TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS upload_set_toolbar_placeholder
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS upload_set_item
      IMPORTING filename      TYPE clike OPTIONAL
                mediatype     TYPE clike OPTIONAL
                url           TYPE clike OPTIONAL
                thumbnailurl  TYPE clike OPTIONAL
                markers       TYPE clike OPTIONAL
                statuses      TYPE clike OPTIONAL
                enablededit   TYPE clike OPTIONAL
                enabledremove TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                visibleedit   TYPE clike OPTIONAL
                visibleremove TYPE clike OPTIONAL
                uploadstate   TYPE clike OPTIONAL
                uploadurl     TYPE clike OPTIONAL
                openpressed   TYPE clike OPTIONAL
                removepressed TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS markers_as_status
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS rules
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS mask_input_rule
      IMPORTING maskformatsymbol TYPE clike OPTIONAL
                !regex           TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS side_panel
      IMPORTING actionbarexpanded         TYPE clike OPTIONAL
                arialabel                 TYPE clike OPTIONAL
                sidepanelmaxwidth         TYPE clike OPTIONAL
                sidepanelminwidth         TYPE clike OPTIONAL
                sidepanelposition         TYPE clike OPTIONAL
                sidepanelresizable        TYPE clike OPTIONAL
                sidepanelresizelargerstep TYPE clike OPTIONAL
                sidepanelresizestep       TYPE clike OPTIONAL
                sidepanelwidth            TYPE clike OPTIONAL
                toggle                    TYPE clike OPTIONAL
      RETURNING VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS side_panel_item
      IMPORTING !icon         TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS main_content
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view
      IMPORTING placement     TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                afterclose    TYPE clike OPTIONAL
                afteropen     TYPE clike OPTIONAL
                beforeclose   TYPE clike OPTIONAL
                beforeopen    TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_page
      IMPORTING !description  TYPE clike OPTIONAL
                !header       TYPE clike OPTIONAL
                pageid        TYPE clike OPTIONAL
                !title        TYPE clike OPTIONAL
                titleurl      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_page_avatar
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_group
      IMPORTING !heading      TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_group_element
      IMPORTING emailsubject  TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                pagelinkid    TYPE clike OPTIONAL
                !target       TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                url           TYPE clike OPTIONAL
                !value        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_management_fl
      IMPORTING displaytextfsv                TYPE clike OPTIONAL
                editable                      TYPE clike OPTIONAL
                executeonselectionforstandflt TYPE clike OPTIONAL
                headerlevel                   TYPE clike OPTIONAL
                inerrorstate                  TYPE clike OPTIONAL
                maxwidth                      TYPE clike OPTIONAL
                modelname                     TYPE clike OPTIONAL
                resetoncontextchange          TYPE clike OPTIONAL
                showsetasdefault              TYPE clike OPTIONAL
                titlestyle                    TYPE clike OPTIONAL
                updatevariantinurl            TYPE clike OPTIONAL
                !for                          TYPE clike OPTIONAL
                cancel                        TYPE clike OPTIONAL
                initialized                   TYPE clike OPTIONAL
                manage                        TYPE clike OPTIONAL
                !save                         TYPE clike OPTIONAL
                !select                       TYPE clike OPTIONAL
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_element_data
      IMPORTING cellslarge    TYPE clike OPTIONAL
                cellssmall    TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS fb_control
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS smart_variant_management
      IMPORTING !id                    TYPE clike OPTIONAL
                showexecuteonselection TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS form_toolbar
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS paging_button
      IMPORTING !count                TYPE clike OPTIONAL
                nextbuttontooltip     TYPE clike OPTIONAL
                previousbuttontooltip TYPE clike OPTIONAL
                !position             TYPE clike OPTIONAL
      RETURNING VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS timeline
      IMPORTING !id               TYPE clike OPTIONAL
                enabledoublesided TYPE clike OPTIONAL
                groupby           TYPE clike OPTIONAL
                growingthreshold  TYPE clike OPTIONAL
                filtertitle       TYPE clike OPTIONAL
                sortoldestfirst   TYPE clike OPTIONAL
                alignment         TYPE clike OPTIONAL
                axisorientation   TYPE clike OPTIONAL
                content           TYPE clike OPTIONAL
                enablemodelfilter TYPE clike OPTIONAL
                enablescroll      TYPE clike OPTIONAL
                forcegrowing      TYPE clike OPTIONAL
                !group            TYPE clike OPTIONAL
                lazyloading       TYPE clike OPTIONAL
                showheaderbar     TYPE clike OPTIONAL
                showicons         TYPE clike OPTIONAL
                showitemfilter    TYPE clike OPTIONAL
                showsearch        TYPE clike OPTIONAL
                showsort          TYPE clike OPTIONAL
                showtimefilter    TYPE clike OPTIONAL
                !sort             TYPE clike OPTIONAL
                groupbytype       TYPE clike OPTIONAL
                textheight        TYPE clike OPTIONAL
                !width            TYPE clike OPTIONAL
                height            TYPE clike OPTIONAL
                nodatatext        TYPE clike OPTIONAL
                filterlist        TYPE clike OPTIONAL
                customfilter      TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS timeline_item
      IMPORTING !id                 TYPE clike OPTIONAL
                datetime            TYPE clike OPTIONAL
                !title              TYPE clike OPTIONAL
                usernameclickable   TYPE clike OPTIONAL
                useicontooltip      TYPE clike OPTIONAL
                usernameclicked     TYPE clike OPTIONAL
                !select             TYPE clike OPTIONAL
                userpicture         TYPE clike OPTIONAL
                !text               TYPE clike OPTIONAL
                username            TYPE clike OPTIONAL
                filtervalue         TYPE clike OPTIONAL
                icondisplayshape    TYPE clike OPTIONAL
                iconinitials        TYPE clike OPTIONAL
                iconsize            TYPE clike OPTIONAL
                icontooltip         TYPE clike OPTIONAL
                maxcharacters       TYPE clike OPTIONAL
                replycount          TYPE clike OPTIONAL
                !status             TYPE clike OPTIONAL
                customactionclicked TYPE clike OPTIONAL
                press               TYPE clike OPTIONAL
                replylistopen       TYPE clike OPTIONAL
                replypost           TYPE clike OPTIONAL
                !icon               TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS split_container
      IMPORTING !id                         TYPE clike OPTIONAL
                initialdetail               TYPE clike OPTIONAL
                initialmaster               TYPE clike OPTIONAL
                backgroundcolor             TYPE clike OPTIONAL
                backgroundimage             TYPE clike OPTIONAL
                backgroundopacity           TYPE clike OPTIONAL
                backgroundrepeat            TYPE clike OPTIONAL
                defaulttransitionnamedetail TYPE clike OPTIONAL
                defaulttransitionnamemaster TYPE clike OPTIONAL
                masterbuttontext            TYPE clike OPTIONAL
                masterbuttontooltip         TYPE clike OPTIONAL
                !mode                       TYPE clike OPTIONAL
                afterdetailnavigate         TYPE clike OPTIONAL
                aftermasterclose            TYPE clike OPTIONAL
                aftermasternavigate         TYPE clike OPTIONAL
                aftermasteropen             TYPE clike OPTIONAL
                beforemasterclose           TYPE clike OPTIONAL
                beforemasteropen            TYPE clike OPTIONAL
                detailnavigate              TYPE clike OPTIONAL
                masterbutton                TYPE clike OPTIONAL
                masternavigate              TYPE clike OPTIONAL
      RETURNING VALUE(result)               TYPE REF TO z2ui5_cl_xml_view.

    METHODS detail_pages
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS master_pages
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS container_content
      IMPORTING !id           TYPE clike OPTIONAL
                !title        TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS map_container
      IMPORTING !id              TYPE clike OPTIONAL
                autoadjustheight TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS spot
      IMPORTING !id           TYPE clike OPTIONAL
                !position     TYPE clike OPTIONAL
                contentoffset TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                scale         TYPE clike OPTIONAL
                tooltip       TYPE clike OPTIONAL
                image         TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                click         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS analytic_map
      IMPORTING !id             TYPE clike OPTIONAL
                initialposition TYPE clike OPTIONAL
                initialzoom     TYPE clike OPTIONAL
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS spots
      IMPORTING !id           TYPE clike OPTIONAL
                items         TYPE clike OPTIONAL
          PREFERRED PARAMETER items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS vos
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS action_sheet
      IMPORTING !id               TYPE clike OPTIONAL
                cancelbuttontext  TYPE clike OPTIONAL
                placement         TYPE clike OPTIONAL
                showcancelbutton  TYPE clike OPTIONAL
                !title            TYPE clike OPTIONAL
                afterclose        TYPE clike OPTIONAL
                afteropen         TYPE clike OPTIONAL
                beforeclose       TYPE clike OPTIONAL
                beforeopen        TYPE clike OPTIONAL
                cancelbuttonpress TYPE clike OPTIONAL
                !visible          TYPE clike OPTIONAL
                !class            TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS expandable_text
      IMPORTING !id                TYPE clike OPTIONAL
                emptyindicatormode TYPE clike OPTIONAL
                maxcharacters      TYPE clike OPTIONAL
                overflowmode       TYPE clike OPTIONAL
                renderwhitespace   TYPE clike OPTIONAL
                !text              TYPE clike OPTIONAL
                textalign          TYPE clike OPTIONAL
                textdirection      TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                wrappingtype       TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS select
      IMPORTING !id                 TYPE clike OPTIONAL
                autoadjustwidth     TYPE clike OPTIONAL
                columnratio         TYPE clike OPTIONAL
                editable            TYPE clike OPTIONAL
                !enabled            TYPE clike OPTIONAL
                forceselection      TYPE clike OPTIONAL
                !icon               TYPE clike OPTIONAL
                maxwidth            TYPE clike OPTIONAL
                !name               TYPE clike OPTIONAL
                !required           TYPE clike OPTIONAL
                resetonmissingkey   TYPE clike OPTIONAL
                selecteditemid      TYPE clike OPTIONAL
                selectedkey         TYPE clike OPTIONAL
                showsecondaryvalues TYPE clike OPTIONAL
                textalign           TYPE clike OPTIONAL
                textdirection       TYPE clike OPTIONAL
                !type               TYPE clike OPTIONAL
                valuestate          TYPE clike OPTIONAL
                valuestatetext      TYPE clike OPTIONAL
                !visible            TYPE clike OPTIONAL
                !width              TYPE clike OPTIONAL
                wrapitemstext       TYPE clike OPTIONAL
                items               TYPE clike OPTIONAL
                selecteditem        TYPE clike OPTIONAL
                !change             TYPE clike OPTIONAL
                livechange          TYPE clike OPTIONAL
                !class              TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS embedded_control
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS header_container_control
      IMPORTING backgrounddesign TYPE clike OPTIONAL
                gridlayout       TYPE clike OPTIONAL
                height           TYPE clike OPTIONAL
                orientation      TYPE clike OPTIONAL
                scrollstep       TYPE clike OPTIONAL
                scrollstepbyitem TYPE clike OPTIONAL
                scrolltime       TYPE clike OPTIONAL
                showdividers     TYPE clike OPTIONAL
                showoverflowitem TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                !width           TYPE clike OPTIONAL
                !id              TYPE clike OPTIONAL
                !scroll          TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS dependents
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS card
      IMPORTING !id            TYPE clike OPTIONAL
                !class         TYPE clike OPTIONAL
                headerposition TYPE clike OPTIONAL
                height         TYPE clike OPTIONAL
                !visible       TYPE clike OPTIONAL
                !width         TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS card_header
      IMPORTING !id                 TYPE clike OPTIONAL
                !class              TYPE clike OPTIONAL
                iconalt             TYPE clike OPTIONAL
                iconbackgroundcolor TYPE clike OPTIONAL
                icondisplayshape    TYPE clike OPTIONAL
                iconinitials        TYPE clike OPTIONAL
                iconsize            TYPE clike OPTIONAL
                iconsrc             TYPE clike OPTIONAL
                iconvisible         TYPE clike OPTIONAL
                statustext          TYPE clike OPTIONAL
                statusvisible       TYPE clike OPTIONAL
                subtitle            TYPE clike OPTIONAL
                subtitlemaxlines    TYPE clike OPTIONAL
                !title              TYPE clike OPTIONAL
                titlemaxlines       TYPE clike OPTIONAL
                !visible            TYPE clike OPTIONAL
                datatimestamp       TYPE clike OPTIONAL
                press               TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS numeric_header
      IMPORTING !id                     TYPE clike OPTIONAL
                !class                  TYPE clike OPTIONAL
                !visible                TYPE clike OPTIONAL
                datatimestamp           TYPE clike OPTIONAL
                press                   TYPE clike OPTIONAL
                details                 TYPE clike OPTIONAL
                detailsmaxlines         TYPE clike OPTIONAL
                detailsstate            TYPE clike OPTIONAL
                iconalt                 TYPE clike OPTIONAL
                iconbackgroundcolor     TYPE clike OPTIONAL
                icondisplayshape        TYPE clike OPTIONAL
                iconinitials            TYPE clike OPTIONAL
                iconsize                TYPE clike OPTIONAL
                iconsrc                 TYPE clike OPTIONAL
                iconvisible             TYPE clike OPTIONAL
                !number                 TYPE clike OPTIONAL
                numbersize              TYPE clike OPTIONAL
                numbervisible           TYPE clike OPTIONAL
                scale                   TYPE clike OPTIONAL
                sideindicatorsalignment TYPE clike OPTIONAL
                !state                  TYPE clike OPTIONAL
                statustext              TYPE clike OPTIONAL
                statusvisible           TYPE clike OPTIONAL
                subtitle                TYPE clike OPTIONAL
                subtitlemaxlines        TYPE clike OPTIONAL
                !title                  TYPE clike OPTIONAL
                titlemaxlines           TYPE clike OPTIONAL
                trend                   TYPE clike OPTIONAL
                unitofmeasurement       TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS numeric_side_indicator
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                !number       TYPE clike OPTIONAL
                !state        TYPE clike OPTIONAL
                !title        TYPE clike OPTIONAL
                !unit         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS slide_tile
      IMPORTING displaytime    TYPE clike OPTIONAL
                height         TYPE clike OPTIONAL
                !visible       TYPE clike OPTIONAL
                !scope         TYPE clike OPTIONAL
                sizebehavior   TYPE clike OPTIONAL
                transitiontime TYPE clike OPTIONAL
                press          TYPE clike OPTIONAL
                !width         TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS busy_indicator
      IMPORTING !id                     TYPE clike OPTIONAL
                !class                  TYPE clike OPTIONAL
                customicon              TYPE clike OPTIONAL
                customiconheight        TYPE clike OPTIONAL
                customiconrotationspeed TYPE clike OPTIONAL
                customiconwidth         TYPE clike OPTIONAL
                !size                   TYPE clike OPTIONAL
                !text                   TYPE clike OPTIONAL
                textdirection           TYPE clike OPTIONAL
                customicondensityaware  TYPE clike OPTIONAL
                !visible                TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS custom_layout
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS carousel_layout
      IMPORTING visiblepagescount TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS facet_filter
      IMPORTING !id                 TYPE clike OPTIONAL
                !class              TYPE clike OPTIONAL
                livesearch          TYPE clike OPTIONAL
                showpersonalization TYPE clike OPTIONAL
                showpopoverokbutton TYPE clike OPTIONAL
                showreset           TYPE clike OPTIONAL
                showsummarybar      TYPE clike OPTIONAL
                !type               TYPE clike OPTIONAL
                !visible            TYPE clike OPTIONAL
                confirm             TYPE clike OPTIONAL
                !reset              TYPE clike OPTIONAL
                lists               TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS facet_filter_list
      IMPORTING !id                         TYPE clike OPTIONAL
                !class                      TYPE clike OPTIONAL
                active                      TYPE clike OPTIONAL
                allcount                    TYPE clike OPTIONAL
                backgrounddesign            TYPE clike OPTIONAL
                datatype                    TYPE clike OPTIONAL
                enablebusyindicator         TYPE clike OPTIONAL
                enablecaseinsensitivesearch TYPE clike OPTIONAL
                footertext                  TYPE clike OPTIONAL
                growing                     TYPE clike OPTIONAL
                growingdirection            TYPE clike OPTIONAL
                growingscrolltoload         TYPE clike OPTIONAL
                growingthreshold            TYPE clike OPTIONAL
                growingtriggertext          TYPE clike OPTIONAL
                headerlevel                 TYPE clike OPTIONAL
                headertext                  TYPE clike OPTIONAL
                includeiteminselection      TYPE clike OPTIONAL
                inset                       TYPE clike OPTIONAL
                !key                        TYPE clike OPTIONAL
                keyboardmode                TYPE clike OPTIONAL
                !mode                       TYPE clike OPTIONAL
                modeanimationon             TYPE clike OPTIONAL
                multiselectmode             TYPE clike OPTIONAL
                nodatatext                  TYPE clike OPTIONAL
                rememberselections          TYPE clike OPTIONAL
                retainlistsequence          TYPE clike OPTIONAL
                !sequence                   TYPE clike OPTIONAL
                shownodata                  TYPE clike OPTIONAL
                showremovefaceticon         TYPE clike OPTIONAL
                showseparators              TYPE clike OPTIONAL
                showunread                  TYPE clike OPTIONAL
                sticky                      TYPE clike OPTIONAL
                swipedirection              TYPE clike OPTIONAL
                !title                      TYPE clike OPTIONAL
                !visible                    TYPE clike OPTIONAL
                !width                      TYPE clike OPTIONAL
                wordwrap                    TYPE clike OPTIONAL
                listclose                   TYPE clike OPTIONAL
                listopen                    TYPE clike OPTIONAL
                !search                     TYPE clike OPTIONAL
                selectionchange             TYPE clike OPTIONAL
                !delete                     TYPE clike OPTIONAL
                items                       TYPE clike OPTIONAL
      RETURNING VALUE(result)               TYPE REF TO z2ui5_cl_xml_view.

    METHODS facet_filter_item
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !count        TYPE clike OPTIONAL
                counter       TYPE clike OPTIONAL
                highlight     TYPE clike OPTIONAL
                highlighttext TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                navigated     TYPE clike OPTIONAL
                selected      TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                unread        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
                detailpress   TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS draft_indicator
      IMPORTING !id            TYPE clike OPTIONAL
                !class         TYPE clike OPTIONAL
                mindisplaytime TYPE clike OPTIONAL
                !state         TYPE clike OPTIONAL
                !visible       TYPE clike OPTIONAL
      RETURNING VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS html_map
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !name         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS html_area
      IMPORTING !id           TYPE clike OPTIONAL
                shape         TYPE clike OPTIONAL
                coords        TYPE clike OPTIONAL
                alt           TYPE clike OPTIONAL
                !target       TYPE clike OPTIONAL
                href          TYPE clike OPTIONAL
                onclick       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS html_canvas
      IMPORTING !id           TYPE clike OPTIONAL
                !width        TYPE clike OPTIONAL
                height        TYPE clike OPTIONAL
                !style        TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS notification_list
      IMPORTING !id                    TYPE clike OPTIONAL
                !class                 TYPE clike OPTIONAL
                footertext             TYPE clike OPTIONAL
                growing                TYPE clike OPTIONAL
                growingdirection       TYPE clike OPTIONAL
                growingscrolltoload    TYPE clike OPTIONAL
                growingthreshold       TYPE clike OPTIONAL
                growingtriggertext     TYPE clike OPTIONAL
                headerlevel            TYPE clike OPTIONAL
                headertext             TYPE clike OPTIONAL
                includeiteminselection TYPE clike OPTIONAL
                inset                  TYPE clike OPTIONAL
                keyboardmode           TYPE clike OPTIONAL
                !mode                  TYPE clike OPTIONAL
                modeanimationon        TYPE clike OPTIONAL
                multiselectmode        TYPE clike OPTIONAL
                nodatatext             TYPE clike OPTIONAL
                rememberselections     TYPE clike OPTIONAL
                shownodata             TYPE clike OPTIONAL
                showseparators         TYPE clike OPTIONAL
                showunread             TYPE clike OPTIONAL
                sticky                 TYPE clike OPTIONAL
                swipedirection         TYPE clike OPTIONAL
                !visible               TYPE clike OPTIONAL
                !width                 TYPE clike OPTIONAL
                beforeopencontextmenu  TYPE clike OPTIONAL
                !delete                TYPE clike OPTIONAL
                growingfinished        TYPE clike OPTIONAL
                growingstarted         TYPE clike OPTIONAL
                itempress              TYPE clike OPTIONAL
                !select                TYPE clike OPTIONAL
                selectionchange        TYPE clike OPTIONAL
                swipe                  TYPE clike OPTIONAL
                updatefinished         TYPE clike OPTIONAL
                updatestarted          TYPE clike OPTIONAL
      RETURNING VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS notification_list_group
      IMPORTING !id                           TYPE clike OPTIONAL
                autopriority                  TYPE clike OPTIONAL
                collapsed                     TYPE clike OPTIONAL
                enablecollapsebuttonwhenempty TYPE clike OPTIONAL
                highlight                     TYPE clike OPTIONAL
                highlighttext                 TYPE clike OPTIONAL
                navigated                     TYPE clike OPTIONAL
                !priority                     TYPE clike OPTIONAL
                selected                      TYPE clike OPTIONAL
                showbuttons                   TYPE clike OPTIONAL
                showclosebutton               TYPE clike OPTIONAL
                showemptygroup                TYPE clike OPTIONAL
                showitemscounter              TYPE clike OPTIONAL
                !title                        TYPE clike OPTIONAL
                !type                         TYPE clike OPTIONAL
                unread                        TYPE clike OPTIONAL
                !visible                      TYPE clike OPTIONAL
                !class                        TYPE clike OPTIONAL
                oncollapse                    TYPE clike OPTIONAL
      RETURNING VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS notification_list_item
      IMPORTING !id                TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
                authoravatarcolor  TYPE clike OPTIONAL
                authorinitials     TYPE clike OPTIONAL
                !description       TYPE clike OPTIONAL
                hideshowmorebutton TYPE clike OPTIONAL
                !truncate          TYPE clike OPTIONAL
                authorname         TYPE clike OPTIONAL
                authorpicture      TYPE clike OPTIONAL
                counter            TYPE clike OPTIONAL
                datetime           TYPE clike OPTIONAL
                highlight          TYPE clike OPTIONAL
                highlighttext      TYPE clike OPTIONAL
                navigated          TYPE clike OPTIONAL
                !priority          TYPE clike OPTIONAL
                selected           TYPE clike OPTIONAL
                showbuttons        TYPE clike OPTIONAL
                showclosebutton    TYPE clike OPTIONAL
                !title             TYPE clike OPTIONAL
                !type              TYPE clike OPTIONAL
                unread             TYPE clike OPTIONAL
                !close             TYPE clike OPTIONAL
                detailpress        TYPE clike OPTIONAL
                press              TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS wizard
      IMPORTING !id                TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
                backgrounddesign   TYPE clike OPTIONAL
                busy               TYPE clike OPTIONAL
                busyindicatordelay TYPE clike OPTIONAL
                busyindicatorsize  TYPE clike OPTIONAL
                enablebranching    TYPE clike OPTIONAL
                fieldgroupids      TYPE clike OPTIONAL
                finishbuttontext   TYPE clike OPTIONAL
                height             TYPE clike OPTIONAL
                rendermode         TYPE clike OPTIONAL
                shownextbutton     TYPE clike OPTIONAL
                steptitlelevel     TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                !width             TYPE clike OPTIONAL
                complete           TYPE clike OPTIONAL
                navigationchange   TYPE clike OPTIONAL
                stepactivate       TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS wizard_step
      IMPORTING !id                TYPE clike OPTIONAL
                busy               TYPE clike OPTIONAL
                busyindicatordelay TYPE clike OPTIONAL
                busyindicatorsize  TYPE clike OPTIONAL
                fieldgroupids      TYPE clike OPTIONAL
                !icon              TYPE clike OPTIONAL
                !optional          TYPE clike OPTIONAL
                !title             TYPE clike OPTIONAL
                validated          TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                activate           TYPE clike OPTIONAL
                complete           TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS template_repeat
      IMPORTING !list         TYPE clike OPTIONAL
                !var          TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS template_with
      IMPORTING !path         TYPE clike OPTIONAL
                helper        TYPE clike OPTIONAL
                !var          TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS template_if
      IMPORTING !test         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS template_then
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS template_else
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS template_elseif
      IMPORTING !test         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS relationship
      IMPORTING shapeid       TYPE clike OPTIONAL
                !type         TYPE clike OPTIONAL
                successor     TYPE clike OPTIONAL
                predecessor   TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS relationships
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS no_data
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS lines
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS line
      IMPORTING !id              TYPE clike OPTIONAL
                !class           TYPE clike OPTIONAL
                arrowOrientation TYPE clike OPTIONAL
                arrowPosition    TYPE clike OPTIONAL
                !description     TYPE clike OPTIONAL
                !from            TYPE clike OPTIONAL
                lineType         TYPE clike OPTIONAL
                selected         TYPE clike OPTIONAL
                !status          TYPE clike OPTIONAL
                stretchToCenter  TYPE clike OPTIONAL
                !title           TYPE clike OPTIONAL
                !to              TYPE clike OPTIONAL
                !visible         TYPE clike OPTIONAL
                press            TYPE clike OPTIONAL
                hover            TYPE clike OPTIONAL
      RETURNING VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS groups
      IMPORTING !ns              TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS group
      IMPORTING !id                 TYPE clike OPTIONAL
                !class              TYPE clike OPTIONAL
                collapsed           TYPE clike OPTIONAL
                !description        TYPE clike OPTIONAL
                headerCheckBoxState TYPE clike OPTIONAL
                !icon               TYPE clike OPTIONAL
                !key                TYPE clike OPTIONAL
                minWidth            TYPE clike OPTIONAL
                parentGroupKey      TYPE clike OPTIONAL
                !status             TYPE clike OPTIONAL
                !title              TYPE clike OPTIONAL
                !visible            TYPE clike OPTIONAL
                collapseExpand      TYPE clike OPTIONAL
                headerCheckBoxPress TYPE clike OPTIONAL
                showDetail          TYPE clike OPTIONAL
      RETURNING VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS network_graph
      IMPORTING !id             TYPE clike OPTIONAL
                !class          TYPE clike OPTIONAL
                !layout         TYPE clike OPTIONAL
                height          TYPE clike OPTIONAL
                !width          TYPE clike OPTIONAL
                !nodes          TYPE clike OPTIONAL
                !lines          TYPE clike OPTIONAL
                !groups         TYPE clike OPTIONAL
                backgroundColor TYPE clike OPTIONAL
                backgroundImage TYPE clike OPTIONAL
                noDataText      TYPE clike OPTIONAL
                orientation     TYPE clike OPTIONAL
                renderType      TYPE clike OPTIONAL
                enableWheelZoom TYPE clike OPTIONAL
                enableZoom      TYPE clike OPTIONAL
                noData          TYPE clike OPTIONAL
                !visible        TYPE clike OPTIONAL
                afterLayouting  TYPE clike OPTIONAL
                beforeLayouting TYPE clike OPTIONAL
                failure         TYPE clike OPTIONAL
                graphReady      TYPE clike OPTIONAL
                !search         TYPE clike OPTIONAL
                searchSuggest   TYPE clike OPTIONAL
                selectionChange TYPE clike OPTIONAL
                zoomChanged     TYPE clike OPTIONAL
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS layout_algorithm
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS layered_layout
      IMPORTING !id               TYPE clike OPTIONAL
                !class            TYPE clike OPTIONAL
                lineSpacingFactor TYPE clike OPTIONAL
                mergeEdges        TYPE clike OPTIONAL
                nodePlacement     TYPE clike OPTIONAL
                nodeSpacing       TYPE clike OPTIONAL
      RETURNING VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS force_based_layout
      IMPORTING !id             TYPE clike OPTIONAL
                !class          TYPE clike OPTIONAL
                !alpha          TYPE clike OPTIONAL
                charge          TYPE clike OPTIONAL
                friction        TYPE clike OPTIONAL
                maximumDuration TYPE clike OPTIONAL
      RETURNING VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS force_directed_layout
      IMPORTING !id                     TYPE clike OPTIONAL
                !class                  TYPE clike OPTIONAL
                coolDownStep            TYPE clike OPTIONAL
                initialTemperature      TYPE clike OPTIONAL
                maxIterations           TYPE clike OPTIONAL
                maxTime                 TYPE clike OPTIONAL
                optimalDistanceConstant TYPE clike OPTIONAL
                staticNodes             TYPE clike OPTIONAL
      RETURNING VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS noop_layout
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS swim_lane_chain_layout
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS two_columns_layout
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS attributes
      IMPORTING !ns           TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS element_attribute
      IMPORTING !ns           TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !value        TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS action_buttons
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS action_button
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !enabled      TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                !position     TYPE clike OPTIONAL
                !title        TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS routes
      IMPORTING !id           TYPE clike OPTIONAL
                items         TYPE clike OPTIONAL
       PREFERRED PARAMETER items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS legend_area
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS legenditem
      IMPORTING !id           TYPE clike OPTIONAL
                !text         TYPE clike OPTIONAL
                !color        TYPE clike OPTIONAL
      PREFERRED PARAMETER text
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS legend
      IMPORTING !id           TYPE clike OPTIONAL
                items         TYPE clike OPTIONAL
                caption       TYPE clike OPTIONAL
      PREFERRED PARAMETER items
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS route
      IMPORTING !id           TYPE clike OPTIONAL
                !position     TYPE clike OPTIONAL
                routetype     TYPE clike OPTIONAL
                linedash      TYPE clike OPTIONAL
                !color        TYPE clike OPTIONAL
                colorborder   TYPE clike OPTIONAL
                linewidth     TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                afterclose    TYPE clike OPTIONAL
                beforeopen    TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_item
      IMPORTING !id                TYPE clike OPTIONAL
                !class             TYPE clike OPTIONAL
                !icon              TYPE clike OPTIONAL
                label              TYPE clike OPTIONAL
                resetButtonEnabled TYPE clike OPTIONAL
                showCancelButton   TYPE clike OPTIONAL
                showConfirmButton  TYPE clike OPTIONAL
                showResetButton    TYPE clike OPTIONAL
                !visible           TYPE clike OPTIONAL
                cancel             TYPE clike OPTIONAL
                confirm            TYPE clike OPTIONAL
                !reset             TYPE clike OPTIONAL
      RETURNING VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_action_item
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !icon         TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
                press         TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_action
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                category      TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_action_item
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_group
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !change       TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_group_item
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                grouped       TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_sort
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !change       TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_sort_item
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                sortorder     TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_total
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                !change       TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_menu_quick_total_item
      IMPORTING !id           TYPE clike OPTIONAL
                !class        TYPE clike OPTIONAL
                totaled       TYPE clike OPTIONAL
                !key          TYPE clike OPTIONAL
                label         TYPE clike OPTIONAL
                !visible      TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS micro_process_flow
      IMPORTING id           TYPE clike OPTIONAL
                class        TYPE clike OPTIONAL
                ariaLabel       TYPE clike OPTIONAL
                width       TYPE clike OPTIONAL
                renderType       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS micro_process_flow_item
      IMPORTING id           TYPE clike OPTIONAL
                class        TYPE clike OPTIONAL
                icon       TYPE clike OPTIONAL
                key       TYPE clike OPTIONAL
                showIntermediary       TYPE clike OPTIONAL
                showSeparator       TYPE clike OPTIONAL
                state       TYPE clike OPTIONAL
                stepWidth       TYPE clike OPTIONAL
                title       TYPE clike OPTIONAL
                press       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS intermediary
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS custom_control
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS responsive_scale
      IMPORTING
        id       TYPE clike OPTIONAL
        class       TYPE clike OPTIONAL
        tickmarksbetweenlabels       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS status_indicator
      IMPORTING
        id       TYPE clike OPTIONAL
        class       TYPE clike OPTIONAL
        height       TYPE clike OPTIONAL
        labelPosition       TYPE clike OPTIONAL
        showLabel       TYPE clike OPTIONAL
        size       TYPE clike OPTIONAL
        value       TYPE clike OPTIONAL
        viewBox       TYPE clike OPTIONAL
        width       TYPE clike OPTIONAL
        visible       TYPE clike OPTIONAL
        press       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS property_thresholds
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS property_threshold
      IMPORTING
        id       TYPE clike OPTIONAL
        class       TYPE clike OPTIONAL
        fillcolor       TYPE clike OPTIONAL
        tovalue       TYPE clike OPTIONAL
        ariaLabel       TYPE clike OPTIONAL
        visible       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS shape_group
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.


    METHODS library_shape
      IMPORTING
        id       TYPE clike OPTIONAL
        class       TYPE clike OPTIONAL
        animationOnChange       TYPE clike OPTIONAL
        definition       TYPE clike OPTIONAL
        fillColor       TYPE clike OPTIONAL
        fillingAngle       TYPE clike OPTIONAL
        fillingDirection       TYPE clike OPTIONAL
        fillingType       TYPE clike OPTIONAL
        height       TYPE clike OPTIONAL
        horizontalAlignment       TYPE clike OPTIONAL
        shapeId       TYPE clike OPTIONAL
        strokeColor       TYPE clike OPTIONAL
        strokeWidth       TYPE clike OPTIONAL
        verticalAlignment       TYPE clike OPTIONAL
        visible       TYPE clike OPTIONAL
        width       TYPE clike OPTIONAL
        x       TYPE clike OPTIONAL
        y       TYPE clike OPTIONAL
        afterShapeLoaded       TYPE clike OPTIONAL
      RETURNING VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

  PROTECTED SECTION.
    DATA mv_name     TYPE string.
    DATA mv_ns       TYPE string.
    DATA mt_prop     TYPE SORTED TABLE OF z2ui5_if_types=>ty_s_name_value WITH NON-UNIQUE KEY n.

    DATA mt_ns       TYPE SORTED TABLE OF string WITH UNIQUE KEY table_line.
    DATA mo_root     TYPE REF TO z2ui5_cl_xml_view.
    DATA mo_previous TYPE REF TO z2ui5_cl_xml_view.
    DATA mo_parent   TYPE REF TO z2ui5_cl_xml_view.
    DATA mt_child    TYPE STANDARD TABLE OF REF TO z2ui5_cl_xml_view WITH DEFAULT KEY.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z2UI5_CL_XML_VIEW IMPLEMENTATION.


  METHOD actions.
    result = _generic( name = `actions`
                       ns   = ns ).
  ENDMETHOD.


  METHOD action_button.
    DATA temp1 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp2 LIKE LINE OF temp1.
    CLEAR temp1.
    
    temp2-n = `id`.
    temp2-v = id.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `class`.
    temp2-v = class.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `icon`.
    temp2-v = icon.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `position`.
    temp2-v = position.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `title`.
    temp2-v = title.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `press`.
    temp2-v = press.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `enabled`.
    temp2-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp2 INTO TABLE temp1.
    result = _generic( name   = `ActionButton`
                       ns     = `networkgraph`
                       t_prop = temp1 ).
  ENDMETHOD.


  METHOD action_buttons.
    result = _generic( name = `actionButtons`
                       ns   = `networkgraph` ).
  ENDMETHOD.


  METHOD action_sheet.
    DATA temp3 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp4 LIKE LINE OF temp3.
    CLEAR temp3.
    
    temp4-n = `id`.
    temp4-v = id.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `class`.
    temp4-v = class.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `cancelbuttontext`.
    temp4-v = cancelbuttontext.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `placement`.
    temp4-v = placement.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `showCancelButton`.
    temp4-v = showcancelbutton.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `title`.
    temp4-v = title.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `afterClose`.
    temp4-v = afterclose.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `afterOpen`.
    temp4-v = afteropen.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `beforeClose`.
    temp4-v = beforeclose.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `beforeOpen`.
    temp4-v = beforeopen.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `cancelButtonPress`.
    temp4-v = cancelbuttonpress.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `visible`.
    temp4-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp4 INTO TABLE temp3.
    result = _generic(
                 name   = `ActionSheet`
                 t_prop = temp3 ).
  ENDMETHOD.


  METHOD additional_content.
    result = _generic( `additionalContent` ).
  ENDMETHOD.


  METHOD additional_numbers.
    result = _generic( `additionalNumbers` ).
  ENDMETHOD.


  METHOD analytic_map.

    DATA temp5 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp6 LIKE LINE OF temp5.
    CLEAR temp5.
    
    temp6-n = `id`.
    temp6-v = id.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `initialPosition`.
    temp6-v = initialposition.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `initialZoom`.
    temp6-v = initialzoom.
    INSERT temp6 INTO TABLE temp5.
    result = _generic( name   = `AnalyticMap`
                       ns     = `vbm`
                       t_prop = temp5 ).

  ENDMETHOD.


  METHOD appointments.
    result = _generic( `appointments` ).
  ENDMETHOD.


  METHOD appointment_items.
    result = _generic( `appointmentItems` ).
  ENDMETHOD.


  METHOD area_micro_chart.
    DATA temp7 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp8 LIKE LINE OF temp7.
    result = me.
    
    CLEAR temp7.
    
    temp8-n = `colorPalette`.
    temp8-v = colorpalette.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `press`.
    temp8-v = press.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `size`.
    temp8-v = size.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `height`.
    temp8-v = height.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `maxXValue`.
    temp8-v = maxxvalue.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `maxYValue`.
    temp8-v = maxyvalue.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `minXValue`.
    temp8-v = minxvalue.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `minYValue`.
    temp8-v = minyvalue.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `view`.
    temp8-v = view.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `alignContent`.
    temp8-v = aligncontent.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `hideOnNoData`.
    temp8-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `showLabel`.
    temp8-v = z2ui5_cl_util=>boolean_abap_2_json( showlabel ).
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `width`.
    temp8-v = width.
    INSERT temp8 INTO TABLE temp7.
    _generic( name   = `AreaMicroChart`
              ns     = `mchart`
              t_prop = temp7 ).
  ENDMETHOD.


  METHOD attributes.
    DATA temp9 TYPE string.
    CASE ns.
      WHEN ''.
        temp9 = `networkgraph`.
      WHEN OTHERS.
        temp9 = ns.
    ENDCASE.
    result = _generic( name = `attributes`
                       ns   = temp9 ).
  ENDMETHOD.


  METHOD avatar.
    DATA temp10 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp11 LIKE LINE OF temp10.
    result = me.
    
    CLEAR temp10.
    
    temp11-n = `src`.
    temp11-v = src.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `class`.
    temp11-v = class.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `ariaHasPopup`.
    temp11-v = ariahaspopup.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `backgroundColor`.
    temp11-v = backgroundcolor.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `badgeIcon`.
    temp11-v = badgeicon.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `badgeTooltip`.
    temp11-v = badgetooltip.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `badgeValueState`.
    temp11-v = badgevaluestate.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `customDisplaySize`.
    temp11-v = customdisplaysize.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `customFontSize`.
    temp11-v = customfontsize.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `displayShape`.
    temp11-v = displayshape.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `fallbackIcon`.
    temp11-v = fallbackicon.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `imageFitType`.
    temp11-v = imagefittype.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `initials`.
    temp11-v = initials.
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `showBorder`.
    temp11-v = z2ui5_cl_util=>boolean_abap_2_json( showborder ).
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `decorative`.
    temp11-v = z2ui5_cl_util=>boolean_abap_2_json( decorative ).
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `enabled`.
    temp11-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp11 INTO TABLE temp10.
    temp11-n = `displaysize`.
    temp11-v = displaysize.
    INSERT temp11 INTO TABLE temp10.
    _generic( name   = `Avatar`
              t_prop = temp10 ).
  ENDMETHOD.


  METHOD axis_time_strategy.
    result = _generic( name = `axisTimeStrategy`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD badge_custom_data.
    DATA temp12 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp13 LIKE LINE OF temp12.
    result = me.
    
    CLEAR temp12.
    
    temp13-n = `key`.
    temp13-v = key.
    INSERT temp13 INTO TABLE temp12.
    temp13-n = `value`.
    temp13-v = value.
    INSERT temp13 INTO TABLE temp12.
    temp13-n = `visible`.
    temp13-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp13 INTO TABLE temp12.
    _generic( name   = `BadgeCustomData`
              t_prop = temp12 ).
  ENDMETHOD.


  METHOD bar.
    result = _generic( `Bar` ).
  ENDMETHOD.


  METHOD barcode_scanner_button.
    DATA temp14 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp15 LIKE LINE OF temp14.
    CLEAR temp14.
    
    temp15-n = `id`.
    temp15-v = id.
    INSERT temp15 INTO TABLE temp14.
    temp15-n = `scanSuccess`.
    temp15-v = scansuccess.
    INSERT temp15 INTO TABLE temp14.
    temp15-n = `scanFail`.
    temp15-v = scanfail.
    INSERT temp15 INTO TABLE temp14.
    temp15-n = `inputLiveUpdate`.
    temp15-v = inputliveupdate.
    INSERT temp15 INTO TABLE temp14.
    temp15-n = `dialogTitle`.
    temp15-v = dialogtitle.
    INSERT temp15 INTO TABLE temp14.
    result = _generic( name   = `BarcodeScannerButton`
                       ns     = 'ndc'
                       t_prop = temp14 ).

  ENDMETHOD.


  METHOD bars.
    result = _generic( name = `bars`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD base_rectangle.

    DATA temp16 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp17 LIKE LINE OF temp16.
    CLEAR temp16.
    
    temp17-n = `time`.
    temp17-v = time.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `endTime`.
    temp17-v = endtime.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `selectable`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( selectable ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `selectedFill`.
    temp17-v = selectedfill.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `fill`.
    temp17-v = fill.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `height`.
    temp17-v = height.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `title`.
    temp17-v = title.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `animationSettings`.
    temp17-v = animationsettings.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `alignShape`.
    temp17-v = alignshape.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `color`.
    temp17-v = color.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `fontSize`.
    temp17-v = fontsize.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `connectable`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( connectable ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `fontFamily`.
    temp17-v = fontfamily.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `filter`.
    temp17-v = filter.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `transform`.
    temp17-v = transform.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `countInBirdEye`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( countinbirdeye ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `fontWeight`.
    temp17-v = fontweight.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `showTitle`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( showtitle ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `selected`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `resizable`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( resizable ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `horizontalTextAlignment`.
    temp17-v = horizontaltextalignment.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `shapeId`.
    temp17-v = shapeid.
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `highlighted`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( highlighted ).
    INSERT temp17 INTO TABLE temp16.
    temp17-n = `highlightable`.
    temp17-v = z2ui5_cl_util=>boolean_abap_2_json( highlightable ).
    INSERT temp17 INTO TABLE temp16.
    result = _generic(
        name   = `BaseRectangle`
        ns     = 'gantt'
        t_prop = temp16 ).
  ENDMETHOD.


  METHOD begin_button.

    result = _generic( `beginButton` ).

  ENDMETHOD.


  METHOD begin_column_pages.
    " todo, implement method
    result = _generic( name = `beginColumnPages`
                       ns   = `f` ).

  ENDMETHOD.


  METHOD blocks.
    result = _generic( name = `blocks`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD block_layout.
    DATA temp18 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp19 LIKE LINE OF temp18.
    CLEAR temp18.
    
    temp19-n = `background`.
    temp19-v = background.
    INSERT temp19 INTO TABLE temp18.
    temp19-n = `id`.
    temp19-v = id.
    INSERT temp19 INTO TABLE temp18.
    result = _generic( name   = `BlockLayout`
                       ns     = `layout`
                       t_prop = temp18 ).
  ENDMETHOD.


  METHOD block_layout_cell.
    DATA temp20 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp21 LIKE LINE OF temp20.
    CLEAR temp20.
    
    temp21-n = `backgroundColorSet`.
    temp21-v = backgroundcolorset.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `backgroundColorShade`.
    temp21-v = backgroundcolorshade.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `title`.
    temp21-v = title.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `titleAlignment`.
    temp21-v = titlealignment.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `width`.
    temp21-v = width.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `class`.
    temp21-v = class.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `id`.
    temp21-v = id.
    INSERT temp21 INTO TABLE temp20.
    temp21-n = `titleLevel`.
    temp21-v = titlelevel.
    INSERT temp21 INTO TABLE temp20.
    result = _generic( name   = `BlockLayoutCell`
                       ns     = `layout`
                       t_prop = temp20 ).
  ENDMETHOD.


  METHOD block_layout_row.
    DATA temp22 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp23 LIKE LINE OF temp22.
    CLEAR temp22.
    
    temp23-n = `rowColorSet`.
    temp23-v = rowcolorset.
    INSERT temp23 INTO TABLE temp22.
    temp23-n = `id`.
    temp23-v = id.
    INSERT temp23 INTO TABLE temp22.
    result = _generic( name   = `BlockLayoutRow`
                       ns     = `layout`
                       t_prop = temp22 ).
  ENDMETHOD.


  METHOD bullet_micro_chart.
    DATA temp24 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp25 LIKE LINE OF temp24.
    result = me.
    
    CLEAR temp24.
    
    temp25-n = `actualValueLabel`.
    temp25-v = actualvaluelabel.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `press`.
    temp25-v = press.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `size`.
    temp25-v = size.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `height`.
    temp25-v = height.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `width`.
    temp25-v = width.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `deltaValueLabel`.
    temp25-v = deltavaluelabel.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `maxValue`.
    temp25-v = maxvalue.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `minValue`.
    temp25-v = minvalue.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `mode`.
    temp25-v = mode.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `scale`.
    temp25-v = scale.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `targetValue`.
    temp25-v = targetvalue.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `targetValueLabel`.
    temp25-v = targetvaluelabel.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `scaleColor`.
    temp25-v = scalecolor.
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `hideOnNoData`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `showActualValue`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( showactualvalue ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `showActualValueInDeltaMode`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( savidm ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `showDeltaValue`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( showdeltavalue ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `showTargetValue`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( showtargetvalue ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `showThresholds`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( showthresholds ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `showValueMarker`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluemarker ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `smallRangeAllowed`.
    temp25-v = z2ui5_cl_util=>boolean_abap_2_json( smallrangeallowed ).
    INSERT temp25 INTO TABLE temp24.
    temp25-n = `forecastValue`.
    temp25-v = forecastvalue.
    INSERT temp25 INTO TABLE temp24.
    _generic(
        name   = `BulletMicroChart`
        ns     = `mchart`
        t_prop = temp24 ).
  ENDMETHOD.


  METHOD busy_indicator.
    DATA temp26 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp27 LIKE LINE OF temp26.
    CLEAR temp26.
    
    temp27-n = `id`.
    temp27-v = id.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `class`.
    temp27-v = class.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `customIcon`.
    temp27-v = customicon.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `customIconHeight`.
    temp27-v = customiconheight.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `customIconRotationSpeed`.
    temp27-v = customiconrotationspeed.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `customIconWidth`.
    temp27-v = customiconwidth.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `size`.
    temp27-v = size.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `text`.
    temp27-v = text.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `textDirection`.
    temp27-v = textdirection.
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `customIconDensityAware`.
    temp27-v = z2ui5_cl_util=>boolean_abap_2_json( customicondensityaware ).
    INSERT temp27 INTO TABLE temp26.
    temp27-n = `visible`.
    temp27-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp27 INTO TABLE temp26.
    result = _generic(
        name   = `BusyIndicator`
        t_prop = temp26 ).
  ENDMETHOD.


  METHOD button.
    DATA temp28 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp29 LIKE LINE OF temp28.

    result = me.
    
    CLEAR temp28.
    
    temp29-n = `press`.
    temp29-v = press.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `text`.
    temp29-v = text.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `enabled`.
    temp29-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `visible`.
    temp29-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `iconDensityAware`.
    temp29-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `iconFirst`.
    temp29-v = z2ui5_cl_util=>boolean_abap_2_json( iconfirst ).
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `icon`.
    temp29-v = icon.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `type`.
    temp29-v = type.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `id`.
    temp29-v = id.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `width`.
    temp29-v = width.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `tooltip`.
    temp29-v = tooltip.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `textDirection`.
    temp29-v = textdirection.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `accessibleRole`.
    temp29-v = accessiblerole.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `activeIcon`.
    temp29-v = activeicon.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `ariaHasPopup`.
    temp29-v = ariahaspopup.
    INSERT temp29 INTO TABLE temp28.
    temp29-n = `class`.
    temp29-v = class.
    INSERT temp29 INTO TABLE temp28.
    _generic( name   = `Button`
              ns     = ns
              t_prop = temp28 ).
  ENDMETHOD.


  METHOD buttons.
    result = _generic( `buttons` ).
  ENDMETHOD.


  METHOD calendar_appointment.
    DATA temp30 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp31 LIKE LINE OF temp30.
    CLEAR temp30.
    
    temp31-n = `startDate`.
    temp31-v = startdate.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `endDate`.
    temp31-v = enddate.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `icon`.
    temp31-v = icon.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `title`.
    temp31-v = title.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `text`.
    temp31-v = text.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `type`.
    temp31-v = type.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `key`.
    temp31-v = key.
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `selected`.
    temp31-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp31 INTO TABLE temp30.
    temp31-n = `tentative`.
    temp31-v = z2ui5_cl_util=>boolean_abap_2_json( tentative ).
    INSERT temp31 INTO TABLE temp30.
    result = _generic( name   = `CalendarAppointment`
                       ns     = `u`
                       t_prop = temp30 ).
  ENDMETHOD.


  METHOD calendar_legend_item.
    DATA temp32 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp33 LIKE LINE OF temp32.
    CLEAR temp32.
    
    temp33-n = `text`.
    temp33-v = text.
    INSERT temp33 INTO TABLE temp32.
    temp33-n = `type`.
    temp33-v = type.
    INSERT temp33 INTO TABLE temp32.
    temp33-n = `tooltip`.
    temp33-v = tooltip.
    INSERT temp33 INTO TABLE temp32.
    temp33-n = `color`.
    temp33-v = color.
    INSERT temp33 INTO TABLE temp32.
    result = _generic( name   = `CalendarLegendItem`
                       t_prop = temp32 ).

  ENDMETHOD.


  METHOD card.
    DATA temp34 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp35 LIKE LINE OF temp34.
    CLEAR temp34.
    
    temp35-n = `id`.
    temp35-v = id.
    INSERT temp35 INTO TABLE temp34.
    temp35-n = `class`.
    temp35-v = class.
    INSERT temp35 INTO TABLE temp34.
    temp35-n = `headerPosition`.
    temp35-v = headerposition.
    INSERT temp35 INTO TABLE temp34.
    temp35-n = `height`.
    temp35-v = height.
    INSERT temp35 INTO TABLE temp34.
    temp35-n = `width`.
    temp35-v = width.
    INSERT temp35 INTO TABLE temp34.
    temp35-n = `visible`.
    temp35-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp35 INTO TABLE temp34.
    result = _generic( name   = `Card`
                       ns     = `f`
                       t_prop = temp34 ).
  ENDMETHOD.


  METHOD card_header.
    DATA temp36 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp37 LIKE LINE OF temp36.
    CLEAR temp36.
    
    temp37-n = `id`.
    temp37-v = id.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `class`.
    temp37-v = class.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `dataTimestamp`.
    temp37-v = datatimestamp.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconAlt`.
    temp37-v = iconalt.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconBackgroundColor`.
    temp37-v = iconbackgroundcolor.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconDisplayShape`.
    temp37-v = icondisplayshape.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconInitials`.
    temp37-v = iconinitials.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconSize`.
    temp37-v = iconsize.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconSrc`.
    temp37-v = iconsrc.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `statusText`.
    temp37-v = statustext.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `statusVisible`.
    temp37-v = statusvisible.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `subtitle`.
    temp37-v = subtitle.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `subtitleMaxLines`.
    temp37-v = subtitlemaxlines.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `title`.
    temp37-v = title.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `press`.
    temp37-v = press.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `titleMaxLines`.
    temp37-v = titlemaxlines.
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `iconVisible`.
    temp37-v = z2ui5_cl_util=>boolean_abap_2_json( iconvisible ).
    INSERT temp37 INTO TABLE temp36.
    temp37-n = `visible`.
    temp37-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp37 INTO TABLE temp36.
    result = _generic( name   = `Header`
                       ns     = `card`
                       t_prop = temp36 ).
  ENDMETHOD.


  METHOD carousel.

    DATA temp38 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp39 LIKE LINE OF temp38.
    CLEAR temp38.
    
    temp39-n = `loop`.
    temp39-v = z2ui5_cl_util=>boolean_abap_2_json( loop ).
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `class`.
    temp39-v = class.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `height`.
    temp39-v = height.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `id`.
    temp39-v = id.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `arrowsPlacement`.
    temp39-v = arrowsplacement.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `backgroundDesign`.
    temp39-v = backgrounddesign.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `pageIndicatorBackgroundDesign`.
    temp39-v = pageindicatorbackgrounddesign.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `pageIndicatorBorderDesign`.
    temp39-v = pageindicatorborderdesign.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `pageIndicatorPlacement`.
    temp39-v = pageindicatorplacement.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `width`.
    temp39-v = width.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `showPageIndicator`.
    temp39-v = showpageindicator.
    INSERT temp39 INTO TABLE temp38.
    temp39-n = `visible`.
    temp39-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp39 INTO TABLE temp38.
    result = _generic( name   = `Carousel`
                       t_prop = temp38 ).

  ENDMETHOD.


  METHOD carousel_layout.
    DATA temp40 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp41 LIKE LINE OF temp40.
    CLEAR temp40.
    
    temp41-n = `visiblePagesCount`.
    temp41-v = visiblepagescount.
    INSERT temp41 INTO TABLE temp40.
    result = _generic( name   = `CarouselLayout`
                       t_prop = temp40 ).
  ENDMETHOD.


  METHOD cells.
    result = _generic( `cells` ).
  ENDMETHOD.


  METHOD checkbox.
    DATA temp42 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp43 LIKE LINE OF temp42.

    result = me.
    
    CLEAR temp42.
    
    temp43-n = `text`.
    temp43-v = text.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `id`.
    temp43-v = id.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `class`.
    temp43-v = class.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `name`.
    temp43-v = name.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `selected`.
    temp43-v = selected.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `textAlign`.
    temp43-v = textalign.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `textDirection`.
    temp43-v = textdirection.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `valueState`.
    temp43-v = valuestate.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `width`.
    temp43-v = width.
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `activeHandling`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( activehandling ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `enabled`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `visible`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `displayOnly`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( displayonly ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `editable`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `partiallySelected`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( partiallyselected ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `useEntireWidth`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( useentirewidth ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `wrapping`.
    temp43-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp43 INTO TABLE temp42.
    temp43-n = `select`.
    temp43-v = select.
    INSERT temp43 INTO TABLE temp42.
    _generic( name   = `CheckBox`
              t_prop = temp42 ).
  ENDMETHOD.


  METHOD code_editor.
    DATA temp44 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp45 LIKE LINE OF temp44.
    result = me.
    
    CLEAR temp44.
    
    temp45-n = `value`.
    temp45-v = value.
    INSERT temp45 INTO TABLE temp44.
    temp45-n = `type`.
    temp45-v = type.
    INSERT temp45 INTO TABLE temp44.
    temp45-n = `editable`.
    temp45-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp45 INTO TABLE temp44.
    temp45-n = `height`.
    temp45-v = height.
    INSERT temp45 INTO TABLE temp44.
    temp45-n = `width`.
    temp45-v = width.
    INSERT temp45 INTO TABLE temp44.
    _generic( name   = `CodeEditor`
              ns     = `editor`
              t_prop = temp44 ).
  ENDMETHOD.


  METHOD column.
    DATA temp46 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp47 LIKE LINE OF temp46.
    CLEAR temp46.
    
    temp47-n = `width`.
    temp47-v = width.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `minScreenWidth`.
    temp47-v = minscreenwidth.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `hAlign`.
    temp47-v = halign.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `headerMenu`.
    temp47-v = headermenu.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `autoPopinWidth`.
    temp47-v = autopopinwidth.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `vAlign`.
    temp47-v = valign.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `importance`.
    temp47-v = importance.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `mergeFunctionName`.
    temp47-v = mergefunctionname.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `popinDisplay`.
    temp47-v = popindisplay.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `sortIndicator`.
    temp47-v = sortindicator.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `styleClass`.
    temp47-v = styleclass.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `id`.
    temp47-v = id.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `class`.
    temp47-v = class.
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `mergeDuplicates`.
    temp47-v = z2ui5_cl_util=>boolean_abap_2_json( mergeduplicates ).
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `visible`.
    temp47-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp47 INTO TABLE temp46.
    temp47-n = `demandPopin`.
    temp47-v = z2ui5_cl_util=>boolean_abap_2_json( demandpopin ).
    INSERT temp47 INTO TABLE temp46.
    result = _generic(
                 name   = `Column`
                 t_prop = temp46 ).
  ENDMETHOD.


  METHOD columns.
    result = _generic( `columns` ).
  ENDMETHOD.


  METHOD column_element_data.
    DATA temp48 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp49 LIKE LINE OF temp48.
    CLEAR temp48.
    
    temp49-n = `cellsLarge`.
    temp49-v = cellslarge.
    INSERT temp49 INTO TABLE temp48.
    temp49-n = `cellsSmall`.
    temp49-v = cellssmall.
    INSERT temp49 INTO TABLE temp48.
    result = _generic( name   = `ColumnElementData`
                       ns     = `form`
                       t_prop = temp48 ).
  ENDMETHOD.


  METHOD column_list_item.
    DATA temp50 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp51 LIKE LINE OF temp50.
    CLEAR temp50.
    
    temp51-n = `vAlign`.
    temp51-v = valign.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `id`.
    temp51-v = id.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `selected`.
    temp51-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `unread`.
    temp51-v = z2ui5_cl_util=>boolean_abap_2_json( unread ).
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `visible`.
    temp51-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `type`.
    temp51-v = type.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `counter`.
    temp51-v = counter.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `highlight`.
    temp51-v = highlight.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `highlightText`.
    temp51-v = highlighttext.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `detailPress`.
    temp51-v = detailpress.
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `navigated`.
    temp51-v = z2ui5_cl_util=>boolean_abap_2_json( navigated ).
    INSERT temp51 INTO TABLE temp50.
    temp51-n = `press`.
    temp51-v = press.
    INSERT temp51 INTO TABLE temp50.
    result = _generic( name   = `ColumnListItem`
                       t_prop = temp50 ).
  ENDMETHOD.


  METHOD column_menu.
    DATA temp52 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp53 LIKE LINE OF temp52.
    CLEAR temp52.
    
    temp53-n = `id`.
    temp53-v = id.
    INSERT temp53 INTO TABLE temp52.
    temp53-n = `class`.
    temp53-v = class.
    INSERT temp53 INTO TABLE temp52.
    temp53-n = `afterClose`.
    temp53-v = afterClose.
    INSERT temp53 INTO TABLE temp52.
    temp53-n = `beforeOpen`.
    temp53-v = beforeOpen.
    INSERT temp53 INTO TABLE temp52.
    temp53-n = `visible`.
    temp53-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp53 INTO TABLE temp52.
    result = _generic( name   = `Menu`
                       ns     = `columnmenu`
                       t_prop = temp52 ).
  ENDMETHOD.


  METHOD column_menu_action_item.
    DATA temp54 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp55 LIKE LINE OF temp54.
    CLEAR temp54.
    
    temp55-n = `id`.
    temp55-v = id.
    INSERT temp55 INTO TABLE temp54.
    temp55-n = `class`.
    temp55-v = class.
    INSERT temp55 INTO TABLE temp54.
    temp55-n = `icon`.
    temp55-v = icon.
    INSERT temp55 INTO TABLE temp54.
    temp55-n = `label`.
    temp55-v = label.
    INSERT temp55 INTO TABLE temp54.
    temp55-n = `press`.
    temp55-v = press.
    INSERT temp55 INTO TABLE temp54.
    temp55-n = `visible`.
    temp55-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp55 INTO TABLE temp54.
    result = _generic( name   = `ActionItem`
                       ns     = `columnmenu`
                       t_prop = temp54 ).
  ENDMETHOD.


  METHOD column_menu_item.
    DATA temp56 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp57 LIKE LINE OF temp56.
    CLEAR temp56.
    
    temp57-n = `id`.
    temp57-v = id.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `class`.
    temp57-v = class.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `icon`.
    temp57-v = icon.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `label`.
    temp57-v = label.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `cancel`.
    temp57-v = cancel.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `confirm`.
    temp57-v = confirm.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `reset`.
    temp57-v = reset.
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `resetButtonEnabled`.
    temp57-v = z2ui5_cl_util=>boolean_abap_2_json( resetButtonEnabled ).
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `showCancelButton`.
    temp57-v = z2ui5_cl_util=>boolean_abap_2_json( showCancelButton ).
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `showConfirmButton`.
    temp57-v = z2ui5_cl_util=>boolean_abap_2_json( showConfirmButton ).
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `showResetButton`.
    temp57-v = z2ui5_cl_util=>boolean_abap_2_json( showResetButton ).
    INSERT temp57 INTO TABLE temp56.
    temp57-n = `visible`.
    temp57-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp57 INTO TABLE temp56.
    result = _generic( name   = `Item`
                       ns     = `columnmenu`
                       t_prop = temp56 ).
  ENDMETHOD.


  METHOD column_menu_quick_action.
    DATA temp58 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp59 LIKE LINE OF temp58.
    CLEAR temp58.
    
    temp59-n = `id`.
    temp59-v = id.
    INSERT temp59 INTO TABLE temp58.
    temp59-n = `class`.
    temp59-v = class.
    INSERT temp59 INTO TABLE temp58.
    temp59-n = `category`.
    temp59-v = category.
    INSERT temp59 INTO TABLE temp58.
    temp59-n = `label`.
    temp59-v = label.
    INSERT temp59 INTO TABLE temp58.
    temp59-n = `visible`.
    temp59-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp59 INTO TABLE temp58.
    result = _generic( name   = `QuickAction`
                       ns     = `columnmenu`
                       t_prop = temp58 ).
  ENDMETHOD.


  METHOD column_menu_quick_action_item.
    DATA temp60 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp61 LIKE LINE OF temp60.
    CLEAR temp60.
    
    temp61-n = `id`.
    temp61-v = id.
    INSERT temp61 INTO TABLE temp60.
    temp61-n = `class`.
    temp61-v = class.
    INSERT temp61 INTO TABLE temp60.
    temp61-n = `key`.
    temp61-v = key.
    INSERT temp61 INTO TABLE temp60.
    temp61-n = `label`.
    temp61-v = label.
    INSERT temp61 INTO TABLE temp60.
    temp61-n = `visible`.
    temp61-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp61 INTO TABLE temp60.
    result = _generic( name   = `QuickActionItem`
                       ns     = `columnmenu`
                       t_prop = temp60 ).
  ENDMETHOD.


  METHOD column_menu_quick_group.
    DATA temp62 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp63 LIKE LINE OF temp62.
    CLEAR temp62.
    
    temp63-n = `id`.
    temp63-v = id.
    INSERT temp63 INTO TABLE temp62.
    temp63-n = `class`.
    temp63-v = class.
    INSERT temp63 INTO TABLE temp62.
    temp63-n = `change`.
    temp63-v = change.
    INSERT temp63 INTO TABLE temp62.
    temp63-n = `visible`.
    temp63-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp63 INTO TABLE temp62.
    result = _generic( name   = `QuickGroup`
                       ns     = `columnmenu`
                       t_prop = temp62 ).
  ENDMETHOD.


  METHOD column_menu_quick_group_item.
    DATA temp64 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp65 LIKE LINE OF temp64.
    CLEAR temp64.
    
    temp65-n = `id`.
    temp65-v = id.
    INSERT temp65 INTO TABLE temp64.
    temp65-n = `class`.
    temp65-v = class.
    INSERT temp65 INTO TABLE temp64.
    temp65-n = `key`.
    temp65-v = key.
    INSERT temp65 INTO TABLE temp64.
    temp65-n = `label`.
    temp65-v = label.
    INSERT temp65 INTO TABLE temp64.
    temp65-n = `grouped`.
    temp65-v = z2ui5_cl_util=>boolean_abap_2_json( grouped ).
    INSERT temp65 INTO TABLE temp64.
    temp65-n = `visible`.
    temp65-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp65 INTO TABLE temp64.
    result = _generic( name   = `QuickGroupItem`
                       ns     = `columnmenu`
                       t_prop = temp64 ).
  ENDMETHOD.


  METHOD column_menu_quick_sort.
    DATA temp66 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp67 LIKE LINE OF temp66.
    CLEAR temp66.
    
    temp67-n = `id`.
    temp67-v = id.
    INSERT temp67 INTO TABLE temp66.
    temp67-n = `class`.
    temp67-v = class.
    INSERT temp67 INTO TABLE temp66.
    temp67-n = `change`.
    temp67-v = change.
    INSERT temp67 INTO TABLE temp66.
    temp67-n = `visible`.
    temp67-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp67 INTO TABLE temp66.
    result = _generic( name   = `QuickSort`
                       ns     = `columnmenu`
                       t_prop = temp66 ).
  ENDMETHOD.


  METHOD column_menu_quick_sort_item.
    DATA temp68 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp69 LIKE LINE OF temp68.
    CLEAR temp68.
    
    temp69-n = `id`.
    temp69-v = id.
    INSERT temp69 INTO TABLE temp68.
    temp69-n = `class`.
    temp69-v = class.
    INSERT temp69 INTO TABLE temp68.
    temp69-n = `key`.
    temp69-v = key.
    INSERT temp69 INTO TABLE temp68.
    temp69-n = `label`.
    temp69-v = label.
    INSERT temp69 INTO TABLE temp68.
    temp69-n = `sortOrder`.
    temp69-v = sortOrder.
    INSERT temp69 INTO TABLE temp68.
    temp69-n = `visible`.
    temp69-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp69 INTO TABLE temp68.
    result = _generic( name   = `QuickSortItem`
                       ns     = `columnmenu`
                       t_prop = temp68 ).
  ENDMETHOD.


  METHOD column_menu_quick_total.
    DATA temp70 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp71 LIKE LINE OF temp70.
    CLEAR temp70.
    
    temp71-n = `id`.
    temp71-v = id.
    INSERT temp71 INTO TABLE temp70.
    temp71-n = `class`.
    temp71-v = class.
    INSERT temp71 INTO TABLE temp70.
    temp71-n = `change`.
    temp71-v = change.
    INSERT temp71 INTO TABLE temp70.
    temp71-n = `visible`.
    temp71-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp71 INTO TABLE temp70.
    result = _generic( name   = `QuickTotal`
                       ns     = `columnmenu`
                       t_prop = temp70 ).
  ENDMETHOD.


  METHOD column_menu_quick_total_item.
    DATA temp72 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp73 LIKE LINE OF temp72.
    CLEAR temp72.
    
    temp73-n = `id`.
    temp73-v = id.
    INSERT temp73 INTO TABLE temp72.
    temp73-n = `class`.
    temp73-v = class.
    INSERT temp73 INTO TABLE temp72.
    temp73-n = `key`.
    temp73-v = key.
    INSERT temp73 INTO TABLE temp72.
    temp73-n = `label`.
    temp73-v = label.
    INSERT temp73 INTO TABLE temp72.
    temp73-n = `totaled`.
    temp73-v = z2ui5_cl_util=>boolean_abap_2_json( totaled ).
    INSERT temp73 INTO TABLE temp72.
    temp73-n = `visible`.
    temp73-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp73 INTO TABLE temp72.
    result = _generic( name   = `QuickTotalItem`
                       ns     = `columnmenu`
                       t_prop = temp72 ).
  ENDMETHOD.


  METHOD column_micro_chart.
    DATA temp74 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp75 LIKE LINE OF temp74.
    result = me.
    
    CLEAR temp74.
    
    temp75-n = `width`.
    temp75-v = width.
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `press`.
    temp75-v = press.
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `size`.
    temp75-v = size.
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `alignContent`.
    temp75-v = aligncontent.
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `hideOnNoData`.
    temp75-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `allowColumnLabels`.
    temp75-v = z2ui5_cl_util=>boolean_abap_2_json( allowcolumnlabels ).
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `showBottomLabels`.
    temp75-v = z2ui5_cl_util=>boolean_abap_2_json( showbottomlabels ).
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `showTopLabels`.
    temp75-v = z2ui5_cl_util=>boolean_abap_2_json( showtoplabels ).
    INSERT temp75 INTO TABLE temp74.
    temp75-n = `height`.
    temp75-v = height.
    INSERT temp75 INTO TABLE temp74.
    _generic(
        name   = `ColumnMicroChart`
        ns     = `mchart`
        t_prop = temp74 ).
  ENDMETHOD.


  METHOD column_micro_chart_data.
    DATA temp76 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp77 LIKE LINE OF temp76.
    result = me.
    
    CLEAR temp76.
    
    temp77-n = `color`.
    temp77-v = color.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `displayValue`.
    temp77-v = displayValue.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `label`.
    temp77-v = label.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `value`.
    temp77-v = value.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `press`.
    temp77-v = press.
    INSERT temp77 INTO TABLE temp76.
    _generic(
        name   = `ColumnMicroChartData`
        ns     = `mchart`
        t_prop = temp76 ).
  ENDMETHOD.


  METHOD combobox.
    DATA temp78 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp79 LIKE LINE OF temp78.
    CLEAR temp78.
    
    temp79-n = `showClearIcon`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( showclearicon ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `selectedKey`.
    temp79-v = selectedkey.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `items`.
    temp79-v = items.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `id`.
    temp79-v = id.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `class`.
    temp79-v = class.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `selectionchange`.
    temp79-v = selectionchange.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `selectedItem`.
    temp79-v = selecteditem.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `selectedItemId`.
    temp79-v = selecteditemid.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `name`.
    temp79-v = name.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `value`.
    temp79-v = value.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `valueState`.
    temp79-v = valuestate.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `valueStateText`.
    temp79-v = valuestatetext.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `textAlign`.
    temp79-v = textalign.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `showSecondaryValues`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( showsecondaryvalues ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `visible`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `showValueStateMessage`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `showButton`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( showbutton ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `required`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `editable`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `enabled`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `filterSecondaryValues`.
    temp79-v = z2ui5_cl_util=>boolean_abap_2_json( filtersecondaryvalues ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `width`.
    temp79-v = width.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `placeholder`.
    temp79-v = placeholder.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `change`.
    temp79-v = change.
    INSERT temp79 INTO TABLE temp78.
    result = _generic(
        name   = `ComboBox`
        t_prop = temp78 ).

  ENDMETHOD.


  METHOD comparison_micro_chart.
    DATA temp80 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp81 LIKE LINE OF temp80.
    result = me.
    
    CLEAR temp80.
    
    temp81-n = `colorPalette`.
    temp81-v = colorpalette.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `press`.
    temp81-v = press.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `size`.
    temp81-v = size.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `height`.
    temp81-v = height.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `maxValue`.
    temp81-v = maxvalue.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `minValue`.
    temp81-v = minvalue.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `scale`.
    temp81-v = scale.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `width`.
    temp81-v = width.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `hideOnNoData`.
    temp81-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `shrinkable`.
    temp81-v = z2ui5_cl_util=>boolean_abap_2_json( shrinkable ).
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `view`.
    temp81-v = view.
    INSERT temp81 INTO TABLE temp80.
    _generic( name   = `ComparisonMicroChart`
              ns     = `mchart`
              t_prop = temp80 ).
  ENDMETHOD.


  METHOD constructor.

  ENDMETHOD.


  METHOD container_content.

    DATA temp82 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp83 LIKE LINE OF temp82.
    CLEAR temp82.
    
    temp83-n = `id`.
    temp83-v = id.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = `title`.
    temp83-v = title.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = `icon`.
    temp83-v = icon.
    INSERT temp83 INTO TABLE temp82.
    result = _generic( name   = `ContainerContent`
                       ns     = `vk`
                       t_prop = temp82 ).

  ENDMETHOD.


  METHOD container_toolbar.

    DATA temp84 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp85 LIKE LINE OF temp84.
    CLEAR temp84.
    
    temp85-n = `showSearchButton`.
    temp85-v = showsearchbutton.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `alignCustomContentToRight`.
    temp85-v = z2ui5_cl_util=>boolean_abap_2_json( aligncustomcontenttoright ).
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `findMode`.
    temp85-v = findmode.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `infoOfSelectItems`.
    temp85-v = infoofselectitems.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `findbuttonpress`.
    temp85-v = findbuttonpress.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `showBirdEyeButton`.
    temp85-v = z2ui5_cl_util=>boolean_abap_2_json( showbirdeyebutton ).
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `showDisplayTypeButton`.
    temp85-v = z2ui5_cl_util=>boolean_abap_2_json( showdisplaytypebutton ).
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `showLegendButton`.
    temp85-v = z2ui5_cl_util=>boolean_abap_2_json( showlegendbutton ).
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `showSettingButton`.
    temp85-v = z2ui5_cl_util=>boolean_abap_2_json( showsettingbutton ).
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `showTimeZoomControl`.
    temp85-v = z2ui5_cl_util=>boolean_abap_2_json( showtimezoomcontrol ).
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `stepCountOfSlider`.
    temp85-v = stepcountofslider.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `zoomControlType`.
    temp85-v = zoomcontroltype.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = `zoomLevel`.
    temp85-v = zoomlevel.
    INSERT temp85 INTO TABLE temp84.
    result = _generic(
        name   = `ContainerToolbar`
        ns     = `gantt`
        t_prop = temp84 ).
  ENDMETHOD.


  METHOD content.

    result = _generic( ns   = ns
                       name = `content` ).

  ENDMETHOD.


  METHOD content_left.
    result = _generic( `contentLeft` ).
  ENDMETHOD.


  METHOD content_middle.
    result = _generic( `contentMiddle` ).
  ENDMETHOD.


  METHOD content_right.
    result = _generic( `contentRight` ).
  ENDMETHOD.


  METHOD core_custom_data.
    DATA temp86 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp87 LIKE LINE OF temp86.
    result = me.
    
    CLEAR temp86.
    
    temp87-n = `value`.
    temp87-v = value.
    INSERT temp87 INTO TABLE temp86.
    temp87-n = `key`.
    temp87-v = key.
    INSERT temp87 INTO TABLE temp86.
    _generic( name   = `CustomData`
              ns     = `core`
              t_prop = temp86 ).

  ENDMETHOD.


  METHOD currency.
    DATA temp88 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp89 LIKE LINE OF temp88.
    CLEAR temp88.
    
    temp89-n = `value`.
    temp89-v = value.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `currency`.
    temp89-v = currency.
    INSERT temp89 INTO TABLE temp88.
    result = _generic( name   = `Currency`
                       ns     = 'u'
                       t_prop = temp88 ).

  ENDMETHOD.


  METHOD custom_control.
    result = _generic( name = `customControl`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD custom_data.
    result = _generic( name = `customData`
                       ns   = ns ).
  ENDMETHOD.


  METHOD custom_header.
    result = _generic( `customHeader` ).
  ENDMETHOD.


  METHOD custom_layout.
    result = _generic( `customLayout` ).
  ENDMETHOD.


  METHOD custom_list_item.
    result = _generic( `CustomListItem` ).
  ENDMETHOD.


  METHOD data.
    result = _generic( name = `data`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD date_picker.
    DATA temp90 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp91 LIKE LINE OF temp90.
    result = me.
    
    CLEAR temp90.
    
    temp91-n = `value`.
    temp91-v = value.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `displayFormat`.
    temp91-v = displayformat.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `displayFormatType`.
    temp91-v = displayformattype.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `valueFormat`.
    temp91-v = valueformat.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `required`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `valueState`.
    temp91-v = valuestate.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `valueStateText`.
    temp91-v = valuestatetext.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `placeholder`.
    temp91-v = placeholder.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `textAlign`.
    temp91-v = textalign.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `textDirection`.
    temp91-v = textdirection.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `change`.
    temp91-v = change.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `maxDate`.
    temp91-v = maxdate.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `minDate`.
    temp91-v = mindate.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `width`.
    temp91-v = width.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `id`.
    temp91-v = id.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `dateValue`.
    temp91-v = datevalue.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `name`.
    temp91-v = name.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `class`.
    temp91-v = class.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `calendarWeekNumbering`.
    temp91-v = calendarweeknumbering.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `initialFocusedDateValue`.
    temp91-v = initialfocuseddatevalue.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `enabled`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `visible`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `editable`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `hideInput`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( hideinput ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `showFooter`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( showfooter ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `showValueStateMessage`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `showCurrentDateButton`.
    temp91-v = z2ui5_cl_util=>boolean_abap_2_json( showcurrentdatebutton ).
    INSERT temp91 INTO TABLE temp90.
    _generic( name   = `DatePicker`
              t_prop = temp90 ).
  ENDMETHOD.


  METHOD date_time_picker.
    DATA temp92 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp93 LIKE LINE OF temp92.
    result = me.
    
    CLEAR temp92.
    
    temp93-n = `value`.
    temp93-v = value.
    INSERT temp93 INTO TABLE temp92.
    temp93-n = `placeholder`.
    temp93-v = placeholder.
    INSERT temp93 INTO TABLE temp92.
    temp93-n = `enabled`.
    temp93-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp93 INTO TABLE temp92.
    temp93-n = `valueState`.
    temp93-v = valuestate.
    INSERT temp93 INTO TABLE temp92.
    _generic( name   = `DateTimePicker`
              t_prop = temp92 ).
  ENDMETHOD.


  METHOD delta_micro_chart.
    DATA temp94 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp95 LIKE LINE OF temp94.
    result = me.
    
    CLEAR temp94.
    
    temp95-n = `color`.
    temp95-v = color.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `press`.
    temp95-v = press.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `size`.
    temp95-v = size.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `height`.
    temp95-v = height.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `width`.
    temp95-v = width.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `deltaDisplayValue`.
    temp95-v = deltadisplayvalue.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `displayValue1`.
    temp95-v = displayvalue1.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `displayValue2`.
    temp95-v = displayvalue2.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `title2`.
    temp95-v = title2.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `value1`.
    temp95-v = value1.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `value2`.
    temp95-v = value2.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `view`.
    temp95-v = view.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `hideOnNoData`.
    temp95-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `title1`.
    temp95-v = title1.
    INSERT temp95 INTO TABLE temp94.
    _generic( name   = `DeltaMicroChart`
              ns     = `mchart`
              t_prop = temp94 ).
  ENDMETHOD.


  METHOD dependents.
    result = _generic( name = `dependents`
                       ns   = ns ).
  ENDMETHOD.


  METHOD detail_box.
    result = _generic( `detailBox` ).
  ENDMETHOD.


  METHOD detail_pages.
    result = _generic( `detailPages` ).
  ENDMETHOD.


  METHOD dialog.

    DATA temp96 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp97 LIKE LINE OF temp96.
    CLEAR temp96.
    
    temp97-n = `title`.
    temp97-v = title.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `icon`.
    temp97-v = icon.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `stretch`.
    temp97-v = stretch.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `state`.
    temp97-v = state.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `titleAlignment`.
    temp97-v = titlealignment.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `type`.
    temp97-v = type.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `showHeader`.
    temp97-v = showheader.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `contentWidth`.
    temp97-v = contentwidth.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `contentHeight`.
    temp97-v = contentheight.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `escapeHandler`.
    temp97-v = escapehandler.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `closeOnNavigation`.
    temp97-v = z2ui5_cl_util=>boolean_abap_2_json( closeonnavigation ).
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `draggable`.
    temp97-v = z2ui5_cl_util=>boolean_abap_2_json( draggable ).
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `resizable`.
    temp97-v = z2ui5_cl_util=>boolean_abap_2_json( resizable ).
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `horizontalScrolling`.
    temp97-v = z2ui5_cl_util=>boolean_abap_2_json( horizontalscrolling ).
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `verticalScrolling`.
    temp97-v = z2ui5_cl_util=>boolean_abap_2_json( verticalscrolling ).
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `afterOpen`.
    temp97-v = afteropen.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `beforeClose`.
    temp97-v = beforeclose.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `beforeOpen`.
    temp97-v = beforeopen.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `afterClose`.
    temp97-v = afterclose.
    INSERT temp97 INTO TABLE temp96.
    result = _generic(
        name   = `Dialog`
        t_prop = temp96 ).
  ENDMETHOD.


  METHOD draft_indicator.
    DATA temp98 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp99 LIKE LINE OF temp98.
    CLEAR temp98.
    
    temp99-n = `id`.
    temp99-v = id.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `class`.
    temp99-v = class.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `minDisplayTime`.
    temp99-v = mindisplaytime.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `state`.
    temp99-v = state.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `visible`.
    temp99-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp99 INTO TABLE temp98.
    result = _generic( name   = `DraftIndicator`
                       t_prop = temp98 ).
  ENDMETHOD.


  METHOD dynamic_page.
    DATA temp100 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp101 LIKE LINE OF temp100.
    CLEAR temp100.
    
    temp101-n = `headerExpanded`.
    temp101-v = z2ui5_cl_util=>boolean_abap_2_json( headerexpanded ).
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `headerPinned`.
    temp101-v = z2ui5_cl_util=>boolean_abap_2_json( headerpinned ).
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `showFooter`.
    temp101-v = z2ui5_cl_util=>boolean_abap_2_json( showfooter ).
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `toggleHeaderOnTitleClick`.
    temp101-v = toggleheaderontitleclick.
    INSERT temp101 INTO TABLE temp100.
    result = _generic( name   = `DynamicPage`
                       ns     = `f`
                       t_prop = temp100 ).
  ENDMETHOD.


  METHOD dynamic_page_header.
    DATA temp102 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp103 LIKE LINE OF temp102.
    CLEAR temp102.
    
    temp103-n = `pinnable`.
    temp103-v = z2ui5_cl_util=>boolean_abap_2_json( pinnable ).
    INSERT temp103 INTO TABLE temp102.
    result = _generic(
                 name   = `DynamicPageHeader`
                 ns     = `f`
                 t_prop = temp102 ).
  ENDMETHOD.


  METHOD dynamic_page_title.
    result = _generic( name = `DynamicPageTitle`
                       ns   = `f` ).
  ENDMETHOD.


  METHOD dynamic_side_content.
    DATA temp104 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp105 LIKE LINE OF temp104.
    CLEAR temp104.
    
    temp105-n = `id`.
    temp105-v = id.
    INSERT temp105 INTO TABLE temp104.
    temp105-n = `class`.
    temp105-v = class.
    INSERT temp105 INTO TABLE temp104.
    temp105-n = `sideContentVisibility`.
    temp105-v = sidecontentvisibility.
    INSERT temp105 INTO TABLE temp104.
    temp105-n = `showSideContent`.
    temp105-v = showsidecontent.
    INSERT temp105 INTO TABLE temp104.
    temp105-n = `containerQuery`.
    temp105-v = containerquery.
    INSERT temp105 INTO TABLE temp104.
    result = _generic( name   = `DynamicSideContent`
                       ns     = 'layout'
                       t_prop = temp104 ).

  ENDMETHOD.


  METHOD element_attribute.
    DATA temp106 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp107 LIKE LINE OF temp106.
    DATA temp1 TYPE string.
    CLEAR temp106.
    
    temp107-n = `label`.
    temp107-v = label.
    INSERT temp107 INTO TABLE temp106.
    temp107-n = `value`.
    temp107-v = value.
    INSERT temp107 INTO TABLE temp106.
    
    CASE ns.
      WHEN ''.
        temp1 = `networkgraph`.
      WHEN OTHERS.
        temp1 = ns.
    ENDCASE.
    result = _generic( name   = `ElementAttribute`
                       ns     = temp1
                       t_prop = temp106 ).
  ENDMETHOD.


  METHOD embedded_control.
    result = _generic( name = `embeddedControl`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD end_button.

    result = _generic( `endButton` ).

  ENDMETHOD.


  METHOD end_column_pages.
    " todo, implement method
    result = me.
  ENDMETHOD.


  METHOD expandable_text.
    DATA temp108 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp109 LIKE LINE OF temp108.
    CLEAR temp108.
    
    temp109-n = `id`.
    temp109-v = id.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `emptyIndicatorMode`.
    temp109-v = emptyindicatormode.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `maxCharacters`.
    temp109-v = maxcharacters.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `overflowMode`.
    temp109-v = overflowmode.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `renderWhitespace`.
    temp109-v = z2ui5_cl_util=>boolean_abap_2_json( renderwhitespace ).
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `text`.
    temp109-v = text.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `textAlign`.
    temp109-v = textalign.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `textDirection`.
    temp109-v = textdirection.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `wrappingType`.
    temp109-v = wrappingtype.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `visible`.
    temp109-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp109 INTO TABLE temp108.
    result = _generic(
                 name   = `ExpandableText`
                 t_prop = temp108 ).
  ENDMETHOD.


  METHOD expanded_content.
    result = _generic( name = `expandedContent`
                       ns   = ns ).
  ENDMETHOD.


  METHOD expanded_heading.
    result = _generic( name = `expandedHeading`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD facet_filter.
    DATA temp110 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp111 LIKE LINE OF temp110.
    CLEAR temp110.
    
    temp111-n = `id`.
    temp111-v = id.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `class`.
    temp111-v = class.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `liveSearch`.
    temp111-v = z2ui5_cl_util=>boolean_abap_2_json( livesearch ).
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `showPersonalization`.
    temp111-v = z2ui5_cl_util=>boolean_abap_2_json( showpersonalization ).
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `showPopoverOKButton`.
    temp111-v = z2ui5_cl_util=>boolean_abap_2_json( showpopoverokbutton ).
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `showReset`.
    temp111-v = z2ui5_cl_util=>boolean_abap_2_json( showreset ).
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `showSummaryBar`.
    temp111-v = z2ui5_cl_util=>boolean_abap_2_json( showsummarybar ).
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `type`.
    temp111-v = type.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `confirm`.
    temp111-v = confirm.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `reset`.
    temp111-v = reset.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `lists`.
    temp111-v = lists.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `visible`.
    temp111-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp111 INTO TABLE temp110.
    result = _generic( name   = `FacetFilter`
                       t_prop = temp110 ).
  ENDMETHOD.


  METHOD facet_filter_item.
    DATA temp112 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp113 LIKE LINE OF temp112.
    CLEAR temp112.
    
    temp113-n = `id`.
    temp113-v = id.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `class`.
    temp113-v = class.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `count`.
    temp113-v = count.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `counter`.
    temp113-v = counter.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `highlight`.
    temp113-v = highlight.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `highlightText`.
    temp113-v = highlighttext.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `key`.
    temp113-v = key.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `navigated`.
    temp113-v = z2ui5_cl_util=>boolean_abap_2_json( navigated ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `selected`.
    temp113-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `unread`.
    temp113-v = z2ui5_cl_util=>boolean_abap_2_json( unread ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `text`.
    temp113-v = text.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `type`.
    temp113-v = type.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `detailPress`.
    temp113-v = detailpress.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `press`.
    temp113-v = press.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `visible`.
    temp113-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp113 INTO TABLE temp112.
    result = _generic(
                 name   = `FacetFilterItem`
                 t_prop = temp112 ).
  ENDMETHOD.


  METHOD facet_filter_list.
    DATA temp114 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp115 LIKE LINE OF temp114.
    CLEAR temp114.
    
    temp115-n = `id`.
    temp115-v = id.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `class`.
    temp115-v = class.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `active`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( active ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `allCount`.
    temp115-v = allcount.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `backgroundDesign`.
    temp115-v = backgrounddesign.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `dataType`.
    temp115-v = datatype.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `enableBusyIndicator`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( enablebusyindicator ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `enableCaseInsensitiveSearch`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( enablecaseinsensitivesearch ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `footerText`.
    temp115-v = footertext.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `growing`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( growing ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `growingDirection`.
    temp115-v = growingdirection.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `growingScrollToLoad`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( growingscrolltoload ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `growingThreshold`.
    temp115-v = growingthreshold.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `growingTriggerText`.
    temp115-v = growingtriggertext.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `headerLevel`.
    temp115-v = headerlevel.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `includeItemInSelection`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( includeiteminselection ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `inset`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( inset ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `key`.
    temp115-v = key.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `swipedirection`.
    temp115-v = swipedirection.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `headerText`.
    temp115-v = headertext.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `keyboardMode`.
    temp115-v = keyboardmode.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `mode`.
    temp115-v = mode.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `modeAnimationOn`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( modeanimationon ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `multiSelectMode`.
    temp115-v = multiselectmode.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `noDataText`.
    temp115-v = nodatatext.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `rememberSelections`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( rememberselections ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `retainListSequence`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( retainlistsequence ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `sequence`.
    temp115-v = sequence.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `showNoData`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( shownodata ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `showRemoveFacetIcon`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( showremovefaceticon ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `showSeparators`.
    temp115-v = showseparators.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `showUnread`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( showunread ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `sticky`.
    temp115-v = sticky.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `title`.
    temp115-v = title.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `width`.
    temp115-v = width.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `wordWrap`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( wordwrap ).
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `listClose`.
    temp115-v = listclose.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `listOpen`.
    temp115-v = listopen.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `search`.
    temp115-v = search.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `selectionChange`.
    temp115-v = selectionchange.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `delete`.
    temp115-v = delete.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `items`.
    temp115-v = items.
    INSERT temp115 INTO TABLE temp114.
    temp115-n = `visible`.
    temp115-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp115 INTO TABLE temp114.
    result = _generic(
        name   = `FacetFilterList`
        t_prop = temp114 ).
  ENDMETHOD.


  METHOD factory.
    DATA temp116 LIKE result->mt_prop.
    DATA temp117 LIKE LINE OF temp116.
    DATA temp118 TYPE z2ui5_if_types=>ty_s_name_value.
    DATA temp119 TYPE z2ui5_if_types=>ty_s_name_value.
    DATA temp120 TYPE z2ui5_if_types=>ty_s_name_value.
    DATA temp121 TYPE z2ui5_if_types=>ty_s_name_value.

    CREATE OBJECT result.

    IF t_ns IS NOT INITIAL.
      result->mt_prop = t_ns.
    ENDIF.

    
    CLEAR temp116.
    temp116 = result->mt_prop.
    
    temp117-n = 'displayBlock'.
    temp117-v = 'true'.
    INSERT temp117 INTO TABLE temp116.
    temp117-n = 'height'.
    temp117-v = '100%'.
    INSERT temp117 INTO TABLE temp116.
    result->mt_prop   = temp116.

    result->mv_name   = `View`.
    result->mv_ns     = `mvc`.
    result->mo_root   = result.
    result->mo_parent = result.

    
    CLEAR temp118.
    temp118-n = `xmlns`.
    temp118-v = `sap.m`.
    INSERT temp118 INTO TABLE result->mt_prop.
    
    CLEAR temp119.
    temp119-n = `xmlns:mvc`.
    temp119-v = `sap.ui.core.mvc`.
    INSERT temp119 INTO TABLE result->mt_prop.
    
    CLEAR temp120.
    temp120-n = `xmlns:core`.
    temp120-v = `sap.ui.core`.
    INSERT temp120 INTO TABLE result->mt_prop.
    
    CLEAR temp121.
    temp121-n = `xmlns:table`.
    temp121-v = `sap.ui.table`.
    INSERT temp121 INTO TABLE result->mt_prop.

  ENDMETHOD.


  METHOD factory_plain.

    CREATE OBJECT result.

    result->mo_root   = result.
    result->mo_parent = result.

  ENDMETHOD.


  METHOD factory_popup.
    DATA temp122 TYPE z2ui5_if_types=>ty_s_name_value.
    DATA temp123 TYPE z2ui5_if_types=>ty_s_name_value.

    CREATE OBJECT result.

    IF t_ns IS NOT INITIAL.
      result->mt_prop = t_ns.
    ENDIF.

    result->mv_name   = `FragmentDefinition`.
    result->mv_ns     = `core`.
    result->mo_root   = result.
    result->mo_parent = result.

    
    CLEAR temp122.
    temp122-n = `xmlns`.
    temp122-v = `sap.m`.
    INSERT temp122 INTO TABLE result->mt_prop.
    
    CLEAR temp123.
    temp123-n = `xmlns:core`.
    temp123-v = `sap.ui.core`.
    INSERT temp123 INTO TABLE result->mt_prop.

  ENDMETHOD.


  METHOD fb_control.
    result = _generic( name = `control`
                       ns   = `fb` ).
  ENDMETHOD.


  METHOD feed_input.
    DATA temp124 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp125 LIKE LINE OF temp124.
    CLEAR temp124.
    
    temp125-n = `buttonTooltip`.
    temp125-v = buttontooltip.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `enabled`.
    temp125-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `growing`.
    temp125-v = z2ui5_cl_util=>boolean_abap_2_json( growing ).
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `growingMaxLines`.
    temp125-v = growingmaxlines.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `icon`.
    temp125-v = icon.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `iconDensityAware`.
    temp125-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `iconDisplayShape`.
    temp125-v = icondisplayshape.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `iconInitials`.
    temp125-v = iconinitials.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `iconSize`.
    temp125-v = iconsize.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `maxLength`.
    temp125-v = maxlength.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `placeholder`.
    temp125-v = placeholder.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `rows`.
    temp125-v = rows.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `showExceededText`.
    temp125-v = z2ui5_cl_util=>boolean_abap_2_json( showexceededtext ).
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `showIcon`.
    temp125-v = z2ui5_cl_util=>boolean_abap_2_json( showicon ).
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `value`.
    temp125-v = value.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `class`.
    temp125-v = class.
    INSERT temp125 INTO TABLE temp124.
    temp125-n = `post`.
    temp125-v = post.
    INSERT temp125 INTO TABLE temp124.
    result = _generic(
                 name   = `FeedInput`
                 t_prop = temp124 ).

  ENDMETHOD.


  METHOD feed_list_item.
    DATA temp126 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp127 LIKE LINE OF temp126.
    CLEAR temp126.
    
    temp127-n = `activeIcon`.
    temp127-v = activeicon.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `convertedLinksDefaultTarget`.
    temp127-v = convertedlinksdefaulttarget.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `convertLinksToAnchorTags`.
    temp127-v = convertlinkstoanchortags.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `iconActive`.
    temp127-v = z2ui5_cl_util=>boolean_abap_2_json( iconactive ).
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `icon`.
    temp127-v = icon.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `iconDensityAware`.
    temp127-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `iconDisplayShape`.
    temp127-v = icondisplayshape.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `iconInitials`.
    temp127-v = iconinitials.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `iconSize`.
    temp127-v = iconsize.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `info`.
    temp127-v = info.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `lessLabel`.
    temp127-v = lesslabel.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `maxCharacters`.
    temp127-v = maxcharacters.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `moreLabel`.
    temp127-v = morelabel.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `sender`.
    temp127-v = sender.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `senderActive`.
    temp127-v = z2ui5_cl_util=>boolean_abap_2_json( senderactive ).
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `showIcon`.
    temp127-v = z2ui5_cl_util=>boolean_abap_2_json( showicon ).
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `text`.
    temp127-v = text.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `senderPress`.
    temp127-v = senderpress.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `iconPress`.
    temp127-v = iconpress.
    INSERT temp127 INTO TABLE temp126.
    temp127-n = `timestamp`.
    temp127-v = timestamp.
    INSERT temp127 INTO TABLE temp126.
    result = _generic(
                 name   = `FeedListItem`
                 t_prop = temp126 ).
  ENDMETHOD.


  METHOD feed_list_item_action.
    DATA temp128 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp129 LIKE LINE OF temp128.
    CLEAR temp128.
    
    temp129-n = `enabled`.
    temp129-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp129 INTO TABLE temp128.
    temp129-n = `icon`.
    temp129-v = icon.
    INSERT temp129 INTO TABLE temp128.
    temp129-n = `key`.
    temp129-v = key.
    INSERT temp129 INTO TABLE temp128.
    temp129-n = `text`.
    temp129-v = text.
    INSERT temp129 INTO TABLE temp128.
    temp129-n = `press`.
    temp129-v = press.
    INSERT temp129 INTO TABLE temp128.
    temp129-n = `visible`.
    temp129-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp129 INTO TABLE temp128.
    result = _generic( name   = `FeedListItemAction`
                       t_prop = temp128 ).
  ENDMETHOD.


  METHOD filter_bar.

    DATA temp130 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp131 LIKE LINE OF temp130.
    CLEAR temp130.
    
    temp131-n = 'useToolbar'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( usetoolbar ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'search'.
    temp131-v = search.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'id'.
    temp131-v = id.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'persistencyKey'.
    temp131-v = persistencykey.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'afterVariantLoad'.
    temp131-v = aftervariantload.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'afterVariantSave'.
    temp131-v = aftervariantsave.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'assignedFiltersChanged'.
    temp131-v = assignedfilterschanged.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'beforeVariantFetch'.
    temp131-v = beforevariantfetch.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'cancel'.
    temp131-v = cancel.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'clear'.
    temp131-v = clear.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'filtersDialogBeforeOpen'.
    temp131-v = filtersdialogbeforeopen.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'filtersDialogCancel'.
    temp131-v = filtersdialogcancel.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'filtersDialogClosed'.
    temp131-v = filtersdialogclosed.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'initialise'.
    temp131-v = initialise.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'initialized'.
    temp131-v = initialized.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'reset'.
    temp131-v = reset.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'filterContainerWidth'.
    temp131-v = filtercontainerwidth.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'header'.
    temp131-v = header.
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'advancedMode'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( advancedmode ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'isRunningInValueHelpDialog'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( isrunninginvaluehelpdialog ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'showAllFilters'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( showallfilters ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'showClearOnFB'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( showclearonfb ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'showFilterConfiguration'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( showfilterconfiguration ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'showGoOnFB'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( showgoonfb ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'showRestoreButton'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( showrestorebutton ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'showRestoreOnFB'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( showrestoreonfb ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'useSnapshot'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( usesnapshot ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'searchEnabled'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( searchenabled ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'considerGroupTitle'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( considergrouptitle ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'deltaVariantMode'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( deltavariantmode ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'disableSearchMatchesPatternWarning'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( disablesearchmatchespatternw ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'filterBarExpanded'.
    temp131-v = z2ui5_cl_util=>boolean_abap_2_json( filterbarexpanded ).
    INSERT temp131 INTO TABLE temp130.
    temp131-n = 'filterChange'.
    temp131-v = filterchange.
    INSERT temp131 INTO TABLE temp130.
    result = _generic(
        name   = `FilterBar`
        ns     = 'fb'
        t_prop = temp130 ).
  ENDMETHOD.


  METHOD filter_control.
    result = _generic( name = `control`
                       ns   = 'fb' ).
  ENDMETHOD.


  METHOD filter_group_item.
    DATA temp132 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp133 LIKE LINE OF temp132.
    CLEAR temp132.
    
    temp133-n = 'name'.
    temp133-v = name.
    INSERT temp133 INTO TABLE temp132.
    temp133-n = 'label'.
    temp133-v = label.
    INSERT temp133 INTO TABLE temp132.
    temp133-n = 'groupName'.
    temp133-v = groupname.
    INSERT temp133 INTO TABLE temp132.
    temp133-n = 'visibleInFilterBar'.
    temp133-v = visibleinfilterbar.
    INSERT temp133 INTO TABLE temp132.
    result = _generic( name   = `FilterGroupItem`
                       ns     = 'fb'
                       t_prop = temp132 ).
  ENDMETHOD.


  METHOD filter_group_items.
    result = _generic( name = `filterGroupItems`
                       ns   = 'fb' ).
  ENDMETHOD.


  METHOD filter_items.
    result = _generic( `filterItems` ).
  ENDMETHOD.


  METHOD first_status.
    result = _generic( `firstStatus` ).
  ENDMETHOD.


  METHOD flexible_column_layout.

    DATA temp134 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp135 LIKE LINE OF temp134.
    CLEAR temp134.
    
    temp135-n = `layout`.
    temp135-v = layout.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `id`.
    temp135-v = id.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `class`.
    temp135-v = class.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `afterBeginColumnNavigate`.
    temp135-v = afterbegincolumnnavigate.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `afterEndColumnNavigate`.
    temp135-v = afterendcolumnnavigate.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `afterMidColumnNavigate`.
    temp135-v = aftermidcolumnnavigate.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `beginColumnNavigate`.
    temp135-v = begincolumnnavigate.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `columnResize`.
    temp135-v = columnresize.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `endColumnNavigate`.
    temp135-v = endcolumnnavigate.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `midColumnNavigate`.
    temp135-v = midcolumnnavigate.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `stateChange`.
    temp135-v = statechange.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `backgroundDesign`.
    temp135-v = backgrounddesign.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `defaultTransitionNameBeginColumn`.
    temp135-v = defaulttransitionnamebegincol.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `defaultTransitionNameEndColumn`.
    temp135-v = defaulttransitionnameendcol.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `defaultTransitionNameMidColumn`.
    temp135-v = defaulttransitionnamemidcol.
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `autoFocus`.
    temp135-v = z2ui5_cl_util=>boolean_abap_2_json( autofocus ).
    INSERT temp135 INTO TABLE temp134.
    temp135-n = `restoreFocusOnBackNavigation`.
    temp135-v = z2ui5_cl_util=>boolean_abap_2_json( restorefocusonbacknavigation ).
    INSERT temp135 INTO TABLE temp134.
    result = _generic(
        name   = `FlexibleColumnLayout`
        ns     = `f`
        t_prop = temp134 ).

  ENDMETHOD.


  METHOD flex_box.
    DATA temp136 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp137 LIKE LINE OF temp136.
    CLEAR temp136.
    
    temp137-n = `class`.
    temp137-v = class.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `renderType`.
    temp137-v = rendertype.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `width`.
    temp137-v = width.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `height`.
    temp137-v = height.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `alignItems`.
    temp137-v = alignitems.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `fitContainer`.
    temp137-v = z2ui5_cl_util=>boolean_abap_2_json( fitcontainer ).
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `justifyContent`.
    temp137-v = justifycontent.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `wrap`.
    temp137-v = wrap.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `items`.
    temp137-v = items.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `direction`.
    temp137-v = direction.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `alignContent`.
    temp137-v = aligncontent.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `backgroundDesign`.
    temp137-v = backgrounddesign.
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `displayInline`.
    temp137-v = z2ui5_cl_util=>boolean_abap_2_json( displayinline ).
    INSERT temp137 INTO TABLE temp136.
    temp137-n = `visible`.
    temp137-v = visible.
    INSERT temp137 INTO TABLE temp136.
    result = _generic(
                 name   = `FlexBox`
                 t_prop = temp136 ).
  ENDMETHOD.


  METHOD flex_item_data.
    DATA temp138 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp139 LIKE LINE OF temp138.
    result = me.

    
    CLEAR temp138.
    
    temp139-n = `growFactor`.
    temp139-v = growfactor.
    INSERT temp139 INTO TABLE temp138.
    temp139-n = `baseSize`.
    temp139-v = basesize.
    INSERT temp139 INTO TABLE temp138.
    temp139-n = `backgroundDesign`.
    temp139-v = backgrounddesign.
    INSERT temp139 INTO TABLE temp138.
    temp139-n = `styleClass`.
    temp139-v = styleclass.
    INSERT temp139 INTO TABLE temp138.
    _generic( name   = `FlexItemData`
              t_prop = temp138 ).
  ENDMETHOD.


  METHOD footer.
    result = _generic( ns   = ns
                       name = `footer` ).
  ENDMETHOD.


  METHOD force_based_layout.
    DATA temp140 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp141 LIKE LINE OF temp140.
    CLEAR temp140.
    
    temp141-n = `id`.
    temp141-v = id.
    INSERT temp141 INTO TABLE temp140.
    temp141-n = `class`.
    temp141-v = class.
    INSERT temp141 INTO TABLE temp140.
    temp141-n = `alpha`.
    temp141-v = alpha.
    INSERT temp141 INTO TABLE temp140.
    temp141-n = `charge`.
    temp141-v = charge.
    INSERT temp141 INTO TABLE temp140.
    temp141-n = `friction`.
    temp141-v = friction.
    INSERT temp141 INTO TABLE temp140.
    temp141-n = `maximumDuration`.
    temp141-v = maximumDuration.
    INSERT temp141 INTO TABLE temp140.
    result = _generic( name   = `ForceBasedLayout`
                       ns     = `nglayout`
                       t_prop = temp140 ).
  ENDMETHOD.


  METHOD force_directed_layout.
    DATA temp142 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp143 LIKE LINE OF temp142.
    CLEAR temp142.
    
    temp143-n = `id`.
    temp143-v = id.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `class`.
    temp143-v = class.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `coolDownStep`.
    temp143-v = coolDownStep.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `initialTemperature`.
    temp143-v = initialTemperature.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `maxIterations`.
    temp143-v = maxIterations.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `maxTime`.
    temp143-v = maxTime.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `optimalDistanceConstant`.
    temp143-v = optimalDistanceConstant.
    INSERT temp143 INTO TABLE temp142.
    temp143-n = `staticNodes`.
    temp143-v = staticNodes.
    INSERT temp143 INTO TABLE temp142.
    result = _generic( name   = `ForceDirectedLayout`
                       ns     = `nglayout`
                       t_prop = temp142 ).
  ENDMETHOD.


  METHOD formatted_text.
    DATA temp144 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp145 LIKE LINE OF temp144.
    result = me.
    
    CLEAR temp144.
    
    temp145-n = `htmlText`.
    temp145-v = htmltext.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `convertedLinksDefaultTarget`.
    temp145-v = convertedlinksdefaulttarget.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `convertLinksToAnchorTags`.
    temp145-v = convertlinkstoanchortags.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `height`.
    temp145-v = height.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `textAlign`.
    temp145-v = textalign.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `textDirection`.
    temp145-v = textdirection.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `visible`.
    temp145-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `width`.
    temp145-v = width.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `class`.
    temp145-v = class.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `id`.
    temp145-v = id.
    INSERT temp145 INTO TABLE temp144.
    temp145-n = `controls`.
    temp145-v = controls.
    INSERT temp145 INTO TABLE temp144.
    _generic( name   = `FormattedText`
              t_prop = temp144 ).
  ENDMETHOD.


  METHOD form_toolbar.
    result = _generic( name = `toolbar`
                       ns   = `form` ).
  ENDMETHOD.


  METHOD gantt_chart_container.
    result = _generic( name = `GanttChartContainer`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD gantt_chart_with_table.
    DATA temp146 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp147 LIKE LINE OF temp146.
    CLEAR temp146.
    
    temp147-n = `id`.
    temp147-v = id.
    INSERT temp147 INTO TABLE temp146.
    temp147-n = `shapeSelectionMode`.
    temp147-v = shapeselectionmode.
    INSERT temp147 INTO TABLE temp146.
    temp147-n = `isConnectorDetailsVisible`.
    temp147-v = z2ui5_cl_util=>boolean_abap_2_json( isconnectordetailsvisible ).
    INSERT temp147 INTO TABLE temp146.
    result = _generic(
        name   = `GanttChartWithTable`
        ns     = `gantt`
        t_prop = temp146 ).
  ENDMETHOD.


  METHOD gantt_row_settings.
    DATA temp148 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp149 LIKE LINE OF temp148.
    CLEAR temp148.
    
    temp149-n = `rowId`.
    temp149-v = rowid.
    INSERT temp149 INTO TABLE temp148.
    temp149-n = `shapes1`.
    temp149-v = shapes1.
    INSERT temp149 INTO TABLE temp148.
    temp149-n = `shapes2`.
    temp149-v = shapes2.
    INSERT temp149 INTO TABLE temp148.
    temp149-n = `relationships`.
    temp149-v = relationships.
    INSERT temp149 INTO TABLE temp148.
    result = _generic( name   = `GanttRowSettings`
                       ns     = `gantt`
                       t_prop = temp148 ).
  ENDMETHOD.


  METHOD gantt_table.
    result = _generic( name = `table`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD gantt_toolbar.
    result = _generic( name = `toolbar`
                       ns   = 'gantt' ).
  ENDMETHOD.


  METHOD generic_tag.

    DATA temp150 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp151 LIKE LINE OF temp150.
    CLEAR temp150.
    
    temp151-n = `ariaLabelledBy`.
    temp151-v = arialabelledby.
    INSERT temp151 INTO TABLE temp150.
    temp151-n = `class`.
    temp151-v = class.
    INSERT temp151 INTO TABLE temp150.
    temp151-n = `design`.
    temp151-v = design.
    INSERT temp151 INTO TABLE temp150.
    temp151-n = `status`.
    temp151-v = status.
    INSERT temp151 INTO TABLE temp150.
    temp151-n = `id`.
    temp151-v = id.
    INSERT temp151 INTO TABLE temp150.
    temp151-n = `press`.
    temp151-v = press.
    INSERT temp151 INTO TABLE temp150.
    temp151-n = `text`.
    temp151-v = text.
    INSERT temp151 INTO TABLE temp150.
    result = _generic( name   = `GenericTag`
                       t_prop = temp150 ).

  ENDMETHOD.


  METHOD generic_tile.
    DATA temp152 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp153 LIKE LINE OF temp152.

    result = me.
    
    CLEAR temp152.
    
    temp153-n = `class`.
    temp153-v = class.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `id`.
    temp153-v = id.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `header`.
    temp153-v = header.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `mode`.
    temp153-v = mode.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `additionalTooltip`.
    temp153-v = additionaltooltip.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `appShortcut`.
    temp153-v = appshortcut.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `backgroundColor`.
    temp153-v = backgroundcolor.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `backgroundImage`.
    temp153-v = backgroundimage.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `dropAreaOffset`.
    temp153-v = dropareaoffset.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `press`.
    temp153-v = press.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `frameType`.
    temp153-v = frametype.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `failedText`.
    temp153-v = failedtext.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `headerImage`.
    temp153-v = headerimage.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `scope`.
    temp153-v = scope.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `sizeBehavior`.
    temp153-v = sizebehavior.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `state`.
    temp153-v = state.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `systemInfo`.
    temp153-v = systeminfo.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `tileBadge`.
    temp153-v = tilebadge.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `tileIcon`.
    temp153-v = tileicon.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `url`.
    temp153-v = url.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `valueColor`.
    temp153-v = valuecolor.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `width`.
    temp153-v = width.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `wrappingType`.
    temp153-v = wrappingtype.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `imageDescription`.
    temp153-v = imagedescription.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `navigationButtonText`.
    temp153-v = navigationbuttontext.
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `visible`.
    temp153-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `renderOnThemeChange`.
    temp153-v = z2ui5_cl_util=>boolean_abap_2_json( renderonthemechange ).
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `enableNavigationButton`.
    temp153-v = z2ui5_cl_util=>boolean_abap_2_json( enablenavigationbutton ).
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `pressEnabled`.
    temp153-v = z2ui5_cl_util=>boolean_abap_2_json( pressenabled ).
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `iconLoaded`.
    temp153-v = z2ui5_cl_util=>boolean_abap_2_json( iconloaded ).
    INSERT temp153 INTO TABLE temp152.
    temp153-n = `subheader`.
    temp153-v = subheader.
    INSERT temp153 INTO TABLE temp152.
    _generic( name   = `GenericTile`
              ns     = ``
              t_prop = temp152 ).

  ENDMETHOD.


  METHOD get.

    IF name IS INITIAL.
      result = mo_root->mo_previous.
      RETURN.
    ENDIF.

    IF mo_parent->mv_name = name.
      result = mo_parent.
    ELSE.
      result = mo_parent->get( name ).
    ENDIF.

  ENDMETHOD.


  METHOD get_child.
    DATA temp154 LIKE LINE OF mt_child.
    DATA temp155 LIKE sy-tabix.
    temp155 = sy-tabix.
    READ TABLE mt_child INDEX index INTO temp154.
    sy-tabix = temp155.
    IF sy-subrc <> 0.
      ASSERT 1 = 0.
    ENDIF.
    result = temp154.
  ENDMETHOD.


  METHOD get_parent.
    result = mo_parent.
  ENDMETHOD.


  METHOD get_root.
    result = mo_root.
  ENDMETHOD.


  METHOD grid.

    DATA temp156 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp157 LIKE LINE OF temp156.
    CLEAR temp156.
    
    temp157-n = `defaultSpan`.
    temp157-v = default_span.
    INSERT temp157 INTO TABLE temp156.
    temp157-n = `class`.
    temp157-v = class.
    INSERT temp157 INTO TABLE temp156.
    result = _generic( name   = `Grid`
                       ns     = `layout`
                       t_prop = temp156 ).
  ENDMETHOD.


  METHOD grid_data.
    DATA temp158 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp159 LIKE LINE OF temp158.
    result = me.
    
    CLEAR temp158.
    
    temp159-n = `span`.
    temp159-v = span.
    INSERT temp159 INTO TABLE temp158.
    _generic( name   = `GridData`
              ns     = `layout`
              t_prop = temp158 ).
  ENDMETHOD.


  METHOD group.
    DATA temp160 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp161 LIKE LINE OF temp160.
    CLEAR temp160.
    
    temp161-n = `collapsed`.
    temp161-v = z2ui5_cl_util=>boolean_abap_2_json( collapsed ).
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `id`.
    temp161-v = id.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `class`.
    temp161-v = class.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `description`.
    temp161-v = description.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `headerCheckBoxState`.
    temp161-v = headerCheckBoxState.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `icon`.
    temp161-v = icon.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `key`.
    temp161-v = key.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `minWidth`.
    temp161-v = minWidth.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `parentGroupKey`.
    temp161-v = parentGroupKey.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `status`.
    temp161-v = status.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `title`.
    temp161-v = title.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `collapseExpand`.
    temp161-v = collapseExpand.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `showDetail`.
    temp161-v = showDetail.
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `visible`.
    temp161-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp161 INTO TABLE temp160.
    temp161-n = `headerCheckBoxPress`.
    temp161-v = headerCheckBoxPress.
    INSERT temp161 INTO TABLE temp160.
    result = _generic( name   = `group`
                       ns     = `networkgraph`
                       t_prop = temp160 ).
  ENDMETHOD.


  METHOD groups.
    DATA temp162 TYPE string.
    CASE ns.
      WHEN ``.
        temp162 = `networkgraph`.
      WHEN OTHERS.
        temp162 = ns.
    ENDCASE.
    result = _generic( name = `groups`
                       ns   = temp162 ).
  ENDMETHOD.


  METHOD group_items.
    result = _generic( `groupItems` ).
  ENDMETHOD.


  METHOD harvey_ball_micro_chart.
    DATA temp163 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp164 LIKE LINE OF temp163.
    result = me.
    
    CLEAR temp163.
    
    temp164-n = `colorPalette`.
    temp164-v = colorpalette.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `press`.
    temp164-v = press.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `size`.
    temp164-v = size.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `height`.
    temp164-v = height.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `width`.
    temp164-v = width.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `total`.
    temp164-v = total.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `totalLabel`.
    temp164-v = totallabel.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `alignContent`.
    temp164-v = aligncontent.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `hideOnNoData`.
    temp164-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `formattedLabel`.
    temp164-v = z2ui5_cl_util=>boolean_abap_2_json( formattedlabel ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `showFractions`.
    temp164-v = z2ui5_cl_util=>boolean_abap_2_json( showfractions ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `showTotal`.
    temp164-v = z2ui5_cl_util=>boolean_abap_2_json( showtotal ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `totalScale`.
    temp164-v = totalscale.
    INSERT temp164 INTO TABLE temp163.
    _generic( name   = `HarveyBallMicroChart`
              ns     = `mchart`
              t_prop = temp163 ).
  ENDMETHOD.


  METHOD hbox.
    DATA temp165 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp166 LIKE LINE OF temp165.
    CLEAR temp165.
    
    temp166-n = `class`.
    temp166-v = class.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `alignContent`.
    temp166-v = aligncontent.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `alignItems`.
    temp166-v = alignitems.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `width`.
    temp166-v = width.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `id`.
    temp166-v = id.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `renderType`.
    temp166-v = rendertype.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `height`.
    temp166-v = height.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `wrap`.
    temp166-v = wrap.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `backgroundDesign`.
    temp166-v = backgrounddesign.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `direction`.
    temp166-v = direction.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `displayInline`.
    temp166-v = z2ui5_cl_util=>boolean_abap_2_json( displayinline ).
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `fitContainer`.
    temp166-v = z2ui5_cl_util=>boolean_abap_2_json( fitcontainer ).
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `visible`.
    temp166-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `justifyContent`.
    temp166-v = justifycontent.
    INSERT temp166 INTO TABLE temp165.
    result = _generic(
        name   = `HBox`
        t_prop = temp165 ).

  ENDMETHOD.


  METHOD header.
    result = _generic( name = `header`
                       ns   = ns ).
  ENDMETHOD.


  METHOD header_container.
    result = _generic( `headerContainer` ).
  ENDMETHOD.


  METHOD header_container_control.
    DATA temp167 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp168 LIKE LINE OF temp167.
    CLEAR temp167.
    
    temp168-n = `backgroundDesign`.
    temp168-v = backgrounddesign.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `gridLayout`.
    temp168-v = z2ui5_cl_util=>boolean_abap_2_json( gridlayout ).
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `height`.
    temp168-v = height.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `orientation`.
    temp168-v = orientation.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `scrollStep`.
    temp168-v = scrollstep.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `scrollStepByItem`.
    temp168-v = scrollstepbyitem.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `scrollTime`.
    temp168-v = scrolltime.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `showDividers`.
    temp168-v = z2ui5_cl_util=>boolean_abap_2_json( showdividers ).
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `showOverflowItem`.
    temp168-v = z2ui5_cl_util=>boolean_abap_2_json( showoverflowitem ).
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `visible`.
    temp168-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `width`.
    temp168-v = width.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `id`.
    temp168-v = id.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `scroll`.
    temp168-v = scroll.
    INSERT temp168 INTO TABLE temp167.
    result = _generic(
                 name   = `HeaderContainer`
                 t_prop = temp167 ).
  ENDMETHOD.


  METHOD header_content.

    result = _generic( name = `headerContent`
                       ns   = ns ).

  ENDMETHOD.


  METHOD header_title.

    result = _generic( name = `headerTitle`
                       ns   = `uxap` ).

  ENDMETHOD.


  METHOD header_toolbar.

    result = _generic( `headerToolbar` ).

  ENDMETHOD.


  METHOD heading.

    result = me.
    result = _generic( name = `heading`
                       ns   = ns ).

  ENDMETHOD.


  METHOD horizontal_layout.
    DATA temp169 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp170 LIKE LINE OF temp169.
    CLEAR temp169.
    
    temp170-n = `class`.
    temp170-v = class.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `allowWrapping`.
    temp170-v = z2ui5_cl_util=>boolean_abap_2_json( allowwrapping ).
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `id`.
    temp170-v = id.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `visible`.
    temp170-v = visible.
    INSERT temp170 INTO TABLE temp169.
    result = _generic(
                 name   = `HorizontalLayout`
                 ns     = `layout`
                 t_prop = temp169 ).
  ENDMETHOD.


  METHOD html.

    DATA temp171 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp172 LIKE LINE OF temp171.
    CLEAR temp171.
    
    temp172-n = 'id'.
    temp172-v = id.
    INSERT temp172 INTO TABLE temp171.
    temp172-n = 'content'.
    temp172-v = content.
    INSERT temp172 INTO TABLE temp171.
    temp172-n = 'afterRendering'.
    temp172-v = afterrendering.
    INSERT temp172 INTO TABLE temp171.
    temp172-n = 'preferDOM'.
    temp172-v = z2ui5_cl_util=>boolean_abap_2_json( preferdom ).
    INSERT temp172 INTO TABLE temp171.
    temp172-n = 'sanitizeContent'.
    temp172-v = z2ui5_cl_util=>boolean_abap_2_json( sanitizecontent ).
    INSERT temp172 INTO TABLE temp171.
    temp172-n = 'visible'.
    temp172-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp172 INTO TABLE temp171.
    result = _generic( name   = `HTML`
                       ns     = `core`
                       t_prop = temp171 ).

  ENDMETHOD.


  METHOD html_area.
    DATA temp173 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp174 LIKE LINE OF temp173.
    CLEAR temp173.
    
    temp174-n = `id`.
    temp174-v = id.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `shape`.
    temp174-v = shape.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `coords`.
    temp174-v = coords.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `alt`.
    temp174-v = alt.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `target`.
    temp174-v = target.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `href`.
    temp174-v = href.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `onclick`.
    temp174-v = onclick.
    INSERT temp174 INTO TABLE temp173.
    result = _generic( name   = `area`
                       ns     = 'html'
                       t_prop = temp173 ).
  ENDMETHOD.


  METHOD html_canvas.
    DATA temp175 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp176 LIKE LINE OF temp175.
    CLEAR temp175.
    
    temp176-n = `id`.
    temp176-v = id.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `class`.
    temp176-v = class.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `width`.
    temp176-v = width.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `height`.
    temp176-v = height.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `style`.
    temp176-v = style.
    INSERT temp176 INTO TABLE temp175.
    result = _generic( name   = `canvas`
                       ns     = `html`
                       t_prop = temp175 ).
  ENDMETHOD.


  METHOD html_map.
    DATA temp177 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp178 LIKE LINE OF temp177.
    CLEAR temp177.
    
    temp178-n = `id`.
    temp178-v = id.
    INSERT temp178 INTO TABLE temp177.
    temp178-n = `class`.
    temp178-v = class.
    INSERT temp178 INTO TABLE temp177.
    temp178-n = `name`.
    temp178-v = name.
    INSERT temp178 INTO TABLE temp177.
    result = _generic( name   = `map`
                       ns     = 'html'
                       t_prop = temp177 ).
  ENDMETHOD.


  METHOD icon.
    DATA temp179 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp180 LIKE LINE OF temp179.

    result = me.
    
    CLEAR temp179.
    
    temp180-n = `size`.
    temp180-v = size.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `color`.
    temp180-v = color.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `class`.
    temp180-v = class.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `src`.
    temp180-v = src.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `activeColor`.
    temp180-v = activecolor.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `activeBackgroundColor`.
    temp180-v = activebackgroundcolor.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `alt`.
    temp180-v = alt.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `backgroundColor`.
    temp180-v = backgroundcolor.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `height`.
    temp180-v = height.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `width`.
    temp180-v = width.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `id`.
    temp180-v = id.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `press`.
    temp180-v = press.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `hoverBackgroundColor`.
    temp180-v = hoverbackgroundcolor.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `hoverColor`.
    temp180-v = hovercolor.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `visible`.
    temp180-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `decorative`.
    temp180-v = z2ui5_cl_util=>boolean_abap_2_json( decorative ).
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `noTabStop`.
    temp180-v = z2ui5_cl_util=>boolean_abap_2_json( notabstop ).
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `useIconTooltip`.
    temp180-v = z2ui5_cl_util=>boolean_abap_2_json( useicontooltip ).
    INSERT temp180 INTO TABLE temp179.
    _generic( name   = `Icon`
              ns     = `core`
              t_prop = temp179 ).

  ENDMETHOD.


  METHOD icon_tab_bar.

    DATA temp181 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp182 LIKE LINE OF temp181.
    CLEAR temp181.
    
    temp182-n = `class`.
    temp182-v = class.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `select`.
    temp182-v = select.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `expand`.
    temp182-v = expand.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `expandable`.
    temp182-v = z2ui5_cl_util=>boolean_abap_2_json( expandable ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `expanded`.
    temp182-v = z2ui5_cl_util=>boolean_abap_2_json( expanded ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `applyContentPadding`.
    temp182-v = z2ui5_cl_util=>boolean_abap_2_json( applycontentpadding ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `backgroundDesign`.
    temp182-v = backgrounddesign.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `enableTabReordering`.
    temp182-v = z2ui5_cl_util=>boolean_abap_2_json( enabletabreordering ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `headerBackgroundDesign`.
    temp182-v = headerbackgrounddesign.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `stretchContentHeight`.
    temp182-v = z2ui5_cl_util=>boolean_abap_2_json( stretchcontentheight ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `headerMode`.
    temp182-v = headermode.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `maxNestingLevel`.
    temp182-v = maxnestinglevel.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `tabDensityMode`.
    temp182-v = tabdensitymode.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `tabsOverflowMode`.
    temp182-v = tabsoverflowmode.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `items`.
    temp182-v = items.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `id`.
    temp182-v = id.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `content`.
    temp182-v = content.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `upperCase`.
    temp182-v = z2ui5_cl_util=>boolean_abap_2_json( uppercase ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `selectedKey`.
    temp182-v = selectedkey.
    INSERT temp182 INTO TABLE temp181.
    result = _generic(
                 name   = `IconTabBar`
                 t_prop = temp181 ).
  ENDMETHOD.


  METHOD icon_tab_filter.

    DATA temp183 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp184 LIKE LINE OF temp183.
    CLEAR temp183.
    
    temp184-n = `icon`.
    temp184-v = icon.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `items`.
    temp184-v = items.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `design`.
    temp184-v = design.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `iconColor`.
    temp184-v = iconcolor.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `showAll`.
    temp184-v = z2ui5_cl_util=>boolean_abap_2_json( showall ).
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `iconDensityAware`.
    temp184-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `visible`.
    temp184-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `count`.
    temp184-v = count.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `text`.
    temp184-v = text.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `id`.
    temp184-v = id.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `textDirection`.
    temp184-v = textdirection.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `class`.
    temp184-v = class.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `key`.
    temp184-v = key.
    INSERT temp184 INTO TABLE temp183.
    result = _generic(
        name   = `IconTabFilter`
        t_prop = temp183 ).
  ENDMETHOD.


  METHOD icon_tab_header.

    DATA temp185 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp186 LIKE LINE OF temp185.
    CLEAR temp185.
    
    temp186-n = `selectedKey`.
    temp186-v = selectedkey.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `items`.
    temp186-v = items.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `select`.
    temp186-v = select.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `ariaTexts`.
    temp186-v = ariatexts.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `backgroundDesign`.
    temp186-v = backgrounddesign.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `enableTabReordering`.
    temp186-v = z2ui5_cl_util=>boolean_abap_2_json( enabletabreordering ).
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `maxNestingLevel`.
    temp186-v = maxnestinglevel.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `tabDensityMode`.
    temp186-v = tabdensitymode.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `tabsOverflowMode`.
    temp186-v = tabsoverflowmode.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `id`.
    temp186-v = id.
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `visible`.
    temp186-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp186 INTO TABLE temp185.
    temp186-n = `mode`.
    temp186-v = mode.
    INSERT temp186 INTO TABLE temp185.
    result = _generic(
        name   = `IconTabHeader`
        t_prop = temp185 ).

  ENDMETHOD.


  METHOD icon_tab_separator.

    DATA temp187 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp188 LIKE LINE OF temp187.
    CLEAR temp187.
    
    temp188-n = `icon`.
    temp188-v = icon.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `iconDensityAware`.
    temp188-v = icondensityaware.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `id`.
    temp188-v = id.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `class`.
    temp188-v = class.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `visible`.
    temp188-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp188 INTO TABLE temp187.
    result = _generic( name   = `IconTabSeparator`
                       t_prop = temp187 ).

  ENDMETHOD.


  METHOD illustrated_message.

    DATA temp189 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp190 LIKE LINE OF temp189.
    CLEAR temp189.
    
    temp190-n = `enableVerticalResponsiveness`.
    temp190-v = enableverticalresponsiveness.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `illustrationType`.
    temp190-v = illustrationtype.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `enableFormattedText`.
    temp190-v = z2ui5_cl_util=>boolean_abap_2_json( enableformattedtext ).
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `illustrationSize`.
    temp190-v = illustrationsize.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `description`.
    temp190-v = description.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `title`.
    temp190-v = title.
    INSERT temp190 INTO TABLE temp189.
    result = _generic(
        name   = `IllustratedMessage`
        t_prop = temp189 ).
  ENDMETHOD.


  METHOD image.
    DATA temp191 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp192 LIKE LINE OF temp191.
    result = me.
    
    CLEAR temp191.
    
    temp192-n = `id`.
    temp192-v = id.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `src`.
    temp192-v = src.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `class`.
    temp192-v = class.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `height`.
    temp192-v = height.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `alt`.
    temp192-v = alt.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `activeSrc`.
    temp192-v = activesrc.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `ariaHasPopup`.
    temp192-v = ariahaspopup.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `backgroundPosition`.
    temp192-v = backgroundposition.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `backgroundRepeat`.
    temp192-v = backgroundrepeat.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `backgroundSize`.
    temp192-v = backgroundsize.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `mode`.
    temp192-v = mode.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `useMap`.
    temp192-v = usemap.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `width`.
    temp192-v = width.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `error`.
    temp192-v = error.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `press`.
    temp192-v = press.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `load`.
    temp192-v = load.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `decorative`.
    temp192-v = z2ui5_cl_util=>boolean_abap_2_json( decorative ).
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `densityAware`.
    temp192-v = z2ui5_cl_util=>boolean_abap_2_json( densityaware ).
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `lazyLoading`.
    temp192-v = z2ui5_cl_util=>boolean_abap_2_json( lazyloading ).
    INSERT temp192 INTO TABLE temp191.
    _generic( name   = `Image`
              t_prop = temp191 ).
  ENDMETHOD.


  METHOD image_content.

    DATA temp193 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp194 LIKE LINE OF temp193.
    CLEAR temp193.
    
    temp194-n = `src`.
    temp194-v = src.
    INSERT temp194 INTO TABLE temp193.
    temp194-n = `description`.
    temp194-v = description.
    INSERT temp194 INTO TABLE temp193.
    temp194-n = `visible`.
    temp194-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp194 INTO TABLE temp193.
    result = _generic( name   = `ImageContent`
                       t_prop = temp193 ).

  ENDMETHOD.


  METHOD info_label.
    DATA temp195 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp196 LIKE LINE OF temp195.
    CLEAR temp195.
    
    temp196-n = `id`.
    temp196-v = id.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `class`.
    temp196-v = class.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `text`.
    temp196-v = text.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `renderMode `.
    temp196-v = rendermode.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `colorScheme`.
    temp196-v = colorscheme.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `displayOnly`.
    temp196-v = z2ui5_cl_util=>boolean_abap_2_json( displayonly ).
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `icon`.
    temp196-v = icon.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `textDirection`.
    temp196-v = textdirection.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `visible`.
    temp196-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `width`.
    temp196-v = width.
    INSERT temp196 INTO TABLE temp195.
    result = _generic( name   = `InfoLabel`
                       ns     = 'tnt'
                       t_prop = temp195 ).

  ENDMETHOD.


  METHOD input.
    DATA temp197 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp198 LIKE LINE OF temp197.
    result = me.
    
    CLEAR temp197.
    
    temp198-n = `id`.
    temp198-v = id.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `placeholder`.
    temp198-v = placeholder.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `type`.
    temp198-v = type.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `maxLength`.
    temp198-v = maxlength.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `showClearIcon`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( showclearicon ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `description`.
    temp198-v = description.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `editable`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `enabled`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `visible`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `enableTableAutoPopinMode`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( enabletableautopopinmode ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `enableSuggestionsHighlighting`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( enablesuggestionshighlighting ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `showTableSuggestionValueHelp`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( showtablesuggestionvaluehelp ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `valueState`.
    temp198-v = valuestate.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `valueStateText`.
    temp198-v = valuestatetext.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `value`.
    temp198-v = value.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `required`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `suggest`.
    temp198-v = suggest.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `suggestionItems`.
    temp198-v = suggestionitems.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `suggestionRows`.
    temp198-v = suggestionrows.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `showSuggestion`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( showsuggestion ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `valueHelpRequest`.
    temp198-v = valuehelprequest.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `autocomplete`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( autocomplete ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `valueLiveUpdate`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( valueliveupdate ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `submit`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( submit ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `showValueHelp`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluehelp ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `valueHelpOnly`.
    temp198-v = z2ui5_cl_util=>boolean_abap_2_json( valuehelponly ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `class`.
    temp198-v = class.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `change`.
    temp198-v = change.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `maxSuggestionWidth`.
    temp198-v = maxsuggestionwidth.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `width`.
    temp198-v = width.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `textFormatter`.
    temp198-v = textformatter.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `startSuggestion`.
    temp198-v = startsuggestion.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `valueHelpIconSrc`.
    temp198-v = valuehelpiconsrc.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `textFormatMode`.
    temp198-v = textformatmode.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `fieldWidth`.
    temp198-v = fieldwidth.
    INSERT temp198 INTO TABLE temp197.
    _generic(
        name   = `Input`
        t_prop = temp197 ).
  ENDMETHOD.


  METHOD input_list_item.
    DATA temp199 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp200 LIKE LINE OF temp199.
    CLEAR temp199.
    
    temp200-n = `label`.
    temp200-v = label.
    INSERT temp200 INTO TABLE temp199.
    result = _generic( name   = `InputListItem`
                       t_prop = temp199 ).
  ENDMETHOD.


  METHOD interact_bar_chart.
    DATA temp201 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp202 LIKE LINE OF temp201.
    CLEAR temp201.
    
    temp202-n = `selectionChanged`.
    temp202-v = selectionchanged.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `selectionEnabled`.
    temp202-v = z2ui5_cl_util=>boolean_abap_2_json( selectionEnabled ).
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `showError`.
    temp202-v = z2ui5_cl_util=>boolean_abap_2_json( showError ).
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `press`.
    temp202-v = press.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `labelWidth`.
    temp202-v = labelwidth.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `bars`.
    temp202-v = bars.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `errorMessageTitle`.
    temp202-v = errormessagetitle.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `displayedBars`.
    temp202-v = displayedBars.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `min`.
    temp202-v = min.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `max`.
    temp202-v = max.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `errorMessage`.
    temp202-v = errormessage.
    INSERT temp202 INTO TABLE temp201.
    result = _generic( name   = `InteractiveBarChart`
                       ns     = `mchart`
                       t_prop = temp201 ).
  ENDMETHOD.


  METHOD interact_bar_chart_bar.
    DATA temp203 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp204 LIKE LINE OF temp203.
    CLEAR temp203.
    
    temp204-n = `label`.
    temp204-v = label.
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `displayedValue`.
    temp204-v = displayedvalue.
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `value`.
    temp204-v = value.
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `selected`.
    temp204-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `color`.
    temp204-v = color.
    INSERT temp204 INTO TABLE temp203.
    result = _generic( name   = `InteractiveBarChartBar`
                       ns     = `mchart`
                       t_prop = temp203 ).
  ENDMETHOD.


  METHOD interact_donut_chart.
    DATA temp205 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp206 LIKE LINE OF temp205.
    CLEAR temp205.
    
    temp206-n = `selectionChanged`.
    temp206-v = selectionchanged.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `selectionEnabled`.
    temp206-v = z2ui5_cl_util=>boolean_abap_2_json( selectionEnabled ).
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `showError`.
    temp206-v = z2ui5_cl_util=>boolean_abap_2_json( showerror ).
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `errorMessageTitle`.
    temp206-v = errormessagetitle.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `errorMessage`.
    temp206-v = errormessage.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `displayedSegments`.
    temp206-v = displayedsegments.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `segments`.
    temp206-v = segments.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `press`.
    temp206-v = press.
    INSERT temp206 INTO TABLE temp205.
    result = _generic( name   = `InteractiveDonutChart`
                       ns     = `mchart`
                       t_prop = temp205 ).
  ENDMETHOD.


  METHOD interact_donut_chart_segment.
    DATA temp207 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp208 LIKE LINE OF temp207.
    CLEAR temp207.
    
    temp208-n = `label`.
    temp208-v = label.
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `displayedValue`.
    temp208-v = displayedvalue.
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `value`.
    temp208-v = value.
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `selected`.
    temp208-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `color`.
    temp208-v = color.
    INSERT temp208 INTO TABLE temp207.
    result = _generic( name   = `InteractiveDonutChartSegment`
                       ns     = `mchart`
                       t_prop = temp207 ).
  ENDMETHOD.


  METHOD interact_line_chart.
    DATA temp209 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp210 LIKE LINE OF temp209.
    CLEAR temp209.
    
    temp210-n = `selectionChanged`.
    temp210-v = selectionchanged.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `showError`.
    temp210-v = z2ui5_cl_util=>boolean_abap_2_json( showerror ).
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `press`.
    temp210-v = press.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `errorMessageTitle`.
    temp210-v = errormessagetitle.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `errorMessage`.
    temp210-v = errormessage.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `precedingPoint`.
    temp210-v = precedingpoint.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `points`.
    temp210-v = points.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `succeedingPoint`.
    temp210-v = succeddingpoint.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `displayedPoints`.
    temp210-v = displayedPoints.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `selectionEnabled`.
    temp210-v = selectionEnabled.
    INSERT temp210 INTO TABLE temp209.
    result = _generic( name   = `InteractiveLineChart`
                       ns     = `mchart`
                       t_prop = temp209 ).
  ENDMETHOD.


  METHOD interact_line_chart_point.
    DATA temp211 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp212 LIKE LINE OF temp211.
    CLEAR temp211.
    
    temp212-n = `label`.
    temp212-v = label.
    INSERT temp212 INTO TABLE temp211.
    temp212-n = `secondaryLabel`.
    temp212-v = secondarylabel.
    INSERT temp212 INTO TABLE temp211.
    temp212-n = `value`.
    temp212-v = value.
    INSERT temp212 INTO TABLE temp211.
    temp212-n = `displayedValue`.
    temp212-v = displayedvalue.
    INSERT temp212 INTO TABLE temp211.
    temp212-n = `selected`.
    temp212-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp212 INTO TABLE temp211.
    result = _generic(
                 name   = `InteractiveLineChartPoint`
                 ns     = `mchart`
                 t_prop = temp211 ).
  ENDMETHOD.


  METHOD intermediary.
    result = _generic( name = `intermediary`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD interval_headers.
    result = _generic( `intervalHeaders` ).
  ENDMETHOD.


  METHOD item.
    DATA temp213 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp214 LIKE LINE OF temp213.
    result = me.
    
    CLEAR temp213.
    
    temp214-n = `key`.
    temp214-v = key.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `text`.
    temp214-v = text.
    INSERT temp214 INTO TABLE temp213.
    _generic( name   = `Item`
              ns     = `core`
              t_prop = temp213 ).
  ENDMETHOD.


  METHOD items.
    result = _generic( name = `items`
                       ns   = ns ).
  ENDMETHOD.


  METHOD label.
    DATA temp215 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp216 LIKE LINE OF temp215.
    result = me.
    
    CLEAR temp215.
    
    temp216-n = `text`.
    temp216-v = text.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `displayOnly`.
    temp216-v = z2ui5_cl_util=>boolean_abap_2_json( displayonly ).
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `required`.
    temp216-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `showColon`.
    temp216-v = z2ui5_cl_util=>boolean_abap_2_json( showcolon ).
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `textAlign`.
    temp216-v = textalign.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `textDirection`.
    temp216-v = textdirection.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `vAlign`.
    temp216-v = valign.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `width`.
    temp216-v = width.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `wrapping`.
    temp216-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `wrappingType`.
    temp216-v = wrappingtype.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `design`.
    temp216-v = design.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `id`.
    temp216-v = id.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `class`.
    temp216-v = class.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `labelFor`.
    temp216-v = labelfor.
    INSERT temp216 INTO TABLE temp215.
    _generic( name   = `Label`
              t_prop = temp215 ).
  ENDMETHOD.


  METHOD lanes.
    result = _generic( name = `lanes`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD layered_layout.
    DATA temp217 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp218 LIKE LINE OF temp217.
    CLEAR temp217.
    
    temp218-n = `id`.
    temp218-v = id.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `class`.
    temp218-v = class.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `lineSpacingFactor`.
    temp218-v = lineSpacingFactor.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `nodePlacement`.
    temp218-v = nodePlacement.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `nodeSpacing`.
    temp218-v = nodeSpacing.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `mergeEdges`.
    temp218-v = z2ui5_cl_util=>boolean_abap_2_json( mergeEdges ).
    INSERT temp218 INTO TABLE temp217.
    result = _generic( name   = `LayeredLayout`
                       ns     = `nglayout`
                       t_prop = temp217 ).
  ENDMETHOD.


  METHOD layout_algorithm.
    result = _generic( name = `layoutAlgorithm`
                       ns   = `networkgraph` ).
  ENDMETHOD.


  METHOD layout_data.
    result = _generic( ns   = ns
                       name = `layoutData` ).
  ENDMETHOD.


  METHOD legend.

    DATA temp219 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp220 LIKE LINE OF temp219.
    CLEAR temp219.
    
    temp220-n = `id`.
    temp220-v = id.
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `caption`.
    temp220-v = caption.
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `items`.
    temp220-v = items.
    INSERT temp220 INTO TABLE temp219.
    result = _generic( name   = `Legend`
                       ns     = `vbm`
                       t_prop = temp219 ).

  ENDMETHOD.


  METHOD legenditem.

    DATA temp221 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp222 LIKE LINE OF temp221.
    CLEAR temp221.
    
    temp222-n = `id`.
    temp222-v = id.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `text`.
    temp222-v = text.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `color`.
    temp222-v = color.
    INSERT temp222 INTO TABLE temp221.
    result = _generic( name   = `LegendItem`
                       ns     = `vbm`
                       t_prop = temp221 ).

  ENDMETHOD.


  METHOD legend_area.

    result = _generic( name = `legend`
                       ns   = `vbm` ).

  ENDMETHOD.


  METHOD library_shape.
    DATA temp223 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp224 LIKE LINE OF temp223.
    CLEAR temp223.
    
    temp224-n = `id`.
    temp224-v = id.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `class`.
    temp224-v = class.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `animationOnChange`.
    temp224-v = z2ui5_cl_util=>boolean_abap_2_json( animationOnChange ).
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `definition`.
    temp224-v = definition.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `fillColor`.
    temp224-v = fillColor.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `fillingAngle`.
    temp224-v = fillingAngle.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `fillingDirection`.
    temp224-v = fillingDirection.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `fillingType`.
    temp224-v = fillingType.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `height`.
    temp224-v = height.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `horizontalAlignment`.
    temp224-v = horizontalAlignment.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `shapeId`.
    temp224-v = shapeId.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `strokeColor`.
    temp224-v = strokeColor.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `strokeWidth`.
    temp224-v = strokeWidth.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `verticalAlignment`.
    temp224-v = verticalAlignment.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `width`.
    temp224-v = width.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `x`.
    temp224-v = x.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `y`.
    temp224-v = y.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `afterShapeLoaded`.
    temp224-v = afterShapeLoaded.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `visible`.
    temp224-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp224 INTO TABLE temp223.
    result = _generic( name   = `LibraryShape`
                       ns     = `si`
                       t_prop = temp223 ).
  ENDMETHOD.


  METHOD light_box.
    DATA temp225 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp226 LIKE LINE OF temp225.
    CLEAR temp225.
    
    temp226-n = `id`.
    temp226-v = id.
    INSERT temp226 INTO TABLE temp225.
    temp226-n = `class`.
    temp226-v = class.
    INSERT temp226 INTO TABLE temp225.
    temp226-n = `visible`.
    temp226-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp226 INTO TABLE temp225.
    result = _generic( name   = `LightBox`
                       t_prop = temp225 ).
  ENDMETHOD.


  METHOD light_box_item.
    DATA temp227 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp228 LIKE LINE OF temp227.
    CLEAR temp227.
    
    temp228-n = `alt`.
    temp228-v = alt.
    INSERT temp228 INTO TABLE temp227.
    temp228-n = `imageSrc`.
    temp228-v = imagesrc.
    INSERT temp228 INTO TABLE temp227.
    temp228-n = `subtitle`.
    temp228-v = subtitle.
    INSERT temp228 INTO TABLE temp227.
    temp228-n = `title`.
    temp228-v = title.
    INSERT temp228 INTO TABLE temp227.
    result = _generic( name   = `LightBoxItem`
                       t_prop = temp227 ).
  ENDMETHOD.


  METHOD line.

    DATA temp229 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp230 LIKE LINE OF temp229.
    CLEAR temp229.
    
    temp230-n = `id`.
    temp230-v = id.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `class`.
    temp230-v = class.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `arrowOrientation`.
    temp230-v = arrowOrientation.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `arrowPosition`.
    temp230-v = arrowPosition.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `description`.
    temp230-v = description.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `from`.
    temp230-v = from.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `lineType`.
    temp230-v = lineType.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `status`.
    temp230-v = status.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `title`.
    temp230-v = title.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `to`.
    temp230-v = to.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `hover`.
    temp230-v = hover.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `press`.
    temp230-v = press.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `stretchToCenter`.
    temp230-v = z2ui5_cl_util=>boolean_abap_2_json( stretchToCenter ).
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `selected`.
    temp230-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `visible`.
    temp230-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp230 INTO TABLE temp229.
    result = _generic( name   = `Line`
                       ns     = `networkgraph`
                       t_prop = temp229 ).

  ENDMETHOD.


  METHOD lines.
    DATA temp231 TYPE string.
    CASE ns.
      WHEN ''.
        temp231 = `networkgraph`.
      WHEN OTHERS.
        temp231 = ns.
    ENDCASE.
    result = _generic( name = `lines`
                       ns   = temp231 ).
  ENDMETHOD.


  METHOD line_micro_chart.
    DATA temp232 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp233 LIKE LINE OF temp232.
    result = me.
    
    CLEAR temp232.
    
    temp233-n = `color`.
    temp233-v = color.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `height`.
    temp233-v = height.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `leftBottomLabel`.
    temp233-v = leftbottomlabel.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `leftTopLabel`.
    temp233-v = lefttoplabel.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `maxXValue`.
    temp233-v = maxxvalue.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `minXValue`.
    temp233-v = minxvalue.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `minYValue`.
    temp233-v = minyvalue.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `rightBottomLabel`.
    temp233-v = rightbottomlabel.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `rightTopLabel`.
    temp233-v = righttoplabel.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `size`.
    temp233-v = size.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `threshold`.
    temp233-v = threshold.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `thresholdDisplayValue`.
    temp233-v = thresholddisplayvalue.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `width`.
    temp233-v = width.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `press`.
    temp233-v = press.
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `hideOnNoData`.
    temp233-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `showBottomLabels`.
    temp233-v = z2ui5_cl_util=>boolean_abap_2_json( showbottomlabels ).
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `showPoints`.
    temp233-v = z2ui5_cl_util=>boolean_abap_2_json( showpoints ).
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `showThresholdLine`.
    temp233-v = z2ui5_cl_util=>boolean_abap_2_json( showthresholdline ).
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `showThresholdValue`.
    temp233-v = z2ui5_cl_util=>boolean_abap_2_json( showthresholdvalue ).
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `showTopLabels`.
    temp233-v = z2ui5_cl_util=>boolean_abap_2_json( showtoplabels ).
    INSERT temp233 INTO TABLE temp232.
    temp233-n = `maxYValue`.
    temp233-v = maxyvalue.
    INSERT temp233 INTO TABLE temp232.
    _generic(
        name   = `LineMicroChart`
        ns     = `mchart`
        t_prop = temp232 ).
  ENDMETHOD.


  METHOD line_micro_chart_empszd_point.
    DATA temp234 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp235 LIKE LINE OF temp234.
    CLEAR temp234.
    
    temp235-n = `x`.
    temp235-v = x.
    INSERT temp235 INTO TABLE temp234.
    temp235-n = `y`.
    temp235-v = y.
    INSERT temp235 INTO TABLE temp234.
    temp235-n = `color`.
    temp235-v = color.
    INSERT temp235 INTO TABLE temp234.
    temp235-n = `show`.
    temp235-v = z2ui5_cl_util=>boolean_abap_2_json( show ).
    INSERT temp235 INTO TABLE temp234.
    result = _generic( name   = `LineMicroChartEmphasizedPoint`
                       ns     = `mchart`
                       t_prop = temp234 ).
  ENDMETHOD.


  METHOD line_micro_chart_line.
    DATA temp236 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp237 LIKE LINE OF temp236.
    CLEAR temp236.
    
    temp237-n = `points`.
    temp237-v = points.
    INSERT temp237 INTO TABLE temp236.
    temp237-n = `color`.
    temp237-v = color.
    INSERT temp237 INTO TABLE temp236.
    temp237-n = `type`.
    temp237-v = type.
    INSERT temp237 INTO TABLE temp236.
    result = _generic( name   = `LineMicroChartLine`
                       ns     = `mchart`
                       t_prop = temp236 ).
  ENDMETHOD.


  METHOD line_micro_chart_point.
    DATA temp238 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp239 LIKE LINE OF temp238.
    CLEAR temp238.
    
    temp239-n = `x`.
    temp239-v = x.
    INSERT temp239 INTO TABLE temp238.
    temp239-n = `y`.
    temp239-v = y.
    INSERT temp239 INTO TABLE temp238.
    result = _generic( name   = `LineMicroChartPoint`
                       ns     = `mchart`
                       t_prop = temp238 ).
  ENDMETHOD.


  METHOD link.
    DATA temp240 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp241 LIKE LINE OF temp240.
    result = me.
    
    CLEAR temp240.
    
    temp241-n = `text`.
    temp241-v = text.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `target`.
    temp241-v = target.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `href`.
    temp241-v = href.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `press`.
    temp241-v = press.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `id`.
    temp241-v = id.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `class`.
    temp241-v = class.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `accessibleRole`.
    temp241-v = accessiblerole.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `ariaHasPopup`.
    temp241-v = ariahaspopup.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `emptyIndicatorMode`.
    temp241-v = emptyindicatormode.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `rel`.
    temp241-v = rel.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `subtle`.
    temp241-v = z2ui5_cl_util=>boolean_abap_2_json( subtle ).
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `textAlign`.
    temp241-v = textalign.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `textDirection`.
    temp241-v = textdirection.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `validateUrl`.
    temp241-v = z2ui5_cl_util=>boolean_abap_2_json( validateurl ).
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `width`.
    temp241-v = width.
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `wrapping`.
    temp241-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `emphasized`.
    temp241-v = z2ui5_cl_util=>boolean_abap_2_json( emphasized ).
    INSERT temp241 INTO TABLE temp240.
    temp241-n = `enabled`.
    temp241-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp241 INTO TABLE temp240.
    _generic( name   = `Link`
              ns     = ns
              t_prop = temp240 ).
  ENDMETHOD.


  METHOD link_tile_content.
    DATA temp242 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp243 LIKE LINE OF temp242.
    CLEAR temp242.
    
    temp243-n = `iconSrc`.
    temp243-v = iconsrc.
    INSERT temp243 INTO TABLE temp242.
    temp243-n = `linkHref`.
    temp243-v = linkhref.
    INSERT temp243 INTO TABLE temp242.
    temp243-n = `linkText`.
    temp243-v = linktext.
    INSERT temp243 INTO TABLE temp242.
    temp243-n = `linkPress`.
    temp243-v = linkpress.
    INSERT temp243 INTO TABLE temp242.
    result = _generic( name   = `LinkTileContent`
                       t_prop = temp242 ).
  ENDMETHOD.


  METHOD list.
    DATA temp244 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp245 LIKE LINE OF temp244.
    CLEAR temp244.
    
    temp245-n = `headerText`.
    temp245-v = headertext.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `items`.
    temp245-v = items.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `mode`.
    temp245-v = mode.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `class`.
    temp245-v = class.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `itemPress`.
    temp245-v = itempress.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `select`.
    temp245-v = select.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `selectionChange`.
    temp245-v = selectionchange.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `showSeparators`.
    temp245-v = showseparators.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `footerText`.
    temp245-v = footertext.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `growingDirection`.
    temp245-v = growingdirection.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `growingThreshold`.
    temp245-v = growingthreshold.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `growingTriggerText`.
    temp245-v = growingtriggertext.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `headerLevel`.
    temp245-v = headerlevel.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `multiSelectMode`.
    temp245-v = multiselectmode.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `noDataText`.
    temp245-v = nodatatext.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `id`.
    temp245-v = id.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `sticky`.
    temp245-v = sticky.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `delete`.
    temp245-v = delete.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `backgroundDesign`.
    temp245-v = backgrounddesign.
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `modeAnimationOn`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( modeanimationon ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `growingScrollToLoad`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( growingscrolltoload ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `includeItemInSelection`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( includeiteminselection ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `growing`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( growing ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `inset`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( inset ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `rememberSelections`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( rememberselections ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `showUnread`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( showunread ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `visible`.
    temp245-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp245 INTO TABLE temp244.
    temp245-n = `noData`.
    temp245-v = nodata.
    INSERT temp245 INTO TABLE temp244.
    result = _generic(
                 name   = `List`
                 t_prop = temp244 ).
  ENDMETHOD.


  METHOD list_item.
    DATA temp246 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp247 LIKE LINE OF temp246.
    result = me.
    
    CLEAR temp246.
    
    temp247-n = `text`.
    temp247-v = text.
    INSERT temp247 INTO TABLE temp246.
    temp247-n = `icon`.
    temp247-v = icon.
    INSERT temp247 INTO TABLE temp246.
    temp247-n = `key`.
    temp247-v = key.
    INSERT temp247 INTO TABLE temp246.
    temp247-n = `textDirection`.
    temp247-v = textdirection.
    INSERT temp247 INTO TABLE temp246.
    temp247-n = `enabled`.
    temp247-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp247 INTO TABLE temp246.
    temp247-n = `additionalText`.
    temp247-v = additionaltext.
    INSERT temp247 INTO TABLE temp246.
    _generic( name   = `ListItem`
              ns     = `core`
              t_prop = temp246 ).
  ENDMETHOD.


  METHOD main_content.
    result = _generic( name = `mainContent`
                       ns   = `f` ).
  ENDMETHOD.


  METHOD main_contents.

    result = _generic( name = `mainContents`
                       ns   = `tnt` ).

  ENDMETHOD.


  METHOD map_container.

    DATA temp248 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp249 LIKE LINE OF temp248.
    CLEAR temp248.
    
    temp249-n = `id`.
    temp249-v = id.
    INSERT temp249 INTO TABLE temp248.
    temp249-n = `autoAdjustHeight`.
    temp249-v = z2ui5_cl_util=>boolean_abap_2_json( autoadjustheight ).
    INSERT temp249 INTO TABLE temp248.
    result = _generic( name   = `MapContainer`
                       ns     = `vk`
                       t_prop = temp248 ).

  ENDMETHOD.


  METHOD markers.
    result = _generic( name = `markers`
                       ns   = ns ).
  ENDMETHOD.


  METHOD markers_as_status.
    result = _generic( name = `markersAsStatus`
                       ns   = `upload` ).
  ENDMETHOD.


  METHOD mask_input.
    DATA temp250 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp251 LIKE LINE OF temp250.
    result = me.
    
    CLEAR temp250.
    
    temp251-n = `placeholder`.
    temp251-v = placeholder.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `mask`.
    temp251-v = mask.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `name`.
    temp251-v = name.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `textAlign`.
    temp251-v = textalign.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `textDirection`.
    temp251-v = textdirection.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `value`.
    temp251-v = value.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `width`.
    temp251-v = width.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `liveChange`.
    temp251-v = livechange.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `change`.
    temp251-v = change.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `valueState`.
    temp251-v = valuestate.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `valueStateText`.
    temp251-v = valuestatetext.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `placeholderSymbol`.
    temp251-v = placeholdersymbol.
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `required`.
    temp251-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `showClearIcon`.
    temp251-v = z2ui5_cl_util=>boolean_abap_2_json( showclearicon ).
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `showValueStateMessage`.
    temp251-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `visible`.
    temp251-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp251 INTO TABLE temp250.
    temp251-n = `fieldWidth`.
    temp251-v = fieldwidth.
    INSERT temp251 INTO TABLE temp250.
    _generic( name   = `MaskInput`
              t_prop = temp250 ).
  ENDMETHOD.


  METHOD mask_input_rule.
    DATA temp252 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp253 LIKE LINE OF temp252.
    CLEAR temp252.
    
    temp253-n = `maskFormatSymbol`.
    temp253-v = maskformatsymbol.
    INSERT temp253 INTO TABLE temp252.
    temp253-n = `regex`.
    temp253-v = regex.
    INSERT temp253 INTO TABLE temp252.
    result = _generic( name   = `MaskInputRule`
                       t_prop = temp252 ).
  ENDMETHOD.


  METHOD master_pages.
    result = _generic( `masterPages` ).
  ENDMETHOD.


  METHOD menu_button.
    DATA temp254 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp255 LIKE LINE OF temp254.
    CLEAR temp254.
    
    temp255-n = `buttonMode`.
    temp255-v = buttonmode.
    INSERT temp255 INTO TABLE temp254.
    temp255-n = `defaultAction`.
    temp255-v = defaultaction.
    INSERT temp255 INTO TABLE temp254.
    temp255-n = `text`.
    temp255-v = text.
    INSERT temp255 INTO TABLE temp254.
    temp255-n = `enabled`.
    temp255-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp255 INTO TABLE temp254.
    temp255-n = `activeIcon`.
    temp255-v = activeIcon.
    INSERT temp255 INTO TABLE temp254.
    temp255-n = `type`.
    temp255-v = type.
    INSERT temp255 INTO TABLE temp254.
    result = _generic( name   = `MenuButton`
                       t_prop = temp254 ).
  ENDMETHOD.


  METHOD menu_item.
    DATA temp256 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp257 LIKE LINE OF temp256.
    result = me.
    
    CLEAR temp256.
    
    temp257-n = `press`.
    temp257-v = press.
    INSERT temp257 INTO TABLE temp256.
    temp257-n = `text`.
    temp257-v = text.
    INSERT temp257 INTO TABLE temp256.
    temp257-n = `icon`.
    temp257-v = icon.
    INSERT temp257 INTO TABLE temp256.
    _generic( name   = `MenuItem`
              t_prop = temp256 ).
  ENDMETHOD.


  METHOD message_item.
    DATA temp258 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp259 LIKE LINE OF temp258.
    CLEAR temp258.
    
    temp259-n = `type`.
    temp259-v = type.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `title`.
    temp259-v = title.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `subtitle`.
    temp259-v = subtitle.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `description`.
    temp259-v = description.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `longtextUrl`.
    temp259-v = longtexturl.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `textDirection`.
    temp259-v = textdirection.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `groupName`.
    temp259-v = groupname.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `activeTitle`.
    temp259-v = z2ui5_cl_util=>boolean_abap_2_json( activetitle ).
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `counter`.
    temp259-v = counter.
    INSERT temp259 INTO TABLE temp258.
    temp259-n = `markupDescription`.
    temp259-v = z2ui5_cl_util=>boolean_abap_2_json( markupdescription ).
    INSERT temp259 INTO TABLE temp258.
    result = _generic(
        name   = `MessageItem`
        t_prop = temp258 ).
  ENDMETHOD.


  METHOD message_page.
    DATA temp260 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp261 LIKE LINE OF temp260.
    CLEAR temp260.
    
    temp261-n = `showHeader`.
    temp261-v = z2ui5_cl_util=>boolean_abap_2_json( show_header ).
    INSERT temp261 INTO TABLE temp260.
    temp261-n = `description`.
    temp261-v = description.
    INSERT temp261 INTO TABLE temp260.
    temp261-n = `icon`.
    temp261-v = icon.
    INSERT temp261 INTO TABLE temp260.
    temp261-n = `text`.
    temp261-v = text.
    INSERT temp261 INTO TABLE temp260.
    temp261-n = `enableFormattedText`.
    temp261-v = z2ui5_cl_util=>boolean_abap_2_json( enableformattedtext ).
    INSERT temp261 INTO TABLE temp260.
    result = _generic(
                 name   = `MessagePage`
                 t_prop = temp260 ).
  ENDMETHOD.


  METHOD message_popover.
    DATA temp262 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp263 LIKE LINE OF temp262.
    CLEAR temp262.
    
    temp263-n = `items`.
    temp263-v = items.
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `activeTitlePress`.
    temp263-v = activetitlepress.
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `placement`.
    temp263-v = placement.
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `listSelect`.
    temp263-v = listselect.
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `afterClose`.
    temp263-v = afterclose.
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `beforeClose`.
    temp263-v = beforeclose.
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `initiallyExpanded`.
    temp263-v = z2ui5_cl_util=>boolean_abap_2_json( initiallyexpanded ).
    INSERT temp263 INTO TABLE temp262.
    temp263-n = `groupItems`.
    temp263-v = z2ui5_cl_util=>boolean_abap_2_json( groupitems ).
    INSERT temp263 INTO TABLE temp262.
    result = _generic(
        name   = `MessagePopover`
        t_prop = temp262 ).
  ENDMETHOD.


  METHOD message_strip.
    DATA temp264 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp265 LIKE LINE OF temp264.
    result = me.
    
    CLEAR temp264.
    
    temp265-n = `text`.
    temp265-v = text.
    INSERT temp265 INTO TABLE temp264.
    temp265-n = `type`.
    temp265-v = type.
    INSERT temp265 INTO TABLE temp264.
    temp265-n = `showIcon`.
    temp265-v = z2ui5_cl_util=>boolean_abap_2_json( showicon ).
    INSERT temp265 INTO TABLE temp264.
    temp265-n = `class`.
    temp265-v = class.
    INSERT temp265 INTO TABLE temp264.
    _generic( name   = `MessageStrip`
              t_prop = temp264 ).
  ENDMETHOD.


  METHOD message_view.

    DATA temp266 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp267 LIKE LINE OF temp266.
    CLEAR temp266.
    
    temp267-n = `items`.
    temp267-v = items.
    INSERT temp267 INTO TABLE temp266.
    temp267-n = `groupItems`.
    temp267-v = z2ui5_cl_util=>boolean_abap_2_json( groupitems ).
    INSERT temp267 INTO TABLE temp266.
    result = _generic( name   = `MessageView`
                       t_prop = temp266 ).
  ENDMETHOD.


  METHOD micro_process_flow.
    DATA temp268 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp269 LIKE LINE OF temp268.
    CLEAR temp268.
    
    temp269-n = `id`.
    temp269-v = id.
    INSERT temp269 INTO TABLE temp268.
    temp269-n = `class`.
    temp269-v = class.
    INSERT temp269 INTO TABLE temp268.
    temp269-n = `renderType`.
    temp269-v = renderType.
    INSERT temp269 INTO TABLE temp268.
    temp269-n = `width`.
    temp269-v = width.
    INSERT temp269 INTO TABLE temp268.
    temp269-n = `ariaLabel`.
    temp269-v = ariaLabel.
    INSERT temp269 INTO TABLE temp268.
    result = _generic( name   = `MicroProcessFlow`
                       ns     = `commons`
                       t_prop = temp268 ).
  ENDMETHOD.


  METHOD micro_process_flow_item.
    DATA temp270 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp271 LIKE LINE OF temp270.
    CLEAR temp270.
    
    temp271-n = `id`.
    temp271-v = id.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `class`.
    temp271-v = class.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `press`.
    temp271-v = press.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `title`.
    temp271-v = title.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `stepWidth`.
    temp271-v = stepWidth.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `state`.
    temp271-v = state.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `key`.
    temp271-v = key.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `icon`.
    temp271-v = icon.
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `showSeparator`.
    temp271-v = z2ui5_cl_util=>boolean_abap_2_json( showSeparator ).
    INSERT temp271 INTO TABLE temp270.
    temp271-n = `showIntermediary`.
    temp271-v = z2ui5_cl_util=>boolean_abap_2_json( showIntermediary ).
    INSERT temp271 INTO TABLE temp270.
    result = _generic( name   = `MicroProcessFlowItem`
                       ns     = `commons`
                       t_prop = temp270 ).
  ENDMETHOD.


  METHOD mid_column_pages.

    DATA temp272 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp273 LIKE LINE OF temp272.
    CLEAR temp272.
    
    temp273-n = `id`.
    temp273-v = id.
    INSERT temp273 INTO TABLE temp272.
    result = _generic( name   = `midColumnPages`
                       ns     = `f`
                       t_prop = temp272 ).

  ENDMETHOD.


  METHOD multi_combobox.
    DATA temp274 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp275 LIKE LINE OF temp274.
    CLEAR temp274.
    
    temp275-n = `selectionChange`.
    temp275-v = selectionchange.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `selectedKeys`.
    temp275-v = selectedkeys.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `selectedItems`.
    temp275-v = selecteditems.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `items`.
    temp275-v = items.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `selectionFinish`.
    temp275-v = selectionfinish.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `width`.
    temp275-v = width.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `showSecondaryValues`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( showsecondaryvalues ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `placeholder`.
    temp275-v = placeholder.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `selectedItemId`.
    temp275-v = selecteditemid.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `selectedKey`.
    temp275-v = selectedkey.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `name`.
    temp275-v = name.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `value`.
    temp275-v = value.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `valueState`.
    temp275-v = valuestate.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `valueStateText`.
    temp275-v = valuestatetext.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `textAlign`.
    temp275-v = textalign.
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `visible`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `showValueStateMessage`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `showClearIcon`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( showclearicon ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `showButton`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( showbutton ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `required`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `editable`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `enabled`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `filterSecondaryValues`.
    temp275-v = z2ui5_cl_util=>boolean_abap_2_json( filtersecondaryvalues ).
    INSERT temp275 INTO TABLE temp274.
    temp275-n = `showSelectAll`.
    temp275-v = showselectall.
    INSERT temp275 INTO TABLE temp274.
    result = _generic(
        name   = `MultiComboBox`
        t_prop = temp274 ).
  ENDMETHOD.


  METHOD multi_input.
    DATA temp276 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp277 LIKE LINE OF temp276.
    CLEAR temp276.
    
    temp277-n = `tokens`.
    temp277-v = tokens.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `showClearIcon`.
    temp277-v = z2ui5_cl_util=>boolean_abap_2_json( showclearicon ).
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `showValueHelp`.
    temp277-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluehelp ).
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `enabled`.
    temp277-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `suggestionItems`.
    temp277-v = suggestionitems.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `tokenUpdate`.
    temp277-v = tokenupdate.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `submit`.
    temp277-v = submit.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `width`.
    temp277-v = width.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `value`.
    temp277-v = value.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `id`.
    temp277-v = id.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `change`.
    temp277-v = change.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `valueHelpRequest`.
    temp277-v = valuehelprequest.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `class`.
    temp277-v = class.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `required`.
    temp277-v = required.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `valueState`.
    temp277-v = valueState.
    INSERT temp277 INTO TABLE temp276.
    temp277-n = `valueStateText`.
    temp277-v = valueStateText.
    INSERT temp277 INTO TABLE temp276.
    result = _generic( name   = `MultiInput`
                       t_prop = temp276 ).
  ENDMETHOD.


  METHOD navigation_actions.
    result = _generic( name = `navigationActions`
                       ns   = `f` ).
  ENDMETHOD.


  METHOD nav_container.

    DATA temp278 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp279 LIKE LINE OF temp278.
    CLEAR temp278.
    
    temp279-n = `initialPage`.
    temp279-v = initialpage.
    INSERT temp279 INTO TABLE temp278.
    temp279-n = `id`.
    temp279-v = id.
    INSERT temp279 INTO TABLE temp278.
    temp279-n = `height`.
    temp279-v = height.
    INSERT temp279 INTO TABLE temp278.
    temp279-n = `width`.
    temp279-v = width.
    INSERT temp279 INTO TABLE temp278.
    temp279-n = `autoFocus`.
    temp279-v = z2ui5_cl_util=>boolean_abap_2_json( autofocus ).
    INSERT temp279 INTO TABLE temp278.
    temp279-n = `visible`.
    temp279-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp279 INTO TABLE temp278.
    temp279-n = `defaultTransitionName`.
    temp279-v = defaulttransitionname.
    INSERT temp279 INTO TABLE temp278.
    result = _generic( name   = `NavContainer`
                       t_prop = temp278 ).

  ENDMETHOD.


  METHOD network_graph.
    DATA temp280 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp281 LIKE LINE OF temp280.
    CLEAR temp280.
    
    temp281-n = `id`.
    temp281-v = id.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `class`.
    temp281-v = class.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `layout`.
    temp281-v = layout.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `height`.
    temp281-v = height.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `width`.
    temp281-v = width.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `nodes`.
    temp281-v = nodes.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `lines`.
    temp281-v = lines.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `groups`.
    temp281-v = groups.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `backgroundColor`.
    temp281-v = backgroundColor.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `backgroundImage`.
    temp281-v = backgroundImage.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `noDataText`.
    temp281-v = noDataText.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `orientation`.
    temp281-v = orientation.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `renderType`.
    temp281-v = renderType.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `afterLayouting`.
    temp281-v = afterLayouting.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `beforeLayouting`.
    temp281-v = beforeLayouting.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `failure`.
    temp281-v = failure.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `graphReady`.
    temp281-v = graphReady.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `search`.
    temp281-v = search.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `searchSuggest`.
    temp281-v = searchSuggest.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `selectionChange`.
    temp281-v = selectionChange.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `zoomChanged`.
    temp281-v = zoomChanged.
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `enableWheelZoom`.
    temp281-v = z2ui5_cl_util=>boolean_abap_2_json( enableWheelZoom ).
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `enableZoom`.
    temp281-v = z2ui5_cl_util=>boolean_abap_2_json( enableZoom ).
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `noData`.
    temp281-v = z2ui5_cl_util=>boolean_abap_2_json( noData ).
    INSERT temp281 INTO TABLE temp280.
    temp281-n = `visible`.
    temp281-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp281 INTO TABLE temp280.
    result = _generic( name   = `Graph`
                       ns     = `networkgraph`
                       t_prop = temp280 ).

  ENDMETHOD.


  METHOD node.
    DATA temp282 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp283 LIKE LINE OF temp282.
    CLEAR temp282.
    
    temp283-n = `id`.
    temp283-v = id.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `class`.
    temp283-v = class.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `altText`.
    temp283-v = altText.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `coreNodeSize`.
    temp283-v = coreNodeSize.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `description`.
    temp283-v = description.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `descriptionLineSize`.
    temp283-v = descriptionLineSize.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `group`.
    temp283-v = group.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `headerCheckBoxState`.
    temp283-v = headerCheckBoxState.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `height`.
    temp283-v = height.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `icon`.
    temp283-v = icon.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `iconSize`.
    temp283-v = iconSize.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `iconSize`.
    temp283-v = iconSize.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `key`.
    temp283-v = key.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `maxWidth`.
    temp283-v = maxWidth.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `title`.
    temp283-v = title.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `shape`.
    temp283-v = shape.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `statusIcon`.
    temp283-v = statusIcon.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `titleLineSize`.
    temp283-v = titleLineSize.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `width`.
    temp283-v = width.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `x`.
    temp283-v = x.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `y`.
    temp283-v = y.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `attributes`.
    temp283-v = attributes.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `actionButtons`.
    temp283-v = actionButtons.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `collapseExpand`.
    temp283-v = collapseExpand.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `headerCheckBoxPress`.
    temp283-v = headerCheckBoxPress.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `hover`.
    temp283-v = hover.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `press`.
    temp283-v = press.
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `collapsed`.
    temp283-v = z2ui5_cl_util=>boolean_abap_2_json( collapsed ).
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `selected`.
    temp283-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `showActionLinksButton`.
    temp283-v = z2ui5_cl_util=>boolean_abap_2_json( showActionLinksButton ).
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `showDetailButton`.
    temp283-v = z2ui5_cl_util=>boolean_abap_2_json( showDetailButton ).
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `showExpandButton`.
    temp283-v = z2ui5_cl_util=>boolean_abap_2_json( showExpandButton ).
    INSERT temp283 INTO TABLE temp282.
    temp283-n = `visible`.
    temp283-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp283 INTO TABLE temp282.
    result = _generic(
        name   = `Node`
        ns     = `networkgraph`
        t_prop = temp282 ).

  ENDMETHOD.


  METHOD nodes.
    result = _generic( name = `nodes`
                       ns   = ns ).
  ENDMETHOD.


  METHOD node_image.
    DATA temp284 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp285 LIKE LINE OF temp284.
    CLEAR temp284.
    
    temp285-n = `id`.
    temp285-v = id.
    INSERT temp285 INTO TABLE temp284.
    temp285-n = `class`.
    temp285-v = class.
    INSERT temp285 INTO TABLE temp284.
    temp285-n = `height`.
    temp285-v = height.
    INSERT temp285 INTO TABLE temp284.
    temp285-n = `width`.
    temp285-v = width.
    INSERT temp285 INTO TABLE temp284.
    temp285-n = `src`.
    temp285-v = src.
    INSERT temp285 INTO TABLE temp284.
    result = _generic( name   = `NodeImage`
                       ns     = `networkgraph`
                       t_prop = temp284 ).
  ENDMETHOD.


  METHOD noop_layout.
    result = _generic( name = `NoopLayout`
                       ns   = `nglayout` ).
  ENDMETHOD.


  METHOD notification_list.
    DATA temp286 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp287 LIKE LINE OF temp286.
    CLEAR temp286.
    
    temp287-n = `id`.
    temp287-v = id.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `class`.
    temp287-v = class.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `footerText`.
    temp287-v = footertext.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growingDirection`.
    temp287-v = growingdirection.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growingThreshold`.
    temp287-v = growingthreshold.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growingTriggerText`.
    temp287-v = growingtriggertext.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `headerLevel`.
    temp287-v = headerlevel.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `headerText`.
    temp287-v = headertext.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `keyboardMode`.
    temp287-v = keyboardmode.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `mode`.
    temp287-v = mode.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `multiSelectMode`.
    temp287-v = multiselectmode.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `noDataText`.
    temp287-v = nodatatext.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `sticky`.
    temp287-v = sticky.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `swipeDirection`.
    temp287-v = swipedirection.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `width`.
    temp287-v = width.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `showSeparators`.
    temp287-v = showseparators.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `beforeOpenContextMenu`.
    temp287-v = beforeopencontextmenu.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `delete`.
    temp287-v = delete.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growingFinished`.
    temp287-v = growingfinished.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growingStarted`.
    temp287-v = growingstarted.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `itemPress`.
    temp287-v = itempress.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `select`.
    temp287-v = select.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `selectionChange`.
    temp287-v = selectionchange.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `swipe`.
    temp287-v = swipe.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `updateFinished`.
    temp287-v = updatefinished.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `updateStarted`.
    temp287-v = updatestarted.
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growingScrollToLoad`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( growingscrolltoload ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `visible`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `growing`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( growing ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `includeItemInSelection`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( includeiteminselection ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `inset`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( inset ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `modeAnimationOn`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( modeanimationon ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `rememberSelections`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( rememberselections ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `showNoData`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( shownodata ).
    INSERT temp287 INTO TABLE temp286.
    temp287-n = `showUnread`.
    temp287-v = z2ui5_cl_util=>boolean_abap_2_json( showunread ).
    INSERT temp287 INTO TABLE temp286.
    result = _generic(
        name   = `NotificationList`
        t_prop = temp286 ).
  ENDMETHOD.


  METHOD notification_list_group.
    DATA temp288 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp289 LIKE LINE OF temp288.
    CLEAR temp288.
    
    temp289-n = `id`.
    temp289-v = id.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `class`.
    temp289-v = class.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `highlight`.
    temp289-v = highlight.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `highlightText`.
    temp289-v = highlighttext.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `priority`.
    temp289-v = priority.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `title`.
    temp289-v = title.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `type`.
    temp289-v = type.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `onCollapse`.
    temp289-v = oncollapse.
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `visible`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `autoPriority`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( autopriority ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `collapsed`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( collapsed ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `enableCollapseButtonWhenEmpty`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( enablecollapsebuttonwhenempty ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `navigated`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( navigated ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `selected`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `showButtons`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( showbuttons ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `showCloseButton`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( showclosebutton ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `showEmptyGroup`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( showemptygroup ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `showItemsCounter`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( showitemscounter ).
    INSERT temp289 INTO TABLE temp288.
    temp289-n = `unread`.
    temp289-v = z2ui5_cl_util=>boolean_abap_2_json( unread ).
    INSERT temp289 INTO TABLE temp288.
    result = _generic(
                 name   = `NotificationListGroup`
                 t_prop = temp288 ).
  ENDMETHOD.


  METHOD notification_list_item.
    DATA temp290 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp291 LIKE LINE OF temp290.
    CLEAR temp290.
    
    temp291-n = `id`.
    temp291-v = id.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `class`.
    temp291-v = class.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `authorAvatarColor`.
    temp291-v = authoravatarcolor.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `authorInitials`.
    temp291-v = authorinitials.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `description`.
    temp291-v = description.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `authorName`.
    temp291-v = authorname.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `authorPicture`.
    temp291-v = authorpicture.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `datetime`.
    temp291-v = datetime.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `counter`.
    temp291-v = counter.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `highlightText`.
    temp291-v = highlighttext.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `priority`.
    temp291-v = priority.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `title`.
    temp291-v = title.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `type`.
    temp291-v = type.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `close`.
    temp291-v = close.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `detailPress`.
    temp291-v = detailpress.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `press`.
    temp291-v = press.
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `visible`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `hideShowMoreButton`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( hideshowmorebutton ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `truncate`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( truncate ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `highlight`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( highlight ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `navigated`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( navigated ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `selected`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `showButtons`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( showbuttons ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `showCloseButton`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( showclosebutton ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `truncate`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( truncate ).
    INSERT temp291 INTO TABLE temp290.
    temp291-n = `unread`.
    temp291-v = z2ui5_cl_util=>boolean_abap_2_json( unread ).
    INSERT temp291 INTO TABLE temp290.
    result = _generic(
                 name   = `NotificationListItem`
                 t_prop = temp290 ).
  ENDMETHOD.


  METHOD no_data.
    result = _generic( name = `noData`
                       ns   = ns ).
  ENDMETHOD.


  METHOD numeric_content.

    DATA temp292 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp293 LIKE LINE OF temp292.
    CLEAR temp292.
    
    temp293-n = `value`.
    temp293-v = value.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `icon`.
    temp293-v = icon.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `width`.
    temp293-v = width.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `valueColor`.
    temp293-v = valuecolor.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `truncateValueTo`.
    temp293-v = truncatevalueto.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `state`.
    temp293-v = state.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `scale`.
    temp293-v = scale.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `indicator`.
    temp293-v = indicator.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `iconDescription`.
    temp293-v = icondescription.
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `visible`.
    temp293-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `nullifyValue`.
    temp293-v = z2ui5_cl_util=>boolean_abap_2_json( nullifyvalue ).
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `formatterValue`.
    temp293-v = z2ui5_cl_util=>boolean_abap_2_json( formattervalue ).
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `animateTextChange`.
    temp293-v = z2ui5_cl_util=>boolean_abap_2_json( animatetextchange ).
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `adaptiveFontSize`.
    temp293-v = z2ui5_cl_util=>boolean_abap_2_json( adaptivefontsize ).
    INSERT temp293 INTO TABLE temp292.
    temp293-n = `withMargin`.
    temp293-v = z2ui5_cl_util=>boolean_abap_2_json( withmargin ).
    INSERT temp293 INTO TABLE temp292.
    result = _generic(
        name   = `NumericContent`
        t_prop = temp292 ).

  ENDMETHOD.


  METHOD numeric_header.

    DATA temp294 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp295 LIKE LINE OF temp294.
    CLEAR temp294.
    
    temp295-n = `id`.
    temp295-v = id.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `class`.
    temp295-v = class.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `datatimestamp`.
    temp295-v = datatimestamp.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `press`.
    temp295-v = press.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `details`.
    temp295-v = details.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `detailsMaxLines`.
    temp295-v = detailsmaxlines.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `detailsState`.
    temp295-v = detailsstate.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconAlt`.
    temp295-v = iconalt.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconBackgroundColor`.
    temp295-v = iconbackgroundcolor.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconDisplayShape`.
    temp295-v = icondisplayshape.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconSize`.
    temp295-v = iconsize.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconSrc`.
    temp295-v = iconsrc.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconInitials`.
    temp295-v = iconinitials.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `number`.
    temp295-v = number.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `numberSize`.
    temp295-v = numbersize.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `scale`.
    temp295-v = scale.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `sideIndicatorsAlignment`.
    temp295-v = sideindicatorsalignment.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `state`.
    temp295-v = state.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `statusText`.
    temp295-v = statustext.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `subtitle`.
    temp295-v = subtitle.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `subtitleMaxLines`.
    temp295-v = subtitlemaxlines.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `title`.
    temp295-v = title.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `titleMaxLines`.
    temp295-v = titlemaxlines.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `trend`.
    temp295-v = trend.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `unitOfMeasurement`.
    temp295-v = unitofmeasurement.
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `statusVisible`.
    temp295-v = z2ui5_cl_util=>boolean_abap_2_json( statusvisible ).
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `numberVisible`.
    temp295-v = z2ui5_cl_util=>boolean_abap_2_json( numbervisible ).
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `iconVisible`.
    temp295-v = z2ui5_cl_util=>boolean_abap_2_json( iconvisible ).
    INSERT temp295 INTO TABLE temp294.
    temp295-n = `visible`.
    temp295-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp295 INTO TABLE temp294.
    result = _generic( name   = `NumericHeader`
                       ns     = `f`
                       t_prop = temp294 ).
  ENDMETHOD.


  METHOD numeric_side_indicator.
    DATA temp296 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp297 LIKE LINE OF temp296.
    CLEAR temp296.
    
    temp297-n = `id`.
    temp297-v = id.
    INSERT temp297 INTO TABLE temp296.
    temp297-n = `class`.
    temp297-v = class.
    INSERT temp297 INTO TABLE temp296.
    temp297-n = `unit`.
    temp297-v = unit.
    INSERT temp297 INTO TABLE temp296.
    temp297-n = `title`.
    temp297-v = title.
    INSERT temp297 INTO TABLE temp296.
    temp297-n = `state`.
    temp297-v = state.
    INSERT temp297 INTO TABLE temp296.
    temp297-n = `number`.
    temp297-v = number.
    INSERT temp297 INTO TABLE temp296.
    temp297-n = `visible`.
    temp297-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp297 INTO TABLE temp296.
    result = _generic( name   = `NumericSideIndicator`
                       ns     = `f`
                       t_prop = temp296 ).
  ENDMETHOD.


  METHOD object_attribute.
    DATA temp298 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp299 LIKE LINE OF temp298.
    result = me.

    
    CLEAR temp298.
    
    temp299-n = `title`.
    temp299-v = title.
    INSERT temp299 INTO TABLE temp298.
    temp299-n = `textDirection`.
    temp299-v = textdirection.
    INSERT temp299 INTO TABLE temp298.
    temp299-n = `ariaHasPopup`.
    temp299-v = ariahaspopup.
    INSERT temp299 INTO TABLE temp298.
    temp299-n = `press`.
    temp299-v = press.
    INSERT temp299 INTO TABLE temp298.
    temp299-n = `active`.
    temp299-v = z2ui5_cl_util=>boolean_abap_2_json( active ).
    INSERT temp299 INTO TABLE temp298.
    temp299-n = `visible`.
    temp299-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp299 INTO TABLE temp298.
    temp299-n = `text`.
    temp299-v = text.
    INSERT temp299 INTO TABLE temp298.
    _generic( name   = `ObjectAttribute`
              t_prop = temp298 ).
  ENDMETHOD.


  METHOD object_header.

    DATA temp300 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp301 LIKE LINE OF temp300.
    CLEAR temp300.
    
    temp301-n = `backgrounddesign`.
    temp301-v = backgrounddesign.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `condensed`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( condensed ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `fullscreenoptimized`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( fullscreenoptimized ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `icon`.
    temp301-v = icon.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `iconactive`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( iconactive ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `iconalt`.
    temp301-v = iconalt.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `icondensityaware`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `icontooltip`.
    temp301-v = icontooltip.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `imageshape`.
    temp301-v = imageshape.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `intro`.
    temp301-v = intro.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `introactive`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( introactive ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `introhref`.
    temp301-v = introhref.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `introtarget`.
    temp301-v = introtarget.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `introtextdirection`.
    temp301-v = introtextdirection.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `number`.
    temp301-v = number.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `numberstate`.
    temp301-v = numberstate.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `numbertextdirection`.
    temp301-v = numbertextdirection.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `numberunit`.
    temp301-v = numberunit.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `responsive`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( responsive ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `showtitleselector`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( showtitleselector ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `title`.
    temp301-v = title.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titleactive`.
    temp301-v = z2ui5_cl_util=>boolean_abap_2_json( titleactive ).
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titlehref`.
    temp301-v = titlehref.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titlelevel`.
    temp301-v = titlelevel.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titleselectortooltip`.
    temp301-v = titleselectortooltip.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titletarget`.
    temp301-v = titletarget.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titletextdirection`.
    temp301-v = titletextdirection.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `iconpress`.
    temp301-v = iconpress.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `intropress`.
    temp301-v = intropress.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titlepress`.
    temp301-v = titlepress.
    INSERT temp301 INTO TABLE temp300.
    temp301-n = `titleselectorpress`.
    temp301-v = titleselectorpress.
    INSERT temp301 INTO TABLE temp300.
    result = _generic(
        name   = `ObjectHeader`
        t_prop = temp300 ).
  ENDMETHOD.


  METHOD object_identifier.
    DATA temp302 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp303 LIKE LINE OF temp302.
    CLEAR temp302.
    
    temp303-n = `emptyIndicatorMode`.
    temp303-v = emptyindicatormode.
    INSERT temp303 INTO TABLE temp302.
    temp303-n = `text`.
    temp303-v = text.
    INSERT temp303 INTO TABLE temp302.
    temp303-n = `textDirection`.
    temp303-v = textdirection.
    INSERT temp303 INTO TABLE temp302.
    temp303-n = `title`.
    temp303-v = title.
    INSERT temp303 INTO TABLE temp302.
    temp303-n = `titleActive`.
    temp303-v = titleactive.
    INSERT temp303 INTO TABLE temp302.
    temp303-n = `visible`.
    temp303-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp303 INTO TABLE temp302.
    temp303-n = `titlePress`.
    temp303-v = titlepress.
    INSERT temp303 INTO TABLE temp302.
    result = _generic( name   = `ObjectIdentifier`
                       t_prop = temp302 ).
  ENDMETHOD.


  METHOD object_list_item.
    DATA temp304 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp305 LIKE LINE OF temp304.
    CLEAR temp304.
    
    temp305-n = `activeIcon`.
    temp305-v = activeicon.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `icon`.
    temp305-v = icon.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `intro`.
    temp305-v = intro.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `introTextDirection`.
    temp305-v = introtextdirection.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `number`.
    temp305-v = number.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `numberState`.
    temp305-v = numberstate.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `numberTextDirection`.
    temp305-v = numbertextdirection.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `numberUnit`.
    temp305-v = numberunit.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `title`.
    temp305-v = title.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `titleTextDirection`.
    temp305-v = titletextdirection.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `iconDensityAware`.
    temp305-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `press`.
    temp305-v = press.
    INSERT temp305 INTO TABLE temp304.
    temp305-n = `selected`.
    temp305-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp305 INTO TABLE temp304.
    result = _generic(
        name   = `ObjectListItem`
        t_prop = temp304 ).
  ENDMETHOD.


  METHOD object_marker.
    DATA temp306 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp307 LIKE LINE OF temp306.
    CLEAR temp306.
    
    temp307-n = `additionalInfo`.
    temp307-v = additionalinfo.
    INSERT temp307 INTO TABLE temp306.
    temp307-n = `type`.
    temp307-v = type.
    INSERT temp307 INTO TABLE temp306.
    temp307-n = `visible`.
    temp307-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp307 INTO TABLE temp306.
    temp307-n = `press`.
    temp307-v = press.
    INSERT temp307 INTO TABLE temp306.
    temp307-n = `visibility`.
    temp307-v = visibility.
    INSERT temp307 INTO TABLE temp306.
    result = _generic( name   = `ObjectMarker`
                       t_prop = temp306 ).
  ENDMETHOD.


  METHOD object_number.
    DATA temp308 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp309 LIKE LINE OF temp308.
    result = me.
    
    CLEAR temp308.
    
    temp309-n = `emphasized`.
    temp309-v = z2ui5_cl_util=>boolean_abap_2_json( emphasized ).
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `number`.
    temp309-v = number.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `state`.
    temp309-v = state.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `id`.
    temp309-v = id.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `class`.
    temp309-v = class.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `textAlign`.
    temp309-v = textalign.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `textDirection`.
    temp309-v = textdirection.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `emptyIndicatorMode`.
    temp309-v = emptyindicatormode.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `numberunit`.
    temp309-v = numberunit.
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `active`.
    temp309-v = z2ui5_cl_util=>boolean_abap_2_json( active ).
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `inverted`.
    temp309-v = z2ui5_cl_util=>boolean_abap_2_json( inverted ).
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `visible`.
    temp309-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp309 INTO TABLE temp308.
    temp309-n = `unit`.
    temp309-v = unit.
    INSERT temp309 INTO TABLE temp308.
    _generic( name   = `ObjectNumber`
              t_prop = temp308 ).
  ENDMETHOD.


  METHOD object_page_dyn_header_title.
    result = _generic( name = `ObjectPageDynamicHeaderTitle`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD object_page_header.
    DATA temp310 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp311 LIKE LINE OF temp310.
    result = me.
    
    CLEAR temp310.
    
    temp311-n = `isActionAreaAlwaysVisible`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( isactionareaalwaysvisible ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `isObjectIconAlwaysVisible`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( isobjecticonalwaysvisible ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `isObjectSubtitleAlwaysVisible`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( isobjectsubtitlealwaysvisible ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `isObjectTitleAlwaysVisible`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( isobjecttitlealwaysvisible ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `markChanges`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( markchanges ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `markFavorite`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( markfavorite ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `markFlagged`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( markflagged ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `markLocked`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( marklocked ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectImageDensityAware`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( objectimagedensityaware ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `showMarkers`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( showmarkers ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `showPlaceholder`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( showplaceholder ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `showTitleSelector`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( showtitleselector ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `visible`.
    temp311-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectImageAlt`.
    temp311-v = objectimagealt.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectImageBackgroundColor`.
    temp311-v = objectimagebackgroundcolor.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectImageURI`.
    temp311-v = objectimageuri.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectSubtitle`.
    temp311-v = objectsubtitle.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectTitle`.
    temp311-v = objecttitle.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `markChangesPress`.
    temp311-v = markchangespress.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `markLockedPress`.
    temp311-v = marklockedpress.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `titleSelectorPress`.
    temp311-v = titleselectorpress.
    INSERT temp311 INTO TABLE temp310.
    temp311-n = `objectImageShape`.
    temp311-v = objectimageshape.
    INSERT temp311 INTO TABLE temp310.
    _generic(
        name   = `ObjectPageHeader`
        ns     = `uxap`
        t_prop = temp310 ).
  ENDMETHOD.


  METHOD object_page_header_action_btn.
    DATA temp312 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp313 LIKE LINE OF temp312.
    result = me.
    
    CLEAR temp312.
    
    temp313-n = `activeIcon`.
    temp313-v = activeicon.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `ariaHasPopup`.
    temp313-v = ariahaspopup.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `icon`.
    temp313-v = icon.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `importance`.
    temp313-v = importance.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `text`.
    temp313-v = text.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `textDirection`.
    temp313-v = textdirection.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `type`.
    temp313-v = type.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `width`.
    temp313-v = width.
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `enabled`.
    temp313-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `hideIcon`.
    temp313-v = z2ui5_cl_util=>boolean_abap_2_json( hideicon ).
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `hideText`.
    temp313-v = z2ui5_cl_util=>boolean_abap_2_json( hidetext ).
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `iconDensityAware`.
    temp313-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `iconFirst`.
    temp313-v = z2ui5_cl_util=>boolean_abap_2_json( iconfirst ).
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `visible`.
    temp313-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp313 INTO TABLE temp312.
    temp313-n = `press`.
    temp313-v = press.
    INSERT temp313 INTO TABLE temp312.
    _generic( name   = `ObjectPageHeaderActionButton`
              ns     = `uxap`
              t_prop = temp312 ).
  ENDMETHOD.


  METHOD object_page_layout.
    DATA temp314 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp315 LIKE LINE OF temp314.
    CLEAR temp314.
    
    temp315-n = `showTitleInHeaderContent`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showtitleinheadercontent ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `showEditHeaderButton`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showeditheaderbutton ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `alwaysShowContentHeader`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( alwaysshowcontentheader ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `enableLazyLoading`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( enablelazyloading ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `flexEnabled`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( flexenabled ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `headerContentPinnable`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( headercontentpinnable ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `headerContentPinned`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( headercontentpinned ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `isChildPage`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( ischildpage ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `preserveHeaderStateOnScroll`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( preserveheaderstateonscroll ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `showAnchorBar`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showanchorbar ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `showAnchorBarPopover`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showanchorbarpopover ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `showHeaderContent`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showheadercontent ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `showOnlyHighImportance`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showonlyhighimportance ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `subSectionLayout`.
    temp315-v = subsectionlayout.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `toggleHeaderOnTitleClick`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( toggleheaderontitleclick ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `useIconTabBar`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( useicontabbar ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `useTwoColumnsForLargeScreen`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( usetwocolumnsforlargescreen ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `visible`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `backgroundDesignAnchorBar`.
    temp315-v = backgrounddesignanchorbar.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `height`.
    temp315-v = height.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `sectionTitleLevel`.
    temp315-v = sectiontitlelevel.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `editHeaderButtonPress`.
    temp315-v = editheaderbuttonpress.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `upperCaseAnchorBar`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( upperCaseAnchorBar ).
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `beforeNavigate`.
    temp315-v = beforenavigate.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `headerContentPinnedStateChange`.
    temp315-v = headercontentpinnedstatechange.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `navigate`.
    temp315-v = navigate.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `sectionChange`.
    temp315-v = sectionchange.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `subSectionVisibilityChange`.
    temp315-v = subsectionvisibilitychange.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `toggleAnchorBar`.
    temp315-v = toggleanchorbar.
    INSERT temp315 INTO TABLE temp314.
    temp315-n = `showFooter`.
    temp315-v = z2ui5_cl_util=>boolean_abap_2_json( showfooter ).
    INSERT temp315 INTO TABLE temp314.
    result = _generic(
        name   = `ObjectPageLayout`
        ns     = `uxap`
        t_prop = temp314 ).
  ENDMETHOD.


  METHOD object_page_section.
    DATA temp316 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp317 LIKE LINE OF temp316.
    CLEAR temp316.
    
    temp317-n = `titleUppercase`.
    temp317-v = z2ui5_cl_util=>boolean_abap_2_json( titleuppercase ).
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `title`.
    temp317-v = title.
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `id`.
    temp317-v = id.
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `anchorBarButtonColor`.
    temp317-v = anchorBarButtonColor.
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `titleLevel`.
    temp317-v = titlelevel.
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `titleVisible`.
    temp317-v = z2ui5_cl_util=>boolean_abap_2_json( titleVisible ).
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `showTitle`.
    temp317-v = z2ui5_cl_util=>boolean_abap_2_json( showtitle ).
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `visible`.
    temp317-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `wrapTitle`.
    temp317-v = z2ui5_cl_util=>boolean_abap_2_json( wraptitle ).
    INSERT temp317 INTO TABLE temp316.
    temp317-n = `importance`.
    temp317-v = importance.
    INSERT temp317 INTO TABLE temp316.
    result = _generic(
                 name   = `ObjectPageSection`
                 ns     = `uxap`
                 t_prop = temp316 ).
  ENDMETHOD.


  METHOD object_page_sub_section.
    DATA temp318 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp319 LIKE LINE OF temp318.
    CLEAR temp318.
    
    temp319-n = `id`.
    temp319-v = id.
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `mode`.
    temp319-v = mode.
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `importance`.
    temp319-v = importance.
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `titleLevel`.
    temp319-v = titlelevel.
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `titleVisible`.
    temp319-v = z2ui5_cl_util=>boolean_abap_2_json( titleVisible ).
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `showTitle`.
    temp319-v = z2ui5_cl_util=>boolean_abap_2_json( showtitle ).
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `titleUppercase`.
    temp319-v = z2ui5_cl_util=>boolean_abap_2_json( titleuppercase ).
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `visible`.
    temp319-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp319 INTO TABLE temp318.
    temp319-n = `title`.
    temp319-v = title.
    INSERT temp319 INTO TABLE temp318.
    result = _generic(
                 name   = `ObjectPageSubSection`
                 ns     = `uxap`
                 t_prop = temp318 ).
  ENDMETHOD.


  METHOD object_status.
    DATA temp320 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp321 LIKE LINE OF temp320.
    CLEAR temp320.
    
    temp321-n = `active`.
    temp321-v = z2ui5_cl_util=>boolean_abap_2_json( active ).
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `emptyIndicatorMode`.
    temp321-v = emptyindicatormode.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `icon`.
    temp321-v = icon.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `iconDensityAware`.
    temp321-v = z2ui5_cl_util=>boolean_abap_2_json( icondensityaware ).
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `inverted`.
    temp321-v = z2ui5_cl_util=>boolean_abap_2_json( inverted ).
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `state`.
    temp321-v = state.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `stateAnnouncementText`.
    temp321-v = stateannouncementtext.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `text`.
    temp321-v = text.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `id`.
    temp321-v = id.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `class`.
    temp321-v = class.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `textDirection`.
    temp321-v = textdirection.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `title`.
    temp321-v = title.
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `visible`.
    temp321-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp321 INTO TABLE temp320.
    temp321-n = `press`.
    temp321-v = press.
    INSERT temp321 INTO TABLE temp320.
    result = _generic(
        name   = `ObjectStatus`
        t_prop = temp320 ).
  ENDMETHOD.


  METHOD overflow_toolbar.
    DATA temp322 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp323 LIKE LINE OF temp322.
    CLEAR temp322.
    
    temp323-n = `press`.
    temp323-v = press.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `text`.
    temp323-v = text.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `active`.
    temp323-v = z2ui5_cl_util=>boolean_abap_2_json( active ).
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `visible`.
    temp323-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `asyncMode`.
    temp323-v = z2ui5_cl_util=>boolean_abap_2_json( asyncmode ).
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `enabled`.
    temp323-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `design`.
    temp323-v = design.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `type`.
    temp323-v = type.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `style`.
    temp323-v = style.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `id`.
    temp323-v = id.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `class`.
    temp323-v = class.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `width`.
    temp323-v = width.
    INSERT temp323 INTO TABLE temp322.
    temp323-n = `height`.
    temp323-v = height.
    INSERT temp323 INTO TABLE temp322.
    result = _generic( name   = `OverflowToolbar`
                       t_prop = temp322 ).
  ENDMETHOD.


  METHOD overflow_toolbar_button.
    DATA temp324 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp325 LIKE LINE OF temp324.
    result = me.
    
    CLEAR temp324.
    
    temp325-n = `press`.
    temp325-v = press.
    INSERT temp325 INTO TABLE temp324.
    temp325-n = `text`.
    temp325-v = text.
    INSERT temp325 INTO TABLE temp324.
    temp325-n = `enabled`.
    temp325-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp325 INTO TABLE temp324.
    temp325-n = `icon`.
    temp325-v = icon.
    INSERT temp325 INTO TABLE temp324.
    temp325-n = `type`.
    temp325-v = type.
    INSERT temp325 INTO TABLE temp324.
    temp325-n = `tooltip`.
    temp325-v = tooltip.
    INSERT temp325 INTO TABLE temp324.
    _generic( name   = `OverflowToolbarButton`
              t_prop = temp324 ).
  ENDMETHOD.


  METHOD overflow_toolbar_menu_button.
    DATA temp326 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp327 LIKE LINE OF temp326.
    CLEAR temp326.
    
    temp327-n = `buttonMode`.
    temp327-v = buttonmode.
    INSERT temp327 INTO TABLE temp326.
    temp327-n = `defaultAction`.
    temp327-v = defaultaction.
    INSERT temp327 INTO TABLE temp326.
    temp327-n = `text`.
    temp327-v = text.
    INSERT temp327 INTO TABLE temp326.
    temp327-n = `enabled`.
    temp327-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp327 INTO TABLE temp326.
    temp327-n = `icon`.
    temp327-v = icon.
    INSERT temp327 INTO TABLE temp326.
    temp327-n = `type`.
    temp327-v = type.
    INSERT temp327 INTO TABLE temp326.
    temp327-n = `tooltip`.
    temp327-v = tooltip.
    INSERT temp327 INTO TABLE temp326.
    result = _generic( name   = `OverflowToolbarMenuButton`
                       t_prop = temp326 ).
  ENDMETHOD.


  METHOD overflow_toolbar_toggle_button.
    DATA temp328 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp329 LIKE LINE OF temp328.
    result = me.
    
    CLEAR temp328.
    
    temp329-n = `press`.
    temp329-v = press.
    INSERT temp329 INTO TABLE temp328.
    temp329-n = `text`.
    temp329-v = text.
    INSERT temp329 INTO TABLE temp328.
    temp329-n = `enabled`.
    temp329-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp329 INTO TABLE temp328.
    temp329-n = `icon`.
    temp329-v = icon.
    INSERT temp329 INTO TABLE temp328.
    temp329-n = `type`.
    temp329-v = type.
    INSERT temp329 INTO TABLE temp328.
    temp329-n = `tooltip`.
    temp329-v = tooltip.
    INSERT temp329 INTO TABLE temp328.
    _generic( name   = `OverflowToolbarToggleButton`
              t_prop = temp328 ).
  ENDMETHOD.


  METHOD page.
    DATA temp330 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp331 LIKE LINE OF temp330.
    CLEAR temp330.
    
    temp331-n = `title`.
    temp331-v = title.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `showNavButton`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( shownavbutton ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `navButtonPress`.
    temp331-v = navbuttonpress.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `showHeader`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( showheader ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `class`.
    temp331-v = class.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `backgroundDesign`.
    temp331-v = backgrounddesign.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `navButtonTooltip`.
    temp331-v = navbuttontooltip.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `titleAlignment`.
    temp331-v = titlealignment.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `titleLevel`.
    temp331-v = titlelevel.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `contentOnlyBusy`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( contentonlybusy ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `enableScrolling`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( enablescrolling ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `floatingFooter`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( floatingfooter ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `showFooter`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( showfooter ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `showSubHeader`.
    temp331-v = z2ui5_cl_util=>boolean_abap_2_json( showsubheader ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `id`.
    temp331-v = id.
    INSERT temp331 INTO TABLE temp330.
    result = _generic(
                 name   = `Page`
                 ns     = ns
                 t_prop = temp330 ).
  ENDMETHOD.


  METHOD pages.
    result = _generic( `pages` ).

  ENDMETHOD.


  METHOD paging_button.
    DATA temp332 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp333 LIKE LINE OF temp332.
    result = me.
    
    CLEAR temp332.
    
    temp333-n = `count`.
    temp333-v = count.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `nextButtonTooltip`.
    temp333-v = nextbuttontooltip.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `position`.
    temp333-v = position.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `previousButtonTooltip`.
    temp333-v = previousbuttontooltip.
    INSERT temp333 INTO TABLE temp332.
    _generic( name   = `PagingButton`
              t_prop = temp332 ).
  ENDMETHOD.


  METHOD panel.

    DATA temp334 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp335 LIKE LINE OF temp334.
    CLEAR temp334.
    
    temp335-n = `expandable`.
    temp335-v = z2ui5_cl_util=>boolean_abap_2_json( expandable ).
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `expanded`.
    temp335-v = z2ui5_cl_util=>boolean_abap_2_json( expanded ).
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `stickyHeader`.
    temp335-v = z2ui5_cl_util=>boolean_abap_2_json( stickyheader ).
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `expandAnimation`.
    temp335-v = z2ui5_cl_util=>boolean_abap_2_json( expandanimation ).
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `visible`.
    temp335-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `height`.
    temp335-v = height.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `backgroundDesign`.
    temp335-v = backgrounddesign.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `width`.
    temp335-v = width.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `id`.
    temp335-v = id.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `class`.
    temp335-v = class.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `expand`.
    temp335-v = expand.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `headerText`.
    temp335-v = headertext.
    INSERT temp335 INTO TABLE temp334.
    result = _generic(
                 name   = `Panel`
                 t_prop = temp334 ).

  ENDMETHOD.


  METHOD pane_container.
    DATA temp336 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp337 LIKE LINE OF temp336.
    CLEAR temp336.
    
    temp337-n = `resize`.
    temp337-v = resize.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `orientation`.
    temp337-v = orientation.
    INSERT temp337 INTO TABLE temp336.
    result = _generic( name   = `PaneContainer`
                       ns     = `layout`
                       t_prop = temp336 ).
  ENDMETHOD.


  METHOD planning_calendar.
    DATA temp338 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp339 LIKE LINE OF temp338.
    CLEAR temp338.
    
    temp339-n = `rows`.
    temp339-v = rows.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `startDate`.
    temp339-v = startdate.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `id`.
    temp339-v = id.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `class`.
    temp339-v = class.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `appointmentHeight`.
    temp339-v = appointmentHeight.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `appointmentRoundWidth`.
    temp339-v = appointmentRoundWidth.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `builtInViews`.
    temp339-v = builtInViews.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `calendarWeekNumbering`.
    temp339-v = calendarWeekNumbering.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `firstDayOfWeek`.
    temp339-v = firstDayOfWeek.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `groupAppointmentsMode`.
    temp339-v = groupAppointmentsMode.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `height`.
    temp339-v = height.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `iconShape`.
    temp339-v = iconShape.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `maxDate`.
    temp339-v = maxDate.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `minDate`.
    temp339-v = minDate.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `noDataText`.
    temp339-v = noDataText.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `primaryCalendarType`.
    temp339-v = primaryCalendarType.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `secondaryCalendarType`.
    temp339-v = secondaryCalendarType.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `appointmentsVisualization`.
    temp339-v = appointmentsvisualization.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `appointmentSelect`.
    temp339-v = appointmentselect.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `intervalSelect`.
    temp339-v = intervalSelect.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `rowHeaderPress`.
    temp339-v = rowHeaderPress.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `rowSelectionChange`.
    temp339-v = rowSelectionChange.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `startDateChange`.
    temp339-v = startDateChange.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `viewChange`.
    temp339-v = viewChange.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `stickyHeader`.
    temp339-v = stickyHeader.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `viewKey`.
    temp339-v = viewKey.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `width`.
    temp339-v = width.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `singleSelection`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( singleSelection ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `showRowHeaders`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( showRowHeaders ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `multipleAppointmentsSelection`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( multipleAppointmentsSelection ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `showIntervalHeaders`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( showIntervalHeaders ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `showEmptyIntervalHeaders`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( showEmptyIntervalHeaders ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `showWeekNumbers`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( showWeekNumbers ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `legend`.
    temp339-v = legend.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `showDayNamesLine`.
    temp339-v = z2ui5_cl_util=>boolean_abap_2_json( showDayNamesLine ).
    INSERT temp339 INTO TABLE temp338.
    result = _generic( name   = `PlanningCalendar`
                       t_prop = temp338 ).
  ENDMETHOD.


  METHOD planning_calendar_legend.
    DATA temp340 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp341 LIKE LINE OF temp340.
    CLEAR temp340.
    
    temp341-n = `id`.
    temp341-v = id.
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `items`.
    temp341-v = items.
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `appointmentItems`.
    temp341-v = appointmentitems.
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `columnWidth`.
    temp341-v = columnWidth.
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `visible`.
    temp341-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `standardItems`.
    temp341-v = standarditems.
    INSERT temp341 INTO TABLE temp340.
    result = _generic( name   = `PlanningCalendarLegend`
                       t_prop = temp340 ).

  ENDMETHOD.


  METHOD planning_calendar_row.
    DATA temp342 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp343 LIKE LINE OF temp342.
    CLEAR temp342.
    
    temp343-n = `appointments`.
    temp343-v = appointments.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `intervalHeaders`.
    temp343-v = intervalheaders.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `id`.
    temp343-v = id.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `class`.
    temp343-v = class.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `icon`.
    temp343-v = icon.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `title`.
    temp343-v = title.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `key`.
    temp343-v = key.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `noAppointmentsText`.
    temp343-v = noAppointmentsText.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `nonWorkingHours`.
    temp343-v = nonWorkingHours.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `rowHeaderDescription`.
    temp343-v = rowHeaderDescription.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `nonworkingdays`.
    temp343-v = nonworkingdays.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `enableAppointmentsCreate`.
    temp343-v = z2ui5_cl_util=>boolean_abap_2_json( enableAppointmentsCreate ).
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `appointmentResize`.
    temp343-v = appointmentresize.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `appointmentDrop`.
    temp343-v = appointmentdrop.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `appointmentDragEnter`.
    temp343-v = appointmentdragenter.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `appointmentCreate`.
    temp343-v = appointmentcreate.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `selected`.
    temp343-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `nonWorkingDays`.
    temp343-v = nonworkingdays.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `enableAppointmentsResize`.
    temp343-v = z2ui5_cl_util=>boolean_abap_2_json( enableAppointmentsResize ).
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `enableAppointmentsDragAndDrop`.
    temp343-v = z2ui5_cl_util=>boolean_abap_2_json( enableAppointmentsDragAndDrop ).
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `text`.
    temp343-v = text.
    INSERT temp343 INTO TABLE temp342.
    result = _generic( name   = `PlanningCalendarRow`
                       t_prop = temp342 ).

  ENDMETHOD.


  METHOD planning_calendar_view.
    DATA temp344 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp345 LIKE LINE OF temp344.
    CLEAR temp344.
    
    temp345-n = `appointmentHeight`.
    temp345-v = appointmentHeight.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `description`.
    temp345-v = description.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `intervalLabelFormatter`.
    temp345-v = intervalLabelFormatter.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `intervalSize`.
    temp345-v = intervalSize.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `intervalsL`.
    temp345-v = intervalsL.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `intervalsM`.
    temp345-v = intervalsM.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `intervalsS`.
    temp345-v = intervalsS.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `intervalType`.
    temp345-v = intervalType.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `key`.
    temp345-v = key.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `relative`.
    temp345-v = z2ui5_cl_util=>boolean_abap_2_json( relative ).
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `showSubIntervals`.
    temp345-v = z2ui5_cl_util=>boolean_abap_2_json( showSubIntervals ).
    INSERT temp345 INTO TABLE temp344.
    result = _generic( name   = `PlanningCalendarView`
                       t_prop = temp344 ).
  ENDMETHOD.


  METHOD points.
    result = _generic( name = `points`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD popover.
    DATA temp346 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp347 LIKE LINE OF temp346.
    CLEAR temp346.
    
    temp347-n = `title`.
    temp347-v = title.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `class`.
    temp347-v = class.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `placement`.
    temp347-v = placement.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `initialFocus`.
    temp347-v = initialfocus.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `contentHeight`.
    temp347-v = contentheight.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `showHeader`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( showheader ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `showArrow`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( showarrow ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `resizable`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( resizable ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `modal`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( modal ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `horizontalScrolling`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( horizontalScrolling ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `verticalScrolling`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( verticalScrolling ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `visible`.
    temp347-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `offsetX`.
    temp347-v = offsetX.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `offsetY`.
    temp347-v = offsetY.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `contentMinWidth`.
    temp347-v = contentMinWidth.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `titleAlignment`.
    temp347-v = titleAlignment.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `contentWidth`.
    temp347-v = contentwidth.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `afterClose`.
    temp347-v = afterClose.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `afterOpen`.
    temp347-v = afterOpen.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `beforeClose`.
    temp347-v = beforeClose.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `beforeOpen`.
    temp347-v = beforeOpen.
    INSERT temp347 INTO TABLE temp346.
    result = _generic( name   = `Popover`
                       t_prop = temp346 ).
  ENDMETHOD.


  METHOD process_flow.
    DATA temp348 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp349 LIKE LINE OF temp348.
    CLEAR temp348.
    
    temp349-n = `id`.
    temp349-v = id.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `foldedCorners`.
    temp349-v = z2ui5_cl_util=>boolean_abap_2_json( foldedcorners ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `scrollable`.
    temp349-v = z2ui5_cl_util=>boolean_abap_2_json( scrollable ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `showLabels`.
    temp349-v = z2ui5_cl_util=>boolean_abap_2_json( showlabels ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `visible`.
    temp349-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `wheelZoomable`.
    temp349-v = z2ui5_cl_util=>boolean_abap_2_json( wheelzoomable ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `headerPress`.
    temp349-v = headerpress.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `labelPress`.
    temp349-v = labelpress.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `nodePress`.
    temp349-v = nodepress.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `onError`.
    temp349-v = onerror.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `lanes`.
    temp349-v = lanes.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `nodes`.
    temp349-v = nodes.
    INSERT temp349 INTO TABLE temp348.
    result = _generic(
                 name   = `ProcessFlow`
                 ns     = 'commons'
                 t_prop = temp348 ).
  ENDMETHOD.


  METHOD process_flow_lane_header.

    DATA temp350 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp351 LIKE LINE OF temp350.
    CLEAR temp350.
    
    temp351-n = `iconSrc`.
    temp351-v = iconsrc.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `laneId`.
    temp351-v = laneid.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `position`.
    temp351-v = position.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `state`.
    temp351-v = state.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `text`.
    temp351-v = text.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `zoomLevel`.
    temp351-v = zoomlevel.
    INSERT temp351 INTO TABLE temp350.
    result = _generic( name   = `ProcessFlowLaneHeader`
                       ns     = 'commons'
                       t_prop = temp350 ).
  ENDMETHOD.


  METHOD process_flow_node.
    DATA temp352 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp353 LIKE LINE OF temp352.
    CLEAR temp352.
    
    temp353-n = `laneId`.
    temp353-v = laneid.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `nodeId`.
    temp353-v = nodeid.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `title`.
    temp353-v = title.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `titleAbbreviation`.
    temp353-v = titleabbreviation.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `children`.
    temp353-v = children.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `state`.
    temp353-v = state.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `stateText`.
    temp353-v = statetext.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `texts`.
    temp353-v = texts.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `highlighted`.
    temp353-v = z2ui5_cl_util=>boolean_abap_2_json( highlighted ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `focused`.
    temp353-v = z2ui5_cl_util=>boolean_abap_2_json( focused ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `selected`.
    temp353-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `tag`.
    temp353-v = tag.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `texts`.
    temp353-v = texts.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `type`.
    temp353-v = type.
    INSERT temp353 INTO TABLE temp352.
    result = _generic(
                 name   = `ProcessFlowNode`
                 ns     = 'commons'
                 t_prop = temp352 ).
  ENDMETHOD.


  METHOD progress_indicator.
    DATA temp354 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp355 LIKE LINE OF temp354.
    result = me.
    
    CLEAR temp354.
    
    temp355-n = `class`.
    temp355-v = class.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `percentValue`.
    temp355-v = percentvalue.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `displayValue`.
    temp355-v = displayvalue.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `showValue`.
    temp355-v = z2ui5_cl_util=>boolean_abap_2_json( showvalue ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `state`.
    temp355-v = state.
    INSERT temp355 INTO TABLE temp354.
    _generic( name   = `ProgressIndicator`
              t_prop = temp354 ).
  ENDMETHOD.


  METHOD property_threshold.
    DATA temp356 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp357 LIKE LINE OF temp356.
    CLEAR temp356.
    
    temp357-n = `id`.
    temp357-v = id.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `class`.
    temp357-v = class.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `ariaLabel`.
    temp357-v = ariaLabel.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `fillColor`.
    temp357-v = fillColor.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `toValue`.
    temp357-v = toValue.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `visible`.
    temp357-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp357 INTO TABLE temp356.
    result = _generic( name   = `PropertyThreshold`
                       ns     = `si`
                       t_prop = temp356 ).
  ENDMETHOD.


  METHOD property_thresholds.
    result = _generic( name   = `propertyThresholds`
                       ns     = `si` ).
  ENDMETHOD.


  METHOD proportion_zoom_strategy.
    DATA temp358 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp359 LIKE LINE OF temp358.
    CLEAR temp358.
    
    temp359-n = `zoomLevel`.
    temp359-v = zoomlevel.
    INSERT temp359 INTO TABLE temp358.
    result = _generic( name   = `ProportionZoomStrategy`
                       ns     = `axistime`
                       t_prop = temp358 ).
  ENDMETHOD.


  METHOD quick_view.
    DATA temp360 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp361 LIKE LINE OF temp360.
    CLEAR temp360.
    
    temp361-n = `placement`.
    temp361-v = placement.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `width`.
    temp361-v = width.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `afterClose`.
    temp361-v = afterclose.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `afterOpen`.
    temp361-v = afteropen.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `beforeClose`.
    temp361-v = beforeclose.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `beforeOpen`.
    temp361-v = beforeopen.
    INSERT temp361 INTO TABLE temp360.
    result = _generic( name   = `QuickView`
                       t_prop = temp360 ).
  ENDMETHOD.


  METHOD quick_view_group.
    DATA temp362 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp363 LIKE LINE OF temp362.
    CLEAR temp362.
    
    temp363-n = `heading`.
    temp363-v = heading.
    INSERT temp363 INTO TABLE temp362.
    temp363-n = `visible`.
    temp363-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp363 INTO TABLE temp362.
    result = _generic( name   = `QuickViewGroup`
                       t_prop = temp362 ).
  ENDMETHOD.


  METHOD quick_view_group_element.
    DATA temp364 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp365 LIKE LINE OF temp364.
    CLEAR temp364.
    
    temp365-n = `emailSubject`.
    temp365-v = emailsubject.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `label`.
    temp365-v = label.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `pageLinkId`.
    temp365-v = pagelinkid.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `target`.
    temp365-v = target.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `type`.
    temp365-v = type.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `url`.
    temp365-v = url.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `value`.
    temp365-v = value.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `visible`.
    temp365-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp365 INTO TABLE temp364.
    result = _generic( name   = `QuickViewGroupElement`
                       t_prop = temp364 ).
  ENDMETHOD.


  METHOD quick_view_page.
    DATA temp366 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp367 LIKE LINE OF temp366.
    CLEAR temp366.
    
    temp367-n = `description`.
    temp367-v = description.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `header`.
    temp367-v = header.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `pageId`.
    temp367-v = pageid.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `title`.
    temp367-v = title.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `titleUrl`.
    temp367-v = titleurl.
    INSERT temp367 INTO TABLE temp366.
    result = _generic( name   = `QuickViewPage`
                       t_prop = temp366 ).
  ENDMETHOD.


  METHOD quick_view_page_avatar.
    result = _generic( `avatar` ).
  ENDMETHOD.


  METHOD radial_micro_chart.
    DATA temp368 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp369 LIKE LINE OF temp368.
    result = me.
    
    CLEAR temp368.
    
    temp369-n = `percentage`.
    temp369-v = percentage.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `press`.
    temp369-v = press.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `size`.
    temp369-v = size.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `height`.
    temp369-v = height.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `alignContent`.
    temp369-v = aligncontent.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `hideOnNoData`.
    temp369-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `valueColor`.
    temp369-v = valuecolor.
    INSERT temp369 INTO TABLE temp368.
    _generic( name   = `RadialMicroChart`
              ns     = `mchart`
              t_prop = temp368 ).
  ENDMETHOD.


  METHOD radio_button.
    DATA temp370 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp371 LIKE LINE OF temp370.
    CLEAR temp370.
    
    temp371-n = `activeHandling`.
    temp371-v = z2ui5_cl_util=>boolean_abap_2_json( activehandling ).
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `editable`.
    temp371-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `enabled`.
    temp371-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `selected`.
    temp371-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `useEntireWidth`.
    temp371-v = z2ui5_cl_util=>boolean_abap_2_json( useentirewidth ).
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `text`.
    temp371-v = text.
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `textDirection`.
    temp371-v = textdirection.
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `textAlign`.
    temp371-v = textalign.
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `groupName`.
    temp371-v = groupname.
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `valueState`.
    temp371-v = valuestate.
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `width`.
    temp371-v = width.
    INSERT temp371 INTO TABLE temp370.
    temp371-n = `select`.
    temp371-v = select.
    INSERT temp371 INTO TABLE temp370.
    result = _generic(
                 name   = `RadioButton`
                 t_prop = temp370 ).
  ENDMETHOD.


  METHOD radio_button_group.
    DATA temp372 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp373 LIKE LINE OF temp372.
    CLEAR temp372.
    
    temp373-n = `id`.
    temp373-v = id.
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `columns`.
    temp373-v = columns.
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `editable`.
    temp373-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `enabled`.
    temp373-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `selectedIndex`.
    temp373-v = selectedindex.
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `textDirection`.
    temp373-v = textdirection.
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `valueState`.
    temp373-v = valuestate.
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `select`.
    temp373-v = select.
    INSERT temp373 INTO TABLE temp372.
    temp373-n = `width`.
    temp373-v = width.
    INSERT temp373 INTO TABLE temp372.
    result = _generic( name   = `RadioButtonGroup`
                       t_prop = temp372 ).
  ENDMETHOD.


  METHOD range_slider.
    DATA temp374 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp375 LIKE LINE OF temp374.
    result = me.
    
    CLEAR temp374.
    
    temp375-n = `class`.
    temp375-v = class.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `endValue`.
    temp375-v = endvalue.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `id`.
    temp375-v = id.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `labelInterval`.
    temp375-v = labelinterval.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `max`.
    temp375-v = max.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `min`.
    temp375-v = min.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `showTickmarks`.
    temp375-v = z2ui5_cl_util=>boolean_abap_2_json( showtickmarks ).
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `startValue`.
    temp375-v = startvalue.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `step`.
    temp375-v = step.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `width`.
    temp375-v = width.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `value`.
    temp375-v = value.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `value2`.
    temp375-v = value2.
    INSERT temp375 INTO TABLE temp374.
    temp375-n = `change`.
    temp375-v = change.
    INSERT temp375 INTO TABLE temp374.
    _generic( name   = `RangeSlider`
*              ns     = `webc`
              t_prop = temp374 ).
  ENDMETHOD.


  METHOD rating_indicator.

    DATA temp376 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp377 LIKE LINE OF temp376.
    CLEAR temp376.
    
    temp377-n = `class`.
    temp377-v = class.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `maxValue`.
    temp377-v = maxvalue.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `displayOnly`.
    temp377-v = displayonly.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `editable`.
    temp377-v = editable.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `iconSize`.
    temp377-v = iconsize.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `value`.
    temp377-v = value.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `id`.
    temp377-v = id.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `change`.
    temp377-v = change.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `enabled`.
    temp377-v = enabled.
    INSERT temp377 INTO TABLE temp376.
    temp377-n = `tooltip`.
    temp377-v = tooltip.
    INSERT temp377 INTO TABLE temp376.
    result = _generic( name   = `RatingIndicator`
                       t_prop = temp376 ).

  ENDMETHOD.


  METHOD relationship.

    DATA temp378 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp379 LIKE LINE OF temp378.
    CLEAR temp378.
    
    temp379-n = `shapeId`.
    temp379-v = shapeid.
    INSERT temp379 INTO TABLE temp378.
    temp379-n = `type`.
    temp379-v = type.
    INSERT temp379 INTO TABLE temp378.
    temp379-n = `successor`.
    temp379-v = successor.
    INSERT temp379 INTO TABLE temp378.
    temp379-n = `predecessor`.
    temp379-v = predecessor.
    INSERT temp379 INTO TABLE temp378.
    result = _generic( name   = `Relationship`
                       ns     = `gantt`
                       t_prop = temp378 ).

  ENDMETHOD.


  METHOD relationships.
    result = _generic( name = `relationships`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD responsive_scale.
    DATA temp380 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp381 LIKE LINE OF temp380.
    CLEAR temp380.
    
    temp381-n = `id`.
    temp381-v = id.
    INSERT temp381 INTO TABLE temp380.
    temp381-n = `class`.
    temp381-v = class.
    INSERT temp381 INTO TABLE temp380.
    temp381-n = `tickmarksBetweenLabels`.
    temp381-v = tickmarksBetweenLabels.
    INSERT temp381 INTO TABLE temp380.
    result = _generic( name   = `ResponsiveScale`
                       t_prop = temp380 ).
  ENDMETHOD.


  METHOD responsive_splitter.
    DATA temp382 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp383 LIKE LINE OF temp382.
    CLEAR temp382.
    
    temp383-n = `defaultPane`.
    temp383-v = defaultpane.
    INSERT temp383 INTO TABLE temp382.
    temp383-n = `height`.
    temp383-v = height.
    INSERT temp383 INTO TABLE temp382.
    temp383-n = `width`.
    temp383-v = width.
    INSERT temp383 INTO TABLE temp382.
    result = _generic( name   = `ResponsiveSplitter`
                       ns     = `layout`
                       t_prop = temp382 ).
  ENDMETHOD.


  METHOD rich_text_editor.
    DATA temp384 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp385 LIKE LINE OF temp384.
    CLEAR temp384.
    
    temp385-n = `buttonGroups`.
    temp385-v = buttongroups.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `customToolbar`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( customtoolbar ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `editable`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `height`.
    temp385-v = height.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `editorType`.
    temp385-v = editortype.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `plugins`.
    temp385-v = plugins.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `textDirection`.
    temp385-v = textdirection.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `value`.
    temp385-v = value.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `beforeEditorInit`.
    temp385-v = beforeeditorinit.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `change`.
    temp385-v = change.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `ready`.
    temp385-v = ready.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `readyRecurring`.
    temp385-v = readyrecurring.
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `required`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `sanitizeValue`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( sanitizevalue ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupClipboard`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgroupclipboard ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupFont`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgroupfont ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupFontStyle`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgroupfontstyle ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupInsert`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgroupinsert ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupLink`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgrouplink ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupStructure`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgroupstructure ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupTextAlign`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgrouptextalign ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `showGroupUndo`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( showgroupundo ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `useLegacyTheme`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( uselegacytheme ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `wrapping`.
    temp385-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp385 INTO TABLE temp384.
    temp385-n = `width`.
    temp385-v = width.
    INSERT temp385 INTO TABLE temp384.
    result = _generic(
        name   = `RichTextEditor`
        ns     = `text`
        t_prop = temp384 ).

  ENDMETHOD.


  METHOD route.
    DATA temp386 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp387 LIKE LINE OF temp386.

    result = me.
    
    CLEAR temp386.
    
    temp387-n = `id`.
    temp387-v = id.
    INSERT temp387 INTO TABLE temp386.
    temp387-n = `position`.
    temp387-v = position.
    INSERT temp387 INTO TABLE temp386.
    temp387-n = `routetype`.
    temp387-v = routetype.
    INSERT temp387 INTO TABLE temp386.
    temp387-n = `lineDash`.
    temp387-v = lineDash.
    INSERT temp387 INTO TABLE temp386.
    temp387-n = `linewidth`.
    temp387-v = linewidth.
    INSERT temp387 INTO TABLE temp386.
    temp387-n = `color`.
    temp387-v = color.
    INSERT temp387 INTO TABLE temp386.
    temp387-n = `colorBorder`.
    temp387-v = colorborder.
    INSERT temp387 INTO TABLE temp386.
    _generic( name   = `Route`
              ns     = `vbm`
              t_prop = temp386 ).

  ENDMETHOD.


  METHOD routes.

    DATA temp388 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp389 LIKE LINE OF temp388.
    CLEAR temp388.
    
    temp389-n = `id`.
    temp389-v = id.
    INSERT temp389 INTO TABLE temp388.
    temp389-n = `items`.
    temp389-v = items.
    INSERT temp389 INTO TABLE temp388.
    result = _generic( name   = `Routes`
                       ns     = `vbm`
                       t_prop = temp388 ).

  ENDMETHOD.


  METHOD rows.
    result = _generic( `rows` ).
  ENDMETHOD.


  METHOD row_settings_template.
    result = _generic( name = `rowSettingsTemplate`
                       ns   = `table` ).
  ENDMETHOD.


  METHOD rules.
    result = _generic( `rules` ).
  ENDMETHOD.


  METHOD scroll_container.
    DATA temp390 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp391 LIKE LINE OF temp390.
    CLEAR temp390.
    
    temp391-n = `height`.
    temp391-v = height.
    INSERT temp391 INTO TABLE temp390.
    temp391-n = `width`.
    temp391-v = width.
    INSERT temp391 INTO TABLE temp390.
    temp391-n = `id`.
    temp391-v = id.
    INSERT temp391 INTO TABLE temp390.
    temp391-n = `visible`.
    temp391-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp391 INTO TABLE temp390.
    temp391-n = `vertical`.
    temp391-v = z2ui5_cl_util=>boolean_abap_2_json( vertical ).
    INSERT temp391 INTO TABLE temp390.
    temp391-n = `horizontal`.
    temp391-v = z2ui5_cl_util=>boolean_abap_2_json( horizontal ).
    INSERT temp391 INTO TABLE temp390.
    temp391-n = `focusable`.
    temp391-v = z2ui5_cl_util=>boolean_abap_2_json( focusable ).
    INSERT temp391 INTO TABLE temp390.
    result = _generic( name   = `ScrollContainer`
                       t_prop = temp390 ).
  ENDMETHOD.


  METHOD search_field.
    DATA temp392 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp393 LIKE LINE OF temp392.
    result = me.
    
    CLEAR temp392.
    
    temp393-n = `width`.
    temp393-v = width.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `search`.
    temp393-v = search.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `value`.
    temp393-v = value.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `id`.
    temp393-v = id.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `change`.
    temp393-v = change.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `maxLength`.
    temp393-v = maxlength.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `placeholder`.
    temp393-v = placeholder.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `suggest`.
    temp393-v = suggest.
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `enableSuggestions`.
    temp393-v = z2ui5_cl_util=>boolean_abap_2_json( enablesuggestions ).
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `showRefreshButton`.
    temp393-v = z2ui5_cl_util=>boolean_abap_2_json( showrefreshbutton ).
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `showSearchButton`.
    temp393-v = z2ui5_cl_util=>boolean_abap_2_json( showsearchbutton ).
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `visible`.
    temp393-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `enabled`.
    temp393-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp393 INTO TABLE temp392.
    temp393-n = `liveChange`.
    temp393-v = livechange.
    INSERT temp393 INTO TABLE temp392.
    _generic( name   = `SearchField`
              t_prop = temp392 ).
  ENDMETHOD.


  METHOD second_status.
    result = _generic( `secondStatus` ).
  ENDMETHOD.


  METHOD sections.
    result = _generic( name = `sections`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD segmented_button.
    DATA temp394 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp395 LIKE LINE OF temp394.
    CLEAR temp394.
    
    temp395-n = `id`.
    temp395-v = id.
    INSERT temp395 INTO TABLE temp394.
    temp395-n = `selectedKey`.
    temp395-v = selected_key.
    INSERT temp395 INTO TABLE temp394.
    temp395-n = `visible`.
    temp395-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp395 INTO TABLE temp394.
    temp395-n = `enabled`.
    temp395-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp395 INTO TABLE temp394.
    temp395-n = `selectionChange`.
    temp395-v = selection_change.
    INSERT temp395 INTO TABLE temp394.
    result = _generic( name   = `SegmentedButton`
                       t_prop = temp394 ).
  ENDMETHOD.


  METHOD segmented_button_item.
    DATA temp396 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp397 LIKE LINE OF temp396.
    result = me.
    
    CLEAR temp396.
    
    temp397-n = `icon`.
    temp397-v = icon.
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `press`.
    temp397-v = press.
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `width`.
    temp397-v = width.
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `key`.
    temp397-v = key.
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `textDirection`.
    temp397-v = textdirection.
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `enabled`.
    temp397-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `visible`.
    temp397-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp397 INTO TABLE temp396.
    temp397-n = `text`.
    temp397-v = text.
    INSERT temp397 INTO TABLE temp396.
    _generic( name   = `SegmentedButtonItem`
              t_prop = temp396 ).
  ENDMETHOD.


  METHOD segments.
    result = _generic( name = `segments`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD select.
    DATA temp398 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp399 LIKE LINE OF temp398.
    CLEAR temp398.
    
    temp399-n = `id`.
    temp399-v = id.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `class`.
    temp399-v = class.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `autoAdjustWidth`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( autoadjustwidth ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `columnRatio`.
    temp399-v = columnratio.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `editable`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `enabled`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `forceSelection`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( forceselection ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `icon`.
    temp399-v = icon.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `maxWidth`.
    temp399-v = maxwidth.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `name`.
    temp399-v = name.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `required`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `resetOnMissingKey`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( resetonmissingkey ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `selectedItemId`.
    temp399-v = selecteditemid.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `selectedKey`.
    temp399-v = selectedkey.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `showSecondaryValues`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( showsecondaryvalues ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `textAlign`.
    temp399-v = textalign.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `textDirection`.
    temp399-v = textdirection.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `type`.
    temp399-v = type.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `valueState`.
    temp399-v = valuestate.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `valueStateText`.
    temp399-v = valuestatetext.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `width`.
    temp399-v = width.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `wrapItemsText`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( wrapitemstext ).
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `items`.
    temp399-v = items.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `selectedItem`.
    temp399-v = selecteditem.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `change`.
    temp399-v = change.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `liveChange`.
    temp399-v = livechange.
    INSERT temp399 INTO TABLE temp398.
    temp399-n = `visible`.
    temp399-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp399 INTO TABLE temp398.
    result = _generic( name   = `Select`
                       t_prop = temp398 ).
  ENDMETHOD.


  METHOD shapes1.
    result = _generic( name = `shapes1`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD shapes2.
    result = _generic( name = `shapes2`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD shape_group.
    result = _generic( name   = `ShapeGroup`
                       ns     = `si` ).
  ENDMETHOD.


  METHOD shell.
    DATA temp400 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp401 LIKE LINE OF temp400.
    CLEAR temp400.
    
    temp401-n = `appWidthLimited`.
    temp401-v = z2ui5_cl_util=>boolean_abap_2_json( appwidthlimited ).
    INSERT temp401 INTO TABLE temp400.
    result = _generic(
        name   = `Shell`
        ns     = ns
        t_prop = temp400 ).
  ENDMETHOD.


  METHOD side_content.
    DATA temp402 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp403 LIKE LINE OF temp402.
    CLEAR temp402.
    
    temp403-n = `width`.
    temp403-v = width.
    INSERT temp403 INTO TABLE temp402.
    result = _generic( name   = `sideContent`
                       ns     = 'layout'
                       t_prop = temp402 ).

  ENDMETHOD.


  METHOD side_panel.
    DATA temp404 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp405 LIKE LINE OF temp404.
    CLEAR temp404.
    
    temp405-n = `sidePanelWidth`.
    temp405-v = sidepanelwidth.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `sidePanelResizeStep`.
    temp405-v = sidepanelresizestep.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `sidePanelResizeLargerStep`.
    temp405-v = sidepanelresizelargerstep.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `sidePanelPosition`.
    temp405-v = sidepanelposition.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `sidePanelMinWidth`.
    temp405-v = sidepanelminwidth.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `sidePanelMaxWidth`.
    temp405-v = sidepanelmaxwidth.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `sidePanelResizable`.
    temp405-v = z2ui5_cl_util=>boolean_abap_2_json( sidepanelresizable ).
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `actionBarExpanded`.
    temp405-v = z2ui5_cl_util=>boolean_abap_2_json( actionbarexpanded ).
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `toggle`.
    temp405-v = toggle.
    INSERT temp405 INTO TABLE temp404.
    temp405-n = `ariaLabel`.
    temp405-v = arialabel.
    INSERT temp405 INTO TABLE temp404.
    result = _generic(
        name   = `SidePanel`
        ns     = `f`
        t_prop = temp404 ).
  ENDMETHOD.


  METHOD side_panel_item.
    DATA temp406 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp407 LIKE LINE OF temp406.
    CLEAR temp406.
    
    temp407-n = `icon`.
    temp407-v = icon.
    INSERT temp407 INTO TABLE temp406.
    temp407-n = `enabled`.
    temp407-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp407 INTO TABLE temp406.
    temp407-n = `key`.
    temp407-v = key.
    INSERT temp407 INTO TABLE temp406.
    temp407-n = `text`.
    temp407-v = text.
    INSERT temp407 INTO TABLE temp406.
    result = _generic( name   = `SidePanelItem`
                       ns     = `f`
                       t_prop = temp406 ).
  ENDMETHOD.


  METHOD simple_form.
    DATA temp408 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp409 LIKE LINE OF temp408.
    CLEAR temp408.
    
    temp409-n = `title`.
    temp409-v = title.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `layout`.
    temp409-v = layout.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `adjustLabelSpan`.
    temp409-v = adjustlabelspan.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `backgroundDesign`.
    temp409-v = backgrounddesign.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `breakpointL`.
    temp409-v = breakpointl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `breakpointM`.
    temp409-v = breakpointm.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `breakpointXL`.
    temp409-v = breakpointxl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `emptySpanL`.
    temp409-v = emptyspanl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `emptySpanM`.
    temp409-v = emptyspanm.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `emptySpanS`.
    temp409-v = emptyspans.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `emptySpanXL`.
    temp409-v = emptyspanxl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `labelSpanL`.
    temp409-v = labelspanl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `labelSpanM`.
    temp409-v = labelspanm.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `labelSpanS`.
    temp409-v = labelspans.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `labelSpanXL`.
    temp409-v = labelspanxl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `maxContainerCols`.
    temp409-v = maxcontainercols.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `minWidth`.
    temp409-v = minwidth.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `singleContainerFullSize`.
    temp409-v = z2ui5_cl_util=>boolean_abap_2_json( singlecontainerfullsize ).
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `visible`.
    temp409-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `width`.
    temp409-v = width.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `id`.
    temp409-v = id.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `columnsXL`.
    temp409-v = columnsxl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `columnsL`.
    temp409-v = columnsl.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `columnsM`.
    temp409-v = columnsm.
    INSERT temp409 INTO TABLE temp408.
    temp409-n = `editable`.
    temp409-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp409 INTO TABLE temp408.
    result = _generic(
        name   = `SimpleForm`
        ns     = `form`
        t_prop = temp408 ).
  ENDMETHOD.


  METHOD slider.
    DATA temp410 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp411 LIKE LINE OF temp410.
    result = me.
    
    CLEAR temp410.
    
    temp411-n = `class`.
    temp411-v = class.
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `id`.
    temp411-v = id.
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `max`.
    temp411-v = max.
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `min`.
    temp411-v = min.
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `enableTickmarks`.
    temp411-v = z2ui5_cl_util=>boolean_abap_2_json( enabletickmarks ).
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `enabled`.
    temp411-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `value`.
    temp411-v = value.
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `step`.
    temp411-v = step.
    INSERT temp411 INTO TABLE temp410.
    temp411-n = `width`.
    temp411-v = width.
    INSERT temp411 INTO TABLE temp410.
    _generic( name   = `Slider`
*              ns     = `webc`
              t_prop = temp410 ).
  ENDMETHOD.


  METHOD slide_tile.

    DATA temp412 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp413 LIKE LINE OF temp412.
    CLEAR temp412.
    
    temp413-n = `displayTime`.
    temp413-v = displaytime.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `height`.
    temp413-v = height.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `scope`.
    temp413-v = scope.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `sizeBehavior`.
    temp413-v = sizebehavior.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `transitionTime`.
    temp413-v = transitiontime.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `width`.
    temp413-v = width.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `press`.
    temp413-v = press.
    INSERT temp413 INTO TABLE temp412.
    temp413-n = `visible`.
    temp413-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp413 INTO TABLE temp412.
    result = _generic( name   = `SlideTile`
                       t_prop = temp412 ).
  ENDMETHOD.


  METHOD smart_variant_management.
    DATA temp414 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp415 LIKE LINE OF temp414.
    CLEAR temp414.
    
    temp415-n = `id`.
    temp415-v = id.
    INSERT temp415 INTO TABLE temp414.
    temp415-n = `showExecuteOnSelection`.
    temp415-v = z2ui5_cl_util=>boolean_abap_2_json( showexecuteonselection ).
    INSERT temp415 INTO TABLE temp414.
    result = _generic(
        name   = `SmartVariantManagement`
        ns     = `svm`
        t_prop = temp414 ).
  ENDMETHOD.


  METHOD snapped_content.
    result = _generic( name = `snappedContent`
                       ns   = ns ).
  ENDMETHOD.


  METHOD snapped_heading.
    result = me.
    result = _generic( name = `snappedHeading`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD snapped_title_on_mobile.
    result = _generic( name = `snappedTitleOnMobile`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD sort_items.
    result = _generic( `sortItems` ).
  ENDMETHOD.


  METHOD splitter_layout_data.
    DATA temp416 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp417 LIKE LINE OF temp416.
    CLEAR temp416.
    
    temp417-n = `size`.
    temp417-v = size.
    INSERT temp417 INTO TABLE temp416.
    temp417-n = `minSize`.
    temp417-v = minsize.
    INSERT temp417 INTO TABLE temp416.
    temp417-n = `resizable`.
    temp417-v = z2ui5_cl_util=>boolean_abap_2_json( resizable ).
    INSERT temp417 INTO TABLE temp416.
    result = _generic( name   = `SplitterLayoutData`
                       ns     = `layout`
                       t_prop = temp416 ).
  ENDMETHOD.


  METHOD split_container.
    DATA temp418 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp419 LIKE LINE OF temp418.

    result = me.
    
    CLEAR temp418.
    
    temp419-n = `id`.
    temp419-v = id.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `initialDetail`.
    temp419-v = initialdetail.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `initialMaster`.
    temp419-v = initialmaster.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `backgroundColor`.
    temp419-v = backgroundcolor.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `backgroundImage`.
    temp419-v = backgroundimage.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `backgroundOpacity`.
    temp419-v = backgroundopacity.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `backgroundRepeat`.
    temp419-v = backgroundrepeat.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `defaultTransitionNameDetail`.
    temp419-v = defaulttransitionnamedetail.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `defaultTransitionNameMaster`.
    temp419-v = defaulttransitionnamemaster.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `masterButtonText`.
    temp419-v = masterbuttontext.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `masterButtonTooltip`.
    temp419-v = masterbuttontooltip.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `afterDetailNavigate`.
    temp419-v = afterdetailnavigate.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `afterMasterClose`.
    temp419-v = aftermasterclose.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `afterMasterNavigate`.
    temp419-v = aftermasternavigate.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `afterMasterOpen`.
    temp419-v = aftermasteropen.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `beforeMasterClose`.
    temp419-v = beforemasterclose.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `beforeMasterOpen`.
    temp419-v = beforemasteropen.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `detailNavigate`.
    temp419-v = detailnavigate.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `masterButton`.
    temp419-v = masterbutton.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `masterNavigate`.
    temp419-v = masternavigate.
    INSERT temp419 INTO TABLE temp418.
    temp419-n = `mode`.
    temp419-v = mode.
    INSERT temp419 INTO TABLE temp418.
    _generic( name   = `SplitContainer`
              t_prop = temp418 ).

  ENDMETHOD.


  METHOD split_pane.
    DATA temp420 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp421 LIKE LINE OF temp420.
    CLEAR temp420.
    
    temp421-n = `id`.
    temp421-v = id.
    INSERT temp421 INTO TABLE temp420.
    temp421-n = `requiredParentWidth`.
    temp421-v = requiredparentwidth.
    INSERT temp421 INTO TABLE temp420.
    result = _generic( name   = `SplitPane`
                       ns     = `layout`
                       t_prop = temp420 ).
  ENDMETHOD.


  METHOD spot.
    DATA temp422 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp423 LIKE LINE OF temp422.

    result = me.
    
    CLEAR temp422.
    
    temp423-n = `id`.
    temp423-v = id.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `position`.
    temp423-v = position.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `contentOffset`.
    temp423-v = contentoffset.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `type`.
    temp423-v = type.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `scale`.
    temp423-v = scale.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `tooltip`.
    temp423-v = tooltip.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `image`.
    temp423-v = image.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `icon`.
    temp423-v = icon.
    INSERT temp423 INTO TABLE temp422.
    temp423-n = `click`.
    temp423-v = click.
    INSERT temp423 INTO TABLE temp422.
    _generic( name   = `Spot`
              ns     = `vbm`
              t_prop = temp422 ).

  ENDMETHOD.


  METHOD spots.

    DATA temp424 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp425 LIKE LINE OF temp424.
    CLEAR temp424.
    
    temp425-n = `id`.
    temp425-v = id.
    INSERT temp425 INTO TABLE temp424.
    temp425-n = `items`.
    temp425-v = items.
    INSERT temp425 INTO TABLE temp424.
    result = _generic( name   = `Spots`
                       ns     = `vbm`
                       t_prop = temp424 ).

  ENDMETHOD.


  METHOD stacked_bar_micro_chart.
    DATA temp426 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp427 LIKE LINE OF temp426.

    result = me.
    
    CLEAR temp426.
    
    temp427-n = `height`.
    temp427-v = height.
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `press`.
    temp427-v = press.
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `maxValue`.
    temp427-v = maxvalue.
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `precision`.
    temp427-v = precision.
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `size`.
    temp427-v = size.
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `hideOnNoData`.
    temp427-v = z2ui5_cl_util=>boolean_abap_2_json( hideonnodata ).
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `displayZeroValue`.
    temp427-v = z2ui5_cl_util=>boolean_abap_2_json( displayzerovalue ).
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `showLabels`.
    temp427-v = z2ui5_cl_util=>boolean_abap_2_json( showlabels ).
    INSERT temp427 INTO TABLE temp426.
    temp427-n = `width`.
    temp427-v = width.
    INSERT temp427 INTO TABLE temp426.
    _generic( name   = `StackedBarMicroChart`
              ns     = `mchart`
              t_prop = temp426 ).
  ENDMETHOD.


  METHOD standard_list_item.
    DATA temp428 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp429 LIKE LINE OF temp428.
    result = me.
    
    CLEAR temp428.
    
    temp429-n = `title`.
    temp429-v = title.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `description`.
    temp429-v = description.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `icon`.
    temp429-v = icon.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `info`.
    temp429-v = info.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `press`.
    temp429-v = press.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `type`.
    temp429-v = type.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `counter`.
    temp429-v = counter.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `activeIcon`.
    temp429-v = activeicon.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `adaptTitleSize`.
    temp429-v = z2ui5_cl_util=>boolean_abap_2_json( adapttitlesize ).
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `unread`.
    temp429-v = z2ui5_cl_util=>boolean_abap_2_json( unread ).
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `iconInset`.
    temp429-v = z2ui5_cl_util=>boolean_abap_2_json( iconinset ).
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `infoStateInverted`.
    temp429-v = z2ui5_cl_util=>boolean_abap_2_json( infostateinverted ).
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `wrapping`.
    temp429-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `infoState`.
    temp429-v = infostate.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `highlight`.
    temp429-v = highlight.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `wrapCharLimit`.
    temp429-v = wrapcharlimit.
    INSERT temp429 INTO TABLE temp428.
    temp429-n = `selected`.
    temp429-v = selected.
    INSERT temp429 INTO TABLE temp428.
    _generic(
        name   = `StandardListItem`
        t_prop = temp428 ).
  ENDMETHOD.


  METHOD standard_tree_item.
    DATA temp430 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp431 LIKE LINE OF temp430.
    result = me.
    
    CLEAR temp430.
    
    temp431-n = `title`.
    temp431-v = title.
    INSERT temp431 INTO TABLE temp430.
    temp431-n = `icon`.
    temp431-v = icon.
    INSERT temp431 INTO TABLE temp430.
    temp431-n = `press`.
    temp431-v = press.
    INSERT temp431 INTO TABLE temp430.
    temp431-n = `detailPress`.
    temp431-v = detailpress.
    INSERT temp431 INTO TABLE temp430.
    temp431-n = `type`.
    temp431-v = type.
    INSERT temp431 INTO TABLE temp430.
    temp431-n = `counter`.
    temp431-v = counter.
    INSERT temp431 INTO TABLE temp430.
    temp431-n = `selected`.
    temp431-v = selected.
    INSERT temp431 INTO TABLE temp430.
    _generic( name   = `StandardTreeItem`
              t_prop = temp430 ).

  ENDMETHOD.


  METHOD status.

    DATA temp432 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp433 LIKE LINE OF temp432.
    CLEAR temp432.
    
    temp433-n = `id`.
    temp433-v = id.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `class`.
    temp433-v = class.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `backgroundColor`.
    temp433-v = backgroundColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `borderColor`.
    temp433-v = borderColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `borderStyle`.
    temp433-v = borderStyle.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `borderWidth`.
    temp433-v = borderWidth.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `contentColor`.
    temp433-v = contentColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `headerContentColor`.
    temp433-v = headerContentColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `hoverBackgroundColor`.
    temp433-v = hoverBackgroundColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `hoverBorderColor`.
    temp433-v = hoverBorderColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `hoverContentColor`.
    temp433-v = hoverContentColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `key`.
    temp433-v = key.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `legendColor`.
    temp433-v = legendColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `selectedBackgroundColor`.
    temp433-v = selectedBackgroundColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `selectedBorderColor`.
    temp433-v = selectedBorderColor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `selectedContentColor`.
    temp433-v = selectedcontentcolor.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `title`.
    temp433-v = title.
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `useFocusColorAsContentColor`.
    temp433-v = z2ui5_cl_util=>boolean_abap_2_json( useFocusColorAsContentColor ).
    INSERT temp433 INTO TABLE temp432.
    temp433-n = `visible`.
    temp433-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp433 INTO TABLE temp432.
    result = _generic( name   = `Status`
                       ns     = `networkgraph`
                       t_prop = temp432 ).

  ENDMETHOD.


  METHOD statuses.
    DATA temp434 TYPE string.
    CASE ns.
      WHEN ''.
        temp434 = `networkgraph`.
      WHEN OTHERS.
        temp434 = ns.
    ENDCASE.
    result = _generic( name = `statuses`
                       ns   = temp434 ).
  ENDMETHOD.


  METHOD status_indicator.
    DATA temp435 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp436 LIKE LINE OF temp435.
    CLEAR temp435.
    
    temp436-n = `id`.
    temp436-v = id.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `class`.
    temp436-v = class.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `height`.
    temp436-v = height.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `labelPosition`.
    temp436-v = labelPosition.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `showLabel`.
    temp436-v = z2ui5_cl_util=>boolean_abap_2_json( showLabel ).
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `size`.
    temp436-v = size.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `value`.
    temp436-v = value.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `viewBox`.
    temp436-v = viewBox.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `width`.
    temp436-v = width.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `press`.
    temp436-v = press.
    INSERT temp436 INTO TABLE temp435.
    temp436-n = `visible`.
    temp436-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp436 INTO TABLE temp435.
    result = _generic( name   = `StatusIndicator`
                       ns     = `si`
                       t_prop = temp435 ).
  ENDMETHOD.


  METHOD step_input.
    DATA temp437 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp438 LIKE LINE OF temp437.
    result = me.
    
    CLEAR temp437.
    
    temp438-n = `max`.
    temp438-v = max.
    INSERT temp438 INTO TABLE temp437.
    temp438-n = `min`.
    temp438-v = min.
    INSERT temp438 INTO TABLE temp437.
    temp438-n = `step`.
    temp438-v = step.
    INSERT temp438 INTO TABLE temp437.
    temp438-n = `value`.
    temp438-v = value.
    INSERT temp438 INTO TABLE temp437.
    temp438-n = `valueState`.
    temp438-v = valuestate.
    INSERT temp438 INTO TABLE temp437.
    temp438-n = `enabled`.
    temp438-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp438 INTO TABLE temp437.
    temp438-n = `description`.
    temp438-v = description.
    INSERT temp438 INTO TABLE temp437.
    _generic( name   = `StepInput`
              t_prop = temp437 ).
  ENDMETHOD.


  METHOD stringify.

    result = get_root( )->xml_get( ).

  ENDMETHOD.


  METHOD sub_header.

    result = _generic( name = `subHeader`
                       ns   = ns ).

  ENDMETHOD.


  METHOD sub_sections.
    result = me.
    result = _generic( name = `subSections`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD suggestion_columns.
    result = _generic( `suggestionColumns` ).
  ENDMETHOD.


  METHOD suggestion_item.
    DATA temp439 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp440 LIKE LINE OF temp439.
    result = me.
    
    CLEAR temp439.
    
    temp440-n = `description`.
    temp440-v = description.
    INSERT temp440 INTO TABLE temp439.
    temp440-n = `icon`.
    temp440-v = icon.
    INSERT temp440 INTO TABLE temp439.
    temp440-n = `key`.
    temp440-v = key.
    INSERT temp440 INTO TABLE temp439.
    temp440-n = `text`.
    temp440-v = text.
    INSERT temp440 INTO TABLE temp439.
    temp440-n = `textDirection`.
    temp440-v = textdirection.
    INSERT temp440 INTO TABLE temp439.
    _generic( name   = `SuggestionItem`
              t_prop = temp439 ).
  ENDMETHOD.


  METHOD suggestion_items.
    result = _generic( `suggestionItems` ).
  ENDMETHOD.


  METHOD suggestion_rows.
    result = _generic( `suggestionRows` ).
  ENDMETHOD.


  METHOD swim_lane_chain_layout.
    result = _generic( name = `SwimLaneChainLayout`
                       ns   = `nglayout` ).
  ENDMETHOD.


  METHOD switch.
    DATA temp441 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp442 LIKE LINE OF temp441.
    result = me.
    
    CLEAR temp441.
    
    temp442-n = `type`.
    temp442-v = type.
    INSERT temp442 INTO TABLE temp441.
    temp442-n = `enabled`.
    temp442-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp442 INTO TABLE temp441.
    temp442-n = `state`.
    temp442-v = state.
    INSERT temp442 INTO TABLE temp441.
    temp442-n = `change`.
    temp442-v = change.
    INSERT temp442 INTO TABLE temp441.
    temp442-n = `customTextOff`.
    temp442-v = customtextoff.
    INSERT temp442 INTO TABLE temp441.
    temp442-n = `customTextOn`.
    temp442-v = customtexton.
    INSERT temp442 INTO TABLE temp441.
    _generic( name   = `Switch`
              t_prop = temp441 ).
  ENDMETHOD.


  METHOD tab.
    DATA temp443 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp444 LIKE LINE OF temp443.
    CLEAR temp443.
    
    temp444-n = `text`.
    temp444-v = text.
    INSERT temp444 INTO TABLE temp443.
    temp444-n = `selected`.
    temp444-v = selected.
    INSERT temp444 INTO TABLE temp443.
    result = _generic( name   = `Tab`
                       ns     = `webc`
                       t_prop = temp443 ).
  ENDMETHOD.


  METHOD table.
    DATA temp445 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp446 LIKE LINE OF temp445.
    CLEAR temp445.
    
    temp446-n = `items`.
    temp446-v = items.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `headerText`.
    temp446-v = headertext.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `growing`.
    temp446-v = growing.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `growingThreshold`.
    temp446-v = growingthreshold.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `growingScrollToLoad`.
    temp446-v = growingscrolltoload.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `sticky`.
    temp446-v = sticky.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `showSeparators`.
    temp446-v = showseparators.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `mode`.
    temp446-v = mode.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `inset`.
    temp446-v = inset.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `width`.
    temp446-v = width.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `id`.
    temp446-v = id.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `hiddenInPopin`.
    temp446-v = hiddeninpopin.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `popinLayout`.
    temp446-v = popinlayout.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `selectionChange`.
    temp446-v = selectionchange.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `backgroundDesign`.
    temp446-v = backgrounddesign.
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `visible`.
    temp446-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `alternateRowColors`.
    temp446-v = z2ui5_cl_util=>boolean_abap_2_json( alternaterowcolors ).
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `fixedLayout`.
    temp446-v = z2ui5_cl_util=>boolean_abap_2_json( fixedlayout ).
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `showOverlay`.
    temp446-v = z2ui5_cl_util=>boolean_abap_2_json( showoverlay ).
    INSERT temp446 INTO TABLE temp445.
    temp446-n = `autoPopinMode`.
    temp446-v = z2ui5_cl_util=>boolean_abap_2_json( autopopinmode ).
    INSERT temp446 INTO TABLE temp445.
    result = _generic( name   = `Table`
                       t_prop = temp445 ).
  ENDMETHOD.


  METHOD table_select_dialog.

    DATA temp447 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp448 LIKE LINE OF temp447.
    CLEAR temp447.
    
    temp448-n = `confirmButtonText`.
    temp448-v = confirmbuttontext.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `contentHeight`.
    temp448-v = contentheight.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `contentWidth`.
    temp448-v = contentwidth.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `draggable`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( draggable ).
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `growing`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( growing ).
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `growingThreshold`.
    temp448-v = growingthreshold.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `multiSelect`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( multiselect ).
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `noDataText`.
    temp448-v = nodatatext.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `rememberSelections`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( rememberselections ).
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `resizable`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( resizable ).
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `searchPlaceholder`.
    temp448-v = searchplaceholder.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `showClearButton`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( showclearbutton ).
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `title`.
    temp448-v = title.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `titleAlignment`.
    temp448-v = titlealignment.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `items`.
    temp448-v = items.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `search`.
    temp448-v = search.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `confirm`.
    temp448-v = confirm.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `cancel`.
    temp448-v = cancel.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `liveChange`.
    temp448-v = livechange.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `selectionChange`.
    temp448-v = selectionchange.
    INSERT temp448 INTO TABLE temp447.
    temp448-n = `visible`.
    temp448-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp448 INTO TABLE temp447.
    result = _generic( name   = `TableSelectDialog`
                       t_prop = temp447 ).
  ENDMETHOD.


  METHOD tab_container.
    result = _generic( name = `TabContainer`
                       ns   = `webc` ).
  ENDMETHOD.


  METHOD task.
    DATA temp449 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp450 LIKE LINE OF temp449.
    CLEAR temp449.
    
    temp450-n = `time`.
    temp450-v = time.
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `endTime`.
    temp450-v = endtime.
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `id`.
    temp450-v = id.
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `type`.
    temp450-v = type.
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `connectable`.
    temp450-v = connectable.
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `title`.
    temp450-v = title.
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `showTitle`.
    temp450-v = z2ui5_cl_util=>boolean_abap_2_json( showtitle ).
    INSERT temp450 INTO TABLE temp449.
    temp450-n = `color`.
    temp450-v = color.
    INSERT temp450 INTO TABLE temp449.
    result = _generic( name   = `Task`
                       ns     = `shapes`
                       t_prop = temp449 ).
  ENDMETHOD.


  METHOD template_else.

    result = _generic( name = `else`
                       ns   = `template` ).

  ENDMETHOD.


  METHOD template_elseif.

    DATA temp451 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp452 LIKE LINE OF temp451.
    CLEAR temp451.
    
    temp452-n = `test`.
    temp452-v = test.
    INSERT temp452 INTO TABLE temp451.
    result = _generic( name   = `elseif`
                       ns     = `template`
                       t_prop = temp451 ).

  ENDMETHOD.


  METHOD template_if.

    DATA temp453 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp454 LIKE LINE OF temp453.
    CLEAR temp453.
    
    temp454-n = `test`.
    temp454-v = test.
    INSERT temp454 INTO TABLE temp453.
    result = _generic( name   = `if`
                       ns     = `template`
                       t_prop = temp453 ).

  ENDMETHOD.


  METHOD template_repeat.

    DATA temp455 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp456 LIKE LINE OF temp455.
    CLEAR temp455.
    
    temp456-n = `list`.
    temp456-v = list.
    INSERT temp456 INTO TABLE temp455.
    temp456-n = `var`.
    temp456-v = var.
    INSERT temp456 INTO TABLE temp455.
    result = _generic( name   = `repeat`
                       ns     = `template`
                       t_prop = temp455 ).

  ENDMETHOD.


  METHOD template_then.

    result = _generic( name = `then`
                       ns   = `template` ).

  ENDMETHOD.


  METHOD template_with.

    DATA temp457 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp458 LIKE LINE OF temp457.
    CLEAR temp457.
    
    temp458-n = `path`.
    temp458-v = path.
    INSERT temp458 INTO TABLE temp457.
    temp458-n = `helper`.
    temp458-v = helper.
    INSERT temp458 INTO TABLE temp457.
    temp458-n = `var`.
    temp458-v = var.
    INSERT temp458 INTO TABLE temp457.
    result = _generic( name   = `with`
                       ns     = `template`
                       t_prop = temp457 ).

  ENDMETHOD.


  METHOD text.
    DATA temp459 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp460 LIKE LINE OF temp459.
    result = me.
    
    CLEAR temp459.
    
    temp460-n = `text`.
    temp460-v = text.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `emptyIndicatorMode`.
    temp460-v = emptyindicatormode.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `maxLines`.
    temp460-v = maxlines.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `renderWhitespace`.
    temp460-v = renderwhitespace.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `textAlign`.
    temp460-v = textalign.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `visible`.
    temp460-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `textDirection`.
    temp460-v = textdirection.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `width`.
    temp460-v = width.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `id`.
    temp460-v = id.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `wrapping`.
    temp460-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `wrappingType`.
    temp460-v = wrappingtype.
    INSERT temp460 INTO TABLE temp459.
    temp460-n = `class`.
    temp460-v = class.
    INSERT temp460 INTO TABLE temp459.
    _generic( name   = `Text`
              ns     = ns
              t_prop = temp459 ).
  ENDMETHOD.


  METHOD text_area.
    DATA temp461 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp462 LIKE LINE OF temp461.
    result = me.
    
    CLEAR temp461.
    
    temp462-n = `value`.
    temp462-v = value.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `rows`.
    temp462-v = rows.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `cols`.
    temp462-v = cols.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `height`.
    temp462-v = height.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `width`.
    temp462-v = width.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `wrapping`.
    temp462-v = wrapping.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `maxLength`.
    temp462-v = maxlength.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `textAlign`.
    temp462-v = textalign.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `textDirection`.
    temp462-v = textdirection.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `showValueStateMessage`.
    temp462-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `showExceededText`.
    temp462-v = z2ui5_cl_util=>boolean_abap_2_json( showexceededtext ).
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `valueLiveUpdate`.
    temp462-v = z2ui5_cl_util=>boolean_abap_2_json( valueliveupdate ).
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `editable`.
    temp462-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `class`.
    temp462-v = class.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `enabled`.
    temp462-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `id`.
    temp462-v = id.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `growing`.
    temp462-v = z2ui5_cl_util=>boolean_abap_2_json( growing ).
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `growingMaxLines`.
    temp462-v = growingmaxlines.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `required`.
    temp462-v = required.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `valueState`.
    temp462-v = valuestate.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `placeholder`.
    temp462-v = placeholder.
    INSERT temp462 INTO TABLE temp461.
    temp462-n = `valueStateText`.
    temp462-v = valuestatetext.
    INSERT temp462 INTO TABLE temp461.
    _generic( name   = `TextArea`
              t_prop = temp461 ).
  ENDMETHOD.


  METHOD tile_content.

    DATA temp463 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp464 LIKE LINE OF temp463.
    CLEAR temp463.
    
    temp464-n = `unit`.
    temp464-v = unit.
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `footerColor`.
    temp464-v = footercolor.
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `blocked`.
    temp464-v = z2ui5_cl_util=>boolean_abap_2_json( blocked ).
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `frameType`.
    temp464-v = frametype.
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `priority`.
    temp464-v = priority.
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `priorityText`.
    temp464-v = prioritytext.
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `state`.
    temp464-v = state.
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `disabled`.
    temp464-v = z2ui5_cl_util=>boolean_abap_2_json( disabled ).
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `visible`.
    temp464-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp464 INTO TABLE temp463.
    temp464-n = `footer`.
    temp464-v = footer.
    INSERT temp464 INTO TABLE temp463.
    result = _generic( name   = `TileContent`
                       ns     = ``
                       t_prop = temp463 ).

  ENDMETHOD.


  METHOD timeline.

    DATA temp465 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp466 LIKE LINE OF temp465.
    CLEAR temp465.
    
    temp466-n = 'id'.
    temp466-v = id.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'enableDoubleSided'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( enabledoublesided ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'groupBy'.
    temp466-v = groupby.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'growingThreshold'.
    temp466-v = growingthreshold.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'filterTitle'.
    temp466-v = filtertitle.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'sortOldestFirst'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( sortoldestfirst ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'enableModelFilter'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( enablemodelfilter ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'enableScroll'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( enablescroll ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'forceGrowing'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( forcegrowing ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'group'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( group ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'lazyLoading'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( lazyloading ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'showHeaderBar'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( showheaderbar ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'showIcons'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( showicons ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'showItemFilter'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( showitemfilter ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'showSearch'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( showsearch ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'showSort'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( showsort ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'showTimeFilter'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( showtimefilter ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'sort'.
    temp466-v = z2ui5_cl_util=>boolean_abap_2_json( sort ).
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'groupByType'.
    temp466-v = groupbytype.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'textHeight'.
    temp466-v = textheight.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'width'.
    temp466-v = width.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'height'.
    temp466-v = height.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'noDataText'.
    temp466-v = nodatatext.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'alignment'.
    temp466-v = alignment.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'axisOrientation'.
    temp466-v = axisorientation.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'filterList'.
    temp466-v = filterlist.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'customFilter'.
    temp466-v = customfilter.
    INSERT temp466 INTO TABLE temp465.
    temp466-n = 'content'.
    temp466-v = content.
    INSERT temp466 INTO TABLE temp465.
    result = _generic(
        name   = `Timeline`
        ns     = 'commons'
        t_prop = temp465 ).
  ENDMETHOD.


  METHOD timeline_item.

    DATA temp467 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp468 LIKE LINE OF temp467.
    CLEAR temp467.
    
    temp468-n = 'id'.
    temp468-v = id.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'dateTime'.
    temp468-v = datetime.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'title'.
    temp468-v = title.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'userNameClickable'.
    temp468-v = z2ui5_cl_util=>boolean_abap_2_json( usernameclickable ).
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'useIconTooltip'.
    temp468-v = z2ui5_cl_util=>boolean_abap_2_json( useicontooltip ).
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'userNameClicked'.
    temp468-v = usernameclicked.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'userPicture'.
    temp468-v = userpicture.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'select'.
    temp468-v = select.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'text'.
    temp468-v = text.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'userName'.
    temp468-v = username.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'filterValue'.
    temp468-v = filtervalue.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'iconDisplayShape'.
    temp468-v = icondisplayshape.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'iconInitials'.
    temp468-v = iconinitials.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'iconSize'.
    temp468-v = iconsize.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'iconTooltip'.
    temp468-v = icontooltip.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'maxCharacters'.
    temp468-v = maxcharacters.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'replyCount'.
    temp468-v = replycount.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'status'.
    temp468-v = status.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'customActionClicked'.
    temp468-v = customactionclicked.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'press'.
    temp468-v = press.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'replyListOpen'.
    temp468-v = replylistopen.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'replyPost'.
    temp468-v = replypost.
    INSERT temp468 INTO TABLE temp467.
    temp468-n = 'icon'.
    temp468-v = icon.
    INSERT temp468 INTO TABLE temp467.
    result = _generic(
        name   = `TimelineItem`
        ns     = 'commons'
        t_prop = temp467 ).
  ENDMETHOD.


  METHOD time_horizon.
    DATA temp469 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp470 LIKE LINE OF temp469.
    CLEAR temp469.
    
    temp470-n = `startTime`.
    temp470-v = starttime.
    INSERT temp470 INTO TABLE temp469.
    temp470-n = `endTime`.
    temp470-v = endtime.
    INSERT temp470 INTO TABLE temp469.
    result = _generic( name   = `TimeHorizon`
                       ns     = `config`
                       t_prop = temp469 ).
  ENDMETHOD.


  METHOD time_picker.
    DATA temp471 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp472 LIKE LINE OF temp471.
    result = me.
    
    CLEAR temp471.
    
    temp472-n = `value`.
    temp472-v = value.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `dateValue`.
    temp472-v = datevalue.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `localeId`.
    temp472-v = localeid.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `placeholder`.
    temp472-v = placeholder.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `mask`.
    temp472-v = mask.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `maskMode`.
    temp472-v = maskmode.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `minutesStep`.
    temp472-v = minutesstep.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `name`.
    temp472-v = name.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `placeholderSymbol`.
    temp472-v = placeholdersymbol.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `secondsStep`.
    temp472-v = secondsstep.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `textAlign`.
    temp472-v = textalign.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `textDirection`.
    temp472-v = textdirection.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `title`.
    temp472-v = title.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `showCurrentTimeButton`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( showcurrenttimebutton ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `showValueStateMessage`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `support2400`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( support2400 ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `initialFocusedDateValue`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( initialfocuseddatevalue ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `hideInput`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( hideinput ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `editable`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `enabled`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `required`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( required ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `visible`.
    temp472-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `width`.
    temp472-v = width.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `valueState`.
    temp472-v = valuestate.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `valueStateText`.
    temp472-v = valuestatetext.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `displayFormat`.
    temp472-v = displayformat.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `afterValueHelpClose`.
    temp472-v = aftervaluehelpclose.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `afterValueHelpOpen`.
    temp472-v = aftervaluehelpopen.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `change`.
    temp472-v = change.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `liveChange`.
    temp472-v = livechange.
    INSERT temp472 INTO TABLE temp471.
    temp472-n = `valueFormat`.
    temp472-v = valueformat.
    INSERT temp472 INTO TABLE temp471.
    _generic( name   = `TimePicker`
              t_prop = temp471 ).
  ENDMETHOD.


  METHOD title.
    DATA lv_name TYPE c LENGTH 5.
    DATA temp2 LIKE lv_name.
    DATA temp474 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp475 LIKE LINE OF temp474.
    IF ns = 'f'.
      temp2 = 'title'.
    ELSE.
      temp2 = `Title`.
    ENDIF.
    lv_name = temp2.

    result = me.
    
    CLEAR temp474.
    
    temp475-n = `text`.
    temp475-v = text.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `class`.
    temp475-v = class.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `id`.
    temp475-v = id.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `wrappingType`.
    temp475-v = wrappingtype.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `textAlign`.
    temp475-v = textalign.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `textDirection`.
    temp475-v = textdirection.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `titleStyle`.
    temp475-v = titlestyle.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `width`.
    temp475-v = width.
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `wrapping`.
    temp475-v = z2ui5_cl_util=>boolean_abap_2_json( wrapping ).
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `visible`.
    temp475-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp475 INTO TABLE temp474.
    temp475-n = `level`.
    temp475-v = level.
    INSERT temp475 INTO TABLE temp474.
    _generic( ns     = ns
              name   = lv_name
              t_prop = temp474 ).
  ENDMETHOD.


  METHOD toggle_button.
    DATA temp476 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp477 LIKE LINE OF temp476.

    result = me.
    
    CLEAR temp476.
    
    temp477-n = `press`.
    temp477-v = press.
    INSERT temp477 INTO TABLE temp476.
    temp477-n = `text`.
    temp477-v = text.
    INSERT temp477 INTO TABLE temp476.
    temp477-n = `enabled`.
    temp477-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp477 INTO TABLE temp476.
    temp477-n = `icon`.
    temp477-v = icon.
    INSERT temp477 INTO TABLE temp476.
    temp477-n = `type`.
    temp477-v = type.
    INSERT temp477 INTO TABLE temp476.
    temp477-n = `class`.
    temp477-v = class.
    INSERT temp477 INTO TABLE temp476.
    _generic( name   = `ToggleButton`
              t_prop = temp476 ).
  ENDMETHOD.


  METHOD token.
    DATA temp478 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp479 LIKE LINE OF temp478.

    result = me.
    
    CLEAR temp478.
    
    temp479-n = `key`.
    temp479-v = key.
    INSERT temp479 INTO TABLE temp478.
    temp479-n = `text`.
    temp479-v = text.
    INSERT temp479 INTO TABLE temp478.
    temp479-n = `selected`.
    temp479-v = selected.
    INSERT temp479 INTO TABLE temp478.
    temp479-n = `visible`.
    temp479-v = visible.
    INSERT temp479 INTO TABLE temp478.
    temp479-n = `editable`.
    temp479-v = editable.
    INSERT temp479 INTO TABLE temp478.
    _generic( name   = `Token`
              t_prop = temp478 ).
  ENDMETHOD.


  METHOD tokens.

    result = _generic( name = `tokens`
                       ns   = ns ).

  ENDMETHOD.


  METHOD toolbar.

    DATA temp480 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp481 LIKE LINE OF temp480.
    CLEAR temp480.
    
    temp481-n = `active`.
    temp481-v = z2ui5_cl_util=>boolean_abap_2_json( active ).
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `ariaHasPopup`.
    temp481-v = ariahaspopup.
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `design`.
    temp481-v = design.
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `enabled`.
    temp481-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `visible`.
    temp481-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `height`.
    temp481-v = height.
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `style`.
    temp481-v = style.
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `width`.
    temp481-v = width.
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `id`.
    temp481-v = id.
    INSERT temp481 INTO TABLE temp480.
    temp481-n = `press`.
    temp481-v = press.
    INSERT temp481 INTO TABLE temp480.
    result = _generic( name   = `Toolbar`
                       ns     = ns
                       t_prop = temp480 ).

  ENDMETHOD.


  METHOD toolbar_spacer.

    result = me.
    _generic( name = `ToolbarSpacer`
              ns   = ns ).

  ENDMETHOD.


  METHOD tool_header.

    result = _generic( name = `ToolHeader`
                       ns   = `tnt` ).

  ENDMETHOD.


  METHOD tool_page.
    result = _generic( name = `ToolPage`
                       ns   = `tnt` ).
  ENDMETHOD.


  METHOD total_horizon.
    result = _generic( name = `totalHorizon`
                       ns   = `axistime` ).
  ENDMETHOD.


  METHOD tree.
    DATA temp482 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp483 LIKE LINE OF temp482.
    CLEAR temp482.
    
    temp483-n = `id`.
    temp483-v = id.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `items`.
    temp483-v = items.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `headerText`.
    temp483-v = headertext.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `footerText`.
    temp483-v = footertext.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `mode`.
    temp483-v = mode.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `toggleOpenState`.
    temp483-v = toggleopenstate.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `width`.
    temp483-v = width.
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `includeItemInSelection`.
    temp483-v = z2ui5_cl_util=>boolean_abap_2_json( includeiteminselection ).
    INSERT temp483 INTO TABLE temp482.
    temp483-n = `inset`.
    temp483-v = z2ui5_cl_util=>boolean_abap_2_json( inset ).
    INSERT temp483 INTO TABLE temp482.
    result = _generic(
                 name   = `Tree`
                 t_prop = temp482 ).
  ENDMETHOD.


  METHOD tree_column.

    DATA temp484 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp485 LIKE LINE OF temp484.
    CLEAR temp484.
    
    temp485-n = `label`.
    temp485-v = label.
    INSERT temp485 INTO TABLE temp484.
    temp485-n = `template`.
    temp485-v = template.
    INSERT temp485 INTO TABLE temp484.
    temp485-n = `hAlign`.
    temp485-v = halign.
    INSERT temp485 INTO TABLE temp484.
    result = _generic( name   = `Column`
                       ns     = `table`
                       t_prop = temp484 ).

  ENDMETHOD.


  METHOD tree_columns.

    result = _generic( name = `columns`
                       ns   = `table` ).

  ENDMETHOD.


  METHOD tree_table.

    DATA temp486 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp487 LIKE LINE OF temp486.
    CLEAR temp486.
    
    temp487-n = `rows`.
    temp487-v = rows.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `selectionMode`.
    temp487-v = selectionmode.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `enableColumnReordering`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( enableColumnReordering ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `expandFirstLevel`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( expandFirstLevel ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `columnSelect`.
    temp487-v = columnselect.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `rowSelectionChange`.
    temp487-v = rowselectionchange.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `selectionBehavior`.
    temp487-v = selectionbehavior.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `id`.
    temp487-v = id.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `alternateRowColors`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( alternaterowcolors ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `columnHeaderVisible`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( columnHeaderVisible ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `enableCellFilter`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( enableCellFilter ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `enableColumnFreeze`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( enableColumnFreeze ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `enableCustomFilter`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( enableCustomFilter ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `enableSelectAll`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( enableSelectAll ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `showNoData`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( showNoData ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `showOverlay`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( showOverlay ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `visible`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `columnHeaderHeight`.
    temp487-v = columnHeaderHeight.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `firstVisibleRow`.
    temp487-v = firstVisibleRow.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `fixedColumnCount`.
    temp487-v = fixedColumnCount.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `threshold`.
    temp487-v = threshold.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `width`.
    temp487-v = width.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `useGroupMode`.
    temp487-v = z2ui5_cl_util=>boolean_abap_2_json( useGroupMode ).
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `groupHeaderProperty`.
    temp487-v = groupHeaderProperty.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `rowActionCount`.
    temp487-v = rowActionCount.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `selectedIndex`.
    temp487-v = selectedindex.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `rowHeight`.
    temp487-v = rowHeight.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `fixedRowCount`.
    temp487-v = fixedRowCount.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `fixedBottomRowCount`.
    temp487-v = fixedBottomRowCount.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `minAutoRowCount`.
    temp487-v = minAutoRowCount.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `visibleRowCount`.
    temp487-v = visiblerowcount.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `toggleOpenState`.
    temp487-v = toggleopenstate.
    INSERT temp487 INTO TABLE temp486.
    temp487-n = `visibleRowCountMode`.
    temp487-v = visiblerowcountmode.
    INSERT temp487 INTO TABLE temp486.
    result = _generic(
                 name   = `TreeTable`
                 ns     = `table`
                 t_prop = temp486 ).

  ENDMETHOD.


  METHOD tree_template.

    result = _generic( name = `template`
                       ns   = `table` ).

  ENDMETHOD.


  METHOD two_columns_layout.
    result = _generic( name = `TwoColumnsLayout`
                       ns   = `nglayout` ).
  ENDMETHOD.


  METHOD ui_column.
    DATA temp488 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp489 LIKE LINE OF temp488.
    CLEAR temp488.
    
    temp489-n = `id`.
    temp489-v = id.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `width`.
    temp489-v = width.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `showSortMenuEntry`.
    temp489-v = showsortmenuentry.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `sortProperty`.
    temp489-v = sortproperty.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `showFilterMenuEntry`.
    temp489-v = showfiltermenuentry.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `autoresizable`.
    temp489-v = z2ui5_cl_util=>boolean_abap_2_json( autoresizable ).
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `defaultFilterOperator`.
    temp489-v = defaultFilterOperator.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `filterProperty`.
    temp489-v = filterProperty.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `filterType`.
    temp489-v = filterType.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `hAlign`.
    temp489-v = hAlign.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `minWidth`.
    temp489-v = minWidth.
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `resizable`.
    temp489-v = z2ui5_cl_util=>boolean_abap_2_json( resizable ).
    INSERT temp489 INTO TABLE temp488.
    temp489-n = `visible`.
    temp489-v = visible.
    INSERT temp489 INTO TABLE temp488.
    result = _generic( name   = `Column`
                       ns     = 'table'
                       t_prop = temp488 ).
  ENDMETHOD.


  METHOD ui_columns.
    result = _generic( name = `columns`
                       ns   = 'table' ).
  ENDMETHOD.


  METHOD ui_custom_data.
    result = _generic( name = `customData`
                       ns   = 'table' ).
  ENDMETHOD.


  METHOD ui_extension.

    result = _generic( name = `extension`
                       ns   = 'table' ).
  ENDMETHOD.


  METHOD ui_row_action.
    result = _generic( name = `RowAction`
                       ns   = `table` ).
  ENDMETHOD.


  METHOD ui_row_action_item.
    DATA temp490 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp491 LIKE LINE OF temp490.
    CLEAR temp490.
    
    temp491-n = `icon`.
    temp491-v = icon.
    INSERT temp491 INTO TABLE temp490.
    temp491-n = `text`.
    temp491-v = text.
    INSERT temp491 INTO TABLE temp490.
    temp491-n = `type`.
    temp491-v = type.
    INSERT temp491 INTO TABLE temp490.
    temp491-n = `press`.
    temp491-v = press.
    INSERT temp491 INTO TABLE temp490.
    temp491-n = `visible`.
    temp491-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp491 INTO TABLE temp490.
    result = _generic( name   = `RowActionItem`
                       ns     = `table`
                       t_prop = temp490 ).
  ENDMETHOD.


  METHOD ui_row_action_template.
    result = _generic( name = `rowActionTemplate`
                       ns   = `table` ).
  ENDMETHOD.


  METHOD ui_table.

    DATA temp492 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp493 LIKE LINE OF temp492.
    CLEAR temp492.
    
    temp493-n = `rows`.
    temp493-v = rows.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `alternateRowColors`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( alternaterowcolors ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `columnHeaderVisible`.
    temp493-v = columnheadervisible.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `editable`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `enableCellFilter`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( enablecellfilter ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `enableGrouping`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( enablegrouping ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `enableSelectAll`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( enableselectall ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `firstVisibleRow`.
    temp493-v = firstvisiblerow.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `fixedBottomRowCount`.
    temp493-v = fixedbottomrowcount.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `fixedColumnCount`.
    temp493-v = fixedcolumncount.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `rowActionCount`.
    temp493-v = rowactioncount.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `fixedRowCount`.
    temp493-v = fixedrowcount.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `minAutoRowCount`.
    temp493-v = minautorowcount.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `rowHeight`.
    temp493-v = rowheight.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `selectedIndex`.
    temp493-v = selectedindex.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `selectionMode`.
    temp493-v = selectionmode.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `selectionBehavior`.
    temp493-v = selectionBehavior.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `showColumnVisibilityMenu`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( showcolumnvisibilitymenu ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `showNoData`.
    temp493-v = z2ui5_cl_util=>boolean_abap_2_json( shownodata ).
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `threshold`.
    temp493-v = threshold.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `visibleRowCount`.
    temp493-v = visiblerowcount.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `visibleRowCountMode`.
    temp493-v = visiblerowcountmode.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `footer`.
    temp493-v = footer.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `filter`.
    temp493-v = filter.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `sort`.
    temp493-v = sort.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `customFilter`.
    temp493-v = customfilter.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `id`.
    temp493-v = id.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `fl:flexibility`.
    temp493-v = flex.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `rowSelectionChange`.
    temp493-v = rowselectionchange.
    INSERT temp493 INTO TABLE temp492.
    temp493-n = `rowMode`.
    temp493-v = rowmode.
    INSERT temp493 INTO TABLE temp492.
    result = _generic(
        name   = `Table`
        ns     = `table`
        t_prop = temp492 ).

  ENDMETHOD.


  METHOD ui_template.

    result = _generic( name = `template`
                       ns   = 'table' ).

  ENDMETHOD.


  METHOD upload_set.
    DATA temp494 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp495 LIKE LINE OF temp494.
    CLEAR temp494.
    
    temp495-n = `id`.
    temp495-v = id.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `instantUpload`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( instantupload ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `showIcons`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( showicons ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `uploadEnabled`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( uploadenabled ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `terminationEnabled`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( terminationenabled ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `uploadButtonInvisible`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( uploadbuttoninvisible ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `fileTypes`.
    temp495-v = filetypes.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `maxFileNameLength`.
    temp495-v = maxfilenamelength.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `maxFileSize`.
    temp495-v = maxfilesize.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `mediaTypes`.
    temp495-v = mediatypes.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `items`.
    temp495-v = items.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `uploadUrl`.
    temp495-v = uploadurl.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `mode`.
    temp495-v = mode.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `fileRenamed`.
    temp495-v = filerenamed.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `directory`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( directory ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `multiple`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( multiple ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `dragDropDescription`.
    temp495-v = dragdropdescription.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `dragDropText`.
    temp495-v = dragdroptext.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `noDataText`.
    temp495-v = nodatatext.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `noDataDescription`.
    temp495-v = nodatadescription.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `noDataIllustrationType`.
    temp495-v = nodataillustrationtype.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `afterItemEdited`.
    temp495-v = afteritemedited.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `afterItemRemoved`.
    temp495-v = afteritemremoved.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `beforeItemAdded`.
    temp495-v = beforeitemadded.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `beforeItemEdited`.
    temp495-v = beforeitemedited.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `beforeItemRemoved`.
    temp495-v = beforeitemremoved.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `beforeUploadStarts`.
    temp495-v = beforeuploadstarts.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `beforeUploadTermination`.
    temp495-v = beforeuploadtermination.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `fileNameLengthExceeded`.
    temp495-v = filenamelengthexceeded.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `fileSizeExceeded`.
    temp495-v = filesizeexceeded.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `fileTypeMismatch`.
    temp495-v = filetypemismatch.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `itemDragStart`.
    temp495-v = itemdragstart.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `itemDrop`.
    temp495-v = itemdrop.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `mediaTypeMismatch`.
    temp495-v = mediatypemismatch.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `uploadTerminated`.
    temp495-v = uploadterminated.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `uploadCompleted`.
    temp495-v = uploadcompleted.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `afterItemAdded`.
    temp495-v = afteritemadded.
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `sameFilenameAllowed`.
    temp495-v = z2ui5_cl_util=>boolean_abap_2_json( samefilenameallowed ).
    INSERT temp495 INTO TABLE temp494.
    temp495-n = `selectionChanged`.
    temp495-v = selectionchanged.
    INSERT temp495 INTO TABLE temp494.
    result = _generic(
                 name   = `UploadSet`
                 ns     = 'upload'
                 t_prop = temp494 ).
  ENDMETHOD.


  METHOD upload_set_item.
    DATA temp496 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp497 LIKE LINE OF temp496.
    CLEAR temp496.
    
    temp497-n = `fileName`.
    temp497-v = filename.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `mediaType`.
    temp497-v = mediatype.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `url`.
    temp497-v = url.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `thumbnailUrl`.
    temp497-v = thumbnailurl.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `markers`.
    temp497-v = markers.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `enabledEdit`.
    temp497-v = z2ui5_cl_util=>boolean_abap_2_json( enablededit ).
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `enabledRemove`.
    temp497-v = z2ui5_cl_util=>boolean_abap_2_json( enabledremove ).
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `selected`.
    temp497-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `visibleEdit`.
    temp497-v = z2ui5_cl_util=>boolean_abap_2_json( visibleedit ).
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `visibleRemove`.
    temp497-v = z2ui5_cl_util=>boolean_abap_2_json( visibleremove ).
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `uploadState`.
    temp497-v = uploadstate.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `uploadUrl`.
    temp497-v = uploadurl.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `openPressed`.
    temp497-v = openpressed.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `removePressed`.
    temp497-v = removepressed.
    INSERT temp497 INTO TABLE temp496.
    temp497-n = `statuses`.
    temp497-v = statuses.
    INSERT temp497 INTO TABLE temp496.
    result = _generic( name   = `UploadSetItem`
                       ns     = 'upload'
                       t_prop = temp496 ).
  ENDMETHOD.


  METHOD upload_set_toolbar_placeholder.
    result = _generic( name = `UploadSetToolbarPlaceholder`
                       ns   = `upload` ).
  ENDMETHOD.


  METHOD variant_item.

    DATA temp498 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp499 LIKE LINE OF temp498.
    CLEAR temp498.
    
    temp499-n = `executeOnSelection`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( executeonselection ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `global`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( global ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `labelReadOnly`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( labelreadonly ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `lifecyclePackage`.
    temp499-v = lifecyclepackage.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `lifecycleTransportId`.
    temp499-v = lifecycletransportid.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `namespace`.
    temp499-v = namespace.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `readOnly`.
    temp499-v = readonly.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `executeOnSelect`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( executeonselect ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `author`.
    temp499-v = author.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `changeable`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( changeable ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `enabled`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `favorite`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( favorite ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `key`.
    temp499-v = key.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `text`.
    temp499-v = text.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `title`.
    temp499-v = title.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `textDirection`.
    temp499-v = textdirection.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `originalTitle`.
    temp499-v = originaltitle.
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `originalExecuteOnSelect`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( originalexecuteonselect ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `remove`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( remove ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `rename`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( rename ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `originalFavorite`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( originalfavorite ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `sharing`.
    temp499-v = z2ui5_cl_util=>boolean_abap_2_json( sharing ).
    INSERT temp499 INTO TABLE temp498.
    temp499-n = `change`.
    temp499-v = change.
    INSERT temp499 INTO TABLE temp498.
    result = _generic(
                 name   = `VariantItem`
                 ns     = `vm`
                 t_prop = temp498 ).

  ENDMETHOD.


  METHOD variant_items.

    result = _generic( name = `variantItems`
                       ns   = `vm` ).

  ENDMETHOD.


  METHOD variant_item_sapm.
    DATA temp500 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp501 LIKE LINE OF temp500.
    CLEAR temp500.
    
    temp501-n = `id`.
    temp501-v = id.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `author`.
    temp501-v = author.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `changeable`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( changeable ).
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `enabled`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `favorite`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( favorite ).
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `remove`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( remove ).
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `rename`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( rename ).
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `visible`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `contexts`.
    temp501-v = contexts.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `key`.
    temp501-v = key.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `sharing`.
    temp501-v = sharing.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `text`.
    temp501-v = text.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `textDirection`.
    temp501-v = textDirection.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `title`.
    temp501-v = title.
    INSERT temp501 INTO TABLE temp500.
    temp501-n = `executeOnSelect`.
    temp501-v = z2ui5_cl_util=>boolean_abap_2_json( executeOnSelect ).
    INSERT temp501 INTO TABLE temp500.
    result = _generic( name   = `VariantItem`
                       t_prop = temp500 ).
  ENDMETHOD.


  METHOD variant_management.

    DATA temp502 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp503 LIKE LINE OF temp502.
    CLEAR temp502.
    
    temp503-n = `defaultVariantKey`.
    temp503-v = defaultvariantkey.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `enabled`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `inErrorState`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( inerrorstate ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `initialSelectionKey`.
    temp503-v = initialselectionkey.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `lifecycleSupport`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( lifecyclesupport ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `selectionKey`.
    temp503-v = selectionkey.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `showCreateTile`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( showcreatetile ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `showExecuteOnSelection`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( showexecuteonselection ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `showSetAsDefault`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( showsetasdefault ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `showShare`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( showshare ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `standardItemAuthor`.
    temp503-v = standarditemauthor.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `standardItemText`.
    temp503-v = standarditemtext.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `useFavorites`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( usefavorites ).
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `variantItems`.
    temp503-v = variantitems.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `manage`.
    temp503-v = manage.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `save`.
    temp503-v = save.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `select`.
    temp503-v = select.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `id`.
    temp503-v = id.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `variantCreationByUserAllowed`.
    temp503-v = uservarcreate.
    INSERT temp503 INTO TABLE temp502.
    temp503-n = `visible`.
    temp503-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp503 INTO TABLE temp502.
    result = _generic(
                 name   = `VariantManagement`
                 ns     = `vm`
                 t_prop = temp502 ).

  ENDMETHOD.


  METHOD variant_management_fl.
    DATA temp504 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp505 LIKE LINE OF temp504.
    CLEAR temp504.
    
    temp505-n = `displayTextForExecuteOnSelectionForStandardVariant`.
    temp505-v = displaytextfsv.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `editable`.
    temp505-v = z2ui5_cl_util=>boolean_abap_2_json( editable ).
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `executeOnSelectionForStandardDefault`.
    temp505-v = z2ui5_cl_util=>boolean_abap_2_json( executeonselectionforstandflt ).
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `headerLevel`.
    temp505-v = headerlevel.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `inErrorState`.
    temp505-v = z2ui5_cl_util=>boolean_abap_2_json( inerrorstate ).
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `maxWidth`.
    temp505-v = maxwidth.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `modelName`.
    temp505-v = modelname.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `resetOnContextChange`.
    temp505-v = z2ui5_cl_util=>boolean_abap_2_json( resetoncontextchange ).
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `showSetAsDefault`.
    temp505-v = z2ui5_cl_util=>boolean_abap_2_json( showsetasdefault ).
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `titleStyle`.
    temp505-v = titlestyle.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `updateVariantInURL`.
    temp505-v = z2ui5_cl_util=>boolean_abap_2_json( updatevariantinurl ).
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `cancel`.
    temp505-v = cancel.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `initialized`.
    temp505-v = initialized.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `manage`.
    temp505-v = manage.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `save`.
    temp505-v = save.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `select`.
    temp505-v = select.
    INSERT temp505 INTO TABLE temp504.
    temp505-n = `for`.
    temp505-v = for.
    INSERT temp505 INTO TABLE temp504.
    result = _generic(
                 name   = `VariantManagement`
                 ns     = `flvm`
                 t_prop = temp504 ).
  ENDMETHOD.


  METHOD variant_management_sapm.
    DATA temp506 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp507 LIKE LINE OF temp506.
    CLEAR temp506.
    
    temp507-n = `id`.
    temp507-v = id.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `defaultKey`.
    temp507-v = defaultKey.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `level`.
    temp507-v = level.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `maxWidth`.
    temp507-v = maxWidth.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `popoverTitle`.
    temp507-v = popoverTitle.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `selectedKey`.
    temp507-v = selectedKey.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `titleStyle`.
    temp507-v = titleStyle.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `cancel`.
    temp507-v = cancel.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `manage`.
    temp507-v = manage.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `manageCancel`.
    temp507-v = manageCancel.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `save`.
    temp507-v = save.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `select`.
    temp507-v = select.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `items`.
    temp507-v = items.
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `creationAllowed`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( creationAllowed ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `inErrorState`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( inErrorState ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `modified`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( modified ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `showFooter`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( showFooter ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `showSaveAs`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( showSaveAs ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `supportApplyAutomatically`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( supportApplyAutomatically ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `supportContexts`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( supportContexts ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `supportDefault`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( supportDefault ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `supportFavorites`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( supportFavorites ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `supportPublic`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( supportPublic ).
    INSERT temp507 INTO TABLE temp506.
    temp507-n = `visible`.
    temp507-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp507 INTO TABLE temp506.
    result = _generic( name   = `VariantManagement`
                       t_prop = temp506 ).

  ENDMETHOD.


  METHOD vbox.

    DATA temp508 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp509 LIKE LINE OF temp508.
    CLEAR temp508.
    
    temp509-n = `height`.
    temp509-v = height.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `id`.
    temp509-v = id.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `justifyContent`.
    temp509-v = justifycontent.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `renderType`.
    temp509-v = rendertype.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `alignContent`.
    temp509-v = aligncontent.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `alignItems`.
    temp509-v = alignitems.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `width`.
    temp509-v = width.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `wrap`.
    temp509-v = wrap.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `backgroundDesign`.
    temp509-v = backgrounddesign.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `direction`.
    temp509-v = direction.
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `displayInline`.
    temp509-v = z2ui5_cl_util=>boolean_abap_2_json( displayinline ).
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `visible`.
    temp509-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `fitContainer`.
    temp509-v = z2ui5_cl_util=>boolean_abap_2_json( fitcontainer ).
    INSERT temp509 INTO TABLE temp508.
    temp509-n = `class`.
    temp509-v = class.
    INSERT temp509 INTO TABLE temp508.
    result = _generic(
        name   = `VBox`
        t_prop = temp508 ).

  ENDMETHOD.


  METHOD vertical_layout.

    DATA temp510 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp511 LIKE LINE OF temp510.
    CLEAR temp510.
    
    temp511-n = `id`.
    temp511-v = id.
    INSERT temp511 INTO TABLE temp510.
    temp511-n = `visible`.
    temp511-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp511 INTO TABLE temp510.
    temp511-n = `enabled`.
    temp511-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp511 INTO TABLE temp510.
    temp511-n = `class`.
    temp511-v = class.
    INSERT temp511 INTO TABLE temp510.
    temp511-n = `width`.
    temp511-v = width.
    INSERT temp511 INTO TABLE temp510.
    result = _generic( name   = `VerticalLayout`
                       ns     = `layout`
                       t_prop = temp510 ).
  ENDMETHOD.


  METHOD view_settings_dialog.

    DATA temp512 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp513 LIKE LINE OF temp512.
    CLEAR temp512.
    
    temp513-n = `confirm`.
    temp513-v = confirm.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `cancel`.
    temp513-v = cancel.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `filterDetailPageOpened`.
    temp513-v = filterdetailpageopened.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `reset`.
    temp513-v = reset.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `resetFilters`.
    temp513-v = resetfilters.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `filterSearchOperator`.
    temp513-v = filtersearchoperator.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `groupDescending`.
    temp513-v = z2ui5_cl_util=>boolean_abap_2_json( groupdescending ).
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `sortDescending`.
    temp513-v = z2ui5_cl_util=>boolean_abap_2_json( sortdescending ).
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `title`.
    temp513-v = title.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `selectedGroupItem`.
    temp513-v = selectedgroupitem.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `selectedPresetFilterItem`.
    temp513-v = selectedpresetfilteritem.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `selectedSortItem`.
    temp513-v = selectedsortitem.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `selectedSortItem`.
    temp513-v = selectedsortitem.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `filterItems`.
    temp513-v = filteritems.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `sortItems`.
    temp513-v = sortitems.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `groupItems`.
    temp513-v = groupitems.
    INSERT temp513 INTO TABLE temp512.
    temp513-n = `titleAlignment`.
    temp513-v = titlealignment.
    INSERT temp513 INTO TABLE temp512.
    result = _generic( name   = `ViewSettingsDialog`
                       t_prop = temp512 ).

  ENDMETHOD.


  METHOD view_settings_filter_item.
    DATA temp514 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp515 LIKE LINE OF temp514.
    CLEAR temp514.
    
    temp515-n = `enabled`.
    temp515-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp515 INTO TABLE temp514.
    temp515-n = `key`.
    temp515-v = key.
    INSERT temp515 INTO TABLE temp514.
    temp515-n = `selected`.
    temp515-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp515 INTO TABLE temp514.
    temp515-n = `text`.
    temp515-v = text.
    INSERT temp515 INTO TABLE temp514.
    temp515-n = `textDirection`.
    temp515-v = textdirection.
    INSERT temp515 INTO TABLE temp514.
    temp515-n = `multiSelect`.
    temp515-v = z2ui5_cl_util=>boolean_abap_2_json( multiselect ).
    INSERT temp515 INTO TABLE temp514.
    result = _generic(
                 name   = `ViewSettingsFilterItem`
                 t_prop = temp514 ).
  ENDMETHOD.


  METHOD view_settings_item.
    DATA temp516 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp517 LIKE LINE OF temp516.
    CLEAR temp516.
    
    temp517-n = `enabled`.
    temp517-v = z2ui5_cl_util=>boolean_abap_2_json( enabled ).
    INSERT temp517 INTO TABLE temp516.
    temp517-n = `key`.
    temp517-v = key.
    INSERT temp517 INTO TABLE temp516.
    temp517-n = `selected`.
    temp517-v = z2ui5_cl_util=>boolean_abap_2_json( selected ).
    INSERT temp517 INTO TABLE temp516.
    temp517-n = `text`.
    temp517-v = text.
    INSERT temp517 INTO TABLE temp516.
    temp517-n = `textDirection`.
    temp517-v = textdirection.
    INSERT temp517 INTO TABLE temp516.
    result = _generic( name   = `ViewSettingsItem`
                       t_prop = temp516 ).

  ENDMETHOD.


  METHOD visible_horizon.
    result = _generic( name = `visibleHorizon`
                       ns   = `axistime` ).
  ENDMETHOD.


  METHOD vos.

    result = _generic( name = `vos`
                       ns   = `vbm` ).

  ENDMETHOD.


  METHOD wizard.
    DATA temp518 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp519 LIKE LINE OF temp518.
    CLEAR temp518.
    
    temp519-n = `id`.
    temp519-v = id.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `class`.
    temp519-v = class.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `backgroundDesign`.
    temp519-v = backgrounddesign.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `busy`.
    temp519-v = z2ui5_cl_util=>boolean_abap_2_json( busy ).
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `busyIndicatorDelay`.
    temp519-v = busyindicatordelay.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `busyIndicatorSize`.
    temp519-v = busyindicatorsize.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `enableBranching`.
    temp519-v = z2ui5_cl_util=>boolean_abap_2_json( enablebranching ).
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `fieldGroupIds`.
    temp519-v = fieldgroupids.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `finishButtonText`.
    temp519-v = finishbuttontext.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `height`.
    temp519-v = height.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `renderMode`.
    temp519-v = rendermode.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `showNextButton`.
    temp519-v = z2ui5_cl_util=>boolean_abap_2_json( shownextbutton ).
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `stepTitleLevel`.
    temp519-v = steptitlelevel.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `visible`.
    temp519-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `width`.
    temp519-v = width.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `complete`.
    temp519-v = complete.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `navigationChange`.
    temp519-v = navigationchange.
    INSERT temp519 INTO TABLE temp518.
    temp519-n = `stepActivate`.
    temp519-v = stepactivate.
    INSERT temp519 INTO TABLE temp518.
    result = _generic( name   = `Wizard`
                       t_prop = temp518 ).

  ENDMETHOD.


  METHOD wizard_step.

    DATA temp520 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp521 LIKE LINE OF temp520.
    CLEAR temp520.
    
    temp521-n = `id`.
    temp521-v = id.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `busy`.
    temp521-v = z2ui5_cl_util=>boolean_abap_2_json( busy ).
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `busyIndicatorDelay`.
    temp521-v = busyindicatordelay.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `busyIndicatorSize`.
    temp521-v = busyindicatorsize.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `fieldGroupIds`.
    temp521-v = fieldgroupids.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `icon`.
    temp521-v = icon.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `optional`.
    temp521-v = z2ui5_cl_util=>boolean_abap_2_json( optional ).
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `title`.
    temp521-v = title.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `validated`.
    temp521-v = z2ui5_cl_util=>boolean_abap_2_json( validated ).
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `visible`.
    temp521-v = z2ui5_cl_util=>boolean_abap_2_json( visible ).
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `activate`.
    temp521-v = activate.
    INSERT temp521 INTO TABLE temp520.
    temp521-n = `complete`.
    temp521-v = complete.
    INSERT temp521 INTO TABLE temp520.
    result = _generic( name   = `WizardStep`
                       t_prop = temp520 ).
  ENDMETHOD.


  METHOD xml_get.
    DATA lt_prop TYPE z2ui5_if_types=>ty_t_name_value.
        DATA temp522 LIKE LINE OF mt_prop.
        DATA temp523 LIKE sy-tabix.
      DATA temp524 TYPE z2ui5_if_types=>ty_t_name_value.
      DATA temp525 LIKE LINE OF temp524.
      DATA temp526 LIKE LINE OF mt_ns.
      DATA lr_ns LIKE REF TO temp526.
        DATA temp527 LIKE LINE OF lt_prop.
        DATA lr_prop LIKE REF TO temp527.
          DATA ns TYPE z2ui5_if_types=>ty_s_name_value-n.
    DATA temp528 TYPE string.
    DATA lv_tmp2 LIKE temp528.
    DATA temp529 TYPE string.
    DATA val TYPE string.
    DATA row LIKE LINE OF mt_prop.
      DATA temp3 TYPE string.
    DATA lv_tmp3 LIKE temp529.
    DATA lr_child LIKE LINE OF mt_child.
      DATA temp530 TYPE REF TO z2ui5_cl_xml_view.
    DATA temp531 TYPE string.
    DATA lv_ns LIKE temp531.

    CASE mv_name.
      WHEN `ZZPLAIN`.
        
        
        temp523 = sy-tabix.
        READ TABLE mt_prop WITH KEY n = `VALUE` INTO temp522.
        sy-tabix = temp523.
        IF sy-subrc <> 0.
          ASSERT 1 = 0.
        ENDIF.
        result = temp522-v.
        RETURN.
      WHEN OTHERS.
    ENDCASE.

    IF me = mo_root.

      
      CLEAR temp524.
      
      temp525-n = `xmlns:z2ui5`.
      temp525-v = `z2ui5`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:layout`.
      temp525-v = `sap.ui.layout`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:networkgraph`.
      temp525-v = `sap.suite.ui.commons.networkgraph`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:nglayout`.
      temp525-v = `sap.suite.ui.commons.networkgraph.layout`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:ngcustom`.
      temp525-v = `sap.suite.ui.commons.sample.NetworkGraphCustomRendering`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:table`.
      temp525-v = `sap.ui.table`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:template`.
      temp525-v = `http://schemas.sap.com/sapui5/extension/sap.ui.core.template/1`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:f`.
      temp525-v = `sap.f`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:columnmenu`.
      temp525-v = `sap.m.table.columnmenu`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:card`.
      temp525-v = `sap.f.cards`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:form`.
      temp525-v = `sap.ui.layout.form`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:editor`.
      temp525-v = `sap.ui.codeeditor`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:mchart`.
      temp525-v = `sap.suite.ui.microchart`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:webc`.
      temp525-v = `sap.ui.webc.main`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:uxap`.
      temp525-v = `sap.uxap`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:sap`.
      temp525-v = `sap`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:text`.
      temp525-v = `sap.ui.richtexteditor`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:html`.
      temp525-v = `http://www.w3.org/1999/xhtml`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:fb`.
      temp525-v = `sap.ui.comp.filterbar`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:u`.
      temp525-v = `sap.ui.unified`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:gantt`.
      temp525-v = `sap.gantt.simple`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:axistime`.
      temp525-v = `sap.gantt.axistime`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:config`.
      temp525-v = `sap.gantt.config`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:shapes`.
      temp525-v = `sap.gantt.simple.shapes`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:commons`.
      temp525-v = `sap.suite.ui.commons`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:si`.
      temp525-v = `sap.suite.ui.commons.statusindicator`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:vm`.
      temp525-v = `sap.ui.comp.variants`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:viz`.
      temp525-v = `sap.viz.ui5.controls`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:vk`.
      temp525-v = `sap.ui.vk`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:vbm`.
      temp525-v = `sap.ui.vbm`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:ndc`.
      temp525-v = `sap.ndc`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:svm`.
      temp525-v = `sap.ui.comp.smartvariants`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:flvm`.
      temp525-v = `sap.ui.fl.variants`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:p13n`.
      temp525-v = `sap.m.p13n`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:upload`.
      temp525-v = `sap.m.upload`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:fl`.
      temp525-v = `sap.ui.fl`.
      INSERT temp525 INTO TABLE temp524.
      temp525-n = `xmlns:tnt`.
      temp525-v = `sap.tnt`.
      INSERT temp525 INTO TABLE temp524.
      lt_prop = temp524.

      
      
      LOOP AT mt_ns REFERENCE INTO lr_ns.

        
        
        LOOP AT lt_prop REFERENCE INTO lr_prop.

          
          ns = lr_prop->n+6.
          IF ns = lr_ns->*.
            TRY.
                INSERT lr_prop->* INTO TABLE mt_prop.
              CATCH cx_root.
            ENDTRY.
            DELETE lt_prop.
            EXIT.
          ENDIF.

        ENDLOOP.

      ENDLOOP.

      DELETE ADJACENT DUPLICATES FROM mt_prop COMPARING n.
    ENDIF.

    
    IF mv_ns <> ``.
      temp528 = |{ mv_ns }:|.
    ELSE.
      CLEAR temp528.
    ENDIF.
    
    lv_tmp2 = temp528.
    
    
    val = ``.
    
    LOOP AT mt_prop INTO row WHERE v <> ``.
      
      IF row-v = abap_true.
        temp3 = `true`.
      ELSE.
        temp3 = row-v.
      ENDIF.
      val = |{ val } { row-n }="{ escape( val = temp3 format = cl_abap_format=>e_xml_attr ) }"|.
    ENDLOOP.
    temp529 = val.
    
    lv_tmp3 = temp529.

    result = |{ result } <{ lv_tmp2 }{ mv_name }{ lv_tmp3 }|.

    IF mt_child IS INITIAL.
      result = |{ result }/>|.
      RETURN.
    ENDIF.

    result = |{ result }>|.

    
    LOOP AT mt_child INTO lr_child.
      
      temp530 ?= lr_child.
      result = result && temp530->xml_get( ).
    ENDLOOP.

    
    IF mv_ns <> ||.
      temp531 = |{ mv_ns }:|.
    ELSE.
      CLEAR temp531.
    ENDIF.
    
    lv_ns = temp531.
    result = |{ result }</{ lv_ns }{ mv_name }>|.

  ENDMETHOD.


  METHOD _cc_plain_xml.
    DATA temp532 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp533 LIKE LINE OF temp532.

    result = me.
    
    CLEAR temp532.
    
    temp533-n = `VALUE`.
    temp533-v = val.
    INSERT temp533 INTO TABLE temp532.
    _generic( name   = `ZZPLAIN`
              t_prop = temp532 ).

  ENDMETHOD.


  METHOD _generic.
        DATA temp534 TYPE string.
    DATA result2 TYPE REF TO z2ui5_cl_xml_view.

    TRY.
        
        temp534 = ns.
        INSERT temp534 INTO TABLE mo_root->mt_ns.
      CATCH cx_root.
    ENDTRY.

    
    CREATE OBJECT result2 TYPE z2ui5_cl_xml_view.
    result2->mv_name   = name.
    result2->mv_ns     = ns.
    result2->mt_prop   = t_prop.
    result2->mo_parent = me.
    result2->mo_root   = mo_root.
    INSERT result2 INTO TABLE mt_child.

    mo_root->mo_previous = result2.
    result = result2.

  ENDMETHOD.


  METHOD _generic_property.

    INSERT val INTO TABLE mt_prop.
    result = me.

  ENDMETHOD.


  METHOD _z2ui5.

    CREATE OBJECT result EXPORTING VIEW = me.

  ENDMETHOD.
ENDCLASS.
