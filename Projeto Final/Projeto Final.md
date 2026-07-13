> **Observação:** Este documento representa a modelagem inicial do projeto. Durante o desenvolvimento, requisitos, regras de negócio, objetos, campos e relacionamentos poderão ser ajustados conforme novas necessidades forem identificadas.

# Horizon Travel

A Horizon Travel é uma agência de viagens que busca modernizar seus processos e centralizar o gerenciamento de clientes, destinos, pacotes turísticos, reservas e atividades em uma única plataforma. Para isso, a empresa adotará o Salesforce como seu sistema de CRM, permitindo uma gestão mais eficiente das informações, automação de processos e melhor acompanhamento das operações.

- [Requisitos](#requisitos)
- [Regras de Negócio](#regras-de-negócio)
- [Mapeamento de Objetos](#mapeamento-de-objetos)
- [Funcionalidades Importantes](#funcionalidades-importantes)
  - [Formulas](#formulas)

# Requisitos

- O sistema deve permitir o cadastro, edição, consulta e exclusão de clientes, destinos, pacotes de viagem, reservas e atividades turisticas.
- O sistema deve permitir associar atividades turísticas a um pacote de viagem.
- O sistema deve permitir que um cliente realize múltiplas reservas.
- O sistema deve permitir que um pacote de viagem possua diversas atividades.
- O sistema deve calcular automaticamente informações derivadas, como idade do cliente, preço total do pacote e número de reservas.

# Regras de Negócio

- A idade do cliente deve ser calculada automaticamente com base na data de nascimento.
- Um destino pode possuir diversos pacotes de viagem.
- Todo pacote de viagem deve estar associado a um único destino.
- Um cliente pode realizar diversas reservas.
- Toda reserva deve pertencer a um único cliente.
- Toda reserva deve estar vinculada a um único pacote de viagem.
- Um pacote de viagem pode possuir diversas reservas.
- Um pacote de viagem pode conter várias atividades turísticas.
- Uma atividade turística pode fazer parte de diferentes pacotes de viagem.
- O preço total do pacote deve ser calculado automaticamente conforme as regras definidas pela agência.
- Destinos inativos não deverão ser utilizados em novos pacotes de viagem.

# Mapeamento de Objetos

## Cliente

Armazena as informações dos clientes da Horizon Travel, incluindo dados pessoais e informações utilizadas para o gerenciamento do relacionamento com a agência.

| Campo              | Tipo                      | Tamanho | Detalhes         |
| ------------------ | ------------------------- | ------- | ---------------- |
| ID                 | Record Name (Auto Number) | -       | -                |
| Nome Completo      | Text                      | 50      | Required         |
| CPF                | Text                      | 14      | Required, Unique |
| Email              | Email                     | -       | Required, Unique |
| Data de Nascimento | Date                      | -       | Required         |
| Cliente VIP        | Checkbox                  | -       | -                |
| Idade              | Formula (Number)          | -       | -                |

## Destino

Representa os destinos turísticos oferecidos pela agência, contendo informações geográficas e detalhes relevantes para a comercialização dos pacotes.

| Campo             | Tipo        | Tamanho |
| ----------------- | ----------- | ------- |
| Nome do Destino   | Texto       | 50      |
| País              | Picklist    | -       |
| Continente        | Picklist    | -       |
| Pontos Turísticos | Texto Longo | 1000    |
| Ativo             | Checkbox    | -       |

## Pacote de Viagem

Armazena os pacotes de viagem disponibilizados pela agência, reunindo informações como destino, duração, preço e nível de luxo.

| Campo              | Tipo            | Tamanho |
| ------------------ | --------------- | ------- |
| Nome do Pacote     | Texto           | 50      |
| Preço Base         | Moeda           | -       |
| Duração            | Número          | 2       |
| Nível de Luxo      | Picklist        | -       |
| Preço Total        | Fórmula         | -       |
| Número de Reservas | Roll-Up Summary | -       |

## Reserva

Registra cada contratação de um pacote de viagem realizada por um cliente, incluindo informações sobre a reserva, seu status e o valor pago.

| Campo                 | Tipo                 | Tamanho |
| --------------------- | -------------------- | ------- |
| Nome da Reserva       | Numeração Automática | -       |
| Status da Reserva     | Picklist             | -       |
| Data da Reserva       | Data e Hora          | -       |
| Quantidade de Membros | Número               | 2       |
| Valor Pago            | Moeda                | -       |

## Atividade Turística

Representa as atividades que podem ser oferecidas aos clientes durante a viagem, como passeios, excursões e experiências adicionais.

| Campo             | Tipo   | Tamanho |
| ----------------- | ------ | ------- |
| Nome da Atividade | Texto  | 50      |
| Duração Estimada  | Número | 2       |
| Custo Adicional   | Moeda  | -       |

## Pacote-Atividade

Objeto responsável por associar atividades turísticas aos pacotes de viagem, permitindo que um pacote possua várias atividades e que uma mesma atividade seja utilizada em diferentes pacotes.

| Campo               | Tipo     | Tamanho |
| ------------------- | -------- | ------- |
| Pacote de Viagem    | Lookup   | -       |
| Atividade Turística | Lookup   | -       |
| Ordem de Exibição   | Número   | 2       |
| Inclusa por Padrão  | Checkbox | -       |

## Relacionamentos

Apresenta os relacionamentos entre os objetos da solução, definindo como os registros se conectam, garantindo a integridade dos dados.

| Mestre           | Detalhe          | Tipo          |
| ---------------- | ---------------- | ------------- |
| Destino          | Pacote de Viagem | Master-Detail |
| Cliente          | Reserva          | Master-Detail |
| Pacote de Viagem | Reserva          | Master-Detail |

# Funcionalidades Importantes

## Formulas

### Cliente -> Idade

Calcula automaticamente a idade do cliente com base na data de nascimento, considerando se o aniversário já ocorreu no ano atual.

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
