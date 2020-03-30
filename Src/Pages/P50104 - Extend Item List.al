pageextension 50104 ExtendItemList extends "Item List"
{
  layout
  {
    addbefore("Substitutes Exist")
    {
      field("Qty. on Sales Order";"Qty. on Sales Order")
      {
        ApplicationArea = All;
      }
      field("Qty. on Purch. Order";"Qty. on Purch. Order")
      {
        ApplicationArea = All;
      }
      field("Qty. on Prod. Order";"Qty. on Prod. Order")
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
