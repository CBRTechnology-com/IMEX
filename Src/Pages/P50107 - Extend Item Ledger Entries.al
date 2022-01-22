pageextension 50107 ExtendItemLedgerEntries extends "Item Ledger Entries"
{
    layout
    {
        addafter("Item No.")
        {
            field("Source No."; Rec."Source No.")
            {
                ApplicationArea = All;
                Caption = 'Source No.';
            }
            field("Source Name"; Rec."Source Name")
            {
                ApplicationArea = All;
                Caption = 'Source Name';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    trigger OnAfterGetRecord()
    begin
        Rec.GetSourceName();
    end;
}