tableextension 50004 ExtendItemChargeAssignPurch extends "Item Charge Assignment (Purch)"
{
    fields
    {
        field(50000; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            Editable = false;
        }
    }

    var
        myInt: Integer;
        recPurchaseHeader: Record "Purchase Header";

    procedure FindExternalDocNo()
    begin
        IF recPurchaseHeader.GET("Document Type" = Rec."Document Type"::Order, "Document No.") THEN
            "External Document No." := recPurchaseHeader."Vendor Invoice No.";
    end;


}