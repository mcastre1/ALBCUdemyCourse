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
}