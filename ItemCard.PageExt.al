pageextension 50103 "Item Card Ext" extends "Item Card"
{
    layout
    {

    }

    actions
    {
        addafter(CalculateCountingPeriod)
        {
            action(NewAction)
            {
                ApplicationArea = All;
                Caption = 'My New Action';
                Image = NewProperties;

                trigger OnAction()
                begin
                    Message('Hello from the custom action')
                end;
            }
        }
        addfirst(navigation)
        {
            action(ItemSalesLines)
            {
                ApplicationArea = All;
                Caption = 'Item Sales Lines';
                Image = AllLines;
                RunObject = Page "Sales Lines";
                RunPageLink = "No." = field("No."), Type = const(Item);
            }

        }
        addfirst(Category_Process)
        {
            actionref(NewAction_Promoted; NewAction)
            {

            }
        }
    }
}