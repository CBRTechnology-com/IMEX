tableextension 50003 ExtendItemLedgerEntry extends "Item Ledger Entry"
{
    fields
    {
        field(50000; "Source Name"; Text[50])
        {
            Caption = 'Source Name';

        }
    }

    var
        myInt: Integer;
        recVendor: Record Vendor;
        recCustomer: Record Customer;

    procedure GetSourceName()
    begin
        IF ("Source Name" = '') THEN BEGIN
            IF ("Entry Type" = "Entry Type"::Purchase) THEN BEGIN
                IF recVendor.GET("Source No.") THEN
                    "Source Name" := recVendor.Name;
            END ELSE
                IF ("Entry Type" = "Entry Type"::Sale) THEN BEGIN
                    IF recCustomer.GET("Source No.") THEN
                        "Source Name" := recCustomer.Name;
                END;
        END;
    end;
}