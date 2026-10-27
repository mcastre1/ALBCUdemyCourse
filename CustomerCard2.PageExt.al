pageextension 50104 CustCard extends "Customer Card"
{
    actions
    {
        addfirst(processing)
        {
            action(GetAmountInfo)
            {
                Caption = 'Get Sales Order Amount Info';
                ApplicationArea = All;
                Image = NewSum;

                trigger onAction()
                begin
                    Rec.GetSalesOrderAmount();
                end;
            }
        }
    }
}