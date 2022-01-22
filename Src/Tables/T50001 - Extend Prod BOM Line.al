tableextension 50001 ExtendProdBOMLine extends "Production BOM Line"
{
    fields
    {
        field(50000; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
        }
        field(50001; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        modify("Quantity per")
        {
            trigger OnAfterValidate()
            var
                ItemRec: Record Item;
            begin
                Clear(AmountWithScrap);
                if "Unit Cost" <> 0 then begin
                    QtyPerUOM := GetQtyPerUnitOfMeasure();
                    if "Scrap %" = 0 then begin
                        Amount := Quantity * "Unit Cost" * QtyPerUOM
                    end else begin
                        AmountWithScrap := ((Quantity * "Unit Cost") * "Scrap %") / 100;
                        Amount := (Quantity * "Unit Cost" * QtyPerUOM) + AmountWithScrap;
                    end;
                end else begin
                    ItemRec.get("No.");
                    QtyPerUOM := GetQtyPerUnitOfMeasure();
                    if "Scrap %" = 0 then begin
                        Amount := Quantity * ItemRec."Unit Cost" * QtyPerUOM
                    end else begin
                        AmountWithScrap := ((Quantity * ItemRec."Unit Cost") * "Scrap %") / 100;
                        Amount := (Quantity * ItemRec."Unit Cost" * QtyPerUOM) + AmountWithScrap;
                    end;
                end;
            end;
        }
    }

    var
        myInt: Integer;
        QtyPerUOM: Decimal;
        AmountWithScrap: Decimal;
}