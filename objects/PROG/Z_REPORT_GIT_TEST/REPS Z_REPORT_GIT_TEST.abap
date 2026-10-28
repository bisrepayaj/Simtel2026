*&---------------------------------------------------------------------*
*& Report Z_REPORT_GIT_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_report_git_test.

CLASS lct_hello DEFINITION CREATE PRIVATE FOR TESTING RISK LEVEL HARMLESS.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS test_hello_world FOR TESTING.

ENDCLASS.

CLASS lct_hello IMPLEMENTATION.

  METHOD test_hello_world.
    cl_abap_unit_assert=>assert_equals(
      act = 'Hello World'
      exp = 'Hello World'
      msg = `The text does not match!` ).
  ENDMETHOD.

ENDCLASS.



START-OF-SELECTION.
  WRITE: 'Hello World'.