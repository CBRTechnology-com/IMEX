query 50000 "Item Register Value"
{
    Caption = 'Item Register Value';

    elements
    {
        dataitem(Item_Ledger_Entry; "Item Ledger Entry")
        {
            column(Entry_No; "Entry No.")
            {
            }
            column(Entry_Type; "Entry Type")
            {
            }
            column(Item_No; "Item No.")
            {
            }
            column(Cross_Reference_No; "Cross-Reference No.")
            {
            }
            column(Lot_No; "Lot No.")
            {
            }
            column(Source_No_; "Source No.")
            {

            }
            column(Source_Name; "Source Name")
            {

            }
            column(Item_Category_Code; "Item Category Code")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Expiration_Date; "Expiration Date")
            {
            }
            column(Warranty_Date; "Warranty Date")
            {
            }
            column(Document_Date; "Document Date")
            {
            }
            column(Document_No; "Document No.")
            {
            }
            column(Document_Type; "Document Type")
            {
            }
            column(Location_Code; "Location Code")
            {
            }
            column(Job_No; "Job No.")
            {
            }
            column(Job_Task_No; "Job Task No.")
            {
            }
            column(Open; Open)
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(Unit_of_Measure_Code; "Unit of Measure Code")
            {
            }
            column(Qty_per_Unit_of_Measure; "Qty. per Unit of Measure")
            {
            }
            column(Remaining_Quantity; "Remaining Quantity")
            {
            }
            column(Invoiced_Quantity; "Invoiced Quantity")
            {
            }
            column(Cost_Amount_Expected; "Cost Amount (Expected)")
            {
            }
            column(Cost_Amount_Actual; "Cost Amount (Actual)")
            {
            }
            column(Cost_Amount_Non_Invtbl; "Cost Amount (Non-Invtbl.)")
            {
            }
            column(Purchase_Amount_Expected; "Purchase Amount (Expected)")
            {
            }
            column(Purchase_Amount_Actual; "Purchase Amount (Actual)")
            {
            }
            column(Sales_Amount_Expected; "Sales Amount (Expected)")
            {
            }
            column(Sales_Amount_Actual; "Sales Amount (Actual)")
            {
            }
            column(Dimension_Set_ID; "Dimension Set ID")
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
            column(Positive; Positive)
            {

            }
            column(Shpt__Method_Code; "Shpt. Method Code")
            {

            }
            column(Source_Type; "Source Type")
            {

            }
            column(Drop_Shipment; "Drop Shipment")
            {

            }
            column(Transaction_Type; "Transaction Type")
            {

            }
            column(Transport_Method; "Transport Method")
            {

            }
            column(Country_Region_Code; "Country/Region Code")
            {

            }
            column(Entry_Exit_Point; "Entry/Exit Point")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column("Area"; "Area")
            {

            }
            column(Transaction_Specification; "Transaction Specification")
            {

            }
            column(No__Series; "No. Series")
            {

            }
            column(Reserved_Quantity; "Reserved Quantity")
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
            column(Assemble_to_Order; "Assemble to Order")
            {

            }
            column(Job_No_; "Job No.")
            {

            }
            column(Job_Purchase; "Job Purchase")
            {

            }
            column(Job_Task_No_; "Job Task No.")
            {

            }
            column(Variant_Code; "Variant Code")
            {

            }
            column(Qty__per_Unit_of_Measure; "Qty. per Unit of Measure")
            {

            }
            column(Derived_from_Blanket_Order; "Derived from Blanket Order")
            {

            }
            column(Cross_Reference_No_; "Cross-Reference No.")
            {

            }
            column(Originally_Ordered_No_; "Originally Ordered No.")
            {

            }
            column(Originally_Ordered_Var__Code; "Originally Ordered Var. Code")
            {

            }
            column(Out_of_Stock_Substitution; "Out-of-Stock Substitution")
            {

            }
            column(Nonstock; Nonstock)
            {

            }
            column(Purchasing_Code; "Purchasing Code")
            {

            }
            column(Completely_Invoiced; "Completely Invoiced")
            {

            }
            column(Last_Invoice_Date; "Last Invoice Date")
            {

            }
            column(Applied_Entry_to_Adjust; "Applied Entry to Adjust")
            {

            }
            column(Cost_Amount__Actual_; "Cost Amount (Actual)")
            {

            }
            column(Cost_Amount__Actual___ACY_; "Cost Amount (Actual) (ACY)")
            {

            }
            column(Cost_Amount__Expected_; "Cost Amount (Expected)")
            {

            }
            column(Cost_Amount__Expected___ACY_; "Cost Amount (Expected) (ACY)")
            {

            }
            column(Cost_Amount__Non_Invtbl__; "Cost Amount (Non-Invtbl.)")
            {

            }
            column(Cost_Amount__Non_Invtbl___ACY_; "Cost Amount (Non-Invtbl.)(ACY)")
            {

            }
            column(Purchase_Amount__Actual_; "Purchase Amount (Actual)")
            {

            }
            column(Purchase_Amount__Expected_; "Purchase Amount (Expected)")
            {

            }
            column(Sales_Amount__Actual_; "Sales Amount (Actual)")
            {

            }
            column(Sales_Amount__Expected_; "Sales Amount (Expected)")
            {

            }
            column(Correction; Correction)
            {

            }
            column(Shipped_Qty__Not_Returned; "Shipped Qty. Not Returned")
            {

            }
            column(Prod__Order_Comp__Line_No_; "Prod. Order Comp. Line No.")
            {

            }
            column(Serial_No_; "Serial No.")
            {

            }
            column(Lot_No_; "Lot No.")
            {

            }
            column(Item_Tracking; "Item Tracking")
            {

            }
            column(Return_Reason_Code; "Return Reason Code")
            {

            }
            dataitem(Item; Item)
            {
                DataItemLink = "No." = Item_Ledger_Entry."Item No.";
                column(Item_Description; Description)
                {
                }
            }
        }
    }
}
