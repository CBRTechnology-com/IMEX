pageextension 50101 ExtendProdBOMLine extends "Production BOM Lines"
{
    layout
    {
        addafter("Scrap %")
        {
            field("Unit Cost"; Rec."Unit Cost")
            {
                ApplicationArea = all;
                Caption = 'Unit Cost';
            }
            field(Amount; Rec.Amount)
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
    var
        AmountWithScrap: Decimal;
    begin

        if Rec.Type = Rec.Type::Item then begin

            if recItem.get(Rec."No.") and (Rec.Amount = 0) and (Rec."Unit Cost" = 0) then begin
                QtyPerUOM := Rec.GetQtyPerUnitOfMeasure();
                Rec."Unit Cost" := recItem."Unit Cost";
                if Rec."Scrap %" = 0 then begin
                    Rec.Amount := Rec.Quantity * Rec."Unit Cost" * QtyPerUOM
                end else begin
                    AmountWithScrap := ((Rec.Quantity * Rec."Unit Cost") * Rec."Scrap %") / 100;
                    Rec.Amount := (Rec.Quantity * Rec."Unit Cost" * QtyPerUOM) + AmountWithScrap;
                end;
                Rec.Modify(false);
                PrdoBOMHeaderPage.PageRefresh();
            end;
        end;
    end;


}