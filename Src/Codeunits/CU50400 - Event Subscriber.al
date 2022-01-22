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

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnSubstituteReport(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"Capacity Task List" then
            NewReportId := Report::"Capacity Task List CBR";
    end;

    procedure GetNotesForRecordRef(MyRec: RecordRef): Text[100]
    var
        RecordLink: Record "Record Link";
        TypeHelper: Codeunit "Type Helper";
        Result: BigText;
        Stream: InStream;
    begin
        Clear(RecordLink);

        RecordLink.SetRange("Record ID", MyRec.RecordId);
        RecordLink.SetRange(Type, RecordLink.Type::Note);
        if RecordLink.FindSet() then
            repeat
                RecordLink.CalcFields(Note);
                IF RecordLink.Note.HASVALUE THEN BEGIN
                    Clear(Result);
                    RecordLink.Note.CREATEINSTREAM(Stream);
                    Result.Read(Stream);
                    Result.GETSUBTEXT(Result, 2);
                end;
            until RecordLink.Next() = 0;
        exit(CopyStr(Format(Result), 1, 100));
    end;

}