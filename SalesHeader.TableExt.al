tableextension 50101 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(50100; "No of SO Lines"; Integer)
        {
            Caption = 'No of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }
        field(50101; "Sum Total of SO Lines"; Decimal)
        {
            Caption = 'Sum Total of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."Amount Including VAT" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }

    }

}