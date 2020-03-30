tableextension 50000 ExtendProdBOMHeader extends "Production BOM Header"
{
    fields
    {
        field(50000; "Estimated Cost"; Decimal)
        {
            Caption = 'Estimated Cost';
            FieldClass = FlowField;
            CalcFormula = Sum ("Production BOM Line".Amount WHERE("Production BOM No." = FIELD("No.")));
            Editable = false;
        }
    }

    var
        myInt: Integer;



}