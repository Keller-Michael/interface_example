CLASS zmke_cl_henry_jekyll DEFINITION PUBLIC FINAL CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES zmke_if_henry_jekyll.
    INTERFACES zmke_if_edward_hyde.

    CLASS-METHODS get_instance RETURNING VALUE(result) TYPE REF TO zmke_if_henry_jekyll.

  PROTECTED SECTION.

  PRIVATE SECTION.
    CLASS-DATA instance TYPE REF TO zmke_cl_henry_jekyll.

ENDCLASS.



CLASS zmke_cl_henry_jekyll IMPLEMENTATION.

  METHOD zmke_if_henry_jekyll~do_kind_things.
  ENDMETHOD.

  METHOD zmke_if_edward_hyde~do_malicious_things.
  ENDMETHOD.

  METHOD get_instance.
    IF instance IS NOT BOUND.
      instance = NEW #(  ).
    ENDIF.

    result = instance.
  ENDMETHOD.

  METHOD zmke_if_henry_jekyll~switch_personality.
    result = instance.
  ENDMETHOD.

  METHOD zmke_if_edward_hyde~switch_personality.
    result = instance.
  ENDMETHOD.

ENDCLASS.
