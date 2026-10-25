page 50102 "Student Registration List"
{
    Caption = 'Student Registration List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Student Registration";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Unique identifier for the student.';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full name of the student.';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Date when the student registered for the course.';
                }
                field(Completed; Rec.Completed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicates whether the student has completed the course.';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(MarkAsCompleted)
            {
                Caption = 'Mark as Completed';
                ApplicationArea = All;
                ToolTip = 'Mark the selected registration as completed.';

                trigger OnAction();
                begin
                    Rec.Completed := true;
                    Rec."Registration Date" := WorkDate();
                    Rec.Modify();
                end;
            }
        }
    }
}