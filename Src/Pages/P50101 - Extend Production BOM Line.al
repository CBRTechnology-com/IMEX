pageextension 50101 ExtendProdBOMLine extends "Production BOM Lines"
{
    layout
    {
        addafter("Scrap %")
        {
            field("Unit Cost"; "Unit Cost")
            {
                ApplicationArea = all;
                Caption = 'Unit Cost';
            }
            field(Amount; Amount)
            {
                ApplicationArea = all;
                Caption = 'Amount';
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
        recItem: Record Item;
        recProdLine: Record "Production BOM Line";
        PrdoBOMHeaderPage: Page "Production BOM";
        QtyPerUOM: Decimal;




    trigger OnAfterGetRecord()

    begin

        if Type = Type::Item then begin

            if recItem.get("No.") and (Amount = 0) and ("Unit Cost" = 0) then begin
                QtyPerUOM := GetQtyPerUnitOfMeasure();
                "Unit Cost" := recItem."Unit Cost";
                Amount := Quantity * recItem."Unit Cost" * QtyPerUOM;
                Modify(false);
                PrdoBOMHeaderPage.PageRefresh();
            end;
        end;
    end;


}