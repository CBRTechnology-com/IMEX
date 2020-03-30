tableextension 50002 ExtendProductionOrder extends "Production Order"
{
    fields
    {
        field(50001; "Sales Order No."; Code[20])
        {
            Caption = 'Sales Order No.';
            TableRelation = "Sales Header"."No.";
            ValidateTableRelation = false;

        }
        field(50002; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
        }
    }
    keys
    {
        key(Keys1; "Sales Order No.")
        {

        }
    }


    var
        myInt: Integer;
        recSalesLine: Record "Sales Line";
        recProdOrder: Record "Production Order";
        recSalesHeader: Record "Sales Header";
        recResvEntry: Record "Reservation Entry";
        ProdOrderLine: Record "Prod. Order Line";
        SalesOrderPage: Page "Sales Order";

    procedure UpdateSalesOrder()
    begin


        recResvEntry.reset;
        ProdOrderLine.Reset();
        ProdOrderLine.SetRange(ProdOrderLine.Status, ProdOrderLine.Status::Released);
        ProdOrderLine.SetRange("Prod. Order No.", "No.");
        IF ProdOrderLine.FindFirst() then;

        recResvEntry.SetRange("Source Subtype", recResvEntry."Source Subtype"::"1");
        recResvEntry.SetRange("Item No.", "Source No.");
        recResvEntry.SetRange("Expected Receipt Date", ProdOrderLine."Due Date");
        If recResvEntry.Findfirst() then begin

            if recSalesHeader.Get(recSalesHeader."Document Type"::Order, recResvEntry."Source ID") then begin
                "Sales Order No." := recSalesHeader."No.";
                "Customer Name" := recSalesHeader."Sell-to Customer Name";
            end;
        end;
    end;


}