pageextension 50102 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("No of SO Lines"; Rec."No of SO Lines")
            {
                ApplicationArea = All;
            }
            field("Total of SO Lines"; Rec."Sum Total of SO Lines")
            {
                ApplicationArea = All;
            }
        }
    }
}