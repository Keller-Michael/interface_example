CLASS zmke_cl_interface_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmke_cl_interface_example IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(henry_jekyll) = zmke_cl_henry_jekyll=>get_instance( ).
    henry_jekyll->do_kind_things( ).

    DATA(edward_hyde) = henry_jekyll->switch_personality( ).
    edward_hyde->do_malicious_things( ).

    IF henry_jekyll = edward_hyde.
      out->write( 'Same person.' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
