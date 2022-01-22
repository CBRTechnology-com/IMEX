pageextension 50106 ExtendReleasedProdOrders extends "Released Production Orders"
{
    layout
    {
        addafter(Quantity)
        {
            field("Finished Quantity"; FinishedQuantity)
            {
                ApplicationArea = All;
                DecimalPlaces = 0 : 5;
                MinValue = 0;
            }
        }
        addafter("Assigned User ID")
        {
            field("Sales Order No."; Rec."Sales Order No.")
            {
                ApplicationArea = All;
                Caption = 'Sales Order No.';

            }
            field("Customer Name"; Rec."Customer Name")
            {
                ApplicationArea = All;
                Caption = 'Customer Name';
            }
        }
    }

    actions
    {
        addafter(Statistics)
        {
            action("View Sales Order")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    SH: Record "Sales Header";
                begin
                    if sh.get(sh."Document Type"::Order, Rec."Sales Order No.") then
                        Page.RunModal(Page::"Sales Order", SH);
                end;
            }
        }
    }

    var
        myInt: Integer;
        ProdOrderLine: Record "Prod. Order Line";
        FinishedQuantity: Decimal;

    trigger OnAfterGetRecord()
    begin
        Rec.UpdateSalesOrder();
        UpdateFinishedQuantity();
        CurrPage.Update(false);
    end;

    procedure UpdateFinishedQuantity()
    var
    begin
        ProdOrderLine.Reset();
        ProdOrderLine.SetRange(Status, ProdOrderLine.Status::Released);
        ProdOrderLine.SetRange("Prod. Order No.", Rec."No.");
        if ProdOrderLine.FindFirst() then
            FinishedQuantity := ProdOrderLine."Finished Quantity";
    end;



}