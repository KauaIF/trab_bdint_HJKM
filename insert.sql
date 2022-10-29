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


