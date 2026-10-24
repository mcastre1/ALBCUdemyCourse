tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(50100; "Car Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Car.Code;

        }
    }

}