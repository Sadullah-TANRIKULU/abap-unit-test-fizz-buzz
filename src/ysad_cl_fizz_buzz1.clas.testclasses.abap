*"* use this source file for your ABAP unit test classes
CLASS ltcl_fizzbuzz DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA cut TYPE REF TO ysad_cl_fizz_buzz1.
    METHODS:
      for_1_return_1 FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltcl_fizzbuzz IMPLEMENTATION.

  METHOD for_1_return_1.
    cut = NEW #( ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = |1|
        exp                  = cut->convert_number( 1 )
*        ignore_hash_sequence = abap_false
*        tol                  =
*        msg                  =
*        level                = if_abap_unit_constant=>severity-medium
*        quit                 = if_abap_unit_constant=>quit-test
*      RECEIVING
*        assertion_failed     =
    ).
  ENDMETHOD.

ENDCLASS.
