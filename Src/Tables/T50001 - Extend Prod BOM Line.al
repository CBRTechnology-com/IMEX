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
                if "Unit Cost" <> 0 then begin
                    QtyPerUOM := GetQtyPerUnitOfMeasure();
                    Amount := Quantity * "Unit Cost" * QtyPerUOM
                end else begin
                    ItemRec.get("No.");
                    QtyPerUOM := GetQtyPerUnitOfMeasure();
                    Amount := Quantity * ItemRec."Unit Cost" * QtyPerUOM;
                end

            end;
        }
    }

    var
        myInt: Integer;
        QtyPerUOM: Decimal;
}