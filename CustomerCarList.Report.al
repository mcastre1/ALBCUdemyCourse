report 50101 "Customer Car List"
{
    Caption = 'Customer Car List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    RDLCLayout = 'CustomerCardList.rdlc';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(Customer; Customer)
        {
            CalcFields = "Car Description";
            column(No; Customer."No.")
            {

            }
            column(Name; Customer.Name)
            {

            }
            column(CarCode; Customer."Car Code")
            {

            }
            column(Car_Description; Customer."Car Description")
            {

            }

            // Rather than using the Calfields attribute inside dataitem, 
            // we can create a trigger to recalculate the customer fields.
            // trigger OnAfterGetRecord()
            // begin
            //     Customer.CalcFields("Car Description");
            // end;
        }
    }
}