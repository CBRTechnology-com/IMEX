pageextension 50110 ExtendPurchaseOrderList extends "Purchase Order List"
{
    layout
    {
        addafter("Document Date")
        {
            field("Vendor Order No."; Rec."Vendor Order No.")
            {
                ApplicationArea = All;
                Caption = 'Vendor Confirmation';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}