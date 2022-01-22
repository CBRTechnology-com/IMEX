pageextension 50108 ExtendItemChargeAssignPurch extends "Item Charge Assignment (Purch)"
{
    layout
    {
        addafter("Applies-to Doc. No.")
        {
            field("External Document No."; Rec."External Document No.")
            {
                ApplicationArea = All;
                Caption = 'External Doc No.';

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
        Rec.FindExternalDocNo();
    end;
}