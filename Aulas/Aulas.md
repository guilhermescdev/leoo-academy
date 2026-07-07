# LEOO Academy

- [Aula 1: CRM Salesforce](#aula-1---crm-salesforce)
- [Aula 2: Noções Básicas e Introdução ao Sales e Service Cloud](#aula-2---noções-básicas-e-introdução-ao-sales-e-service-cloud)

# Aula 1 - CRM Salesforce

## CRM (Customer Relationship Management)

- Tecnologia para gerenciar o relacionamento com clientes atuais e futuros.
- Centraliza e rastreia todas as interações com clientes.
- Objetivos:
  - Melhorar a performance da equipe de vendas.
  - Compreender a jornada do consumidor.
  - Fortalecer o relacionamento com clientes e leads.

## Trailhead

- Plataforma oficial de aprendizado da Salesforce.
- Conteúdo organizado em:
  - Trilhas.
  - Módulos.
  - Projetos.
  - Superbadges.
  - Trailmixes.
- Disponibiliza:
  - Playgrounds gratuitos.
  - Quizzes e desafios práticos.

## Organização dos Dados

- Objetos:
  - Tabelas que armazenam dados.

- Registros:
  - Linhas da tabela.

- Campos:
  - Colunas da tabela.

## Termos Comuns

- Organização (Org):
  - Instância do Salesforce onde ficam os dados e configurações.

- Aplicativo (App):
  - Conjunto de objetos, campos, regras e funcionalidades que suportam um processo de negócio.

## Objetos

- Objetos padrão:
  - Já existem no Salesforce.
  - Exemplos:
    - Contas.
    - Contatos.
    - Oportunidades.

- Objetos personalizados:
  - Criados para atender necessidades específicas do negócio.

## Objetos Padrão

- Atendem necessidades comuns de negócios.
- Possuem campos e funcionalidades pré-configurados.

- Exemplo:
  - O objeto Oportunidade acompanha uma venda desde a prospecção até o fechamento.

- Vantagens:
  - Prontos para uso.
  - Integrados com toda a plataforma.
  - Recebem atualizações da Salesforce.

## Objetos Personalizados

- Criados pelo usuário.
- Totalmente configuráveis.

- Permitem:
  - Campos personalizados.
  - Layouts personalizados.
  - Relacionamentos personalizados.
  - Triggers.
  - Workflows.

- Exemplo:
  - Uma escola pode criar o objeto Aluno para armazenar notas e frequência.

- Vantagens:
  - Flexibilidade.
  - Funcionalidades exclusivas.
  - Adaptação às necessidades do negócio.

## Prática

1. Compartilhe sua visão e entendimento sobre o que é o Salesforce e sua estrutura.

   > O Salesforce é uma plataforma e ecossistema em nuvem voltada para CRM, que ajuda empresas a gerenciar o relacionamento com clientes, vendas, atendimento e outros processos de negócio. A estrutura é baseada em objetos, registros e campos, permitindo organizar dados de forma flexível e personalizar a plataforma sem alterar o código principal.

2. Cite alguns exemplos de sistemas de mercado que sejam concorrentes ou tenham a mesma função que o Salesforce.

   > Alguns concorrentes do Salesforce são Microsoft Dynamics 365, HubSpot CRM, Zoho CRM, SAP Customer Experience, Oracle CX e Pipedrive. Todos oferecem soluções para gestão de clientes, vendas e atendimento.

3. Trailhead:
   1. Salesforce CRM
      > Concluído.
   2. Noções básicas da Salesforce Platform
      > Concluído.

# Aula 2 - Noções Básicas e Introdução ao Sales e Service Cloud

## Onde as Empresas Utilizam Salesforce

- Vendas:
  - Gestão de leads e oportunidades.

- Atendimento:
  - Casos de suporte.

- Marketing:
  - Jornadas e campanhas.

- E-commerce:
  - Loja online.

- Analytics:
  - Relatórios e dashboards.

## Arquitetura Salesforce

- Desenvolvida para ser:
  - Escalável.
  - Segura.
  - Flexível.

### Multi-tenant

- Diversos clientes compartilham a mesma infraestrutura.
- Cada organização possui dados e configurações isolados.

### Metadata-Driven Architecture

- Personalização sem alterar código:
- Permite criar:
  - Objetos.
  - Campos.
  - Workflows.
  - Relatórios.
  - Dashboards.

### APIs e Serviços

- APIs disponíveis:
  - SOAP.
  - REST.
  - Bulk.
  - Streaming.

- Permitem:
  - Integração com outros sistemas.
  - Sincronização de dados.
  - Automação de processos.

### Plataforma Lightning

- Interface moderna do Salesforce.
- Inclui:
  - Lightning App Builder.
  - Lightning Components.

### Salesforce AppExchange

- Marketplace oficial da Salesforce.
- Disponibiliza:
  - Aplicativos.
  - Componentes.
  - Soluções prontas.

### Security Model

- Controle de acesso em:
  - Objetos.
  - Campos.
  - Registros.

- Garante acesso apenas para usuários autorizados.

### Einstein Analytics e IA

- Utiliza Inteligência Artificial e Machine Learning.
- Oferece:
  - Análises preditivas.
  - Recomendações.
  - Automação inteligente.

### Infraestrutura em Nuvem

- Plataforma 100% em nuvem.
- Benefícios:
  - Acesso de qualquer lugar.
  - Alta disponibilidade.
  - Escalabilidade.

## Service Cloud

- Solução voltada para atendimento e suporte ao cliente.
- Centraliza todos os canais de atendimento e informações dos clientes.
- Objetivos:
  - Melhorar a experiência do cliente.
  - Aumentar a produtividade da equipe de suporte.
  - Automatizar processos de atendimento.

### Principais Funcionalidades

#### Gestão de Casos

- Centraliza todo o ciclo de vida dos casos de atendimento.
- Permite:
  - Criar casos.
  - Acompanhar o andamento.
  - Gerenciar a resolução.

#### Base de Conhecimento

- Repositório de informações para os agentes.
- Contém:
  - Artigos.
  - Soluções.
  - Perguntas frequentes.
  - Boas práticas.

#### Suporte Omnicanal

- Integra diversos canais de atendimento:
  - Telefone.
  - E-mail.
  - Chat.
  - Redes sociais.
  - SMS.

- Todos os atendimentos ficam centralizados em uma única plataforma.

#### Automação de Atendimento

- Automatiza tarefas repetitivas.
- Exemplos:
  - Distribuição automática de casos.
  - Respostas automáticas.
  - Escalonamento de problemas.

#### Console de Serviços

- Interface única para os agentes.
- Permite visualizar:
  - Informações do cliente.
  - Histórico de atendimentos.
  - Casos abertos.
  - Dados relevantes.

#### Field Service

- Gerencia equipes externas.
- Permite:
  - Agendamento.
  - Despacho de técnicos.
  - Rastreamento em tempo real.

- Integrado ao Service Cloud.

#### Relatórios e Dashboards

- Criação de relatórios personalizados.
- Monitoramento de:
  - Desempenho da equipe.
  - Tempo de atendimento.
  - Indicadores de suporte.
  - Oportunidades de melhoria.

#### Einstein Bots e Inteligência Artificial

- Chatbots com Inteligência Artificial.
- Permitem:
  - Responder dúvidas frequentes.
  - Automatizar atendimentos.
  - Encaminhar casos complexos aos agentes.

#### Comunidades de Clientes

- Portais de autoatendimento.
- Permitem aos clientes:
  - Buscar informações.
  - Interagir com outros usuários.
  - Abrir solicitações de suporte.

### Vantagens do Service Cloud

- Atendimento ao cliente aprimorado:
  - Centraliza todas as interações de suporte.
  - Atendimento mais rápido e eficiente.

- Acesso multicanal:
  - Integra diversos canais de comunicação.
  - Experiência omnicanal.

- Automação e eficiência:
  - Reduz tarefas manuais.
  - Permite que os agentes foquem em casos mais complexos.

- Visão completa do cliente:
  - Histórico de interações.
  - Preferências.
  - Dados centralizados.

- Insights e análises:
  - Relatórios e dashboards para acompanhar indicadores.
  - Facilita melhorias contínuas.

- Escalabilidade:
  - Atende empresas de qualquer porte.
  - Cresce conforme a necessidade do negócio.

## Interação entre Sales Cloud e Service Cloud

- É fundamental para uma experiência de cliente integrada e eficiente.
- As funcionalidades são projetadas para se complementarem.

### Dados Compartilhados

- Compartilham objetos principais.
- Informações de clientes e interações são compartilhadas entre as equipes de vendas e atendimento.

### Conversão de Leads e Oportunidades

- Leads convertidos em Oportunidades no Sales Cloud podem gerar casos de suporte no Service Cloud.

### Automação de Processos

- Processos automatizados podem acionar ações no Service Cloud com base em eventos do Sales Cloud.

### Colaboração e Comunicação

- Chatter permite comunicação e colaboração entre equipes de vendas e suporte.

### Relatórios e Dashboards Integrados

- Podem combinar dados do Sales Cloud e Service Cloud para gerar insights mais completos.

### Personalização da Experiência do Cliente

- Com acesso a informações de vendas e suporte, as empresas podem oferecer um atendimento mais personalizado e eficiente.

## Prática

1. Se aprofunde em pelo menos 2 exemplos de casos de uso da plataforma Salesforce, e faça um resumo com suas palavras.

   > Vendas: Empresas utilizam o Sales Cloud para organizar leads, acompanhar oportunidades e controlar todo o processo de vendas, facilitando o trabalho da equipe comercial.

   > Atendimento ao cliente: Empresas utilizam o Service Cloud para gerenciar chamados, centralizar os canais de atendimento e oferecer um suporte mais rápido e eficiente.

2. Com suas palavras, compartilhe o seu entendimento sobre a arquitetura Salesforce.

   > A arquitetura do Salesforce foi criada para ser segura, escalável e flexível. Como é baseada em nuvem e em metadados, permite personalizar a plataforma sem alterar o código principal, além de facilitar integrações com outros sistemas por meio de APIs.

3. O que são as nuvens da Salesforce ?

   > As nuvens são conjuntos de produtos desenvolvidos para diferentes áreas de um negócio, como vendas, atendimento, marketing e comércio. Cada uma oferece funcionalidades específicas para atender às necessidades de cada equipe.

4. Como funciona a interação entre as nuvens de Sales e Service Cloud ?

   > As duas nuvens compartilham os mesmos dados dos clientes. Enquanto o Sales Cloud ajuda a equipe comercial a gerenciar vendas e oportunidades, o Service Cloud permite que a equipe de suporte acompanhe o histórico do cliente e ofereça um atendimento mais completo e personalizado.

5. Trailhead:
   1. Introdução ao Service Cloud
      > Iniciado.
   2. Introdução ao Sales Cloud
      > Concluído.
