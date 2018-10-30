# Objetivos
Desenvolver a atividade de detecção de notícias de eventos de interesse à saúde.

# Campo de Aplicação
Monitoramento de eventos de interesse à saúde.

# Rotina
Detectar, validar e organizar notícias de eventos de interesse à saúde.

# Introdução
A Detecção Digital de Doença pode ser feita através da utilização de ferramentas que funcionam com o objetivo de minerar as informações contidas nas fontes não oficiais, fortalecendo a atividade de detecção precoce dos eventos de saúde (possíveis surtos ou casos de doenças tidas como emergências em saúde pública).

# Passo a Passo

### Definição das bases de dados de notícias (sites) para pesquisa

A definição das bases de dados para a busca de notícias levou em consideração a importância na compilação de registros de informações não oficiais, bem como sua abrangência nacional e internacional.
As bases de dados utilizadas são:  [GPHIN](https://gphin.canada.ca/), [HealthMap](http://www.healthmap.org/pt/), [PromedMail](https://www.promedmail.org/pt), [Google News](http://news.google.com.br/), [MediSys](http://medisys.newsbrief.eu/medisys/homeedition/pt/home.html), além do [Google Alertas](https://www.google.com.br/alerts), que foi configurado à uma conta do gmail (XXXXXXXXXXXX) para o recebimento diário de alertas sobre as doenças e agravos de interesse cadastrados.
Para a busca de regulamentos e diretrizes nacionais e internacionais sobre arboviroses utiliza-se os seguintes sites: [OMS/WHO](http://www.who.int/neglected_diseases/mediacentre/resolutions/en/index2.html), [Nações Unidas](http://www.un.org/en/documents/index.html), [OPAS/OMS](http://iris.paho.org/xmlui/handle/123456789/2870), [OPAS/OMS 2](http://iris.paho.org/xmlui/handle/123456789/25), [Ministério da Saúde ](http://portalms.saude.gov.br/), [Sistema de Legislação da Saúde](http://portal2.saude.gov.br/saudelegis/LEG_NORMA_PESQ_CONSULTA.CFM), [CNS/MS](http://www.conselho.saude.gov.br/), Secretarias (áreas diretrizes/normas/).
Outros portais podem ser visitados para verificação dos assuntos mais mencionados, como por exemplo:

 - [who.int/blueprint](http://www.who.int/blueprint/en/)
 - [Catham House Trust](https://datasharing.chathamhouse.org/guide/principles/trust/)
 - [Paho Chikungunya](http://www.paho.org/hq/index.php?option=com_topics&view=article&id=343&Itemid=40931&lang=en)
 - [Paho/Who Zika Virus](http://www.paho.org/hq/index.php?option=com_content&view=article&id=11585&Itemid=41688&lang=en)
 - [Paho Dengue](http://www.paho.org/hq/index.php?option=com_topics&view=article&id=1&Itemid=40734&lang=en)
 - [Paho Yellow Fever](http://www.paho.org/hq/index.php?option=com_topics&view=article&id=69&Itemid=40784&lang=en)
 - [Paho Vectors](http://www.paho.org/hq/index.php?option=com_topics&view=article&id=65&Itemid=40780&lang=en)
 - [Vector Born Diseases Map](http://ais.paho.org/phip/viz/cha_cd_vectorborndiseases.asp)
 - [Paho/Who Arboviruses](http://www.paho.org/hq/index.php?option=com_content&view=article&id=12905%3Amore-information-on-arboviruses&catid=8990%3Arelda-network-&Itemid=42243&lang=en)
 - [Paho](http://www.paho.org/bra/)


### Definição dos Eventos a serem acompanhados

A definição dos eventos teve como base a Lista Nacional de Notificação Compulsória (Brasil, 2016), a Lista de Doenças de prioridade para a pesquisa em 2018 publicada pela Organização Mundial de Saúde (OMS) (PAHO, 2018), bem como a lista de arbovíroses de importância local, nacional e global para o período.
As doenças foram classificadas em dois grupos: busca diária (doenças e eventos de grande importância nacional no período) e busca semana (doenças de importância que não estão em foco na atualidade). Na tabela 1 podemos observar um calendário com a distribuição dessas doenças utilizado a partir de março/2018, porém essa classificação pode sofrer alterações com o aparecimento de novos surtos.

![(TO DO)]

### Utilização de filtros para busca

A depender do site onde se realiza a busca de notícias será necessário utilizar-se de filtros para melhor organização da pesquisa. De forma padronizada, devemos levar em consideração a data da notícia. Serão selecionadas notícias de no máximo três dias antes da data da busca, com o objetivo de coletar dados os mais atualizados possíveis. Essa regra só poderá ser quebrada, se for encontrado uma notícia de indiscutível importância que venha a impactar o cenário da saúde nacional ou mundial e que por algum motivo não tenha sido recuperada anteriormente.
As notícias selecionadas deverão compreender o maior número de línguas possíveis, podendo fazer o uso de tradutores online conforme for necessário, porém com cautela.

### Busca de notícias nas bases de dados

A busca de notícias nas bases de dados será apresentada individualmente para cada site.

##### HealthMap

Trata-se de uma plataforma online desenvolvida com o intuito de fornecer apresentações visuais da incidência de doenças relatadas, indicando sua localização geográfica. O HealthMap agrega múltiplas fontes de dados online (por exemplo, GoogleNews, feeds RSS, alertas ProMED e Redes Sociais como Twitter) para monitoramento e vigilância de surtos em tempo real. O site é gerenciado pelos EUA e teve sua criação em 2006, com a utilização de dados primários e secundários. Entre seus principais objetivos, está o georeferenciamento de informações de relevância epidemiológica, disponibilizando para consulta da população via web. Suas apresentações são através de _website_ e aplicativo móvel. O site pode ser acessado pelo link [HealthMap](http://www.healthmap.org/pt/).

Guia de Utilização:

Para configurar os filtros para pesquisa desejada basta clicar na lupa no canto superior esquerdo da tela.

![(TO DO)]


Filtros para configuração da pesquisa disponíveis na ferramenta:

-   Doenças:
    
    -   “Choose diseases” - Seleciona uma ou mais doenças específicas que sejam de interesse da pesquisa escrevendo no campo as doenças; e
        
    -   “All diseases” - Mantendo a opção marcada todas as notícias com as doenças disponíveis serão mostradas.
        
-   Localização:
    
    -   “Choose countries” e “Choose a precise location” - Selecionam uma ou mais localizações exatas que sejam de interesse (Ex.: País), escrevendo nos campos;
        
    -   “All locations” - Mantendo a opção marcada todas as notícias de todas as localidades serão mostradas.
        
-   Source:
    
    -   “Choose sources” - Seleciona uma ou mais fontes das informações que sejam de interesse
        
    -   “All sources” - Mantendo a opção marcada todas as notícias de todas fontes serão mostradas.
        
-   Espécies:
    
    -   “Choose especies” - Seleciona uma ou mais espécies que sejam de interesse (Ex.:Human - Non-Human), escrevendo no campo;
        
    -   “Allspecies” – Mantendo a opção marcada todas as notícias de todas as espécies serão mostradas.
        
-   Data:
    
    -   Períodos previamente configurados – Seleciona o período das notícias utilizando os períodos criados pela ferramenta;
        
    -   Períodos configurados pelo usuário – Seleciona o período de interesse através dos campos “from” e “to”, data de início e término.
        

Clicando no campo “submit search” será feita a busca aplicando os filtros definidos pelo usuário.

![(TO DO)]

As informações após a pesquisa inicial são mostradas no mapa, para a apresentação em forma de lista basta clicar no campo “Vista de lista”, na parte superior direita da tela.

![(TO DO)]

Para facilitar a visualização das notícias o campo de “Display x results” pode ser utilizado, onde é possível selecionar quantas notícias serão apresentadas na lista de resultado da pesquisa (5, 10, 20 ou all).

A lista de resultado da pesquisa feita apresenta os seguintes campos:

-   Source – Fonte onde foi localizada a notícia;
    
-   Data – Data da notícia;
    
-   Summary – Título resumo da notícia;
    
-   Doenças – Doenças da qual se trata a notícia.
    
-   Localização – Localização da notícia;
    
-   Espécies – Espécies envolvidas na notícia (Ex.: Humanos - porcos – macacos);
    
-   Cases – Número de casos apresentados na notícia, nem sempre essa informação é apresentada na lista;
    
-   Deaths – Número de morte apresentado na notícia, nem sempre essa informação é apresentada na lista; e
    
-   Significance – Avaliação quantificada feita pelos usuários do HealthMap quanto a significância da notícia, variando entre 0 e 5 estrelas.

![(TO DO)]

Clicando na notícia de interesse abre para o usuário uma tela (pop-up) onde são apresentadas as informações da notícia, opções para compartilhar através do campo “Share” e o campo para direcionamento para o link original da notícia através do campo “view full article”.

##### ProMED

O Programa de Monitoramento de Doenças Emergentes (ProMED), é considerado um dos programas pioneiros na atividade de detecção digital e alertas precoces de doenças. Considerado por muitos uma das maiores plataformas de alertas de doenças de acesso público disponíveis em todo o mundo, o ProMED utiliza a transferência digital de dados sobre as doenças em tempo real dos membros participantes. Em 2007, a ProMED tinha cerca de 40 mil assinantes de mais de 165 países e estava gerando sete a dez alertas diariamente sobre eventos de importância para a saúde pública (10). Foi desenvolvido nos EUA no ano de 1996, a partir de dados secundários. O principal objetivo é coletar dados no espaço virtual relacionados a doenças e agravos. Esta disponível no modo _website_e aplicativo móvel. O site pode ser acesso pelo link [PromedMail](http://www.promedmail.org/).

  

Guia de Utilização:

  

A tela principal do PromedMail apresenta as notícias sem filtros no quadro do lado esquerdo, para configurar os filtros basta clica no comando “Search”. O Promed permite adicionar filtros através de palavras que serão localizadas no tema e/ou no título das notícias disponíveis, marcando as opções de “Subject” e “Post”.

![(TO DO)]

A Rede Regional selecionada determina o idioma exigido do seu termo de pesquisa. Se você selecionar ProMED-FRA, você deve inserir um termo de pesquisa em francês . ProMED-ESP requer um termo de pesquisa em espanhol, ProMED-PORT requer português e ProMED-RUS requer russo. PRO / MBDS, ProMED-EAFR e ProMED-mail são todas listas de língua inglesa e requerem termos de pesquisa em inglês.

![(TO DO)]

Para configurar as pesquisas temos disponíveis as condições lógicas (Obs.: Elas devem ser escritas maiúsculas):

-   AND - Localiza notícias que possuam todas as palavras escritas no campo de busca (Ex.: óbito AND dengue, a pesquisa vai localizar notícias que possuam as duas palavras;
    
-   OR - Localiza notícias que possuam uma das palavras escritas no campo de busca; e
    
-   NOT - Localiza notícias que não possuam as palavras escritas no campo de busca.

![(TO DO)]

Existe ainda a opção de filtrar por data as notícias, sendo que as datas devem ser selecionadas a partir do calendário ou inseridas no formato MM/DD/AAAA. As datas de início ou término em branco se desejar que sua pesquisa seja aberta (Obs.: Os arquivos do ProMED datam de 19 de agosto de 1994).

![(TO DO)]

Apertando o botão “Search” as configurações dos filtros serão aplicadas e a lista de notícias aparece no mesmo local da página inicial, ao clicar na notícia de interesse o resumo da notícia abre na parte direita da tela.

![(TO DO)]

Ao clicar nas notícias, será apresentado além do resumo do texto da notícia, informações como data de publicação, fonte da informação e o link original da notícia. Clicando no link o usuário será encaminhado diretamente para o site original da notícia.

![(TO DO)]

##### GPHIN

A Agência de Saúde Pública da Rede Global de Inteligência de Saúde Pública do Canadá (GPHIN) é uma rede de inteligência epidemiológica, que depende da transferência de informações digitais sobre doenças como o núcleo de seus sistemas.
O GPHIN é um sistema de alerta precoce para potenciais ameaças à saúde pública em todo o mundo. É um serviço de conscientização situacional 24/7 com curadoria: analistas humanos monitoram fontes de mídia em todo o mundo e fornecem informações organizadas e relevantes aos usuários,permitindo que eles respondam a potencial ameaças à saúde. Foi desenvolvido no Canadá a partir do ano de 1997. Trabalha com fonte de dados secundários. Seu principal objetivo é coletar dados no espaço virtual relacionados a um tema de interesse. O site pode ser acessado através do link [GPHIN](https://gphin.canada.ca/).
É necessário um usuário liberado pela Agência para que possa utilizar a ferramenta, a solicitação deve ser feita através do email: GPHIN-RMISP@phac-aspc.gc.ca. São considerados usuários elegíveis as agências e organizações não governamentais, bem como autoridades governamentais que realizam vigilância da saúde pública.

  

Guia de utilização:

A tela inicial do GPHIN apresenta a seleção disponíveis de dois idiomas para a ferramenta (Inglês e Francês)

![(TO DO)]

Ao clicar no idioma desejado, a página para acesso à ferramenta é aberta para que seja acessada com usuário e senha, cadastrados anteriormente. Lembrando que o acesso precisa ser solicitado através do e-mail: GPHIN-RMISP@phac-aspc.gc.ca.

![(TO DO)]

A página inicial após acesso na ferramenta, apresenta as notícias e as opções:

-   “Filter Results (results filtered using 'default' query)”: Configurações de filtros.
    
-   “Show Map and Graph”: Apresenta as informações em forma de gráfico e de mapa.

![(TO DO)]

Ao clicar na configuração de filtros, as opções para a definição da pesquisa serão apresentadas.

![(TO DO)]

Para selecionar as doenças de interesse, utilizamos o campo de definição de texto/condicionais, para configurar a busca de interesse. Existem as opções:
“Contains”: Seleciona notícias com o texto exato como escrito no campo
“Contains the following words near each other”: Seleciona as notícias que possuam as palavras escritas no campo próximas umas das outras, ou seja, em sequência
“Contains all of the following”: Seleciona as notícias com todos as palavras escritas no campo
“Contains at least one of the following”: Seleciona as notícias com pelo menos uma das palavras escritas no campo
“Does not contains”: Seleciona as notícias que não contenham o texto escrito no campo
“Does not contains any of the following”: Seleciona notícias que não possuam nenhuma das palavras escritas no campo
“Contains this part of the word”: Seleciona notícias que possuam a parte (pedaço) da palavra escrita no campo
“Matches this regular expression” Seleciona notícias que possuam essa expressão escrita no campo

![(TO DO)]

Utilizamos a opção “Contains at least one of the following” para efetuar a busca de todos os filtros definidos anteriormente de uma só vez, separando as palavras com uma vírgula (“,”).
No campo “type text here” escrevemos as palavras que desejamos utilizar para a busca de notícias.

![(TO DO)]

O GHIN possui ainda um filtro por idioma, que pode ser utilizado para filtrar as notícias de acordo ao idioma da notícia original.

![(TO DO)]

Por padrão o GPHIN já vem configurado para buscar as notícias de até 48 horas atrás, isso devido ao seu banco de dados só armazenar notícias por no máximo 48 horas. Mas existem filtros disponíveis que podem ser utilizados para tempo e data, e filtros que no futuro podem ser adicionados caso o GPHIN mude sua configuração do banco de dados.

![(TO DO)]

Ao clicar no botão “Search” os filtros configurados pelo usuário serão aplicados, trazendo como resultado as notícias que sejam de interesse.

![(TO DO)]

Como padrão o GPHIN traz 10 notícias por página, clicando na caixa “Show X entries” o usuário pode mudar para a quantidade que seja de interesse. (Limite: 500 por página)

![(TO DO)]

Clicando na notícia que seja de interesse, uma nova página será aberta apresentando as informações das notícias.
Location: Localização da notícia
Information: Informações gerais da notícia
Categories: Classificação da notícia (Ex.: forma de contágio e espécies envolvidas)
Keywords: Palavras chaves da notícia

  

Apresenta ainda o título da notícia e um resumo.

![(TO DO)]

Existe a opção em algumas notícias de visualizar em idiomas diferente clicando no campo “Article language”.

![(TO DO)]

Clicando no link quando disponível no campo “Source Link” em “Information” o usuário pode acessar a notícia original.

##### Google News

Google Notícias é um serviço da empresa norte-americana Google Inc. que funciona como uma ferramenta de busca e permite a visualização de notícias na internet. O grande diferencial do Google News é que as notícias apresentadas são escolhidas e organizadas através de um algoritmo, que leva em conta, dentre outros fatores, o número de vezes em que determinada notícia aparece e em quais sites ela aparece.
A primeira versão do Google News foi em inglês, voltada primariamente para o público dos Estados Unidos. Em novembro de 2005 foram lançadas as versões em português tanto para o Brasil como para Portugal, na versão brasileira e na versão de Portugal, são lidas cerca de 1.500 fontes, enquanto na versão estadunidense são 4500 fontes pesquisadas. (12). O país de origem foi os EUA e teve seu início em 2002. Utiliza-se de fontes de dados secundários. Seu principal objetivo é coletar dados no espaço virtual relacionados a um tema de interesse. É possível acessá-lo pelo link [Google News](https://news.google.com.br/).

  

Guia de Utilização:

  

A página do Google News possui filtros por localização da notícia, ou seja, por país e filtros pré-definidos (Ex.: Saúde, Ciência e Esportes).

![(TO DO)]

Selecionando o país, as notícias serão filtradas de acordo com o país de interesse.

![(TO DO)]

Clicando no filtro (na categoria) de interesse a ferramenta efetua uma busca pelo algoritmo próprio do Google, trazendo para o usuário as notícias classificadas como mais importantes e/ou com mais acesso.

![(TO DO)]

O usuário pode adicionar filtros de seleção (categorias) através de dois caminhos:

-   Clicando na engrenagem no canto superior direito da tela
    
-   Clicando na opção “Gerenciar seções”

![(TO DO)]

Para configurar o novo filtro de busca o usuário basta preencher o campo “Insira sua busca” com a palavra de interesse e clicar no botão “Adicionar Seção”.

  

Obs.: O título da seção é um campo opcional, caso o usuário não queira preencher, o sistema gera um título automático relacionado com a palavra de busca.

![(TO DO)]

Após a inserção da Seção de interesse do usuário, a tela principal apresentará o novo filtro disponível para a busca junto com os filtros pré-definidos.

![(TO DO)]

No lado direito da tela de busca da ferramenta são apresentadas possíveis seleções para o usuário através de temas relacionados.

![(TO DO)]

O Google não elabora resumos sobre a notícias, ele apenas apresenta a notícia em forma de link, informação de a quanto tempo que a notícia foi publicada e a fonte da notícia.

![(TO DO)]

##### Google Alertas

O Google Alertas é um serviço da empresa Google que funciona como uma ferramenta de detecção digital passiva, onde a ferramenta detecta novos conteúdos indexados pelo Google que sejam de temas de interesse, como páginas da web, notícias, artigos, posts de blog, etc, notificando usuários cadastrados por e-mail.

-   País, ano de base: EUA, 2002.
    
-   Fonte de dados: Secundária.
    
-   Principais Objetivos: Coletar dados no espaço virtual relacionados a um tema de interesse de forma automática.
    
-   Plataforma de interação: Website.
    
-   Endereço Virtual: [Google Alerts](https://www.google.com.br/alerts)
    

  

Guia de Utilização:

  

A tela inicial do Google Alertas mostra os alertas definidos pelo usuário.

![(TO DO)]

Para adicionar um novo alerta basta digitar o tema/palavra de interesse no campo “Criar um alerta sobre”

  

Ao escrever o tema de interesse serão apresentadas aos usuários notícias localizadas sobre o tema no campo “Visualização do alerta” e os botões “Criar alerta” e “Mostrar opções”.

![(TO DO)]

Clicando no botão “mostrar opções”, serão apresentadas ao usuário as configurações disponíveis na ferramenta para os alertas.

![(TO DO)]

Configurações disponíveis:

-   Frequência: Seleciona a frequência que o usuário quer receber as notícias relacionadas ao alerta.
    
    -   Uma vez por dia
        
    -   Uma vez por semana
        
    -   Quando disponível
        
-   Fontes: Seleciona as fontes que a ferramenta vai fazer a busca desse alerta.
    
    -   Automático: Todas
        
    -   Blogs
        
    -   Notícias
        
-   Idioma: Seleciona o idioma de interesse para localização das notícias
    
-   Região: Seleciona a localização de interesse.
    
-   Quantos: Seleciona a quantidade das notícias que serão encaminhadas (de acordo com a seleção)
    
    -   Somente os melhores: Seleciona somente aqueles definidos como “melhores” pelo algoritmo do Google.
        
    -   Ver Todos
        
-   Enviar para: define o e-mail que receberá o compilado de notícias relacionados ao alerta configurado

![(TO DO)]

Após adicionar o alerta, o usuário passa a receber no e-mail configurado o compilado do tema de interesse.

O usuário pode alterar as configurações do alerta clicando no botão “editar” com formato de Lápis, ou excluir clicando no botão da lixeira.

### Seleção das notícias

As notícias encontradas deverão passar por um processo de avalição para serem selecionadas somente aquelas que de fato trazem contribuições para o conhecimento atual. A primeira avaliação a ser feita é se as notícias estão dentro do tema selecionado. A seguir é considerado a relevância do tema e sua forma de apresentação. Deverão ser selecionadas apenas as notícias que grande impacto no período considerado.

### Coleta das informações

Após a escolha das notícias relevantes será feita a coletas das informações. As informações essenciais serão salvas em um arquivo .docx. Serão necessárias informações sobre: local de onde a notícia se refere, título, foto (caso houver), texto resumido com as principais contribuições da notícia, data da publicação e link para acesso à notícia.
Com o documento pronto com os dados essenciais das notícias selecionadas, o responsável deverá salvá-lo no Own Cloud na pasta Sala de Situação>Clipping de Notícias, em arquivo identificando o nome com os seguintes dados: Clipping de Notícias e data.

# Equipamentos / Insumos
-     
    Computador/ Tablet
    
-   Acesso à Internet
    
-   Acesso ao Google Drive ou OneDrive ou Excel
    
-   Acesso ao Own Cloud
    
-   Acesso aos sites de referência
    
-   Acesso a software (Word/Excel/Powerpoint).

# Responsabilidades

É de responsabilidade do técnico de detecção realizar a atividade diariamente, preencher o documento .docx de controle e disponibilizar o resultado final para que as outras equipes tenham acesso.

# Referências

1. ORGANIZAÇÃO MUNDIAL DA SAÚDE. **Agência Nacional de Vigilância Sanitária. Regulamento Sanitário Internacional RSI - 2005**. Brasília, 2009. Disponível em:<[http://www.anvisa.gov.br/hotsite/viajante/Regulamento_Sanitario_Internacional_vers%C3%A3o%20para%20impress%C3%A3o.pdf](http://www.anvisa.gov.br/hotsite/viajante/Regulamento_Sanitario_Internacional_vers%C3%A3o%20para%20impress%C3%A3o.pdf)> . Acesso em: 17 Jan. 2018.

  

2. BRASIL. Ministério da Saúde.**Secretaria de Vigilância em Saúde. Departamento de Vigilâncias das Doenças Transmissíveis. Plano de Operação do Ponto Focal Nacional para o Regulamento Sanitário Internacional**. 2016. Disponível em: <[http://portalarquivos2.saude.gov.br/images/pdf/2016/agosto/04/PF-RSI-2016-e.pdf](http://portalarquivos2.saude.gov.br/images/pdf/2016/agosto/04/PF-RSI-2016-e.pdf)>. Acesso em: 17 Jan. 2018.

3. Yu VL, Madoff LC.**ProMED-mail: An Early Warning System for Emerging Diseases**. Clin Infect Dis [Internet]. 2004 Jul 15;39(2):227–32. Disponível em: <[https://academic.oup.com/cid/article-lookup/doi/10.1086/422003](https://academic.oup.com/cid/article-lookup/doi/10.1086/422003)> .Acesso em: 17 Jan. 2018.

4. Mykhalovskiy E, Weir L. **The Global Public Health Intelligence Network and early warning outbreak detection: a Canadian contribution to global public health. 2018.**Disponível em:<[http://www.ncbi.nlm.nih.gov/pubmed/16512327](http://www.ncbi.nlm.nih.gov/pubmed/16512327)>. Acesso em: 17 Jan. 2018.

5. Freifeld CC, Mandl KD, Reis BY, Brownstein JS.**HealthMap: Global Infectious Disease Monitoring through Automated Classification and Visualization of Internet Media Reports.** 2018. Disponível em: <[https://academic.oup.com/jamia/article-lookup/doi/10.1197/jamia.M2544](https://academic.oup.com/jamia/article-lookup/doi/10.1197/jamia.M2544)>. Acesso em: 17 Jan. 2018.

6. Brownstein JS, Freifeld CC, Reis BY, Mandl KD. **Surveillance sans fronti??res: Internet-based emerging infectious disease intelligence and the HealthMap project.** PLoS Med [Internet]. 2018. Disponível em: <[http://dx.plos.org/10.1371/journal.pmed.0050151](http://dx.plos.org/10.1371/journal.pmed.0050151)>. Acesso em: 17 Jan. 2018.

  

7. Schwind JS, Wolking DJ, Brownstein JS, Mazet JAK, Smith WA.**Evaluation of Local Media Surveillance for Improved Disease Recognition and Monitoring in Global Hotspot Regions.**Gatton ML, editor. PLoS One [Internet]. 2014 Oct 15;9(10):e110236.Disponível em: : <[http://dx.plos.org/10.1371/journal.pone.0110236](http://dx.plos.org/10.1371/journal.pone.0110236)>. Acesso em: 17 Jan. 2018.

  

8. Weaver DA, Bimber B. **Finding News Stories: A Comparison of Searches Using Lexisnexis and Google News**. Journal Mass Commun Q [Internet]. 2008 Sep;85(3):515–30. Disponível em: <[http://journals.sagepub.com/doi/10.1177/107769900808500303](http://journals.sagepub.com/doi/10.1177/107769900808500303)>. Acesso em: 17 Jan. 2018.

  

9. Smolinski MS, Crawley AW, Baltrusaitis K, Chunara R, Olsen JM, Wójcik O, et al. **Flu near you: Crowdsourced symptom reporting spanning 2 influenza seasons.**Am J Public Health [Internet]. 2015 Oct;105(10):2124–30. Disponível em: <[http://ajph.aphapublications.org/doi/10.2105/AJPH.2015.302696](http://ajph.aphapublications.org/doi/10.2105/AJPH.2015.302696)>. Acesso em: 17 Jan. 2018.

  

10. Perrotta D, Tizzoni M, Paolotti D. **Using Participatory Web-based Surveillance Data to Improve Seasonal Influenza Forecasting in Italy.**In: Proceedings of the 26th International Conference on World Wide Web - WWW ’17 [Internet]. New York, New York, USA: ACM Press; 2017. p. 303–10.Disponível em: <[http://dl.acm.org/citation.cfm?doid=3038912.3052670](http://dl.acm.org/citation.cfm?doid=3038912.3052670)>. Acesso em: 17 Jan. 2018.

  

11. Peppa M, John Edmunds W, Funk S. **Disease severity determines health-seeking behaviour amongst individuals with influenza-like illness in an internet-based cohort**. BMC Infect Dis [Internet]. 2017 Dec 31;17(1):238.Disponível em: <[http://bmcinfectdis.biomedcentral.com/articles/10.1186/s12879-017-2337-5](http://bmcinfectdis.biomedcentral.com/articles/10.1186/s12879-017-2337-5)>. Acesso em: 17 Jan. 2018.

12. BRASIL. Ministério da Saúde.**Secretaria de Vigilância em Saúde. Lista Nacional de Doenças de Notificação Compulsória**. 2016. Disponível em: <http://bvsms.saude.gov.br/bvs/saudelegis/gm/2016/prt0204_17_02_2016.html>. Acesso em: 28 Fev. 2018.

13. OPAS. **OMS divulga lista de doenças e patógenos prioritários para pesquisa e desenvolvimento em 2018.**2018. Disponível em: <[http://www.paho.org/bra/index.php?option=com_content&view=article&id=5595:oms-divulga-lista-de-doencas-e-patogenos-prioritarios-para-pesquisa-e-desenvolvimento-em-2018&Itemid=812](http://www.paho.org/bra/index.php?option=com_content&view=article&id=5595:oms-divulga-lista-de-doencas-e-patogenos-prioritarios-para-pesquisa-e-desenvolvimento-em-2018&Itemid=812)>. Acesso em: 28 Fev. 2018.