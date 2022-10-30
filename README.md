# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de Banco de dados

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Kauã Mateus de Barros Terra: kaua27123@gmail.com <br>
Harian Adami Chagas Radaelli: harianadami@gmail.com <br>
João Vitor Oliveira Scheidegger: joao.scheidegger@gmail.com<br>
Mateus Santos Nascimento: ifrn.jucurutu@gmail.com<br>
...<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

> A pizzaria “Pasta dall'Italia”, após anos de experiência e consolidada no mercado, decide disponibilizar a opção de delivery de pizzas personalizáveis. Após algumas semanas de frustração, o renomado restaurante se cansa de sua própria desorganização pela qual seus pedidos são submetidos. Determinado a elevar seu nível de profissionalismo e aprimorar a experiência do cliente, ele decide criar um sistema de banco de dados. Lá, serão armazenadas  informações sobre o cliente, do pedido (que o cliente), a forma de pagamento que será usada, o endereço e a pizza pedida. Como as pizzas são feitas pelos clientes, também serão armazenadas as massas, bordas e sabores disponíveis, sendo relacionadas às pizzas. 

### 3.MINI-MUNDO<br>

> Para esse sistema delivery, será necessário armazenar informações do CLIENTE como: cpf, nome e telefone e do PEDIDO seu código, um cliente pode fazer nenhum ou vários pedidos, enquanto um pedido é feito apenas por um cliente. Os pedidos serão entregues a somente um endereço e pagos de apenas uma forma. Um endereço será adicionado no pedido, portanto terá pelo menos um pedido e no máximo n. Uma forma de pagamento pode ser atribuída a nenhum pedido ou vários. Essas informações também serão armazenadas. A FORMA DE PAGAMENTO terá um código e seu tipo. Do ENDEREÇO, armazenará seu código, tipo de logradouro, bairro, cidade, o nome do logradouro e o número.  Um pedido possuirá uma ou várias pizzas e esta será criada em um pedido, podendo ser repetida em futuros (um ou vários) pedidos. Uma PIZZA terá uma massa, borda, onde ambos terão um determinado tipo, e código, e uma descricao com tamanho e preço . Por fim, a pizza precisará de um sabor ou vários, enquanto um SABOR pode ser usado por nenhuma pizza ou várias. O SABOR possuirá um código e tipo.


### 4.PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A pizzaria Pasta dall'Italia precisa inicialmente dos seguintes relatórios:
* Relatório que mostre todas as combinações possíveis de pizza, apresentando a massa, a borda e o sabor.
* Relatório que mostre a quantidade de pedidos recebidos.
* Relatório que pegue os pedidos e mostre, o nome do cliente, seu telefone, o tipo de pagamento,  o endereço (cidade, bairro, tipo e nome do logradouro, e número da residência) e a pizza (massa, borda e sabor).
* Relatório que apresente os clientes (código e nome) e quantos pedidos ele já fez.
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que mostre todas as formas de pagamento e mostrando qual é quantas vezes foi usada, mostrando da mais utilizada, pra menos utilizada. 

 ### 5.MODELO CONCEITUAL<br>
   
       3 Principais entidades: Pizza, Pedido, Cliente     
       Principais fluxos de informação/entidades do sistema: Os principais fluxos de informação/entidades estão entre Pizza, Pedido e Endereço pois são eles que possuem mais chaves estrangeiras que geram novas tabelas
    
![Alt text](https://github.com/KauaIF/trab_bdint_HJKM/blob/main/ConceitualGrupo.PNG?raw=true "Modelo Conceitual")

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
 
    CLIENTE: Tabela que armazena as informações relativas ao cliente
    cpf: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da pizzaria.
    nome: campo que armazena o nome de cada cliente da pizzaria
    telefone: campo que armazena o telefone de cada cliente da pizzaria
    
    PEDIDO: Tabela que armazena as informações referentes ao pedido que o cliente faz
    codigo: atributo identificador da tabela pedido
    forma_de_pagamento: atributo composto que armazena o TIPO do pagamento que o cliente vai utilizar(este atributa ira gerar uma nova tabela)
    endereco: atributo composto que irá conter as informações referentes ao tipo de logradouro, cidade, bairro, nome do logradouro e o numero do endereço a qual o pedido foi realizado. (esse atributo também ira gerar alem de uma nova tabela, mais três tabelas)
    
    PIZZA: Tabela que irá armazenar em um campo o codigo referente a pizza que irá para algum pedido e terá 2 atributos multivalorados,
        massa: tabela que irá armazenar o código e o tipo de massa que o cliente poderá escolher em sua pizza
            cod: campo que armazena o código do tipo de cada massa
            tipo: campo que armazena o tipo de cada massa (se é de fuba, comum, massa fina ou massa grossa, etc)
        borda: tabela que irá armazenar o código e o tipo de borda que o cliente poderá escolher em sua pizza
            cod: campo que armazena o código do tipo de cada borda
            tipo: campo que armazena o tipo de cada borda (borda com recheiro de catupiry, de cheddar, sem recheio, etc)
    
    DESCRIÇÃO: 
        cod: campo que armazena o código referente ao tamanho e preço
        tamanho: campo que contém uma palavra que define o tamanho da pizza
        preço: campo que define o preço de um tamanho específico
    
    SABOR: tabela que irá armazenar o código e os sabores de pizza disponiveis para a escolha do cliente
    cod: campo que irá armazenar o código de cada tipo de sabor
    tipo: campo que irá armazenar os tipos de sabores disponiveis (frango, calabresa, portuguesa, etc)


### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/KauaIF/trab_bdint_HJKM/blob/main/LogicoGrupo.PNG?raw=true "Modelo Logico")

### 7	MODELO FÍSICO<br>


create table cliente(<br>
cpf varchar(20),<br>
telefone bigInt,<br>
nome varchar(80),<br>
primary key (cpf)<br>
);<br>

create table tipo_logradouro(<br>
cod serial,<br>
nome varchar(50),<br>
primary key (cod)<br>
);<br>

create table descricao(<br>
cod serial,<br>
tamanho varchar(20),<br>
preco integer,<br>
primary key (cod)<br>
);<br>

create table bairro(<br>
cod serial,<br>
nome varchar(50),<br>
primary key (cod)<br>
);<br>

create table cidade(<br>
cod serial,<br>
nome varchar(50),<br>
primary key (cod)<br>
);<br>

create table endereco(<br>
cod serial,<br>
nome_logradouro varchar(80),<br>
numero integer,<br>
fk_bairro_cod integer,<br>
fk_tipo_logradouro_cod integer,<br>
fk_cidade_cod integer,<br>
primary key(cod),<br>
foreign key (fk_tipo_logradouro_cod) references tipo_logradouro(cod),<br>
foreign key (fk_bairro_cod) references bairro(cod),<br>
foreign key (fk_cidade_cod) references cidade(cod)<br>
);<br>

create table massa(<br>
cod serial,<br>
tipo varchar(20),<br>
primary key (cod),<br>
);<br>

create table borda(<br>
cod serial,<br>
tipo varchar(20),<br>
primary key (cod),<br>
);<br>

create table sabor(<br>
cod serial,<br>
tipo varchar(20),<br>
primary key (cod),<br>
);<br>

create table pizza(<br>
cod serial,<br>
fk_massa_cod integer,<br>
fk_borda_cod integer,<br>
fk_descricao_cod integer,<br>
primary key (cod),<br>
foreign key (fk_massa_cod) references massa(cod),<br>
foreign key (fk_borda_cod ) references borda(cod)<br>
foreign key (fk_descricao_cod ) references descricao(cod)<br>
);<br>

create table pizza_sabor(<br>
fk_pizza_cod integer,<br>
fk_sabor_cod integer,<br>
foreign key (fk_pizza_cod) references pizza(cod),<br>
foreign key (fk_sabor_cod) references sabor(cod)<br>
);<br>

create table forma_de_pagamento(<br>
cod serial,<br>
tipo varchar(15),<br>
primary key(cod)<br>
);<br>

create table pedido (<br>
cod serial,<br>
fk_endereco_cod integer,<br>
fk_pizza_cod integer,<br>
fk_forma_de_pagamento_cod integer,<br>
fk_cliente_cpf varchar(20),<br>
primary key (cod),<br>
foreign key (fk_endereco_cod) references endereco(cod),<br>
foreign key (fk_pizza_cod) references pizza(cod),<br>
foreign key (fk_forma_de_pagamento_cod) references forma_de_pagamento(cod),<br>
foreign key (fk_cliente_cpf) references cliente(cpf)<br>
);<br>

create table pizza_pedido(<br>
fk_pedido_cod integer,<br>
fk_pizza_cod integer,<br>
foreign key (fk_pedido_cod) references pedido(cod),<br>
foreign key (fk_pizza_cod) references pizza(cod)<br>
);<br>
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
 insert into TIPO_LOGRADOURO (nome) values
('Rua'),
('Avenida'),
('Praça'),
('Alameda'),
('Condominio');

insert into BAIRRO (nome) values
('High Park'),
('Canal Mirim'),
('Canal Real'),
('Conceição'),
('Loyalts Martin'),
('Joia Rara'),
('São Domingos'),
('Lirena Kobak');

insert into CIDADE (nome) values 
('Inipiquirigui'),
('São Domingos'),
('Garoa Damasco'),
('Bom Carrasco'),
('João Pessoa');

insert into ENDERECO (fk_cidade_cod, fk_bairro_cod, fk_tipo_logradouro_codigo, numero, nome_logradouro) values
(1, 1, 1, 1423, 'Areia Branca'),
(1, 2, 2, 6445, 'Logradeu'),
(2, 3, 2, 4823, 'Amal'),
(3, 4, 3, 1684, 'Koisa Boa'),
(4, 5, 3, 5342, 'Banda Norte'),
(4, 6, 3, 7654, 'Campos Graciosos'),
(5, 7, 4, 5465, 'Pitanumbas'),
(5, 8, 5, 1658, 'Vale de Deus');

insert into CLIENTE (cpf, telefone, nome) values
(48708345376 ,45980544821, 'Lorenzo Fogaça'),
(43817225156 ,43974025174, 'Matheus Pinto'),
(71011848201 ,46982745375, 'Leandro Castro'),
(54613750652 ,44986875315, 'Marcelo da Costa'),
(34386934618 ,43983951357, 'Agatha da Mota'),
(62554061483 ,46982797175, 'Giovanna Barros'),
(34161675461 ,44976818707, 'Enzo Viana'),
(32487081317 ,42982087681, 'Matheus Nogueira');

insert into DESCRICAO (tamanho, preco) values
('Grande', 40),
('Medio', 30),
('Pequeno', 20),
('Medio', 30),
('Medio', 30),
('Grande', 40),
('Grande', 40),
('Pequeno', 20);

insert into MASSA (tipo) values
('Massa de trigo'),
('Massa sem glutén'),
('Massa de arroz');

insert into BORDA (tipo) values
('Normal'),
('Recheada com catupiry'),
('Recheada com chocolate');

insert into SABOR (tipo) values
('Portuguesa'),
('Calabresa'),
('Frango com Catupiry'),
('Muçarela'),
('Napolitana'),
('Chocolate');

insert into PIZZA (fk_massa_cod, fk_borda_cod, fk_descricao_cod) values
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(2, 3, 4),
(2, 1, 5),
(1, 2, 6),
(2, 1, 7),
(3, 3, 8);

insert into PIZZA_SABOR (fk_pizza_cod, fk_sabor_cod) values
(1, 3),
(1, 6),
(2, 5),
(3, 4),
(3, 5),
(4, 7),
(5, 2),
(5, 3),
(5, 6),
(6, 3),
(6, 5),
(7, 3),
(8, 7);

insert into FORMA_DE_PAGAMENTO (tipo) values
('PIX'),
('Cartao'),
('Cedulas');

insert into PEDIDO (fk_cliente_cpf, fk_forma_de_pagamento_cod, fk_endereco_cod) values
(48708345376, 1, 1),
(43817225156, 3, 2),
(71011848201, 1, 3),
(54613750652, 2, 4),
(34386934618, 1, 5),
(62554061483, 1, 6),
(34161675461, 2, 7),
(32487081317, 1, 8);

insert into PIZZA_PEDIDO (fk_pedido_cod, fk_pizza_cod) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);



### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usar o colab para apresentar os resultados que devem incluir as instruções SQL + resultados em forma de tabela.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
Link do [Colab](https://colab.research.google.com/drive/1ahiEcKLjSJNoKNdcpMLvs6KXmCYWF_Ws?usp=sharing "Link para o Colab")
># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS (Usar template disponibilizado)
[Template de relatórios](https://github.com/discipbdint/public_samples/blob/main/BD_Exemplo_Relatorios_Empresa_VA.ipynb "Template relatórios")

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


