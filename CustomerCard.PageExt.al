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

                trigger OnValidate()
                begin
                    Rec.CalcFields("Car Description")
                end;
            }
            field("Car Description"; Rec."Car Description")
            {
                ToolTip = 'Description of the car associated with the customer';
            }
        }
    }
}