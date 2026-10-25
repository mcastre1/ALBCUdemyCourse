pageextension 50102 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("Total of SO Lines"; Rec."Sum Total of SO Lines")
            {
                ApplicationArea = All;
            }
            field("Sales Line Exist"; Rec."Sales Line Exists")
            {
                ApplicationArea = All;
            }
            field("Contact Email"; Rec."Contact Email")
            {
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.CalcFields("No of SO Lines");
        Message(Rec.FieldName("No of SO Lines") + ' ' + Format(Rec."No of SO Lines"));
    end;
}