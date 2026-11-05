codeunit 60003 "K3XML Doc. Integration Event Wrong"
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

    [IntegrationEvent(false, false)]
    local procedure OnBeforeGetOutstandingQuantity(DocumentNo: Code[20]; var OutstandingQuantity: Decimal; var IsHandled: Boolean)
    begin
    end;
}