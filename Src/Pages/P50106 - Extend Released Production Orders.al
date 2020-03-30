pageextension 50106 ExtendReleasedProdOrders extends "Released Production Orders"
{
    layout
    {
        addafter("Assigned User ID")
        {
            field("Sales Order No."; "Sales Order No.")
            {
                ApplicationArea = All;
                Caption = 'Sales Order No.';

            }
            field("Customer Name"; "Customer Name")
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
                    if sh.get(sh."Document Type"::Order, "Sales Order No.") then
                        Page.RunModal(Page::"Sales Order", SH);
                end;
            }
        }
    }

    var
        myInt: Integer;



    trigger OnAfterGetRecord()
    begin
        UpdateSalesOrder();
        CurrPage.Update(false);
    end;



}