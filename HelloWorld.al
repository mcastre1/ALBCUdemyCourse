// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.Project1;

using Microsoft.Sales.Customer;
using Microsoft.Inventory.Item;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        Item: Record Item;
    begin
        // Item.SetRange("Base Unit of Measure", 'CAN');
        // Item.SetFilter(Description, '%1|%2', 'Paint, black', 'Paint, white');

        // if Item.FindSet() then
        //     repeat
        //         Message(Item.Description)
        //     until Item.Next() = 0;

    end;
}