report 50200 "Update Amount"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Production BOM Line"; "Production BOM Line")
        {
            DataItemTableView = SORTING("Production BOM No.", "Version Code", "Line No.");

            trigger OnAfterGetRecord()
            begin
                if recItem.Get("Production BOM Line"."No.") then begin
                QtyPerUOM := "Production BOM Line".GetQtyPerUnitOfMeasure();
                "Unit Cost" := recItem."Unit Cost";
                Amount := Quantity * recItem."Unit Cost" * QtyPerUOM;
                Modify(false);
                end;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        recItem: Record Item;

        QtyPerUOM: Decimal;
}

