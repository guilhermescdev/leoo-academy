# Aulas

- [Aula 1: CRM Salesforce](#aula-1---crm-salesforce)
- [Aula 2: Noções Básicas e Introdução ao Sales e Service Cloud](#aula-2---noções-básicas-e-introdução-ao-sales-e-service-cloud)
- [Aula 3: Sales e Service Cloud](#aula-3---sales-e-service-cloud)
- [Aula 4: Navegando entre Aplicativos e Configurações](#aula-4---navegando-entre-aplicativos-e-configurações)
- [Aula 5: Personalização do Lightning Experience](#aula-5---personalização-do-lightning-experience)
- [Aula 6: Modelagem de Dados](#aula-6---modelagem-de-dados)
- [Aula 7: Segurança de Dados](#aula-7---segurança-de-dados)
- [Aula 9: Organizando Demandas](#aula-9---organizando-demandas)
- [Aula 10: Relatórios e Painéis](#aula-10---relatórios-e-painéis)
- [Aula 11: Desenvolvimento Salesforce](#aula-11---desenvolvimento-salesforce)

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
   - Salesforce CRM
     > Concluído.
   - Noções básicas da Salesforce Platform
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
   - Introdução ao Service Cloud
     > Iniciado.
   - Introdução ao Sales Cloud
     > Concluído.

# Aula 3 - Sales e Service Cloud

## Service Cloud

- Plataforma de atendimento ao cliente da Salesforce.
- Objetivos:
  - Gerenciar casos.
  - Automatizar processos.
  - Oferecer suporte por múltiplos canais.
  - Melhorar a experiência do cliente.

- Benefícios:
  - Atendimento mais eficiente.
  - Maior produtividade dos agentes.
  - Decisões baseadas em dados.

## Sales Cloud

- Plataforma de CRM voltada para vendas.
- Objetivos:
  - Gerenciar o processo de vendas.
  - Aumentar a produtividade da equipe comercial.
  - Fechar negócios com mais rapidez.
  - Gerar insights sobre clientes.

- Benefícios:
  - Organização do funil de vendas.
  - Melhor acompanhamento das oportunidades.
  - Maior eficiência da equipe.

## Cenário Prático

- Empresa:
  - TechSoft.

- Objetivo:
  - Criar um objeto personalizado para controlar solicitações internas.

### Objeto

- Label Singular:
  - Solicitação Interna.

- Label Plural:
  - Solicitações Internas.

- API Name:
  - SolicitacaoInterna.

- Configurações:
  - Permitir Reports.
  - Permitir Activities.

### Campos

- Data da Solicitação.
- Descrição.
- Valor Estimado.
- Prioridade.

### Personalizações

- Criar campos do tipo Lista de Opções.
- Criar Campo de Relacionamento.
- Personalizar o Layout da página.
- Criar Regra de Validação.

## Prática

1. Trailhead:

- Contas e Contatos.
  > Pendente.
- Leads e Contatos.
  > Pendente.

# Aula 4 - Navegando entre Aplicativos e Configurações

## Vissão de Usuário

### Aplicativos

- Conjunto de funcionalidades e personalizações para atender às necessidades de uma empresa.

#### Tipos de aplicativos

- Aplicativos nativos
  - Desenvolvidos pela Salesforce.
  - Disponíveis na AppExchange.
  - Prontos para uso.

- Aplicativos personalizados
  - Desenvolvidos por empresas ou desenvolvedores.
  - Criados com a plataforma Lightning.
  - Atendem necessidades específicas do negócio.

### Navegação

#### Barra de navegação superior

- Permite acessar:
  - Início.
  - Contas.
  - Contatos.
  - Oportunidades.
  - Leads.
  - Relatórios.
  - Dashboards.
  - Configuração.

#### Menu de aplicativos

- Permite alternar entre os aplicativos instalados.

#### Barra lateral

- Acesso rápido para:
  - Listas.
  - Calendário.
  - Tarefas.
  - Notas.

#### Pesquisa

- Localiza rapidamente:
  - Registros.
  - Relatórios.
  - Dashboards.
  - Outros dados.

#### Personalização

- Permite:
  - Ajustar layouts.
  - Criar favoritos.
  - Adicionar atalhos.
  - Configurar notificações.

#### Atalhos

- Acesso rápido para:
  - Páginas.
  - Registros.
  - Relatórios.

## Visão de Administrador

### Configuração

#### Como acessar

- Fazer login no Salesforce.
- Clicar no ícone de engrenagem.
- Selecionar Configuração (Setup).

#### Principais recursos

- Usuários e Permissões.
- Objetos e Campos.
- Automações (Flows).
- Relatórios e Dashboards.
- Integrações.

- O acesso depende das permissões do usuário.

## Prática

1.  O que são aplicativos dentro da arquitetura Salesforce?

    > Pendente.

2.  Do que é composto um aplicativo? Cite um cenário utilizando Sales Cloud e outro utilizando Service Cloud.

    > Pendente.

3.  Quais recursos podem ser utilizados para personalizar um aplicativo? Cite alguns exemplos e seus objetivos.

    > Pendente.

4.  Trailhead
    - Configurar sua organização.
      > Pendente.
    - Criar e personalizar aplicativos do Lightning.
      > Pendente.
    - Introdução ao Criador de Aplicativo Lightning.
      > Pendente.

# Aula 5 - Personalização do Lightning Experience

## Modos de Exibição de Lista

- Permitem visualizar e gerenciar registros de diferentes formas.

### List View

- Exibe os registros em formato de tabela.
- Permite:
  - Personalizar colunas.
  - Aplicar filtros.
  - Salvar visualizações.

### Kanban View

- Exibe os registros em cartões organizados por colunas.
- Ideal para:
  - Acompanhar pipelines.
  - Gerenciar fluxos de trabalho.
- Permite mover registros entre colunas.

### Split View

- Exibe a lista de registros e os detalhes do registro selecionado.
- Facilita a navegação e edição de vários registros.

### Recursos das Visualizações

- Personalização de colunas.
- Filtros avançados.
- Pesquisa de registros.
- Ações em massa.
- Salvamento e compartilhamento de visualizações.

## Layouts Compactos

- Definem quais campos aparecem no resumo dos registros.
- Destacam as informações mais importantes.
- São configurados separadamente dos layouts de página.

## Personalização da Página de Registro

- Permite adaptar a interface às necessidades da organização.

### Benefícios

- Melhor usabilidade.
- Exibição das informações mais relevantes.
- Maior automação dos processos.
- Mais consistência dos dados.

## Lightning App Builder

- Ferramenta para criar e personalizar páginas.

### Permite

- Criar ou editar páginas.
- Adicionar componentes padrão.
- Adicionar componentes personalizados (LWC e Aura).
- Adicionar componentes do AppExchange.
- Configurar componentes.
- Definir regras de visibilidade.
- Salvar e ativar páginas.

## Botões e Links Personalizados

- Adicionam funcionalidades específicas ao Salesforce.
- Permitem integração com:
  - URLs externas.
  - Aplicações.
  - Intranet.
  - Sistemas externos.

## Ações Rápidas

- Permitem executar tarefas frequentes com poucos cliques.

### Benefícios

- Aumento da produtividade.
- Melhor experiência do usuário.
- Personalização para objetos e perfis.

## Prática

1. Trailhead:
   - Criar e personalizar modos de exibição de lista.

     > Pendente.

   - Personalizar destaques de registro com layouts compactos.

     > Pendente.

   - Personalizar componentes e campos da página de registro.

     > Pendente.

   - Criar botões e links personalizados.

     > Pendente.

   - Fortalecer seus usuários com ações rápidas.

     > Pendente.

# Aula 6 - Modelagem de Dados

## Campos Personalizados

- Criados para armazenar informações específicas do negócio.

### Tipos de Campos

- Texto.
- Área de Texto.
- Área de Texto Longa.
- Área de Texto Enriquecido.
- Número.
- Decimal.
- Porcentagem.
- Moeda.
- Data.
- Data/Hora.
- Lista de Seleção (Picklist).
- Lista de Seleção Múltipla.
- Checkbox.
- URL.
- E-mail.
- Telefone.

## Campos de Fórmula

- Calculam valores automaticamente com base em outros campos.
- São campos somente leitura.
- Atualizam os valores dinamicamente.

### Tipos

- Numérico.
- Texto.
- Data.
- Booleano.
- Moeda.

### Funções Comuns

- Matemáticas.
  - ABS.
  - ROUND.
  - SQRT.

- Lógicas.
  - IF.
  - AND.
  - OR.
  - NOT.

- Texto.
  - CONCATENATE.
  - LEFT.
  - RIGHT.
  - LEN.

- Data e Hora.
  - TODAY.
  - NOW.
  - YEAR.
  - MONTH.
  - DAY.

- Informações de Campos.
  - BLANKVALUE.
  - NULLVALUE.
  - ISPICKVAL.
  - CASE.

## Boas Práticas

- Criar fórmulas simples.
- Testar as fórmulas.
- Tratar valores nulos.
- Utilizar nomenclatura consistente.
- Criar descrições claras.
- Utilizar regras de validação.
- Documentar as fórmulas.

## Relacionamentos

- Definem como os objetos se conectam.

### Lookup

- Relacionamento flexível.
- O registro filho pode existir sem o registro pai.
- Não possui exclusão em cascata.

### Master-Detail

- O registro filho depende do registro pai.
- Possui exclusão em cascata.
- Herda permissões do registro pai.

### Many-to-Many

- Relaciona vários registros entre si.
- Utiliza um objeto de junção.

### Hierarchical

- Utilizado apenas no objeto Usuário.
- Cria relações hierárquicas, como gerente e subordinado.

# Gerenciamento de Dados

## Importação de Dados

### Data Import Wizard

- Ferramenta para importações simples.
- Suporta:
  - Até 50.000 registros.
  - Arquivos CSV.
  - Arquivos de até 100 MB.

### Data Loader

- Ferramenta para grandes volumes de dados.
- Permite:
  - Importar.
  - Exportar.
  - Atualizar.
  - Excluir registros.
- Suporta até 5 milhões de registros.

### Importação via API

- Utilizada para integrações automáticas com outros sistemas.

### Ferramentas de Terceiros

- Oferecem recursos adicionais para importação e validação de dados.

## Workbench

- Ferramenta web para trabalhar com dados e metadados.

### Permite

- Consultar dados.
- Importar e exportar dados.
- Acessar metadados.
- Testar APIs.

## Salesforce Inspector

- Extensão para Chrome e Edge.

### Permite

- Visualizar registros.
- Importar e exportar dados.
- Executar consultas SOQL.
- Inspecionar metadados.

## Resumo das Ferramentas

- Data Import Wizard.
  - Importações simples.

- Data Loader.
  - Grandes volumes de dados.

- Workbench.
  - Administração, testes e consultas.

- Salesforce Inspector.
  - Produtividade e consultas rápidas.

- A ferramenta ideal depende da necessidade do processo.

## Prática

1. Descrever as ferramentas de importação apresentadas na aula.

   > Pendente.

2. Trailhead:
   - Gerenciamento de Dados.

     > Pendente.

   - Fórmulas e Validações.
     > Pendente.

# Aula 7 - Segurança de Dados

## Estrutura de Segurança

- O Salesforce utiliza diversos recursos para proteger os dados e controlar o acesso dos usuários.

### Recursos de Segurança

- Infraestrutura segura.
- Criptografia de dados.
- Controles de acesso.
- Autenticação Multifator (MFA).
- Monitoramento e auditoria.
- Proteção contra ameaças.
- Conformidade com regulamentações.

## Níveis de Acesso

### Perfil (Profile)

- Define as permissões básicas do usuário.
- Controla o acesso a:
  - Objetos.
  - Campos.
  - Recursos da plataforma.

### Função (Role)

- Define a hierarquia da organização.
- Permite acesso aos registros de usuários subordinados.

### Grupo de Papéis

- Compartilha registros entre usuários de diferentes funções.
- Expande o acesso além da hierarquia.

### Regras de Compartilhamento

- Compartilham registros automaticamente.
- Baseadas em critérios definidos pelo administrador.

### Compartilhamento Manual

- Compartilha registros individualmente.
- Utilizado para acessos temporários ou específicos.

### Permissões de Campo

- Controlam quem pode:
  - Visualizar.
  - Editar.
  - Alterar determinados campos.

## Permission Sets

- Concedem permissões adicionais sem alterar o perfil do usuário.
- Permitem acesso a funcionalidades, objetos e dados específicos.
- Oferecem maior flexibilidade no gerenciamento de permissões.

## Caso de Uso

### Empresa

- LogFlash.

### Produtos Utilizados

- Sales Cloud.
- Service Cloud.

### Licenças

- 4 Sales.
- 4 Service.

### Perfis

- Vendas.
- Atendimento.

### Funções

- Diretor.
- Gerente.
- Supervisor.
- Vendedor.
- Atendente.

### Hierarquias

- Vendas.
  - Diretor.
  - Gerente.
  - Vendedor.

- Atendimento.
  - Supervisor.
  - Atendente.

### Permission Sets

- Vendas.
  - Criador e visualizador de relatórios.

- Atendimento.
  - Supervisor do Omni-Channel.

## Prática

1. O que são perfis e o que eles controlam?
   > Pendente.
2. O que são papéis e o que eles controlam?
   > Pendente.
3. Trailhead:
   - Trilha Segurança de Dados.
     > Pendente.

# Aula 9 - Organizando Demandas

## Etapas de um Projeto

### 1. Análise e Planejamento Inicial

- Levantamento dos requisitos do negócio.
- Identificação dos desafios da empresa.
- Mapeamento dos processos.
- Definição dos usuários.
- Definição dos objetivos do projeto.

### 2. Design da Solução

- Definição da arquitetura da solução.
- Modelagem de objetos e campos.
- Planejamento da segurança.
- Definição das automações.
- Planejamento de relatórios e dashboards.

### 3. Configuração, Customização e Desenvolvimento

- Configuração da organização.
- Criação de automações.
- Desenvolvimento de personalizações.
- Integração com sistemas externos.

### 4. Integração e Migração de Dados

#### Integração

- Definição da tecnologia de integração.
- Segurança das integrações.
- Monitoramento.
- Tratamento de erros.
- Testes de integração.

#### Migração de Dados

- Avaliação da qualidade dos dados.
- Mapeamento dos dados.
- Transformação dos dados.
- Limpeza e deduplicação.
- Backup.
- Validação após a migração.

### 5. Testes, Validação e Correções

#### Testes

- Testes unitários.
- Testes funcionais.
- Testes de integração.
- Testes de usabilidade.
- Testes de desempenho.
- Testes de segurança.

#### Correções

- Identificação de defeitos.
- Priorização das correções.
- Testes de regressão.
- Validação das correções.
- Comunicação com as partes envolvidas.

### 6. Implementação e Treinamentos

#### Implementação

- Planejamento da implantação.
- Configuração do ambiente de produção.
- Migração dos dados.
- Validação final.
- Atualização da documentação.

#### Treinamentos

- Materiais de treinamento.
- Treinamento para administradores.
- Treinamento para usuários finais.
- Treinamentos avançados.
- Coleta de feedback.

## Boas Práticas

- Alinhar a solução aos requisitos do negócio.
- Seguir as boas práticas do Salesforce.
- Documentar todas as customizações.
- Realizar testes antes da implantação.
- Manter comunicação constante com os stakeholders.

## Prática

1. Trailhead:
   - Personalizar um Objeto do Salesforce
     > Concluído.

# Aula 10 - Relatórios e Painéis

## Conceitos Básicos

### Dados x Resultados

- Os dados ajudam na tomada de decisões.
- Permitem analisar indicadores e identificar oportunidades de melhoria.

## Relatórios

- Conjunto de dados organizados com base em critérios.
- Permitem:
  - Filtrar dados.
  - Agrupar informações.
  - Realizar cálculos.
  - Criar gráficos.

- Utilizados para analisar informações detalhadas.

## Gráficos

- Representam visualmente os dados de um relatório.
- Facilitam a análise de:
  - Tendências.
  - Resultados.
  - Indicadores.

## Painéis (Dashboards)

- Reúnem gráficos e métricas em uma única tela.
- Exibem informações de um mesmo tema.
- Facilitam o acompanhamento de indicadores.

## Prática

1. Trailhead
   - Criar relatórios com o Criador de Relatórios.
     > Concluído.
   - Filtrar seu relatório.
     > Concluído.
   - Formatar seu relatório.
     > Concluído.
   - Conheça os relatórios e os painéis do Lightning.
     > Concluído.
   - Visualizar seus dados com o Criador de Painéis do Lightning.
     > Concluído.

# Aula 11 - Desenvolvimento Salesforce

## Apex

- Principal linguagem de programação do Salesforce.
- Baseada em Java, facilitando a adaptação para quem já conhece essa linguagem.
- Executada no servidor (backend), sendo responsável pela lógica de negócio da aplicação.
- Permite criar automações, validações, integrações e manipular registros diretamente no banco de dados.
- Possui acesso transacional aos dados, permitindo realizar rollback quando necessário.
- É uma linguagem orientada a objetos e utiliza classes, interfaces, herança, métodos e coleções.
- Todo código Apex deve possuir testes unitários para ser implantado em produção.
- Está sujeita aos **Governor Limits**, que limitam o uso de recursos para garantir o desempenho da plataforma.

## Lightning Web Components (LWC)

- Framework moderno para desenvolvimento de interfaces no Salesforce.
- Utiliza tecnologias web padrão:
  - HTML
  - CSS
  - JavaScript
- Cria componentes reutilizáveis e responsivos.
- Possui melhor desempenho que o Aura Components e é a tecnologia recomendada para novos projetos.
- Pode consumir dados através do Lightning Data Service ou utilizando Apex.

## Visualforce

- Tecnologia utilizada para criar páginas personalizadas no Salesforce.
- Integra HTML, CSS, JavaScript e Apex.
- Muito utilizada em projetos antigos (legados).
- Atualmente, para novos desenvolvimentos, o recomendado é utilizar Lightning Web Components.

## SOQL (Salesforce Object Query Language)

- Linguagem utilizada para consultar dados no Salesforce.
- Muito semelhante ao SQL tradicional.
- Permite selecionar campos específicos de um objeto.
- Utilizada em Apex, Workbench, Developer Console e outras ferramentas da plataforma.

## Apex Triggers

- São blocos de código Apex executados automaticamente quando ocorre um evento em um registro.
- Podem ser executados antes (**before**) ou depois (**after**) de operações como:
  - Insert.
  - Update.
  - Delete.
  - Undelete.
- São utilizados para implementar regras de negócio e automatizar processos.
- Devem seguir boas práticas, como evitar consultas dentro de loops e possuir testes unitários.

## Prática

1. Com suas palavras, o que são automações? Cite as principais automações.

   > Automações são recursos que executam tarefas automaticamente, sem a necessidade de ação manual. As principais são Flows, Apex Triggers, Approval Processes e Validation Rules.

2. Exemplos para a utilização de automações

   > Enviar e-mails automaticamente, atualizar campos, criar registros relacionados, aprovar solicitações e validar informações antes de salvar um registro.

3. Com suas palavras, o que seria a ordem de execução de automações? Por que isso existe?

   > É a sequência em que as automações são executadas quando um registro é criado ou atualizado. Ela existe para garantir que tudo aconteça na ordem correta e evitar conflitos entre processos.

4. Com suas palavras, o que são triggers?

   > Triggers são blocos de código Apex executados automaticamente antes ou depois de ações como criar, atualizar ou excluir um registro.

5. Qual linguagem de programação usamos no Salesforce?

   > A principal linguagem de programação do Salesforce é o Apex.

6. Trailhead:
   - Código com Linguagens do Salesforce.
     > Concluído.
   - Banco de Dados e Noções Básicas do Apex.
     > Concluído.
   - Início Rápido: Apex.
     > Concluído.
