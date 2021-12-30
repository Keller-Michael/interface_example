CLASS zmke_cl_interface_example DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS test_no_personality_control IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS test_with_personality_control IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS zmke_cl_interface_example IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    test_no_personality_control( out ).
    test_with_personality_control( out ).
  ENDMETHOD.

  METHOD test_no_personality_control.
    DATA henry_jekyll TYPE REF TO zmke_if_henry_jekyll.
    DATA edward_hyde TYPE REF TO zmke_if_edward_hyde.

    henry_jekyll = zmke_cl_henry_jekyll=>get_instance( ).
    henry_jekyll->do_kind_things( ).

    edward_hyde = henry_jekyll->switch_personality( ).
    edward_hyde->do_malicious_things( ).

    IF henry_jekyll = edward_hyde.
      out->write( 'Dr. Henry Jekyll and Mr. Edward Hyde are the same person.' ).
    ENDIF.
  ENDMETHOD.

  METHOD test_with_personality_control.
    DATA henry_jekyll TYPE REF TO zmke_cl_henry_jekyll.
    henry_jekyll ?= zmke_cl_henry_jekyll=>get_instance( ).

    henry_jekyll->zmke_if_edward_hyde~do_malicious_things( ).
    henry_jekyll->zmke_if_henry_jekyll~do_kind_things( ).
  ENDMETHOD.

ENDCLASS.
