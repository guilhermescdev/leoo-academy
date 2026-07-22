> **Observação:** Este documento representa a modelagem inicial do projeto. Durante o desenvolvimento, requisitos, regras de negócio, objetos, campos e relacionamentos poderão ser ajustados conforme novas necessidades forem identificadas.

# Horizon Travel

A Horizon Travel é uma agência de viagens que busca modernizar seus processos e centralizar o gerenciamento de clientes, destinos, pacotes turísticos, reservas e atividades em uma única plataforma. Para isso, a empresa adotará o Salesforce como seu sistema de CRM, permitindo uma gestão mais eficiente das informações, automação de processos e melhor acompanhamento das operações.

- [Requisitos](#requisitos)
- [Regras de Negócio](#regras-de-negócio)
- [Mapeamento de Objetos](#mapeamento-de-objetos)
- [Funcionalidades](#funcionalidades)
  - [Field Dependencies](#field-dependencies)
  - [Formulas](#formulas)
  - [Validation Rules](#validation-rules)
  - [Record-Triggered Flows](#record-triggered-flows)
  - [Apex](#apex)
  - [Triggers](#triggers)
  - [LWC](#lwc)

# Regras de Negócio e Requisitos

- O sistema deve permitir o cadastro, edição, a consulta e a exclusão de Clientes, Destinos, Pacotes de Viagem, Reservas e Atividade Turísticas.
- Um Cliente pode possuir várias Reservas, porém cada Reserva pertence a um único Cliente.
- Um Destino pode possuir vários Pacotes de Viagem, porém cada Pacote de Viagem pertence a um único Destino.
- Um Pacote de Viagem pode estar associado a várias Atividades Turísticas, e uma Atividade Turística pode estar associada a vários Pacotes de Viagem.
- O sistema deve limitar os `Países` de acordo com o `Continente` selecionado.
- O sistema deve validar se a `Data de Nascimento` do Cliente não é maior que a data atual.
- O sistema deve calcular automaticamente a `Idade` do Cliente.
- O sistema deve calcular automaticamente o `Valor Total` da Reserva.
- O sistema deve desconsiderar o custo da Atividade Turística quando ela estiver marcada como `Inclusa por Padrão`.
- Um Pacote de Viagem não pode possuir a mesma Atividade Turística mais de uma vez.
- O sistema deve recalcular automaticamente o `Preço Total` do Pacote de Viagem sempre que houver alterações nas Atividades associadas.
- O sistema deve permitir a seleção apenas de Destinos com `Ativo` marcado.
- Um Pacote de Viagem com `Classe` igual a `VIP` só pode ser reservado por Clientes marcados como `Cliente VIP`.
- A `Data da Viagem` não pode ser anterior à data e hora atuais.
- O sistema deve enviar um e-mail ao Cliente quando o `Status da Reserva` for alterado para `Pagamento Aprovado`, contendo os detalhes da Reserva e das Atividades.
- O sistema deve enviar um e-mail ao Cliente quando o `Status da Reserva` for alterado para `Viagem Concluída`, contendo um link para avaliação da experiência da viagem.
- O sistema deve disponibilizar uma página para que o Cliente avalie sua experiência de viagem por meio de uma nota e um comentário.

# Mapeamento de Objetos

## Cliente

Armazena as informações dos clientes da Horizon Travel, incluindo dados pessoais e informações utilizadas para o gerenciamento do relacionamento com a agência.

| Campo              | Tipo               | Tamanho | Detalhes         |
| ------------------ | ------------------ | ------- | ---------------- |
| Nome Completo      | Record Name (Text) | 80      | Required         |
| CPF                | Text               | 14      | Required, Unique |
| Email              | Email              | -       | Required, Unique |
| Data de Nascimento | Date               | -       | Required         |
| Cliente VIP        | Checkbox           | -       | Unchecked        |
| Idade              | Formula (Number)   | -       | -                |

## Destino

Representa os destinos turísticos oferecidos pela agência, contendo informações geográficas e detalhes relevantes para a comercialização dos pacotes.

| Campo             | Tipo               | Tamanho | Detalhes  |
| ----------------- | ------------------ | ------- | --------- |
| Nome do Destino   | Record Name (Text) | 80      | Required  |
| Continente        | Picklist           | -       | Required  |
| País              | Picklist           | -       | Required  |
| Ativo             | Checkbox           | -       | Unchecked |
| Pontos Turísticos | Text Area (Long)   | 2000    | -         |

## Pacote de Viagem

Armazena os pacotes de viagem disponibilizados pela agência, reunindo informações como destino, duração, preço e nível de luxo.

| Campo          | Tipo               | Tamanho | Detalhes |
| -------------- | ------------------ | ------- | -------- |
| Nome do Pacote | Record Name (Text) | 80      | -        |
| Destino        | Master-Detail      | -       | -        |
| Classe         | Picklist           | -       | Required |
| Duração (Dia)  | Number             | 2       | -        |
| Preço Base     | Currency           | 16-2    | Required |
| Preço Total    | Currency           | 16-2    | -        |

## Reserva

Registra cada contratação de um pacote de viagem realizada por um cliente, incluindo informações sobre a reserva, seu status e o valor pago.

| Campo                   | Tipo                 | Tamanho | Detalhes |
| ----------------------- | -------------------- | ------- | -------- |
| ID                      | Record Name (Number) | -       | -        |
| Cliente                 | Master-Detail        | -       | -        |
| Pacote de Viagem        | Master-Detail        | -       | -        |
| Data da Viagem          | Date/Time            | -       | Required |
| Quantidade de Pessoas   | Number               | 2       | Required |
| Valor Total             | Formula (Currency)   | -       | -        |
| Forma de Pagamento      | Picklist             | -       | Required |
| Status da Reserva       | Picklist             | -       | Required |
| Nota da Avaliação       | Number               | 1       | -        |
| Comentário da Avaliação | Text Area (Long)     | 5000    | -        |
| Avaliação Realizada     | Checkbox             | -       | -        |
| Data da Avaliação       | Date/Time            | -       | -        |

## Atividade Turística

Representa as atividades que podem ser oferecidas aos clientes durante a viagem, como passeios, excursões e experiências adicionais.

| Campo             | Tipo               | Tamanho | Detalhes |
| ----------------- | ------------------ | ------- | -------- |
| Nome da Atividade | Record Name (Text) | 80      | -        |
| Custo Adicional   | Currency           | 16-2    | Required |
| Descrição         | Text Area (Long)   | 2000    | -        |

## Pacote-Atividade

Objeto responsável por associar atividades turísticas aos pacotes de viagem, permitindo que um pacote possua várias atividades e que uma mesma atividade seja utilizada em diferentes pacotes.

| Campo                    | Tipo               | Tamanho   |
| ------------------------ | ------------------ | --------- |
| Nome do Pacote-Atividade | Record Name (Text) | 80        |
| Pacote de Viagem         | Master-Detail      | -         |
| Atividade Turística      | Master-Detail      | -         |
| Inclusa por Padrão       | Checkbox           | Unchecked |
| Valor Considerado        | Formula (Currency) | -         |

## Relacionamentos

Apresenta os relacionamentos entre os objetos da solução, definindo como os registros se conectam, garantindo a integridade dos dados.

| Mestre           | Detalhe             | Tipo          |
| ---------------- | ------------------- | ------------- |
| Destino          | Pacote de Viagem    | Master-Detail |
| Cliente          | Reserva             | Master-Detail |
| Pacote de Viagem | Reserva             | Master-Detail |
| Pacote-Atividade | Pacote de Viagem    | Master-Detail |
| Pacote-Atividade | Atividade Turística | Master-Detail |

# Funcionalidades

## Lookup Filter

### Pacote de Viagem -> Destino

Lista apenas os Destinos marcados como `Ativo`.

```
Destino: Ativo = True
```

## Field Dependencies

### Destino -> Continente -> País

Limita o `País` de acordo com o `Contiente` selecionado.

![Print](./imgs/prints/fieldContinentePais.png)

## Validation Rules

### Cliente -> CPF ADD

O `CPF` deve estar no formato 000.000.000-00.

```
NOT(
    REGEX(
        CPF__c,
        "[0-9]{3}\\.[0-9]{3}\\.[0-9]{3}-[0-9]{2}"
    )
)
```

### Cliente -> Data de Nascimento

A `Data de Nascimento` não pode ser maior que a data atual.

```
Data_de_Nascimento__c > TODAY()
```

### Reserva -> Pacote de Viagem

Um Pacote de Viagem de `Classe` VIP só pode ser reservado por um `Cliente VIP`.

```
AND(
    ISPICKVAL(Pacote_de_Viagem__r.Classe__c, "VIP"),
    NOT(Cliente__r.Cliente_VIP__c)
)
```

### Reserva -> Data da Viagem

A `Data da Viagem` não pode ser anterior ao momento atual.

```
Data_da_Viagem__c < NOW()
```

## Formulas

### Cliente -> Idade

Calcula automaticamente a `Idade` do Cliente com base na `Data de Nascimento` considerando se o aniversário já ocorreu no ano atual.

```
YEAR(TODAY()) - YEAR(Data_de_Nascimento__c) -
IF(
    DATE(
        YEAR(TODAY()),
        MONTH(Data_de_Nascimento__c),
        DAY(Data_de_Nascimento__c)
    ) > TODAY(),
    1,
    0
)
```

### Reserva -> Valor Total

Calcula o `Valor Total` da Reserva de acordo com a `Quantidade de Pessoas` e o `Preço Total` do Pacote de Viagem.

```
Quantidade_de_Pessoas__c * Pacote_de_Viagem__r.Preco_Total__c
```

### Pacote-Atividade -> Valor Considerado

Quando `Incluso por Padrão` for marcado, o `Valor Considerado` é zerado para não adicionar custos ao Pacote de Viagem.

```
IF(
    Inclusa_por_Padrao__c,
    0,
    Atividade_Turistica_M__r.Custo_Adicional__c
)
```

## Record-Triggered Flows

### Pacote-Atividade (Created or Updated) -> Pacote de Viagem -> Preço Total

Quando um Pacote-Atividade é criado ou atualizado, o fluxo calcula o valor do `Preço Total` do Pacote de Viagem:

![Print](./imgs/prints/flowAtualizarPreçoTotaldoPacotedeViagemCreatedorUpdated.png)

### Pacote-Atividade (Deleted) -> Pacote de Viagem -> Preço Total

Quando um Pacote-Atividade é deletado, o fluxo subtrai o `Valor Considerado` do `Preço Total` do Pacote de Viagem relacionado.

![Print](./imgs/prints/flowAtualizarPrecoTotaldoPacotedeViagemDeleted.png)

### Atividade Turística(Deleted) -> Pacote-Atividade -> Pacote de Viagem -> Preço Total

Quando uma Atividade Turística é deletada, o fluxo atualiza o `Preço Total` de todos os Pacotes de Viagem que tem aquela Atividade Turística.

![Print](./imgs/prints/flowAtualizarPreçoTotaldoPacotedeViagemPorAtividadeTurísticaDeleted.png)

### Pacote-Atividade (Created) -> Atividade Turística

Impede que um Pacote-Atividade seja duplicado ao verificar se aquela `Atividade Turística` já existe naquele Pacote de Viagem.

![Print](./imgs/prints/flowAtividadeDuplicadanoMesmoPacotedeViagem.png)

### Reserva (Update) -> Status da Reserva -> Pagamento Aprovado

Quando uma Reserva tem o `Status da Reserva` atualizado para "Pagamento Aprovado", o fluxo busca as informações das Atividades relacionadas ao Pacote de Viagem daquela Reserva e envia um email com todos os detalhes da Reserva para o Cliente.

![Print](./imgs/prints/flowPagamentoAprovadoeDetalhesdaReserva.png)
![Print](./imgs/prints/emailPagamentoAprovadoeDetalhesdaReserva.png)

### Reserva (Update) -> Status da Reserva -> Viagem Concluída

Quando uma Reserva tem o `Status da Reserva` atualizado para "Viagem Concluída", o fluxo envia um email com um link para o Cliente avaliar a experiência de viagem.

![Print](./imgs/prints/flowViagemConcluidaeAvaliaçãodeExperiencia.png)
![Print](./imgs/prints/emailViagemConcluidaeAvaliaçãodeExperiencia.png)

## Apex

### ReservaAvaliacaoController

Classe criada para buscar algumas informações da Reserva e para permitir que avalição de experiência de viagem do Cliente seja salva corretamente no registro da Reserva relacionada.

- [Código](./horizon-travel/force-app/main/default/classes/ReservaAvaliacaoController.cls)

## Triggers

## LWC

### reservaAvaliacao

Componente criado e publicado no Digital Experiences para que o Cliente possa avaliar a experiência de viagem, sendo acessado pelo link enviado ao email do Cliente.

- [Código](./horizon-travel/force-app/main/default/lwc/reservaAvaliacao)

![Print](./imgs/prints/lwcViagemConcluidaeAvaliaçãodeExperiencia.png)
![Print](./imgs/prints/lwcViagemConcluidaeAvaliaçãodeExperiencia2.png)
