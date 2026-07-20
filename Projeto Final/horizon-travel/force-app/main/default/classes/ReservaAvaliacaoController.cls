public with sharing class ReservaAvaliacaoController {

    @AuraEnabled
    public static Reserva__c buscarReserva(Id reservaId) {

        return [
            SELECT
                Id,
                Name,
                Nota_da_Avaliacao__c,
                Comentario_da_Avaliacao__c,
                Avaliacao_Realizada__c,
                Data_da_Avaliacao__c,

                Cliente__r.Name,

                Pacote_de_Viagem__r.Name,
                Pacote_de_Viagem__r.Classe__c,
                Pacote_de_Viagem__r.Duracao_Dia__c,

                Pacote_de_Viagem__r.Destino__r.Name,
                Pacote_de_Viagem__r.Destino__r.Continente__c,
                Pacote_de_Viagem__r.Destino__r.Pais__c

            FROM Reserva__c
            WHERE Id = :reservaId
            LIMIT 1
        ];
    }

    @AuraEnabled
    public static void salvarAvaliacao(
        Id reservaId,
        Integer nota,
        String comentario
    ) {

        Reserva__c reserva = [
            SELECT
                Id,
                Avaliacao_Realizada__c
            FROM Reserva__c
            WHERE Id = :reservaId
            LIMIT 1
        ];

        if (reserva.Avaliacao_Realizada__c) {
            throw new AuraHandledException(
                'Esta reserva já foi avaliada.'
            );
        }

        if (nota < 1 || nota > 5) {
            throw new AuraHandledException(
                'A nota deve estar entre 1 e 5.'
            );
        }

        reserva.Nota_da_Avaliacao__c = nota;
        reserva.Comentario_da_Avaliacao__c = comentario;
        reserva.Data_da_Avaliacao__c = System.now();
        reserva.Avaliacao_Realizada__c = true;

        update reserva;
    }
}