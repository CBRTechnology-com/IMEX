pageextension 50111 ExtendPostedSalesInvoices extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Location Code")
        {
            field(Notes; ExtendEvents.GetNotesForRecordRef(MyRecordRef))
            {
                ApplicationArea = All;
                Width = 100;
                Caption = 'Notes';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
        Notes: Text;
        MyRecordRef: RecordRef;
        ExtendEvents: Codeunit ExtendEvents;

    trigger OnAfterGetRecord()
    var
    begin
        MyRecordRef.GetTable(Rec);
    end;
}