query 50001 "Item Value Entries CBR"
{
    Caption = 'Item Value Entries CBR';

    elements
    {
        dataitem(Value_Entry; "Value Entry")
        {
            column(Entry_No; "Entry No.")
            {
            }
            column(Item_No; "Item No.")
            {
            }
            column(Item_Ledger_Entry_No; "Item Ledger Entry No.")
            {
            }
            column(Item_Ledger_Entry_Type; "Item Ledger Entry Type")
            {
            }
            column(Item_Ledger_Entry_Quantity; "Item Ledger Entry Quantity")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Valuation_Date; "Valuation Date")
            {
            }
            column(Document_Date; "Document Date")
            {
            }
            column(Document_Type; "Document Type")
            {
            }
            column(Document_No; "Document No.")
            {
            }
            column(Source_No_; "Source No.")
            {

            }
            column(Gen_Bus_Posting_Group; "Gen. Bus. Posting Group")
            {
            }
            column(Gen_Prod_Posting_Group; "Gen. Prod. Posting Group")
            {
            }
            column(Location_Code; "Location Code")
            {
            }
            column(Source_Code; "Source Code")
            {
            }
            column(Reason_Code; "Reason Code")
            {
            }
            column(Job_No; "Job No.")
            {
            }
            column(Job_Task_No; "Job Task No.")
            {
            }
            column(Job_Ledger_Entry_No; "Job Ledger Entry No.")
            {
            }
            column(Inventory_Posting_Group; "Inventory Posting Group")
            {

            }
            column(Source_Posting_Group; "Source Posting Group")
            {

            }
            column(Item_Ledger_Entry_No_; "Item Ledger Entry No.")
            {

            }
            column(Valued_Quantity; "Valued Quantity")
            {
            }

            column(Invoiced_Quantity; "Invoiced Quantity")
            {
            }
            column(Cost_per_Unit; "Cost per Unit")
            {
            }
            column(Cost_Posted_to_G_L; "Cost Posted to G/L")
            {
            }
            column(Sales_Amount__Actual_; "Sales Amount (Actual)")
            {

            }
            column(Salespers__Purch__Code; "Salespers./Purch. Code")
            {

            }
            column(Discount_Amount; "Discount Amount")
            {

            }
            column(User_ID; "User ID")
            {

            }
            column(Applies_to_Entry; "Applies-to Entry")
            {

            }
            column(Global_Dimension_1_Code; "Global Dimension 1 Code")
            {

            }
            column(Global_Dimension_2_Code; "Global Dimension 2 Code")
            {

            }
            column(Source_Type; "Source Type")
            {

            }
            column(Cost_Amount__Actual_; "Cost Amount (Actual)")
            {

            }
            column(Drop_Shipment; "Drop Shipment")
            { }
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(Gen__Bus__Posting_Group; "Gen. Bus. Posting Group")
            {

            }
            column(Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column(Cost_Amount__Actual___ACY_; "Cost Amount (Actual) (ACY)")
            {

            }
            column(Cost_Posted_to_G_L__ACY_; "Cost Posted to G/L (ACY)")
            {

            }
            column(Cost_per_Unit__ACY_; "Cost per Unit (ACY)")
            {

            }
            column(Document_Line_No_; "Document Line No.")
            {

            }
            column(Order_Type; "Order Type")
            {

            }
            column(Order_No_; "Order No.")
            {

            }
            column(Order_Line_No_; "Order Line No.")
            {

            }
            column(Expected_Cost; "Expected Cost")
            {
            }
            column(Item_Charge_No_; "Item Charge No.")
            {

            }
            column(Valued_By_Average_Cost; "Valued By Average Cost")
            {

            }
            column(Partial_Revaluation; "Partial Revaluation")
            {

            }
            column(Inventoriable; Inventoriable)
            {

            }
            column(Entry_Type; "Entry Type")
            {

            }
            column(Variance_Type; "Variance Type")
            {

            }
            column(Cost_Amount_Actual; "Cost Amount (Actual)")
            {
            }
            column(Cost_Amount_Expected; "Cost Amount (Expected)")
            {
            }
            column(Cost_Amount_Non_Invtbl; "Cost Amount (Non-Invtbl.)")
            {
            }
            column(Sales_Amount_Actual; "Sales Amount (Actual)")
            {
            }
            column(Sales_Amount_Expected; "Sales Amount (Expected)")
            {
            }
            column(Purchase_Amount_Actual; "Purchase Amount (Actual)")
            {
            }
            column(Purchase_Amount_Expected; "Purchase Amount (Expected)")
            {
            }
            column(Cost_Amount__Non_Invtbl__; "Cost Amount (Non-Invtbl.)")
            {

            }
            column(Cost_Amount__Non_Invtbl___ACY_; "Cost Amount (Non-Invtbl.)(ACY)")
            {

            }
            column(Expected_Cost_Posted_to_G_L; "Expected Cost Posted to G/L")
            {

            }
            column(Exp__Cost_Posted_to_G_L__ACY_; "Exp. Cost Posted to G/L (ACY)")
            {

            }
            column(Dimension_Set_ID; "Dimension Set ID")
            {
            }
            column(Job_No_; "Job No.")
            {

            }
            column(Job_Task_No_; "Job Task No.")
            {

            }
            column(Job_Ledger_Entry_No_; "Job Ledger Entry No.")
            {

            }
            column(Variant_Code; "Variant Code")
            {

            }
            column(Adjustment; Adjustment)
            {

            }
            column(Average_Cost_Exception; "Average Cost Exception")
            {

            }
            column(Capacity_Ledger_Entry_No_; "Capacity Ledger Entry No.")
            {

            }
            column(Type; Type)
            {

            }
            column(No_; "No.")
            {

            }
            column(Return_Reason_Code; "Return Reason Code")
            {

            }
            dataitem(Item; Item)
            {
                DataItemLink = "No." = Value_Entry."Item No.";
                column(Item_Description; Description)
                {
                }
            }
        }
    }
}
