codeunit 60004 "K3XML Doc. Integration Event Good"
{
    local procedure GetOutstandingQuantity(DocumentNo: Code[20])OutstandingQuantity: Decimal
    var
        IsHandled: Boolean;
    begin
        OnBeforeGetOutstandingQuantity(DocumentNo, OutstandingQuantity, IsHandled);
         if IsHandled then
            exit(OutstandingQuantity);

        // ...
    end;

    /// <summary>
    /// Raised before outstanding quantity is calculated.
    /// Allows to perform alternative calculations or take other actions before the outstanding quantity is calculated. 
    /// </summary>
    /// <param name="DocumentNo">The number of the sales order whose outstanding quantity is requested.</param>
    /// <param name="OutstandingQuantity">The outstanding quantity.</param>
    /// <param name="IsHandled">Set to true by a subscriber to skip the standard calculation. The default is false.</param>
    [IntegrationEvent(false, false)]
    local procedure OnBeforeGetOutstandingQuantity(DocumentNo: Code[20]; var OutstandingQuantity: Decimal; var IsHandled: Boolean)
    begin
    end;
}