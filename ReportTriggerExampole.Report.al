report 50100 ReportTriggerExample
{
    Caption = 'Report Trigger Example';
    ProcessingOnly = true;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "No.";

            dataitem(SalesLines; "Sales Line")
            {
                DataItemLinkReference = SalesHeader;
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");

                trigger OnPreDataItem()
                begin
                    SetRange(Type, SalesLines.Type::Item);
                end;

                trigger OnAfterGetRecord()
                begin
                    SalesLinesCount := SalesLinesCount + 1;
                end;
            }

            trigger OnPreDataItem()
            begin
                SalesHeader.SetRange(Status, SalesHeader.Status::Open);
            end;

            trigger OnAfterGetRecord()
            begin
                SalesHeaderCount := SalesHeaderCount + 1;
            end;
        }
    }

    trigger OnPreReport()
    begin
        Message('This report will count the sales headers and corresponding sales lines.');
    end;

    trigger OnPostReport()
    var
        CountLbl: Label 'The report counted %1 headers and %2 lines.', Comment = '%1=SalesHeaderCount, %2=SalesLinesCount';
    begin
        Message(CountLbl, SalesHeaderCount, SalesLinesCount)
    end;

    var
        SalesHeaderCount: Integer;
        SalesLinesCount: Integer;
}