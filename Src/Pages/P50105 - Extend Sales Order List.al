pageextension 50105 ExtendSalesOrderList extends "Sales Order List"
{
    layout
    {
        addafter("Assigned User ID")
        {
            field(ProdOrderNo; ProdOrderNo)
            {
                ApplicationArea = all;
                Caption = 'Production Order No.';
            }
            field(ProdDueDate; ProdDueDate)
            {
                ApplicationArea = all;
                Caption = 'Due Date';
            }
        }
    }
    actions
    {
    }
    var
        myInt: Integer;
        recSalesLine: Record "Sales Line";
        recProductionOrder: Record "Production Order";

        recResvEntry: Record "Reservation Entry";
        ProdDueDate: Date;
        ProdOrderNo: Code[20];

    trigger OnAfterGetRecord()
    begin
        recSalesLine.Reset();
        Clear(ProdDueDate);
        Clear(ProdOrderNo);
        recSalesLine.SetRange("Document Type", Rec."Document Type"::Order);
        recSalesLine.SetRange("Document No.", Rec."No.");
        recSalesLine.SetRange(Type, recSalesLine.Type::Item);
        IF recSalesLine.FindFirst() then;
        recResvEntry.Reset();
        recResvEntry.SetRange("Source Subtype", recResvEntry."Source Subtype"::"3");
        recResvEntry.SetRange("Item No.", recSalesLine."No.");
        IF recResvEntry.FindFirst() then begin
            if recProductionOrder.Get(recProductionOrder.Status::Released, recResvEntry."Source ID") then begin
                ProdOrderNo := recProductionOrder."No.";
                ProdDueDate := recProductionOrder."Due Date";
            end;
        end;
    end;
}
