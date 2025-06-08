CLASS ysad_cl_fizz_buzz1 DEFINITION
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

CLASS ysad_cl_fizz_buzz1 IMPLEMENTATION.
  METHOD convert_number.

    result = condense( CONV string( 1 ) ).

  ENDMETHOD.
ENDCLASS.
