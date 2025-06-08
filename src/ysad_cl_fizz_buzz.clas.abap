CLASS ysad_cl_fizz_buzz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ts_converted_numbers,
             number           TYPE int1,
             converted_number TYPE string,
           END OF ts_converted_numbers,
           tt_converted_numbers TYPE STANDARD TABLE OF ts_converted_numbers WITH DEFAULT KEY.
    METHODS convert IMPORTING number        TYPE int1
                    RETURNING VALUE(result) TYPE tt_converted_numbers.

  PRIVATE SECTION.
    CONSTANTS fizz TYPE string VALUE 'Fizz' ##NO_TEXT.
    CONSTANTS buzz TYPE string VALUE 'Buzz' ##NO_TEXT.

    METHODS:
      convert_number       IMPORTING number        TYPE int1
                           RETURNING VALUE(result) TYPE string,
      is_nr_dividable_by_3 IMPORTING number        TYPE int1
                           RETURNING VALUE(result) TYPE abap_bool,
      is_nr_dividable_by_5 IMPORTING number        TYPE int1
                           RETURNING VALUE(result) TYPE abap_bool.
ENDCLASS.

CLASS ysad_cl_fizz_buzz IMPLEMENTATION.
  METHOD convert.
    DO number TIMES.
      APPEND VALUE #( number = sy-index converted_number = convert_number( CONV #( sy-index ) ) ) TO result.
    ENDDO.
  ENDMETHOD.
  METHOD convert_number.
    result = COND #( WHEN is_nr_dividable_by_3( number ) AND is_nr_dividable_by_5( number ) THEN |{ fizz }{ buzz }|
                     WHEN is_nr_dividable_by_3( number )                                    THEN |{ fizz }|
                     WHEN is_nr_dividable_by_5( number )                                    THEN |{ buzz }|
                     ELSE condense( CONV string( number ) ) ).
  ENDMETHOD.
  METHOD is_nr_dividable_by_3.
    result = xsdbool( number MOD 3 = 0 ).
  ENDMETHOD.
  METHOD is_nr_dividable_by_5.
    result = xsdbool( number MOD 5 = 0 ).
  ENDMETHOD.


ENDCLASS.
