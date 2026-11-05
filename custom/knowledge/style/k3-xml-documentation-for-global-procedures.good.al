codeunit 60001 "K3XML Doc. Global Good"
{
    /// <summary>
    /// Calculates the total outstanding quantity for the specified sales order.
    /// </summary>
    /// <param name="DocumentNo">The number of the sales order.</param>
    /// <returns>The total outstanding quantity of all lines on the order.</returns>
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
