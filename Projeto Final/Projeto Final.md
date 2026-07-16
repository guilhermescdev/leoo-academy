> **Observação:** Este documento representa a modelagem inicial do projeto. Durante o desenvolvimento, requisitos, regras de negócio, objetos, campos e relacionamentos poderão ser ajustados conforme novas necessidades forem identificadas.

# Horizon Travel

A Horizon Travel é uma agência de viagens que busca modernizar seus processos e centralizar o gerenciamento de clientes, destinos, pacotes turísticos, reservas e atividades em uma única plataforma. Para isso, a empresa adotará o Salesforce como seu sistema de CRM, permitindo uma gestão mais eficiente das informações, automação de processos e melhor acompanhamento das operações.

- [Requisitos](#requisitos)
- [Regras de Negócio](#regras-de-negócio)
- [Mapeamento de Objetos](#mapeamento-de-objetos)
- [Funcionalidades](#funcionalidades)
  - [Formulas](#formulas)

# Regras de Negócio

# Requisitos

1. O sistema valida se a data de nascimento do cliente é maior que a data atual. [Mostrar](#cliente---data-de-nascimento)
2. O sistema calcula a idade do cliente automaticamente. [Mostrar](#cliente---idade)
3. O sistema limita os países de acordo com o contiente selecionado. [Mostrar](#destino---continente---país)

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

| Campo                 | Tipo                 | Tamanho | Detalhes |
| --------------------- | -------------------- | ------- | -------- |
| ID                    | Record Name (Number) | -       | -        |
| Cliente               | Master-Detail        | -       | -        |
| Pacote de Viagem      | Master-Detail        | -       | -        |
| Data da Viagem        | Date/Time            | -       | Required |
| Status da Reserva     | Picklist             | -       | Required |
| Quantidade de Pessoas | Number               | 2       | Required |
| Valor Total           | Formula (Currency)   | -       | -        |

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
| Pacote de Viagem         | Lookup             | -         |
| Atividade Turística      | Lookup             | -         |
| Inclusa por Padrão       | Checkbox           | Unchecked |
| Valor Considerado        | Formula (Currency) | -         |

## Relacionamentos

Apresenta os relacionamentos entre os objetos da solução, definindo como os registros se conectam, garantindo a integridade dos dados.

| Objeto Origem    | Objeto Destino      | Tipo          |
| ---------------- | ------------------- | ------------- |
| Destino          | Pacote de Viagem    | Master-Detail |
| Cliente          | Reserva             | Master-Detail |
| Pacote de Viagem | Reserva             | Master-Detail |
| Pacote-Atividade | Pacote de Viagem    | Lookup        |
| Pacote-Atividade | Atividade Turística | Lookup        |

# Funcionalidades

## Validation Rules

### Cliente -> Data de Nascimento

A `Data de Nascimento` não pode ser maior que a data atual.

```
Data_de_Nascimento__c > TODAY()
```

## Field Dependencies

### Destino -> (Continente -> País)

Limita o `País` de acordo com o `Contiente` selecionado.

![Print](./prints/fieldContinentePais.png)

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
    Atividade_Turistica__r.Custo_Adicional__c
)
```

## Record-Triggered Flow

### Pacote-Atividade (Created or Updated) -> Pacote de Viagem (Preço Total)

Quando um Pacote-Atividade é criado ou atualizado, o fluxo calcula o valor do `Preço Total` do Pacote de Viagem:

- Se o Pacote de Viagem for alterado, ele atualiza o `Preço Total` do Pacote de Viagem antigo e calcula o `Preço Total` do novo Pacote de Viagem.

- Se a Atividade Turística for alterada, ele recalcula o `Preço Total`do Pacote de Viagem.

![Print](./prints/flowAtualizarPrecoTotaldoPacotedeViagemCreatedorUpdated.png)

### Pacote-Atividade (Deleted) -> Pacote de Viagem (Preço Total)

Quando um Pacote-Atividade é deletado, o fluxo subtrai o `Valor Considerado` do `Preço Total` do Pacote de Viagem relacionado.

![Print](./prints/flowAtualizarPrecoTotaldoPacotedeViagemDeleted.png)
