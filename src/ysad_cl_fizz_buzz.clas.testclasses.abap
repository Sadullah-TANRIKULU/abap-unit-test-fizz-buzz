*"* use this source file for your ABAP unit test classes
CLASS ltcl_fizz_buzz DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA cut TYPE REF TO ysad_cl_fizz_buzz. "production class is here
    METHODS:
      for_1_return_1 FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltcl_fizz_buzz IMPLEMENTATION.

  METHOD for_1_return_1.
    cut = NEW #( ).
    cl_abap_unit_assert=>assert_equals( exp = |1|
                                        act = cut->convert_number( 1 ) ).
  ENDMETHOD.

ENDCLASS.
