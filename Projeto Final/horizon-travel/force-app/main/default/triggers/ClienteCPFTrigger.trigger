trigger ClienteCPFTrigger on Cliente__c (before insert, before update) {
    for (Cliente__c cliente : Trigger.new) {
        if (!CpfValidator.isValid(cliente.CPF__c)) {
            cliente.CPF__c.addError('CPF inválido.');
        }
    }
}