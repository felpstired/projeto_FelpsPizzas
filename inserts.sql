-- INSERT NA TABELA MENUCARDAPIO
insert into tbmenucardapio (menucardapio, cadastro) values ('Entradas','2023-04-28 12:35:43');
insert into tbmenucardapio (menucardapio, cadastro) values ('Café','2023-04-28 12:35:43');
insert into tbmenucardapio (menucardapio, cadastro) values ('Almoço','2023-04-28 12:35:43');
insert into tbmenucardapio (menucardapio, cadastro) values ('Jantar','2023-04-28 12:35:43');


-- INSERT NA TABELA CARDAPIO
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (1,'assets/img/menu/menu-item-1.png','Magnam Tiste','Lorem, deren, trataro, filede, nerada',5.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (1,'assets/img/menu/menu-item-2.png','Aut Luia','Lorem, deren, trataro, filede, nerada',14.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (1,'assets/img/menu/menu-item-3.png','Est Eligendi','Lorem, deren, trataro, filede, nerada',8.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (2,'assets/img/menu/menu-item-4.png','Eos Luibusdam','Lorem, deren, trataro, filede, nerada',10.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (2,'assets/img/menu/menu-item-5.png','Luibusdam Eos','Lorem, deren, trataro, filede, nerada',12.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (2,'assets/img/menu/menu-item-6.png','Laboriosam Direva','Lorem, deren, trataro, filede, nerada',9.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (3,'assets/img/menu/menu-item-1.png','Magnam Tiste','Lorem, deren, trataro, filede, nerada',5.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (3,'assets/img/menu/menu-item-2.png','Aut Luia','Lorem, deren, trataro, filede, nerada',14.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (3,'assets/img/menu/menu-item-3.png','Est Eligendi','Lorem, deren, trataro, filede, nerada',8.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (4,'assets/img/menu/menu-item-4.png','Eos Luibusdam','Lorem, deren, trataro, filede, nerada',10.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (4,'assets/img/menu/angolagoku.jpg','supasayjins','Lorem, deren, trataro, filede, nerada',12.95,'2023-04-28 12:35:43');
insert into tbcardapio (idmenucardapio, imagem, tituloimg, descimg, preco, cadastro) values (4,'assets/img/menu/menu-item-6.png','Laboriosam Direva','Lorem, deren, trataro, filede, nerada',9.95,'2023-04-28 12:35:43');


-- INSERT NA TABELA DE PESSOAS
insert into tbpessoas (nome, email, telefone, cpf, cadastro) values ('Saul Goodman','saulgoodman@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43');
insert into tbpessoas (nome, email, telefone, cpf, cadastro) values ('Sara Wilsson','sarawilsson@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43');
insert into tbpessoas (nome, email, telefone, cpf, cadastro) values ('Jena Karlis','jenakarlis@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43');
insert into tbpessoas (nome, email, telefone, cpf, cadastro) values ('John Larson','johnlarson@gmail.com','(33) 9 1234-1234','123.123.123-12','2023-04-28 12:35:43');


-- INSERT NA TABELA DE AVALIACOES
insert into tbavaliacoes (idpessoas, comentario, profissao, estrelas, imagem, cadastro) values (1,'Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.','Ceo &amp; Founder',5,'assets/img/testimonials/testimonials-1.jpg','2023-04-28 12:35:43');
insert into tbavaliacoes (idpessoas, comentario, profissao, estrelas, imagem, cadastro) values (2,'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.','Ceo &amp; Founder',4,'assets/img/testimonials/testimonials-2.jpg','2023-04-28 12:35:43');
insert into tbavaliacoes (idpessoas, comentario, profissao, estrelas, imagem, cadastro) values (3,'Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.','Ceo &amp; Founder',3,'assets/img/testimonials/testimonials-3.jpg','2023-04-28 12:35:43');
insert into tbavaliacoes (idpessoas, comentario, profissao, estrelas, imagem, cadastro) values (4,'Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.','Ceo &amp; Founder',5,'assets/img/testimonials/testimonials-4.jpg','2023-04-28 12:35:43');


-- INSERT NA TABELA DE EVENTOS
insert into tbeventos (titulo, preco, descricao, imagem, cadastro) values ('Festas Customizadas',99,'Quo corporis voluptas ea ad. Consectetur inventore sapiente ipsum voluptas eos omnis facere. Enim facilis veritatis id est rem repudiandae nulla expedita quas.','assets/img/events-1.jpg','2023-04-28 12:35:43');
insert into tbeventos (titulo, preco, descricao, imagem, cadastro) values ('Festas Privadas',289,'In delectus sint qui et enim. Et ab repudiandae inventore quaerat doloribus. Facere nemo vero est ut dolores ea assumenda et. Delectus saepe accusamus aspernatur.','assets/img/events-2.jpg','2023-04-28 12:35:43');
insert into tbeventos (titulo, preco, descricao, imagem, cadastro) values ('Festas de Aniversário',499,'Laborum aperiam atque omnis minus omnis est qui assumenda quos. Quis id sit quibusdam. Esse quisquam ducimus officia ipsum ut quibusdam maxime. Non enim perspiciatis.','assets/img/events-3.jpg','2023-04-28 12:35:43');


-- INSERT NA TABELA DE EQUIPE/CHEFS