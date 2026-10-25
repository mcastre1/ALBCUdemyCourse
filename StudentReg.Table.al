table 50102 "Student Registration"
{
    fields
    {
        field(1; "Student No."; Code[20])
        {
            NotBlank = true;
            Caption = 'Student number';
        }
        field(2; "Student Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student name';

        }
        field(3; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date when studen was registered';
        }
        field(4; Completed; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Has this been completed?';
        }
    }

    keys
    {
        key(PK; "Student No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}