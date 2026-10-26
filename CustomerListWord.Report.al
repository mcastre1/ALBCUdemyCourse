report 50102 CustomerListWord
{
    Caption = 'CustomerListWord';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'CustomerListWord.docx';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerName; Customer.Name)
            {

            }
            column(CustomerLocation; Customer."Location Code")
            {

            }
            column(CustomerBalance; Customer.Balance)
            {

            }

        }
    }
}