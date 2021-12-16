codeunit 50000 ExtendEvents
{
    trigger OnRun()
    begin

    end;



    procedure UpdateGLDimension(VAR GLEntry: Record "G/L Entry")
    var
        GLSetup: Record "General Ledger Setup";
        DimSetEntry: Record "Dimension Set Entry";
    begin
        GLSetup.Get;

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnSubstituteReport(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"Detail Trial Balance" then
            NewReportId := Report::"CBR Detail Trial Balance";
    end;

}