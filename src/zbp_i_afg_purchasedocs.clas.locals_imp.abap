CLASS lhc_ZI_AFG_PurchaseItems DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS calculateTotalPrice FOR DETERMINE ON MODIFY
      IMPORTING keys FOR PurchaseItems~calculateTotalPrice.

ENDCLASS.

CLASS lhc_ZI_AFG_PurchaseItems IMPLEMENTATION.

  METHOD calculateTotalPrice.
    DATA(lv_test) = abap_true.

    DATA: lt_purchasedoc TYPE TABLE OF zpurchasedocumentdtel.

    lt_purchasedoc = VALUE #( FOR GROUPS <lfs_group> OF ls_purchasedoc IN keys
    GROUP BY  ls_purchasedoc-PurchaseDocument WITHOUT MEMBERS ( <lfs_group>  ) ).
  ENDMETHOD.

ENDCLASS.
