pageextension 50103 ExtendProductionBOMList extends "Production BOM List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("Compare List")
        {
            action("Update Data")
            {
                ApplicationArea = all;
                Image = Document;
                Promoted = true;
                PromotedCategory = Report;
                trigger OnAction()
                begin
                    Report.RunModal(Report::"Update Amount");
                end;
            }

        }
    }

    var
        myInt: Integer;
}