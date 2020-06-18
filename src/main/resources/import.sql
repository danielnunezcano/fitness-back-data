insert into user (id,name,surname,email,username,height,gender,birth_date,password,enabled) values (1, 'Daniel', 'Nunez Cano', 'danielnunezcano@gmail.com','verseo','174',1,'1983-11-30','1234',1);
insert into user (id,name,surname,email,username,height,gender,birth_date,password,enabled) values (2, 'Juan', 'Nunez Cano', 'juannunezcano@gmail.com','junuca','171',1,'1987-11-19','1234',1);
insert into user (id,name,surname,email,username,height,gender,birth_date,password,enabled) values (3, 'Mario', 'Martinez Gonzalo', 'mariomartinezgonzalo@gmail.com','mamago','180',1,'1966-07-12','1234',1);

insert into image (id, id_user, path, date) values (1, 1, 'imagen1.jpg','2020-06-18 10:00:00');
insert into image (id, id_user, path, date) values (2, 1, 'imagen2.jpg','2020-06-18 10:01:00');
insert into image (id, id_user, path, date) values (3, 1, 'imagen3.jpg','2020-06-18 10:02:00');
insert into image (id, id_user, path, date) values (4, 2, 'imagen1.jpg','2020-06-18 10:03:00');
insert into image (id, id_user, path, date) values (5, 2, 'imagen2.jpg','2020-06-18 10:04:00');
insert into image (id, id_user, path, date) values (6, 3, 'imagen1.jpg','2020-06-18 10:05:00');
insert into image (id, id_user, path, date) values (7, 3, 'imagen2.jpg','2020-06-18 10:06:00');

insert into weight (id, id_user, value, date) values (1,1,67.8,'2020-06-18 11:06:00');
insert into weight (id, id_user, value, date) values (2,1,65,'2020-06-18 11:05:00');
insert into weight (id, id_user, value, date) values (3,2,66.3,'2020-06-18 12:06:00');
insert into weight (id, id_user, value, date) values (4,3,85.4,'2020-06-18 11:03:00');

insert into role (id, role) values (1,'ANONYMOUS');
insert into role (id, role) values (2, 'USER');
insert into role (id, role) values (3, 'ADMIN');

insert into user_role (user_id , role_id ) values (1,2);
insert into user_role (user_id , role_id ) values (1,3);
insert into user_role (user_id , role_id ) values (2,2);
insert into user_role (user_id , role_id ) values (3,2);