import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import buscarReserva from '@salesforce/apex/ReservaAvaliacaoController.buscarReserva';
import salvarAvaliacao from '@salesforce/apex/ReservaAvaliacaoController.salvarAvaliacao';

export default class ReservaAvaliacao extends LightningElement {
    @track reserva;
    carregando = true;
    erro = false;
    jaAvaliada = false;
    nota = 0;
    comentario = '';
    connectedCallback() {
        this.carregarReserva();
    }
    carregarReserva() {
        const params = new URLSearchParams(window.location.search);
        const reservaId = params.get('id');
        if (!reservaId) {
            this.erro = true;
            this.carregando = false;
            return;
        }
        buscarReserva({
            reservaId: reservaId
        })
        .then(result => {
            this.reserva = result;
            this.jaAvaliada = result.Avaliacao_Realizada__c;
            if (result.Nota_da_Avaliacao__c) {
                this.nota = result.Nota_da_Avaliacao__c;
            }
            if (result.Comentario_da_Avaliacao__c) {
                this.comentario = result.Comentario_da_Avaliacao__c;
            }
            this.carregando = false;
            this.atualizarEstrelas();
        })
        .catch(error => {
            console.error(error);
            this.erro = true;
            this.carregando = false;
        });
    }
    selecionarNota(event) {
        this.nota = Number(event.target.dataset.value);
        this.atualizarEstrelas();
    }
    atualizarEstrelas() {
        const estrelas = this.template.querySelectorAll('.estrela');
        estrelas.forEach(estrela => {
            const valor = Number(estrela.dataset.value);
            if (valor <= this.nota) {
                estrela.classList.add('selecionada');
            } else {
                estrela.classList.remove('selecionada');
            }
        });
    }
    alterarComentario(event) {
        this.comentario = event.target.value;
    }
    enviarAvaliacao() {
        if (this.nota === 0) {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Atenção',
                    message: 'Selecione uma nota de 1 a 5 estrelas.',
                    variant: 'warning'
                })
            );
            return;
        }
        this.carregando = true;
        salvarAvaliacao({
            reservaId: this.reserva.Id,
            nota: this.nota,
            comentario: this.comentario
        })
        .then(() => {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Obrigado!',
                    message: 'Sua avaliação foi registrada com sucesso.',
                    variant: 'success'
                })
            );
            this.jaAvaliada = true;
            this.carregando = false;
        })
        .catch(error => {
            console.error(error);
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Erro',
                    message: error.body.message,
                    variant: 'error'
                })
            );
            this.carregando = false;
        });
    }
}