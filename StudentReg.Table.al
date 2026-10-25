table 50102 "Student Registration"
{
    fields
    {
        field(1; "Student No."; Code[20])
        {
            NotBlank = true;
        }
        field(2; "Student Name"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Completed; Boolean)
        {
            DataClassification = ToBeClassified;
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