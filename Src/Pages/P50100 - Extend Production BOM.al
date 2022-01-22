
pageextension 50100 ExtendProductionBOM extends "Production BOM"
{

    layout
    {
        addafter("Search Name")
        {
            field("Estimated Cost"; Rec."Estimated Cost")
            {
                ApplicationArea = all;
                Caption = 'Estimated Cost';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }


    var
        myInt: Integer;

    Procedure PageRefresh()
    begin
        currPage.Update(false);
    end;


}