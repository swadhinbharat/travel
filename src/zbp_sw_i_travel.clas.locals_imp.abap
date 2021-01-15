CLASS lsc_zsw_i_travel DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_zsw_i_travel IMPLEMENTATION.

    METHOD save_modified.
    return.

*            APPEND VALUE #( %key = ls_entity-%key
*                        %msg      = get_factory( )->get_msg_helper( )->conv_bus0msg1_to_behvmsg( ls_message )
**                        %state_area = 'DI_MESSAGE'
*                        %element-insuranceclaimforedit = if_abap_behv=>mk-on )
*                        TO reported-subclaim.
  ENDMETHOD.

ENDCLASS.

CLASS
 lhc_Travel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Travel RESULT result.

ENDCLASS.

CLASS lhc_Travel IMPLEMENTATION.

  METHOD get_instance_features.


  ENDMETHOD.

ENDCLASS.
