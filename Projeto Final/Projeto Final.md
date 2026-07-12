## Observação

Este documento representa a modelagem inicial do projeto. Durante o desenvolvimento, requisitos, regras de negócio, objetos, campos e relacionamentos poderão ser ajustados conforme novas necessidades forem identificadas.

# Horizon Travel

A Horizon Travel é uma agência de viagens que busca modernizar seus processos e centralizar o gerenciamento de clientes, destinos, pacotes turísticos, reservas e atividades em uma única plataforma. Para isso, a empresa adotará o Salesforce como seu sistema de CRM, permitindo uma gestão mais eficiente das informações, automação de processos e melhor acompanhamento das operações.

- [Mapeamento de Objetos](#mapeamento-de-objetos)

## Mapeamento de Objetos

### Cliente

Armazena as informações dos clientes da Horizon Travel, incluindo dados pessoais e informações utilizadas para o gerenciamento do relacionamento com a agência.

| Campo              | Tipo             | Tamanho |
| ------------------ | ---------------- | ------- |
| Nome Completo      | Texto            | -       |
| CPF                | Texto            | 11      |
| E-mail             | E-mail           | -       |
| Data de Nascimento | Data             | -       |
| Cliente VIP        | Checkbox         | -       |
| Idade              | Fórmula (Número) | -       |

### Destino

Representa os destinos turísticos oferecidos pela agência, contendo informações geográficas e detalhes relevantes para a comercialização dos pacotes.

| Campo             | Tipo        | Tamanho |
| ----------------- | ----------- | ------- |
| Nome do Destino   | Texto       | -       |
| País              | Picklist    | -       |
| Continente        | Picklist    | -       |
| Pontos Turísticos | Texto Longo | -       |
| Ativo             | Checkbox    | -       |

### Pacote de Viagem

Armazena os pacotes de viagem disponibilizados pela agência, reunindo informações como destino, duração, preço e nível de luxo.

| Campo              | Tipo            | Tamanho |
| ------------------ | --------------- | ------- |
| Nome do Pacote     | Texto           | -       |
| Preço Base         | Moeda           | -       |
| Duração            | Número          | -       |
| Nível de Luxo      | Picklist        | -       |
| Preço Total        | Fórmula         | -       |
| Número de Reservas | Roll-Up Summary | -       |

### Reserva

Registra cada contratação de um pacote de viagem realizada por um cliente, incluindo informações sobre a reserva, seu status e o valor pago.

| Campo                 | Tipo                 | Tamanho |
| --------------------- | -------------------- | ------- |
| ID                    | Numeração Automática | -       |
| Status da Reserva     | Picklist             | -       |
| Data da Reserva       | Data e Hora          | -       |
| Quantidade de Membros | Número               | -       |
| Valor Pago            | Moeda                | -       |

### Atividade Turística

Representa as atividades que podem ser oferecidas aos clientes durante a viagem, como passeios, excursões e experiências adicionais.

| Campo             | Tipo   | Tamanho |
| ----------------- | ------ | ------- |
| Nome da Atividade | Texto  | -       |
| Duração Estimada  | Número | -       |
| Custo Adicional   | Moeda  | -       |

### Pacote-Atividade

Objeto responsável por associar atividades turísticas aos pacotes de viagem, permitindo que um pacote possua várias atividades e que uma mesma atividade seja utilizada em diferentes pacotes.

| Campo               | Tipo     | Tamanho |
| ------------------- | -------- | ------- |
| Pacote de Viagem    | Lookup   | -       |
| Atividade Turística | Lookup   | -       |
| Ordem de Exibição   | Número   | -       |
| Inclusa por Padrão  | Checkbox | -       |

### Relacionamentos

Aapresenta os relacionamentos entre os objetos da solução, definindo como os registros se conectam, garantindo a integridade dos dados.

| Mestre           | Detalhe          | Tipo          |
| ---------------- | ---------------- | ------------- |
| Destino          | Pacote de Viagem | Master-Detail |
| Cliente          | Reserva          | Master-Detail |
| Pacote de Viagem | Reserva          | Master-Detail |
