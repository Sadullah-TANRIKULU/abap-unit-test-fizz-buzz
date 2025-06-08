CLASS ysad_cl_fizz_buzz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS convert_number
      IMPORTING
        number        TYPE int1
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS ysad_cl_fizz_buzz IMPLEMENTATION.
  METHOD convert_number.
    result = condense(
               val  = CONV string( 1 )
             ).
  ENDMETHOD.
ENDCLASS.
