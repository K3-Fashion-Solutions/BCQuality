codeunit 60000 "K3XML Doc. Global Wrong"
{
    procedure GetOutstandingQuantity(DocumentNo: Code[20]): Decimal
    var
        SalesLine: Record "Sales Line";
    begin
        SalesLine.SetRange("Document Type", SalesLine."Document Type"::Order);
        SalesLine.SetRange("Document No.", DocumentNo);
        SalesLine.CalcSums("Outstanding Quantity");
        exit(SalesLine."Outstanding Quantity");
    end;
}
