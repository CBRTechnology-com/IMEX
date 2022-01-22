pageextension 50104 ExtendItemList extends "Item List"
{
  layout
  {
    addbefore("Substitutes Exist")
    {
      field("Qty. on Sales Order";Rec."Qty. on Sales Order")
      {
        ApplicationArea = All;
      }
      field("Qty. on Purch. Order";Rec."Qty. on Purch. Order")
      {
        ApplicationArea = All;
      }
      field("Qty. on Prod. Order";Rec."Qty. on Prod. Order")
      {
        ApplicationArea = all;
      }
    }
  }
  actions
  {
  }
  var myInt: Integer;
}
