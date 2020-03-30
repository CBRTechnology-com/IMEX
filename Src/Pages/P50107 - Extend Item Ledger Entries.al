pageextension 50107 ExtendItemLedgerEntries extends "Item Ledger Entries"
{
    layout
    {
        addafter("Item No.")
        {
            field("Source No."; "Source No.")
            {
                ApplicationArea = All;
                Caption = 'Source No.';
            }
            field("Source Name"; "Source Name")
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
        GetSourceName();
    end;
}