# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de Banco de dados

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Kauã Mateus de Barros Terra: kaua271203@gmail.com <br>
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
* Relatório que apresente os clientes (código e nome) e quantos pedidos eles já fizeram.
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que mostre todas as formas de pagamento e mostrando qual é quantas vezes foi usada, mostrando da mais utilizada, pra menos utilizada. 

 ### 5.MODELO CONCEITUAL<br>
   
       3 Principais entidades: Pizza, Pedido, Cliente     
       Principais fluxos de informação/entidades do sistema: Os principais fluxos de informação/entidades estão entre Pizza, Pedido e Endereço pois são eles que possuem mais chaves estrangeiras que geram novas tabelas
    
![Alt text](https://github.com/KauaIF/trab_bdint_HJKM/blob/main/ImgConceitual.PNG "Modelo Conceitual")

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
    forma_de_pagamento: atributo composto que armazena o TIPO do pagamento que o cliente vai utilizar (este atributo ira gerar 
    uma nova tabela)
    endereco: atributo composto que irá conter as informações referentes ao tipo de logradouro, cidade, bairro, nome do logradouro e o 
    numero do endereço a qual o pedido foi realizado. (esse atributo também ira gerar alem de uma nova tabela, mais três tabelas)
    
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

![Alt text](https://github.com/KauaIF/trab_bdint_HJKM/blob/main/ImgLogico.PNG "Modelo Logico")

### 7	MODELO FÍSICO<br>


drop table if exists cliente, tipo_logradouro, precificacao, bairro, cidade, endereco, massa,  borda, sabor, pizza, pizza_sabor, forma_de_pagamento, pedido, pizza_pedido cascade;<br>

create table cliente(<br>
cpf varchar(40),<br>
telefone bigInt,<br>
nome varchar(80),<br>
primary key (cpf)<br>
);<br>

create table tipo_logradouro(<br>
cod serial,<br>
nome varchar(50),<br>
primary key (cod)<br>
);<br>

create table precificacao(<br>
cod serial,<br>
tamanho varchar(40),<br>
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
tipo varchar(40),<br>
primary key (cod)<br>
);<br>

create table borda(<br>
cod serial,<br>
tipo varchar(40),<br>
primary key (cod)<br>
);<br>

create table sabor(<br>
cod serial,<br>
tipo varchar(40),<br>
primary key (cod)<br>
);<br>

create table pizza(<br>
cod serial,<br>
fk_massa_cod integer,<br>
fk_borda_cod integer,<br>
fk_precificacao_cod integer,<br>
primary key (cod),<br>
foreign key (fk_massa_cod) references massa(cod),<br>
foreign key (fk_borda_cod) references borda(cod),<br>
foreign key (fk_precificacao_cod) references precificacao(cod)<br>
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
fk_forma_de_pagamento_cod integer,<br>
fk_cliente_cpf varchar(40),<br>
data timestamp,<br>
primary key (cod),<br>
foreign key (fk_endereco_cod) references endereco(cod),<br>
foreign key (fk_forma_de_pagamento_cod) references forma_de_pagamento(cod),<br>
foreign key (fk_cliente_cpf) references cliente(cpf)<br>
);<br>

create table pizza_pedido(<br>
fk_pedido_cod integer,<br>
fk_pizza_cod integer,<br>
qtd integer,<br>
foreign key (fk_pedido_cod) references pedido(cod),<br>
foreign key (fk_pizza_cod) references pizza(cod)<br>
);<br>
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

insert into TIPO_LOGRADOURO (nome) values<br>
('Rua'),<br>
('Avenida'),<br>
('Praça'),<br>
('Alameda'),<br>
('Condominio');<br>

insert into BAIRRO (nome) values<br>
('High Park'),<br>
('Canal Mirim'),<br>
('Canal Real'),<br>
('Conceição'),<br>
('Loyalts Martin'),<br>
('Joia Rara'),<br>
('São Domingos'),<br>
('Lirena Kobak'),<br>
('Boa Vista'),<br>
('Planalto'),<br>
('São Francisco'),<br>
('Industrial'),<br>
('São Cristóvão'),<br>
('Bela Vista'),<br>
('Santo Antônio');<br>

insert into CIDADE (nome) values<br>
('Inipiquirigui'),<br>
('São Domingos'),<br>
('Garoa Damasco'),<br>
('Bom Carrasco'),<br>
('João Pessoa'),<br>
('São Paulo'),<br>
('Curitiba'),<br>
('Nova Cruz'),<br>
('Vila Pavão');<br>

insert into ENDERECO (fk_cidade_cod, fk_bairro_cod, fk_tipo_logradouro_cod, numero, nome_logradouro) values<br>
(1, 1, 1, 1423, 'Areia Branca'),<br>
(1, 2, 2, 6445, 'Logradeu'),<br>
(2, 3, 2, 4823, 'Amal'),<br>
(3, 4, 3, 1684, 'Koisa Boa'),<br>
(4, 5, 3, 5342, 'Banda Norte'),<br>
(4, 6, 3, 7654, 'Campos Graciosos'),<br>
(5, 7, 4, 5465, 'Pitanumbas'),<br>
(5, 8, 5, 1658, 'Vale de Deus'),<br>
(5, 9,  3, 0923, 'Barcos Arteicos'),<br>
(6, 10, 1, 9854, 'Mata Éguas'),<br>
(6, 11, 2, 0923, 'Japanepera'),<br>
(7, 12, 1, 7657, 'Piriguinabá'),<br>
(8, 13, 5, 1232, 'Campo Sereno'),<br>
(9, 14, 3, 9845, 'Luiz Gonçalves'),<br>
(9, 15, 2, 9764, 'Inpêndencia');<br>


insert into CLIENTE (cpf, telefone, nome) values<br>
(48708345376 ,45980544821, 'Lorenzo Fogaça'),<br>
(43817225156 ,43974025174, 'Matheus Pinto'),<br>
(71011848201 ,46982745375, 'Leandro Castro'),<br>
(54613750652 ,44986875315, 'Marcelo da Costa'),<br>
(34386934618 ,43983951357, 'Agatha da Mota'),<br>
(62554061483 ,46982797175, 'Giovanna Barros'),<br>
(34161675461 ,44976818707, 'Enzo Viana'),<br>
(32487081317 ,42982087681, 'Matheus Nogueira'),<br>
(42649378093 ,11798689187, 'Rafael Solimões'),<br>
(76729680091 ,68131964310, 'Davi Pereira'),<br>
(60710341083 ,92801704455, 'Caio Barreto'),<br>
(68291051020 ,92621564853, 'Paulo Silva'),<br>
(59032741020 ,92836387029, 'Ademar Pinto'),<br>
(24208256087 ,92834923378, 'Diego Garcia'),<br>
(20684737043 ,71479637094, 'Luís Fonseca'),<br>
(58349103000 ,71501075605, 'Gabriel Oliveira'),<br>
(14360748000 ,71334757199, 'Gustavo Flores'),<br>
(43878133006 ,27340472131, 'Ricardo Nunes'),<br>
(85863630060 ,27772234482, 'Roberto Alves'),<br>
(34870064057 ,27175100067, 'Jaime Leite');<br>


insert into PRECIFICACAO (tamanho, preco) values<br>
('Maracanã', 50),<br>
('Grande', 40),<br>
('Medio', 30),<br>
('Pequeno', 20);<br>

insert into MASSA (tipo) values<br>
('Massa de trigo'),<br>
('Massa sem glutén'),<br>
('Massa de arroz'),<br>
('Massa de fubá');<br>

insert into BORDA (tipo) values<br>
('Normal'),<br>
('Recheada com catupiry'),<br>
('Recheada com chocolate'),<br>
('Recheada com cheddar');<br>

insert into SABOR (tipo) values<br>
('Portuguesa'),<br>
('Calabresa'),<br>
('Frango com Catupiry'),<br>
('Muçarela'),<br>
('Napolitana'),<br>
('Chocolate'),<br>
('Pepperoni'),<br>
('Marguerita'),<br>
('Quatro queijos'),<br>
('Escarola'),<br>
('Atum'),<br>
('Romana'),<br>
('Brócolis'),<br>
('Lombinho'),<br>
('Palmito'),<br>
('Camarão'),<br>
('Toscana'),<br>
('Mineira'),<br>
('Brasileira'),<br>
('Bauru');<br>

insert into PIZZA (fk_massa_cod, fk_borda_cod, fk_precificacao_cod) values<br>
(1, 1, 1),<br>
(1, 1, 2),<br>
(1, 2, 1),<br>
(1, 2, 2),<br>
(1, 2, 3),<br>
(1, 2, 4),<br>
(1, 3, 1),<br>
(1, 1, 3),<br>
(1, 2, 2),<br>
(1, 3, 2),<br>
(1, 3, 3),<br>
(1, 4, 4),<br>
(2, 1, 1),<br>
(2, 1, 2),<br>
(2, 2, 2),<br>
(2, 1, 3),<br>
(2, 2, 2),<br>
(2, 3, 4),<br>
(2, 4, 4),<br>
(3, 1, 3),<br>
(3, 3, 4),<br>
(4, 1, 1);<br>

insert into PIZZA_SABOR (fk_pizza_cod, fk_sabor_cod) values<br>
(1, 3),<br>
(1, 6),<br>
(2, 5),<br>
(3, 4),<br>
(3, 5),<br>
(4, 7),<br>
(5, 2),<br>
(5, 3),<br>
(5, 6),<br>
(6, 3),<br>
(6, 5),<br>
(7, 3),<br>
(8, 7);<br>

insert into FORMA_DE_PAGAMENTO (tipo) values<br>
('PIX'),<br>
('Cartao'),<br>
('Cedulas');<br>

insert into PEDIDO (fk_cliente_cpf, fk_forma_de_pagamento_cod, fk_endereco_cod, data) values<br>
(48708345376, 1, 1, '2022-03-09 12:42:00'),<br>
(43817225156, 3, 2, '2022-11-07 14:12:00'),<br>
(71011848201, 1, 3, '2022-09-01 09:09:00'),<br>
(54613750652, 2, 4, '2021-12-20 10:31:00'),<br>
(34386934618, 1, 5, '2021-12-22 21:08:00'),<br>
(62554061483, 1, 6, '2022-01-30 22:55:00'),<br>
(34161675461, 2, 7, '2022-11-05 16:07:00'),<br>
(32487081317, 1, 8, '2022-10-09 12:42:00'),<br>
(48708345376, 1, 1, '2022-03-09 12:43:00');<br>

insert into PIZZA_PEDIDO (fk_pedido_cod, fk_pizza_cod, qtd) values<br>
(1, 1, 3),<br>
(2, 2, 5),<br>
(3, 3, 1),<br>
(4, 4, 2),<br>
(5, 5, 3),<br>
(6, 6, 1),<br>
(7, 7, 3),<br>
(8, 8, 2),<br>
(9, 9, 2);<br>


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usar o colab para apresentar os resultados que devem incluir as instruções SQL + resultados em forma de tabela.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
Link do [Colab](https://colab.research.google.com/drive/1ahiEcKLjSJNoKNdcpMLvs6KXmCYWF_Ws?usp=sharing "Link para o Colab")
># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
select * from pedido where data >'2022-05-01';<br>
select nome from cliente where nome<>'Matheus Nogueira' and nome<>'Matheus Pinto';<br>
select * from pizza_pedido where qtd>2;<br>
select * from pizza where fk_precificacao_cod = 1;<br>
select cod,nome_logradouro from endereco where cod <>4 and fk_cidade_cod <>7;<br>
    
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
######
select tamanho, preco, preco * 0.8 as promocao_20_porcento from precificacao<br>
where preco<30 and not tamanho='pequeno';<br>

select tamanho, preco, preco/5 as "preco_galera(5)" from precificacao<br>
where preco/5 < 10 and not preco/5=4; <br>

select qtd, preco as preco_individual, preco * qtd as preco_total <br>
from pizza_pedido <br>
inner join pizza on <br>
(fk_pizza_cod=pizza.cod) <br>
inner join precificacao on <br>
(precificacao.cod=fk_precificacao_cod)<br>
order by(preco_total); <br>

select qtd, preco * 0.9 as preco_promocao_10_porcento, preco * 0.9 * qtd as preco_promocional_total <br>
from pizza_pedido <br>
inner join pizza on <br>
(fk_pizza_cod=pizza.cod) <br>
inner join precificacao on <br>
(precificacao.cod=fk_precificacao_cod)<br>
where preco * 0.9 * qtd<100 or preco * 0.9 * qtd>140;<br>

select tamanho, preco * 0.9 preco_promocao_10_porcento, preco/6 as "preco_geral(6)" from precificacao <br>
where preco>=30 and preco<40; <br>

select qtd, preco as preco_individual, preco * qtd as preco_total, preco * qtd/5 as "preco_galera(5)" <br>
from pizza_pedido <br>
inner join pizza on <br>
(fk_pizza_cod=pizza.cod) <br>
inner join precificacao on <br>
(precificacao.cod=fk_precificacao_cod)<br>
order by(preco_total); <br>

select cliente.nome, sum(preco * qtd)/count(cliente.cpf) as valor_medio_pedido <br>
from cliente <br>
inner join pedido on <br>
(fk_cliente_cpf=cpf) <br>
inner join pizza_pedido on <br>
(pedido.cod=fk_pedido_cod) <br>
inner join pizza on <br>
(pizza_pedido.fk_pizza_cod=pizza.cod) <br>
inner join precificacao on <br>
(fk_precificacao_cod=precificacao.cod)<br>
group by cliente.cpf; <br>

select nome, sum(qtd) as total_de_pizzas_compradas, sum(qtd * preco) as valor_total_das_pizzas <br>
from CLIENTE inner join PEDIDO on <br>
(pedido.fk_cliente_cpf = cliente.cpf) <br>
inner join pizza_pedido on <br>
(pedido.cod=fk_pedido_cod) <br>
inner join pizza on <br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on <br>
(fk_precificacao_cod=precificacao.cod)<br>
group by CLIENTE.cpf; <br>

select nome, sum(qtd) as total_de_pizzas_compradas, sum(qtd * preco)/5 as "valor_total_das_pizzas_galera(5)" <br>
from CLIENTE inner join PEDIDO on <br>
(fk_cliente_cpf = cliente.cpf) <br>
inner join pizza_pedido on <br>
(pedido.cod=fk_pedido_cod) <br>
inner join pizza on <br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on <br>
(fk_precificacao_cod=precificacao.cod)<br>
group by CLIENTE.nome; <br>

select cliente.nome, pedido.cod as codigo_pedido, pizza_pedido.qtd as "qtd_pizzas_pedido(massa_trigo_borda_normal)"<br>
from CLIENTE inner join PEDIDO on <br>
(fk_cliente_cpf = cliente.cpf) <br>
inner join pizza_pedido on <br>
(pedido.cod=fk_pedido_cod) <br>
inner join pizza on <br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on <br>
(fk_precificacao_cod=precificacao.cod)<br>
where pizza.fk_borda_cod=1 and pizza.fk_massa_cod=1; <br>

select nome, sum(qtd) as total_de_pizzas_compradas, sum(qtd * 0.8 * preco)/5 as "valor_total_das_pizzas_promocao_20_galera(5)" <br>
from CLIENTE inner join PEDIDO on <br>
(fk_cliente_cpf = cliente.cpf) <br>
inner join pizza_pedido on <br>
(pedido.cod=fk_pedido_cod) <br>
inner join pizza on <br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on <br>
(fk_precificacao_cod=precificacao.cod)<br>
group by pedido.codigo; <br> 

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
    
select cliente.nome, pedido.cod as cod_pedido, sabor.tipo as "sabor(es)", cidade.nome as cidade, bairro.nome as bairro, tipo_logradouro.nome as tipo_logradouro, endereco.nome_logradouro, forma_de_pagamento.tipo as forma_pagamento, pizza_pedido.qtd, precificacao.tamanho, pizza_pedido.qtd * precificacao.preco as preco_total<br>
from cliente inner join pedido on<br>
(cliente.cpf=pedido.fk_cliente_cpf)<br>
inner join pizza_pedido on<br>
(pedido.cod=pizza_pedido.fk_pedido_cod)<br>
inner join pizza on<br>
(pizza.cod=pizza_pedido.fk_pizza_cod)<br>
inner join massa on<br>
(pizza.fk_massa_cod=massa.cod)<br>
inner join precificacao on<br>
(pizza.fk_precificacao_cod=precificacao.cod)<br>
inner join borda on<br>
(pizza.fk_borda_cod=borda.cod)<br>
inner join pizza_sabor on<br>
(pizza.cod=pizza_sabor.fk_pizza_cod)<br>
inner join sabor on<br>
(sabor.cod=pizza_sabor.fk_sabor_cod)<br>
inner join endereco on<br>
(pedido.fk_endereco_cod=endereco.cod)<br>
inner join tipo_logradouro on<br>
(tipo_logradouro.cod=endereco.fk_tipo_logradouro_cod)<br>
inner join bairro on<br>
(bairro.cod=endereco.fk_bairro_cod)<br>
inner join cidade on<br>
(cidade.cod=endereco.fk_cidade_cod)<br>
inner join forma_de_pagamento on<br>
(pedido.fk_forma_de_pagamento_cod=forma_de_pagamento.cod)<br>
order by pedido.cod;<br>

select cliente.nome, count(endereco.cod) as quantidade_de_enderecos_usados<br>
from cliente inner join pedido on<br>
(cliente.cpf=pedido.fk_cliente_cpf)<br>
inner join endereco on<br>
(pedido.fk_endereco_cod=endereco.cod)<br>
group by(cliente.cpf);<br>

select sabor.tipo, count(pedido.cod) as vezes_sabor_pedido<br>
from cliente inner join pedido on<br>
(cliente.cpf=pedido.fk_cliente_cpf)<br>
inner join pizza_pedido on<br>
(pedido.cod=pizza_pedido.fk_pedido_cod)<br>
inner join pizza on<br>
(pizza.cod=pizza_pedido.fk_pizza_cod)<br>
inner join pizza_sabor on<br>
(pizza_sabor.fk_pizza_cod=pizza.cod)<br>
inner join sabor on<br>
(pizza_sabor.fk_sabor_cod=sabor.cod)<br>
group by (sabor.cod)<br>
order by vezes_sabor_pedido desc;<br>

select cidade.nome, count(pedido.cod) as qtd_de_pedidos_cidade<br>
from pedido inner join endereco on<br>
(pedido.fk_endereco_cod=endereco.cod)<br>
inner join tipo_logradouro on<br>
(tipo_logradouro.cod=endereco.fk_tipo_logradouro_cod)<br>
inner join bairro on<br>
(bairro.cod=endereco.fk_bairro_cod)<br>
inner join cidade on<br>
(cidade.cod=endereco.fk_cidade_cod)<br>
group by (cidade.nome)<br>
order by (qtd_de_pedidos_cidade);<br>

select cliente.nome, count(pedido.cod) as qtd_pedidos_clientes<br>
from cliente inner join pedido on<br>
(cliente.cpf=pedido.fk_cliente_cpf)<br>
group by (cliente.cpf)<br>
order by (qtd_pedidos_clientes) desc;<br>

select borda.tipo as borda, massa.tipo as massa, sabor.tipo as sabor, precificacao.tamanho<br>
from pizza inner join massa on<br>
(pizza.fk_massa_cod=massa.cod)<br>
inner join precificacao on<br>
(pizza.fk_precificacao_cod=precificacao.cod)<br>
inner join borda on<br>
(pizza.fk_borda_cod=borda.cod)<br>
inner join pizza_sabor on<br>
(pizza.cod=pizza_sabor.fk_pizza_cod)<br>
inner join sabor on<br>
(sabor.cod=pizza_sabor.fk_sabor_cod);<br>
    
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção
select s.tipo as "Sabor", sum(pp.qtd) as "Quantidade de pizzas ja feitas" from sabor s<br>
inner join pizza_sabor ps<br>
on ps.fk_sabor_cod = s.cod<br>
inner join pizza_pedido pp<br>
on pp.fk_pizza_cod = ps.fk_pizza_cod<br>
group by s.tipo<br>
    
select tl.nome as "tipo de logradouro",e.nome_logradouro,e.numero,b.nome as "nome do bairro",c.nome as "nome da cidade" <br>
from endereco e <br>
inner join tipo_logradouro tl <br>
ON tl.cod = e.fk_tipo_logradouro_cod<br>
inner join bairro b <br>
ON b.cod = e.fk_bairro_cod<br>
inner join cidade c <br>
on c.cod = e.fk_cidade_cod <br>
group by tl.nome,e.nome_logradouro,e.numero ,b.nome,c.nome<br>
    
select c.nome as "Nome do Cliente", sum(pp.qtd) as "Quantidade de Pizzas Pedidas" from cliente c<br>
inner join pedido p<br>
ON p.fk_cliente_cpf = c.cpf<br>
inner join pizza_pedido pp<br>
ON pp.fk_pedido_cod = p.cod<br>
group by c.nome<br>
    
select cl.nome as "Nome do Cliente", sum(pe.preco*pp.qtd) as "Dinheiro ja pago a Pizzaria" from cliente cl<br>
inner join pedido p<br>
ON p.fk_cliente_cpf = cl.cpf<br>
inner join pizza_pedido pp<br>
ON pp.fk_pedido_cod = p.cod<br>
inner join pizza pz<br>
on pz.cod = pp.fk_pizza_cod<br>
inner join precificacao pe<br>
ON pe.cod = pz.fk_precificacao_cod<br>
group by cl.nome<br>
    
select fp.tipo as "Tipo de Pagamento", sum(pp.qtd) as "Pizza pedidas com essa forma de pagamento" from forma_de_pagamento fp<br>
inner join pedido p<br>
on p.fk_forma_de_pagamento_cod = fp.cod<br>
inner join pizza_pedido pp<br>
on pp.fk_pedido_cod = p.cod<br>
group by fp.tipo<br>

select b.tipo as "Tipo de Borda", sum(pp.qtd) as "Quantidade de pizzas ja feitas" from borda b<br>
inner join pizza p<br>
on p.fk_borda_cod = b.cod<br>
inner join pizza_pedido pp<br>
on pp.fk_pizza_cod = p.cod<br>
group by b.tipo<br>

select m.tipo as "Tipo de Massa", sum(pp.qtd) as "Quantidade de pizzas ja feitas" from massa m<br>
inner join pizza p<br>
on p.fk_massa_cod = m.cod<br>
inner join pizza_pedido pp<br>
on pp.fk_pizza_cod = p.cod<br>
group by m.tipo<br>
  
#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo
 Cliente que não fez nenhum pedido - Left<br>
select * from cliente<br>
left outer join pedido on<br>
pedido.fk_cliente_cpf = cliente.cpf;<br>
    Endereço que não está relacionado a nenhum pedido - Right<br>
select * from pedido<br>
right outer join endereco on<br>
pedido.fk_endereco_cod = endereco.cod;<br>
    Cliente, passando por pedido, relacionado ao endereço - Full Join<br>
select * from cliente<br>
full outer join pedido on<br>
cliente.cpf = pedido.fk_cliente_cpf<br>
full outer join endereco on<br>
pedido.fk_endereco_cod = endereco.cod;<br>
    Nome da Pessoa e os sabores de pizza que ele pediu - Full Join<br>
select cliente.nome, sabor.tipo from cliente<br>
full outer join pedido on<br>
pedido.fk_cliente_cpf = cliente.cpf<br>
inner join pizza_pedido on<br>
pizza_pedido.fk_pedido_cod = pedido.cod<br>
inner join pizza on<br>
pizza_pedido.fk_pizza_cod = pizza.cod<br>
inner join pizza_sabor on<br>
pizza_sabor.fk_pizza_cod = pizza.cod<br>
full outer join sabor on<br>
pizza_sabor.fk_sabor_cod = sabor.cod<br>

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
b)
create view pedidos_recentes as<br>
select * from pedido limit 100;<br>

create view cliente_pagou as<br>
select nome, sum(qtd) as total_de_pizzas_compradas, sum(qtd*preco) as valor_total_das_pizzas<br>
from CLIENTE inner join PEDIDO on<br>
(pedido.fk_cliente_cpf = cliente.cpf)<br>
inner join pizza_pedido on<br>
(pedido.cod=fk_pedido_cod)<br>
inner join pizza on<br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on<br>
(fk_precificacao_cod=precificacao.cod)<br>
group by CLIENTE.cpf;<br>
    
create view clientePedido as<br>
select * from cliente<br>
left outer join pedido on<br>
pedido.fk_cliente_cpf = cliente.cpf;<br>

create view media_cliente as <br>
select cliente.nome, sum(preco * qtd)/count(cliente.cpf) as valor_medio_pedido<br>
from cliente<br>
inner join pedido on<br>
(fk_cliente_cpf=cpf)<br>
inner join pizza_pedido on<br>
(pedido.cod=fk_pedido_cod)<br>
inner join pizza on<br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on<br>
(fk_precificacao_cod=precificacao.cod)<br>
group by cliente.cpf;<br>

create view pizza_compra as<br>
select nome, sum(qtd) as total_de_pizzas_compradas, sum(qtd * preco) as valor_total_das_pizzas<br>
from CLIENTE inner join PEDIDO on<br>
(pedido.fk_cliente_cpf = cliente.cpf)<br>
inner join pizza_pedido on<br>
(pedido.cod=fk_pedido_cod)<br>
inner join pizza on<br>
(pizza_pedido.fk_pizza_cod=pizza.cod)<br>
inner join precificacao on<br>
(fk_precificacao_cod=precificacao.cod)<br>
group by CLIENTE.cpf;<br>

create view pedidos_detalhes as<br>
select cliente.nome, pedido.cod as cod_pedido, sabor.tipo as "sabor(es)", cidade.nome as cidade, bairro.nome as bairro, tipo_logradouro.nome as tipo_logradouro, endereco.nome_logradouro, forma_de_pagamento.tipo as forma_pagamento, pizza_pedido.qtd, precificacao.tamanho, pizza_pedido.qtd * precificacao.preco as preco_total<br>
from cliente inner join pedido on<br>
(cliente.cpf=pedido.fk_cliente_cpf)<br>
inner join pizza_pedido on<br>
(pedido.cod=pizza_pedido.fk_pedido_cod)<br>
inner join pizza on<br>
(pizza.cod=pizza_pedido.fk_pizza_cod)<br>
inner join massa on<br>
(pizza.fk_massa_cod=massa.cod)<br>
inner join precificacao on<br>
(pizza.fk_precificacao_cod=precificacao.cod)<br>
inner join borda on<br>
(pizza.fk_borda_cod=borda.cod)<br>
inner join pizza_sabor on<br>
(pizza.cod=pizza_sabor.fk_pizza_cod)<br>
inner join sabor on<br>
(sabor.cod=pizza_sabor.fk_sabor_cod)<br>
inner join endereco on<br>
(pedido.fk_endereco_cod=endereco.cod)<br>
inner join tipo_logradouro on<br>
(tipo_logradouro.cod=endereco.fk_tipo_logradouro_cod)<br>
inner join bairro on<br>
(bairro.cod=endereco.fk_bairro_cod)<br>
inner join cidade on<br>
(cidade.cod=endereco.fk_cidade_cod)<br>
inner join forma_de_pagamento on<br>
(pedido.fk_forma_de_pagamento_cod=forma_de_pagamento.cod)<br>
order by pedido.cod;<br>
    
#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
select bairro.nome as bairro, sum(precificacao.preco) as preco<br>
from pedido<br>
inner join pizza_pedido on<br>
pedido.cod = pizza_pedido.fk_pedido_cod<br>
inner join pizza on<br>
pizza_pedido.fk_pizza_cod = pizza.cod<br>
inner join precificacao on<br>
pizza.fk_precificacao_cod = precificacao.cod<br>
inner join endereco on<br>
pedido.fk_endereco_cod = endereco.cod<br>
inner join bairro on<br>
endereco.fk_bairro_cod = bairro.cod<br>
where bairro.cod in (select bairro.cod<br>
from endereco<br>
inner join bairro on <br>
endereco.fk_bairro_cod = bairro.cod<br>
inner join cidade on<br>
endereco.fk_cidade_cod = cidade.cod<br>
where cidade.nome <> 'Inipiquirigui'<br>
group by bairro.cod)<br>
group by bairro.nome;<br>

     b) Criar minimo 1 envolvendo algum tipo de junção

select endereco.cod as codigo, endereco.numero as numero, cidade.nome as cidade, bairro.nome as bairro, tipo_logradouro.nome as "tipo logradouro", endereco.nome_logradouro as logradouro<br>
from endereco<br>
inner join cidade on<br>
endereco.fk_cidade_cod = cidade.cod<br>
inner join bairro on<br>
endereco.fk_bairro_cod = bairro.cod<br>
inner join tipo_logradouro on<br>
endereco.fk_tipo_logradouro_cod = tipo_logradouro.cod<br>
where cidade.nome in (select nome <br>
from cidade <br>
where nome <> 'Bom Carrasco');<br>

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


