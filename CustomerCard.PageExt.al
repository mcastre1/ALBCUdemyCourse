pageextension 50101 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Car Code"; Rec."Car Code")
            {
                ApplicationArea = All;
                ToolTip = 'Code of the car associated with the customer';
            }
        }
    }
}