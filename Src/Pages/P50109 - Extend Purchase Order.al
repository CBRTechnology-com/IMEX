pageextension 50109 ExtendPurchaseOrder extends "Purchase Order"
{
    layout
    {
        modify("Vendor Order No.")
        {
            ApplicationArea = All;
            Caption = 'Vendor Confirmation';
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}