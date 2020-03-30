codeunit 50400 ExtendEvents
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, database::"Production BOM Line", 'OnValidateNoOnAfterAssignItemFields', '', true, true)]
    local procedure InsertProdBOMLine(VAR ProductionBOMLine: Record "Production BOM Line"; Item: Record Item; VAR xProductionBOMLine: Record "Production BOM Line"; CallingFieldNo: Integer)
    begin
        ProductionBOMLine."Unit Cost" := Item."Unit Cost";
    end;

}