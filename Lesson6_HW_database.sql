drop database if exists vk;
create database vk;
use vk;

drop table if exists users;
create table users(
    id serial primary key, -- bigint unsigned notnull unique auto_incremet;
    firstname varchar(50) comment 'User first',
    lastname varchar(50) comment 'User lastname',
    email varchar(50) unique,
    `password_hash` varchar(100),
    phone varchar(12),
    
    index user_phone_idx(phone),
    index (firstname, lastname)
);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES 
   ('1', 'Reuben', 'Nienow', 'arlo50@example.org', '9374071116'),
   ('2', 'Frederik', 'Upton', 'terrence.cartwright@example.org', '9127498182'),
   ('3', 'Unique', 'Windler', 'rupert55@example.org', '9921090703'),
   ('4', 'Norene', 'West', 'rebekah29@example.net', '9592139196'),
   ('5', 'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725'),
   ('6', 'Victoria', 'Medhurst', 'sstehr@example.net', '9456642385'),
   ('7', 'Austyn', 'Braun', 'itzel.beahan@example.com', '9448906606'),
   ('8', 'Jaida', 'Kilback', 'johnathan.wisozk@example.com', '9290679311'),
   ('9', 'Mireya', 'Orn', 'missouri87@example.org', '9228624339'),
   ('10', 'Jordyn', 'Jerde', 'edach@example.com', '9443126821'),
   ('11', 'Thad', 'McDermott', 'shaun.ferry@example.org', '9840726982'),
   ('12', 'Aiden', 'Runolfsdottir', 'doug57@example.net', '9260442904'),
   ('13', 'Bernadette', 'Haag', 'lhoeger@example.net', '9984574866'),
   ('14', 'Dedric', 'Stanton', 'tconsidine@example.org', '9499932439'),
   ('15', 'Clare', 'Wolff', 'effertz.laverna@example.org', '9251665331'),
   ('16', 'Lina', 'Macejkovic', 'smitham.demarcus@example.net', '9762021357'),
   ('17', 'Jerrell', 'Stanton', 'deja00@example.com', '9191103792'),
   ('18', 'Golden', 'Wisozk', 'frida19@example.com', '9331565437'),
   ('19', 'Elisa', 'Balistreri', 'romaine27@example.org', '9372983850'),
   ('20', 'Reed', 'Bogan', 'zhyatt@example.com', '9924753974'),
   ('21', 'Gwendolyn', 'McClure', 'zluettgen@example.net', '9745046704'),
   ('22', 'Luz', 'Bailey', 'tillman.iliana@example.org', '9881942174'),
   ('23', 'Alyce', 'Toy', 'russel.ewell@example.com', '9754884857'),
   ('24', 'Oma', 'Ortiz', 'jailyn.feest@example.com', '9339073755'),
   ('25', 'Valentine', 'Goldner', 'matteo.wiza@example.net', '9803404650'),
   ('26', 'Rasheed', 'Ebert', 'brenden32@example.net', '9924275184'),
   ('27', 'Misael', 'Lakin', 'benjamin.hilpert@example.com', '9619165091'),
   ('28', 'Shaun', 'Fritsch', 'wwiegand@example.org', '9231898080'),
   ('29', 'Katarina', 'Sipes', 'jenifer.gislason@example.net', '9348426774'),
   ('30', 'Newton', 'Koss', 'beatty.river@example.org', '9574058915'),
   ('31', 'Selmer', 'Quitzon', 'ztromp@example.net', '9363178382'),
   ('32', 'Margarete', 'Koepp', 'idell70@example.net', '9743498718'),
   ('33', 'Donavon', 'Bauch', 'michele.lakin@example.com', '9229739697'),
   ('34', 'Ashlynn', 'Cummerata', 'weber.tatyana@example.net', '9710902090'),
   ('35', 'Fletcher', 'Lang', 'mona94@example.com', '9502246403'),
   ('36', 'Amiya', 'Leuschke', 'mathilde.macejkovic@example.com', '9461791942'),
   ('37', 'Terrance', 'West', 'ebert.magnus@example.org', '9381729082'),
   ('38', 'Keara', 'Kiehn', 'audie.franecki@example.net', '9796576345'),
   ('39', 'Wyatt', 'Olson', 'jarvis92@example.org', '9212459514'),
   ('40', 'Paula', 'Shields', 'casey.bayer@example.org', '9410763172'),
   ('41', 'Ivah', 'Bernier', 'paris15@example.com', '9283284370'),
   ('42', 'Liza', 'Howe', 'hadley72@example.org', '9926888657'),
   ('43', 'Kevon', 'Gerhold', 'fhilll@example.com', '9398761644'),
   ('44', 'Hermina', 'Lubowitz', 'amalia.reichel@example.org', '9213914905'),
   ('45', 'Cara', 'Quigley', 'hailee.beier@example.net', '9287811077'),
   ('46', 'Kian', 'Weimann', 'tankunding@example.net', '9168462586'),
   ('47', 'Madelynn', 'Hahn', 'pleffler@example.org', '9598242802'),
   ('48', 'Hassie', 'Monahan', 'lowe.amelia@example.net', '9765846197'),
   ('49', 'Taryn', 'Kuvalis', 'aschneider@example.net', '9533355262'),
   ('50', 'Hollis', 'Padberg', 'cathryn40@example.net', '9163727209'),
   ('51', 'Henriette', 'Lindgren', 'allie.witting@example.com', '9891313707'),
   ('52', 'Keven', 'DuBuque', 'durward83@example.com', '9613848114'),
   ('53', 'Chaz', 'Yundt', 'stamm.bret@example.net', '9763350438'),
   ('54', 'Rosalee', 'Dickens', 'concepcion.conn@example.net', '9675063949'),
   ('55', 'Kip', 'Schoen', 'ibeer@example.com', '9987381304'),
   ('56', 'Louie', 'Spencer', 'tkessler@example.com', '9938579943'),
   ('57', 'Priscilla', 'Daniel', 'barrett12@example.com', '9886578202'),
   ('58', 'Dean', 'Satterfield', 'orin69@example.net', '9160120629'),
   ('59', 'Prudence', 'Shields', 'sleffler@example.net', '9414604655'),
   ('60', 'Elaina', 'Buckridge', 'bartell.einar@example.net', '9916593682'),
   ('61', 'Monserrat', 'O\'Conner', 'linda58@example.com', '9519551625'),
   ('62', 'Ramona', 'Davis', 'abbigail68@example.net', '9484610686'),
   ('63', 'Eldridge', 'Wilkinson', 'callie.wuckert@example.org', '9532811737'),
   ('64', 'Emanuel', 'Reinger', 'loyal.herzog@example.org', '9659591995'),
   ('65', 'Janis', 'Stamm', 'nils93@example.org', '9905318598'),
   ('66', 'Nannie', 'Streich', 'chelsea01@example.com', '9412172452'),
   ('67', 'Elva', 'Sawayn', 'modesta.haley@example.com', '9803009959'),
   ('68', 'Ava', 'Nolan', 'mmarvin@example.com', '9428224970'),
   ('69', 'Westley', 'Predovic', 'urunolfsdottir@example.net', '9247233922'),
   ('70', 'Antonina', 'Ferry', 'jamaal.farrell@example.com', '9902477849'),
   ('71', 'Jeffery', 'Lowe', 'noemie38@example.org', '9803133328'),
   ('72', 'Cesar', 'Schmitt', 'johnathan.waelchi@example.org', '9330339588'),
   ('73', 'Letha', 'Beatty', 'reynold.feil@example.net', '9636262160'),
   ('74', 'Benton', 'Rogahn', 'jbeer@example.net', '9490216855'),
   ('75', 'Braden', 'Shields', 'zemlak.foster@example.com', '9114981748'),
   ('76', 'Luther', 'Turcotte', 'zturner@example.com', '9292137540'),
   ('77', 'Patricia', 'Gleason', 'benny76@example.net', '9148879590'),
   ('78', 'Delta', 'Kerluke', 'terry.antone@example.org', '9667864529'),
   ('79', 'Thurman', 'Rutherford', 'isaiah.gerlach@example.net', '9994148720'),
   ('80', 'Willie', 'Fritsch', 'rolando45@example.org', '9512440690'),
   ('81', 'Letitia', 'Marks', 'bosco.sage@example.net', '9546163253'),
   ('82', 'Ada', 'Kuvalis', 'emmanuelle.hegmann@example.org', '9251017068'),
   ('83', 'Josie', 'Kunde', 'kaley.rolfson@example.net', '9285157694'),
   ('84', 'Harmony', 'Lesch', 'velda32@example.org', '9627960545'),
   ('85', 'Kelsie', 'Olson', 'xheidenreich@example.net', '9548492646'),
   ('86', 'Lucile', 'Rolfson', 'dbartell@example.net', '9258387168'),
   ('87', 'Celestino', 'Cruickshank', 'flavio.hammes@example.com', '9686686728'),
   ('88', 'Hayley', 'Vandervort', 'cartwright.seamus@example.com', '9228109837'),
   ('89', 'Royal', 'DuBuque', 'jswift@example.org', '9295312277'),
   ('90', 'Adrian', 'Mills', 'gail.lockman@example.net', '9491584055'),
   ('91', 'Roosevelt', 'Tromp', 'gutkowski.janiya@example.com', '9910853104'),
   ('92', 'Miguel', 'Watsica', 'hassan.kuphal@example.org', '9824696112'),
   ('93', 'Gregory', 'Jenkins', 'weimann.richard@example.com', '9860971258'),
   ('94', 'Kristina', 'Jast', 'jennifer27@example.com', '9133161481'),
   ('95', 'Ozella', 'Hauck', 'idickens@example.com', '9773438197'),
   ('96', 'Emmet', 'Hammes', 'qcremin@example.org', '9694110645'),
   ('97', 'Eleonore', 'Ward', 'antonietta.swift@example.com', '9397815776'),
   ('98', 'Lori', 'Koch', 'damaris34@example.net', '9192291407'),
   ('99', 'Sam', 'Kuphal', 'telly.miller@example.net', '9917826312'),
   ('100', 'Pearl', 'Prohaska', 'xeichmann@example.net', '9136605713');


drop table if exists messages;
create table messages(
    id serial primary key,
    from_user_id Bigint unsigned not null,
    to_user_id Bigint unsigned not null,
    body text,
    created_at datetime default now(),
    
    index (from_user_id),
    index (to_user_id),
    foreign key (from_user_id) references users(id),
    foreign key (to_user_id) references users(id)    
);

INSERT INTO messages VALUES 
('1','61','1','Modi porro incidunt quod dolor est est. Eum nam autem doloribus dolor. Debitis voluptatem itaque totam earum veritatis deserunt sapiente rerum.','1985-04-10 19:45:39'),
('2','29','45','Explicabo assumenda nemo culpa fugit atque dolore et blanditiis. Est ut dolor recusandae qui vero. Voluptatem dolorum assumenda commodi culpa quisquam suscipit eaque. Temporibus voluptatibus iure totam iste.','1971-07-26 07:39:21'),
('3','65','97','Nostrum illum harum quidem est omnis. Quia et qui nesciunt aut possimus.','1989-11-30 22:37:29'),
('4','8','66','Dignissimos repellendus quisquam vel sapiente officiis aut omnis. Architecto ullam voluptatem aut magnam. voluptatum qui commodi consequuntur veniam vitae temporibus aut. Rem nam vero illo quod sunt hic.','1998-04-26 23:19:04'),
('5','86','89','Ab minus earum sapiente explicabo. Quam dolorem amet qui non maxime eaque totam voluptates. Et quas perferendis recusandae dolore dolorum. Eligendi veniam quis repellat ut repellendus voluptas.','1991-05-28 05:55:31'),
('6','77','1','Dolores maxime fugit eos eum. Est qui voluptatem impedit rerum. Vitae voluptatibus labore quae modi repudiandae et. Autem quis fugiat consequuntur et.','1972-02-13 10:32:59'),
('7','55','83','Quae alias nulla commodi. Exercitationem magnam qui nobis voluptas. Vel delectus unde totam. Qui temporibus animi praesentium.','1989-10-19 01:21:13'),
('8','46','16','Sed ipsa veniam impedit aut perspiciatis doloremque. Quis aperiam vel rerum. Sapiente id quam et.','2016-07-17 09:46:46'),
('9','83','22','Quibusdam ratione dolor aspernatur laboriosam reprehenderit. Accusamus aliquam dolorum consequatur velit maiores. Non aut omnis consequatur velit sint debitis.','1983-03-31 13:04:20'),
('10','71','93','Rerum sunt consequatur quo sint deleniti eum. Expedita qui eos corporis deserunt facilis minus adipisci. Fugiat cumque vel sunt perferendis totam odio.','1974-10-21 02:37:17'),
('11','83','56','Saepe debitis earum delectus architecto ipsum deserunt. Eveniet rerum facilis et exercitationem.','2006-02-07 21:57:18'),
('12','23','17','Labore ut et minus. Veritatis tenetur autem sunt quod occaecati dolores amet. Quo enim ducimus vitae quibusdam. Voluptatum quia enim quas ex omnis accusamus voluptas.','1991-06-22 05:49:14'),
('13','98','77','Vero asperiores sint omnis quasi non. Qui necessitatibus vel odit ducimus ipsa aut dolor. Recusandae sint sunt impedit omnis molestiae. Delectus illum reiciendis est voluptates ad quibusdam.','2004-11-21 12:51:37'),
('14','79','30','Ipsum aliquid et sit sequi laudantium. Quam similique qui nemo quae sapiente inventore velit. Consequatur mollitia fugit laborum repellat voluptas. Natus voluptas ea ab sapiente.','2016-04-11 01:46:34'),
('15','20','87','Numquam excepturi explicabo consequatur magnam dolore doloremque velit. Nihil dolor officia quod eos tempore. Libero tenetur minima aliquid illum voluptatem est sunt.','1981-10-15 19:53:42'),
('16','15','56','Ut aut illo dicta porro qui distinctio enim. Quo nam et deleniti facilis non quis et. Blanditiis tempora quas perspiciatis eum consequatur. Provident animi quaerat aut velit voluptas.','2009-06-22 08:19:54'),
('17','74','90','Et tenetur id est illum doloribus facilis. Eos sunt accusantium quisquam repellendus et atque eligendi. Laborum voluptatibus sed id temporibus.','1985-11-13 22:13:54'),
('18','10','83','Et inventore perferendis explicabo ullam. Est dolor reprehenderit ipsam et nostrum quia et ipsam. Perspiciatis aut sunt sit nihil deleniti et eum fuga. Molestias officiis quo odio vero rerum.','1981-08-29 05:03:42'),
('19','22','93','A suscipit enim et amet. Vel qui officia eaque qui quis est ipsam. Quaerat quasi adipisci magni aut vitae officiis repellat. Voluptatem nisi deleniti vel sit. Eaque veniam nobis dicta unde cumque.','1999-11-26 05:04:44'),
('20','6','66','Hic aliquam saepe dignissimos sed omnis. Incidunt quos sed veniam nostrum modi dignissimos. Dolor ut voluptatibus ducimus corporis quia dolores ut.','1995-08-15 17:26:36'),
('21','7','65','Sed illo et ea repellendus consequuntur quo. Optio totam neque qui ipsam. Expedita nemo laudantium itaque reprehenderit cupiditate rem.','1999-01-28 11:23:21'),
('22','88','84','Suscipit ipsam architecto aut. Officiis soluta aut consequatur cupiditate ullam blanditiis facere. Itaque dolores est quis suscipit ipsum et.','2018-10-13 17:24:56'),
('23','24','55','Fuga culpa minima labore corporis ab. Illum voluptatum ad ut quas aliquam. Voluptatum ratione rerum doloribus. Ipsa est quia ipsum temporibus placeat est.','2012-03-22 15:57:55'),
('24','64','77','Sapiente et corrupti maiores rerum sit velit. Dolorem est minus illum voluptas minus ab. Totam ut illo labore pariatur accusamus.','1985-06-18 19:03:50'),
('25','69','95','Praesentium aut ratione eligendi. Omnis vel sit iusto. Blanditiis eos molestias et ab eos est. Quasi quo quam quia consequuntur sunt vel aspernatur sit.','1997-06-22 15:22:34'),
('26','40','85','Dolorem provident et dolorem ut. Autem dolorem nesciunt quam sapiente nobis aliquid maiores. Ut accusamus quo similique ipsa voluptatem aperiam dolorem harum.','2015-11-14 20:48:12'),
('27','90','71','Est facilis voluptatibus deleniti doloribus. Est sit nisi non amet doloremque. Esse consectetur est eligendi mollitia qui quibusdam dolores.','2002-11-04 12:14:39'),
('28','35','39','Ut ut id distinctio dolorem quia repudiandae. Et qui repellendus modi autem provident. Est minima rerum aut reprehenderit neque ipsa. Et magnam eligendi aut.','2016-10-29 05:03:09'),
('29','91','83','Eius autem e explicabo temporibus quia quam eum. Quia id et aut ut praesentium sint sequi. Neque ut iure fugit est qui provident. Nulla explicabo consequatur fuga ut rerum voluptatem et.','1976-08-17 10:42:54'),
('30','1','23','Quod eos voluptatem et minima impedit nihil modi quisquam. Autem autem quasi aut eveniet vero. Minima nemo dolorem sint ea impedit facilis. Accusamus est et officiis doloribus et est. Consectetur ut tenetur occaecati nesciunt illo facere.','1988-06-23 17:33:13'),
('31','13','24','Accusamus animi repudiandae optio maxime occaecati. Voluptatem harum et fuga quo eaque impedit iste. Rem eligendi et voluptas quod. Aspernatur ut molestiae neque ut nemo dolor dicta.','1992-06-02 18:52:40'),
('32','20','64','Tempore est et velit optio a. Non voluptas ex numquam ut facilis quasi qui. Placeat cupiditate qui provident.','2010-12-19 18:43:07'),
('33','31','37','Natus et provident consequatur sed quisquam dolor. Vero numquam culpa et ipsum et nobis. Repudiandae maxime omnis quasi. Fugiat quidem delectus deserunt quos excepturi. Consectetur sed et eos et animi.','1989-08-09 07:44:52'),
('34','95','7','Est quis velit maiores ea. Aperiam nulla et dignissimos corporis accusamus. Maxime et voluptatem magni consectetur consequatur iure autem.','1974-09-02 22:15:29'),
('35','6','34','Rerum nostrum ab officia qui. Qui labore aperiam ut consequuntur vel velit. Earum sed nam dolores in sint sunt animi. Totam omnis nesciunt eos dolorem.','1988-01-20 12:03:32'),
('36','27','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
 ('37','27','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('38','27','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1997-06-22 15:22:34'),
   ('39','27','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2016-10-29 05:03:09'),
   ('40','1','27','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('41','1','27','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1997-06-22 15:22:34'),
   ('42','1','27','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('43','1','27','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('44','1','27','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('45','61','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('46','4','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1997-06-22 15:22:34'),
   ('47','4','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('48','10','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('49','10','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1997-06-22 15:22:34'),
   ('50','1','10','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('51','1','10','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1989-08-09 07:44:52'),
   ('52','77','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('53','23','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1989-08-09 07:44:52'),
   ('54','23','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('55','1','23','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2016-10-29 05:03:09'),
   ('56','1','23','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26'),
   ('57','3','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1989-08-09 07:44:52'),
   ('58','3','1','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2016-10-29 05:03:09'),
   ('59','1','3','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','1989-08-09 07:44:52'),
   ('60','1','3','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2016-10-29 05:03:09'),
   ('61','1','3','Ut esse officia eos autem ducimus ut. Inventore saepe nemo doloribus mollitia veniam. Earum sequi debitis ea ipsum.','2018-02-22 08:59:26');



drop table if exists friend_requests;
create table friend_requests(
    initiator_user_id Bigint unsigned not null,
    target_user_id Bigint unsigned not null,
    `status` enum('requested', 'approved', 'unfriended', 'declined'),
    requested_at datetime default now(),
    confirmed_at datetime,
    
    primary key (initiator_user_id, target_user_id),
    index (initiator_user_id),
    index (target_user_id),
    foreign key (initiator_user_id) references users(id),
    foreign key (target_user_id) references users(id) 
);
INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) 
values
    ('1', '10', 'approved', '1970-08-21 06:40:37', '2003-12-29 23:20:55'),
    ('1', '2', 'requested', '1987-10-10 07:33:23', '1983-01-18 01:56:05'),
    ('1', '3', 'approved', '2015-02-07 01:53:07', '2015-09-14 16:17:12'),
    ('4', '1', 'approved', '1983-04-08 15:57:26', '1976-12-28 23:54:58'),
    ('5', '2', 'unfriended', '1976-03-03 18:22:00', '1996-12-03 11:29:04'),
    ('6', '3', 'unfriended', '2008-12-06 17:07:59', '2015-11-01 08:03:23'),
    ('7', '1', 'requested', '1989-10-26 06:20:23', '2001-08-05 16:01:03'),
    ('8', '6', 'unfriended', '1987-12-30 01:50:03', '2001-07-09 07:39:50'),
    ('9', '7', 'requested', '2003-12-27 22:52:09', '1998-04-18 04:41:46'),
    ('10', '11', 'declined', '1970-05-08 00:32:15', '2007-03-22 21:08:16'),
    ('11', '14', 'approved', '1988-05-02 10:55:41', '1985-02-09 05:04:27'),
    ('12', '11', 'unfriended', '1975-07-25 20:11:02', '1993-06-30 12:51:09'),
    ('13', '33', 'declined', '2000-06-24 13:17:54', '1982-04-16 16:12:48'),
    ('14', '24', 'declined', '2007-12-09 17:17:48', '1991-05-31 12:38:33'),
    ('15', '35', 'unfriended', '2016-07-21 20:48:02', '1982-10-06 14:54:41'),
    ('16', '36', 'requested', '1992-10-04 04:16:38', '2001-01-24 13:54:16'),
    ('17', '37', 'approved', '1984-11-20 10:33:06', '2018-10-07 19:43:11'),
    ('18', '38', 'approved', '1992-07-31 16:34:16', '2008-08-03 10:13:44'),
    ('19', '39', 'requested', '1993-06-18 14:21:32', '1976-01-16 15:57:24'),
    ('20', '30', 'declined', '2007-03-22 18:13:14', '2010-01-06 00:06:18'),
    ('21', '31', 'requested', '2015-09-17 12:10:37', '1986-06-30 22:29:41'),
    ('22', '32', 'approved', '2004-09-21 23:23:19', '2003-01-27 16:11:05'),
    ('23', '33', 'requested', '1972-04-26 20:13:41', '1991-01-03 06:58:39'),
    ('24', '34', 'unfriended', '2017-08-08 05:38:20', '2007-09-27 03:07:27'),
    ('25', '35', 'approved', '2001-01-16 08:07:31', '1995-04-25 06:23:27'),
    ('26', '36', 'declined', '2004-07-31 10:12:37', '2001-06-28 18:49:10'),
    ('27', '37', 'declined', '2004-11-01 19:13:46', '1978-05-16 19:08:26'),
    ('28', '38', 'requested', '1989-07-10 17:02:49', '2007-03-16 20:42:05'),
    ('29', '39', 'unfriended', '1984-08-12 11:38:13', '1971-07-07 10:40:59'),
    ('30', '10', 'unfriended', '1997-03-01 23:22:31', '1974-08-30 23:16:26'),
    ('31', '11', 'approved', '2003-02-19 05:45:39', '2015-02-04 15:26:16'),
    ('32', '12', 'declined', '2017-01-08 12:24:37', '2019-02-23 04:25:58'),
    ('33', '13', 'requested', '2018-08-15 10:50:34', '1984-08-24 14:00:01'),
    ('34', '14', 'unfriended', '1988-06-12 03:29:45', '1998-11-28 12:07:32'),
    ('35', '15', 'unfriended', '1988-01-30 09:10:41', '2004-06-02 14:04:53'),
    ('36', '16', 'declined', '1993-03-10 12:19:15', '2007-05-17 03:24:16'),
    ('37', '17', 'requested', '1999-06-21 09:26:23', '2011-08-28 05:29:49'),
    ('38', '18', 'requested', '1977-03-14 20:26:41', '1975-09-03 17:01:54'),
    ('39', '19', 'approved', '2017-09-08 20:11:20', '1989-12-10 18:38:58'),
    ('40', '10', 'approved', '2001-08-16 04:34:33', '1999-01-01 14:33:52'),
    ('41', '11', 'unfriended', '1982-07-18 15:48:44', '1989-10-14 05:48:07'),
    ('42', '12', 'requested', '1973-10-29 10:38:00', '1973-11-02 18:26:40'),
    ('43', '13', 'requested', '1979-12-17 11:27:04', '2004-09-28 04:54:42'),
    ('44', '14', 'approved', '2013-10-01 07:28:04', '2006-12-12 05:43:06'),
    ('45', '15', 'requested', '2011-07-27 12:46:23', '1988-05-07 21:59:11'),
    ('46', '16', 'declined', '1999-11-13 00:33:38', '2016-05-02 19:19:15'),
    ('47', '17', 'approved', '1980-03-02 03:50:22', '2010-09-22 18:58:47'),
    ('48', '18', 'requested', '2003-11-15 23:04:36', '1991-08-05 16:56:51'),
    ('49', '19', 'approved', '2006-03-24 23:01:39', '2010-08-04 15:00:32'),
    ('50', '10', 'approved', '2008-07-18 00:34:41', '2016-12-25 03:18:49'),
    ('51', '11', 'approved', '2001-10-14 18:49:19', '2012-06-08 01:36:28'),
    ('52', '12', 'requested', '2000-06-08 04:08:36', '2010-10-12 10:27:39'),
    ('53', '13', 'approved', '1972-07-01 10:35:33', '1972-03-03 01:26:27'),
    ('54', '14', 'declined', '2007-07-24 20:49:26', '2014-03-10 04:56:59'),
    ('55', '15', 'approved', '1981-09-25 09:50:15', '1991-04-22 04:24:22'),
    ('56', '16', 'approved', '2015-03-08 22:23:52', '1996-02-08 09:41:57'),
    ('57', '17', 'declined', '2012-07-18 20:25:26', '2008-06-10 16:46:01'),
    ('61','1','approved','2020-02-08 19:33:51','2020-02-08 19:35:45'),
    ('1','77','approved','2020-02-08 19:33:51','2020-02-08 19:35:45'),
    ('1','23','approved','2020-02-08 19:33:51','2020-02-08 19:35:45'),
    ('27','1','approved','2020-02-08 19:33:51','2020-02-08 19:35:45');

drop table if exists media_types;
create table  media_types(
    id serial primary key,
    name varchar(255),
    created_at DATETIME DEFAULT NOW()
);

INSERT INTO `media_types` (name, created_at)
VALUES 
	('Photo','2003-07-09 10:08:05'),
	('Music','2009-06-19 20:08:09'),
	('Video','1984-04-18 01:55:09'),
	('Post','2001-04-17 06:47:52');


drop table if exists media;
create table  media(
    id serial primary key,
    media_type_id bigint unsigned not null,
    user_id Bigint unsigned not null,
    body text,
    filename varchar(255),
    `size` int,
    metadata json,
    created_at datetime default now(),
    updated_at datetime default current_timestamp on update current_timestamp,
    
    index (user_id),
    foreign key (user_id) references users(id),
    foreign key (media_type_id) references media_types(id)
);
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,1,'Est aut aliquid est. Soluta eveniet doloribus ipsam ut id assumenda quam. Consequuntur et velit aperiam error corporis rem corporis. Est similique quisquam quia maxime eaque possimus facere officiis. Odio magni atque dicta voluptatibus hic iste delectus.','a.jpg',5,NULL,'1991-11-16 08:14:38.000','2019-06-19 18:11:58.000')
,(2,2,'Laborum dolorem magni unde vero sit hic. Pariatur quia voluptas magnam. Blanditiis dolorem et molestias veniam facere provident.','asperiores.jpg',4510,NULL,'1986-12-10 19:34:26.000','2019-06-19 18:11:58.000')
,(1,3,'A quam ea ullam reiciendis vel et reiciendis. Delectus iure mollitia est. Eum dolores dolores sed officia vitae qui. Sed repudiandae voluptatem voluptatibus libero culpa quo.','sapiente.jpg',763116,NULL,'1978-09-18 17:07:49.000','2019-06-19 18:11:58.000')
,(4,4,'Velit commodi in veniam occaecati. Tenetur temporibus ullam enim officiis aut illum. In maiores velit nobis soluta molestias maiores tempora. Quisquam et ut et sequi.','rerum.jpg',740,NULL,'1984-10-21 04:41:15.000','2019-06-19 18:11:58.000')
,(1,5,'Est eaque est qui et omnis rerum. Expedita porro nesciunt inventore consequatur quos. Inventore aut rerum voluptas. Dicta vel ut quibusdam cupiditate tempore.','user5-profile-image.jpg',40813,NULL,'2014-06-20 03:34:11.000','2019-06-19 18:11:58.000')
,(2,6,'Atque et nam nulla et aliquid. Vel repellendus aut natus odit quibusdam quis atque et. Laudantium minima velit dolores eos voluptate nostrum.','quasi.jpg',119422,NULL,'1991-11-02 07:50:45.000','2019-06-19 18:11:58.000')
,(3,7,'Nihil ut et reprehenderit et. Numquam veniam quis impedit. Voluptas saepe rerum illo vel omnis. Aliquam illum ut quo saepe ea unde est.','non.jpg',704558,NULL,'1988-09-17 20:56:38.000','2019-06-19 18:11:58.000')
,(4,8,'Sint quod fugit molestiae dolore repellendus est. Quis corporis necessitatibus commodi placeat temporibus doloremque voluptatem. Nemo maxime sit dolorem perferendis repellat. Et impedit deleniti eaque pariatur ut quia voluptatibus.','earum.jpg',65108,NULL,'1995-10-07 10:19:53.000','2019-06-19 18:11:58.000')
,(1,9,'Optio sed aperiam veniam eum. Rerum placeat soluta iusto perspiciatis quibusdam dolorem eos. Ea pariatur optio est ut.','ullam.jpg',83717449,NULL,'2003-08-05 05:55:25.000','2019-06-19 18:11:58.000')
,(2,10,'Facere nostrum facilis aperiam quisquam dolor. Minima omnis est nam.','maiores.jpg',75,NULL,'1984-05-17 07:37:30.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,1,'A omnis ratione non. Et velit sed incidunt corporis ut rerum nemo. Ut pariatur tempora ea incidunt praesentium ut. Eligendi et et rerum sequi ut.','non.jpg',0,NULL,'2010-05-07 19:13:09.000','2019-06-19 18:11:58.000')
,(4,1,'Quo minus harum debitis debitis quis sunt. Dolores suscipit placeat dolorum non voluptate et. Non eos odio esse tempore. Illum minus quidem temporibus porro.','earum.jpg',1826766,NULL,'2013-08-25 22:49:45.000','2019-06-19 18:11:58.000')
,(1,1,'Et aliquid sit natus vitae fuga enim repudiandae. Quis ab et debitis est accusantium labore. Exercitationem delectus eaque necessitatibus.','hic.jpg',979,NULL,'2015-11-02 00:11:31.000','2019-06-19 18:11:58.000')
,(2,1,'Nobis est sed blanditiis assumenda incidunt explicabo. Facere rem assumenda odio explicabo ad enim repellat quia. Dolor mollitia fugiat officia nihil animi.','iste.jpg',18,NULL,'2006-05-11 12:11:06.000','2019-06-19 18:11:58.000')
,(3,1,'Tempora ad et aspernatur laborum ut dolor et. Exercitationem quaerat corporis placeat et.','quia.jpg',7,NULL,'2000-03-29 04:01:57.000','2019-06-19 18:11:58.000')
,(4,1,'Accusantium est ea fuga omnis mollitia. Dolores officia et consequatur iste est quo. Ullam laborum qui ut quo delectus temporibus.','omnis.jpg',2058670,NULL,'1971-10-08 06:43:32.000','2019-06-19 18:11:58.000')
,(1,1,'Quasi itaque atque ut aliquam debitis. Qui consequuntur maiores sit ad perspiciatis quaerat assumenda repudiandae. Necessitatibus placeat quaerat aut voluptatem ratione voluptate expedita. Nulla doloremque aut molestiae nam.','aperiam.jpg',3489253,NULL,'1973-12-19 09:20:43.000','2019-06-19 18:11:58.000')
,(2,1,'Deserunt voluptatem quia voluptatem sit. Qui omnis distinctio optio voluptatem veniam atque dolorem. Repellat laboriosam illo consequatur nesciunt voluptas magni rerum. Saepe quos qui doloremque.','commodi.jpg',8,NULL,'1989-03-01 17:19:42.000','2019-06-19 18:11:58.000')
,(3,1,'Fugiat consequuntur voluptatem odit omnis. Quia aut voluptate officia rerum. Cumque voluptatem eaque dolorum voluptas sed. Et autem atque est minus veritatis explicabo eos.','id.jpg',1,NULL,'1970-11-04 03:06:33.000','2019-06-19 18:11:58.000')
,(4,2,'Autem dolore beatae aut corporis fugit ratione. Ex beatae qui at. Est deleniti asperiores temporibus perferendis est.','fugiat.jpg',82,NULL,'2017-06-08 03:23:04.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,21,'Provident eligendi animi quidem qui ipsum. Accusamus dolor sint est qui magnam. Omnis enim quis dolore magni facilis repudiandae deserunt. Consequatur eum at recusandae id tenetur voluptas amet.','ipsa.jpg',1,NULL,'1986-12-30 23:42:20.000','2019-06-19 18:11:58.000')
,(2,22,'Animi ut labore dolore atque consequuntur maxime fugit. Sunt et et facere sint. Recusandae numquam accusamus a. Non quia dolorem reiciendis earum et officiis iure.','adipisci.jpg',4582,NULL,'2017-07-19 09:44:31.000','2019-06-19 18:11:58.000')
,(3,23,'Sint officiis a ipsa quaerat rerum ea totam. Aut perferendis deleniti error ipsa ducimus ipsam. Ipsum a sunt quis placeat.','qui.jpg',8302441,NULL,'1985-01-28 13:54:18.000','2019-06-19 18:11:58.000')
,(4,24,'Et accusamus a et adipisci dolore. Blanditiis sit vitae dolorem voluptas temporibus numquam ab. Aut temporibus accusantium consectetur.','maxime.jpg',91764,NULL,'2006-08-07 15:24:03.000','2019-06-19 18:11:58.000')
,(1,25,'Consequuntur animi sed ea perferendis ad magnam. Aut libero alias sequi iste qui est. Ut quo dignissimos quibusdam doloremque est est incidunt.','qui.jpg',90944,NULL,'2000-11-07 15:35:46.000','2019-06-19 18:11:58.000')
,(2,26,'Accusantium sit praesentium voluptatem molestias architecto. Excepturi doloremque ab eligendi eum ullam voluptas qui. Inventore expedita distinctio omnis laborum laboriosam.','eveniet.jpg',317340,NULL,'1999-07-10 01:22:03.000','2019-06-19 18:11:58.000')
,(3,27,'Et iure cupiditate expedita ut earum et illum. Cum sed assumenda velit officia. Voluptas harum ea magni aspernatur aut ea vel.','incidunt.jpg',0,NULL,'1996-06-24 05:20:00.000','2019-06-19 18:11:58.000')
,(4,28,'A culpa nostrum et quis. Id ipsum ipsum deserunt earum eaque aut earum. Blanditiis et commodi voluptas.','eaque.jpg',9525,NULL,'1973-07-27 14:27:31.000','2019-06-19 18:11:58.000')
,(1,29,'Cumque quod provident provident fugit cumque numquam. Fuga totam delectus a aut quaerat nemo dignissimos eos. Ratione harum et laborum qui dolore aliquam facilis numquam. At quas nam sapiente porro nesciunt voluptatum.','non.jpg',20697427,NULL,'1999-02-12 16:23:02.000','2019-06-19 18:11:58.000')
,(2,30,'Provident quia fuga et consequatur reprehenderit repellat. Et aut cum nostrum ut beatae animi aut alias.','et.jpg',263408,NULL,'1977-02-20 10:38:19.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,31,'Voluptatem est recusandae molestias quod. Voluptatem velit omnis asperiores dolorum est vero. Quo doloribus aut natus rem. Dolor sapiente libero quis sit.','et.jpg',4391,NULL,'1976-08-29 01:30:58.000','2019-06-19 18:11:58.000')
,(4,32,'Et commodi tempora voluptate perferendis. Ullam ratione sequi in eveniet accusantium consequatur. Quod quis ipsum consectetur fuga numquam.','odio.jpg',90,NULL,'2011-05-04 15:25:34.000','2019-06-19 18:11:58.000')
,(1,33,'Similique qui quibusdam vitae et. Voluptas nihil nesciunt reiciendis et. Incidunt necessitatibus illo asperiores quidem ipsa quam. Amet quisquam amet aut facere totam fuga quasi.','expedita.jpg',87,NULL,'2004-12-04 20:41:26.000','2019-06-19 18:11:58.000')
,(2,34,'Eos id culpa inventore voluptatem aut placeat dolorem. Ex sunt rem esse aspernatur. Est ut ut quidem est esse. Possimus quia nisi neque.','beatae.jpg',694461,NULL,'2009-07-14 02:12:15.000','2019-06-19 18:11:58.000')
,(3,35,'Libero ut qui dicta impedit. Consequatur earum neque quis consequatur numquam consequatur. Voluptatibus eos vel ex quis sed cum.','et.jpg',154603,NULL,'1982-03-22 20:11:50.000','2019-06-19 18:11:58.000')
,(4,36,'Sapiente in totam sed aliquam rem qui occaecati. Dolor dignissimos omnis mollitia temporibus repellendus ut. Est esse facilis deleniti eum dolorem ex distinctio. Est nisi rerum aut optio. Quod dolor occaecati expedita quia incidunt debitis.','tenetur.jpg',6392040,NULL,'2002-02-25 18:09:15.000','2019-06-19 18:11:58.000')
,(1,37,'Ut praesentium soluta facere sunt. Eveniet in voluptatem optio neque cumque quis ut. Dolores assumenda ullam error quis atque magni ut. Quia at aut et aliquid consectetur.','accusantium.jpg',0,NULL,'2001-12-11 00:20:19.000','2019-06-19 18:11:58.000')
,(2,38,'Ut ab libero dolor eum deleniti porro facilis. Quo iusto perspiciatis fugiat voluptatem nam sint. Ut nisi sed et dicta eos explicabo quos.','corrupti.jpg',3,NULL,'1985-09-26 10:28:43.000','2019-06-19 18:11:58.000')
,(3,39,'Nam voluptas omnis in quas aut. Nihil perspiciatis magni voluptatum mollitia aut nulla. Consequuntur nostrum atque nihil omnis. Velit hic eum sapiente quis molestiae deleniti.','tempore.jpg',2896602,NULL,'1986-09-26 20:25:54.000','2019-06-19 18:11:58.000')
,(4,40,'Ea odio eveniet totam asperiores aut vel. Nihil dolores natus magnam aut delectus perspiciatis eum ullam. Magnam est cupiditate earum fuga aut numquam. Delectus modi ut occaecati est et aut.','necessitatibus.jpg',0,NULL,'1992-02-13 22:01:03.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,41,'Dolorem molestias similique laboriosam et. Incidunt earum voluptatem magnam voluptas eligendi quos. Cum voluptatem quia odio sed. Ut voluptatum ex sint illum molestias perferendis laborum.','sapiente.jpg',816152694,NULL,'1990-10-06 08:14:28.000','2019-06-19 18:11:58.000')
,(2,42,'Id illo quia corporis. Magni id illo commodi natus. Eos porro error nihil optio quia.','dolorem.jpg',7095,NULL,'1997-02-27 21:12:18.000','2019-06-19 18:11:58.000')
,(3,43,'Eos omnis error quis est debitis. Itaque adipisci voluptatibus velit autem. Tempora quo saepe nesciunt sapiente sequi hic.','illo.jpg',1520673,NULL,'1986-07-05 22:35:21.000','2019-06-19 18:11:58.000')
,(4,44,'Dolore non repellat mollitia dolor ut sequi. Excepturi enim dolorem mollitia eaque sit porro ab. Eos consequatur hic dolore itaque quia animi ea.','dignissimos.jpg',548,NULL,'2002-12-21 03:54:14.000','2019-06-19 18:11:58.000')
,(1,45,'Cupiditate modi molestiae culpa delectus est et voluptatem. Eius non impedit asperiores praesentium repellendus tempore. Minus natus quod eos quidem.','qui.jpg',7380,NULL,'2016-05-23 13:35:39.000','2019-06-19 18:11:58.000')
,(2,46,'Provident dignissimos necessitatibus ut et esse. Excepturi et iste facere id suscipit ut. Voluptatem est ex et dolor nobis facilis et. Ut voluptatibus sunt et ut.','aut.jpg',14685,NULL,'2009-12-02 01:42:24.000','2019-06-19 18:11:58.000')
,(3,47,'In mollitia consequatur aspernatur atque. Alias illum voluptatem et nemo et exercitationem. Voluptatem in ut quia similique quis. Saepe cupiditate sunt tenetur minima.','laborum.jpg',3,NULL,'2010-12-16 09:47:22.000','2019-06-19 18:11:58.000')
,(4,48,'Quidem ad libero voluptas et veniam. Dolores dolores quia voluptatem soluta. Voluptatibus facere saepe non nulla.','consequatur.jpg',490,NULL,'1977-01-14 01:24:52.000','2019-06-19 18:11:58.000')
,(1,49,'Esse eveniet similique sit temporibus aliquam. Sequi consequatur excepturi enim aut. Mollitia voluptas facilis velit omnis animi ea numquam. Accusamus nostrum aspernatur ullam itaque et eveniet quia. Corrupti tempora fugit rerum architecto voluptatem pariatur.','quae.jpg',26430194,NULL,'1990-08-09 00:43:45.000','2019-06-19 18:11:58.000')
,(2,50,'Molestiae excepturi quia necessitatibus id voluptatem laudantium. Et ut ea mollitia quisquam. Vel consequatur quas excepturi totam sit suscipit. Aut tempora ratione eos ipsam quae possimus libero. Architecto et quia voluptatem et tempora alias sequi.','nulla.jpg',0,NULL,'1995-04-23 07:55:46.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,51,'Omnis quaerat minus inventore quaerat. Ut sunt optio similique laboriosam. Fugit voluptas nesciunt debitis possimus tempore. Architecto sunt maiores laborum quod laboriosam.','dolorem.jpg',38,NULL,'1976-09-18 10:50:57.000','2019-06-19 18:11:58.000')
,(4,52,'Ullam unde earum dolorem. Vel doloremque harum optio deserunt iure. Voluptate at animi veniam suscipit quisquam.','dolorum.jpg',447,NULL,'2015-10-20 01:11:46.000','2019-06-19 18:11:58.000')
,(1,53,'Ut distinctio non vero qui. Accusantium a consectetur magnam eum quisquam molestias. Sequi et quam fuga ut sint.','impedit.jpg',874783484,NULL,'1988-08-22 10:39:27.000','2019-06-19 18:11:58.000')
,(2,54,'Fugiat rem eveniet laborum eius ipsa. Soluta provident nihil dolor aliquid ut modi magnam delectus. Ratione amet dolores quam molestiae blanditiis.','voluptas.jpg',86837,NULL,'2010-01-19 21:57:21.000','2019-06-19 18:11:58.000')
,(3,55,'Consequatur voluptatem et sequi voluptatibus ut accusamus perferendis. Aut perspiciatis laboriosam ut consectetur. Ducimus omnis rem ut unde nobis sit rerum laborum. Reiciendis quaerat amet consequatur velit excepturi deserunt atque. Sed natus quibusdam quidem pariatur.','et.jpg',868,NULL,'2014-09-09 19:10:38.000','2019-06-19 18:11:58.000')
,(4,56,'Non est quia doloribus sed. Voluptates vitae necessitatibus molestiae quo dolorum mollitia at. Quos rem omnis porro nulla vero tempore similique ratione. Mollitia quo quo et et non laboriosam perferendis sit.','aliquid.jpg',10461638,NULL,'1988-06-16 01:16:35.000','2019-06-19 18:11:58.000')
,(1,57,'Quia provident autem nisi quisquam rerum. Inventore nostrum dolores eum explicabo hic ipsum deserunt. Eos et eum aut.','maiores.jpg',482028,NULL,'2016-05-20 20:16:27.000','2019-06-19 18:11:58.000')
,(2,58,'Repellat minima animi iure explicabo blanditiis sed. Incidunt vel animi reprehenderit quisquam reprehenderit. Dolor ut ipsum deleniti ut officia. Velit sequi consequatur nemo nam sed rerum.','dolorem.jpg',142917961,NULL,'1974-05-05 20:37:58.000','2019-06-19 18:11:58.000')
,(3,59,'Assumenda ipsum officiis fuga unde itaque eveniet magni. Quasi assumenda qui sed quod quis. Amet sit dolores accusantium voluptatem omnis unde soluta.','unde.jpg',6099,NULL,'1972-08-24 05:37:28.000','2019-06-19 18:11:58.000')
,(4,60,'Non est animi consequatur. Neque aliquid aut voluptatem aut inventore ut. Maiores hic voluptas nesciunt. Nulla vel facilis deleniti tempore.','dignissimos.jpg',783631045,NULL,'2006-11-01 15:16:53.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,61,'Debitis neque est ratione. Quia quod ab ut sit et neque quam. Illum suscipit voluptas est amet dolores sit perspiciatis cumque. Eos est et veritatis non esse.','nisi.jpg',914587,NULL,'1983-12-22 21:47:23.000','2019-06-19 18:11:58.000')
,(2,62,'Nihil quasi doloremque rerum velit non libero. Non veritatis perspiciatis autem. Expedita rerum nihil aliquam.','sint.jpg',86964,NULL,'2011-09-12 11:05:53.000','2019-06-19 18:11:58.000')
,(3,63,'Nesciunt aut sint nam dolor facilis ut est. Odit dolores assumenda dolore.','ipsum.jpg',689891921,NULL,'2008-05-10 05:19:10.000','2019-06-19 18:11:58.000')
,(4,64,'Aliquid facere dignissimos quidem quo et beatae. Non qui dolore velit. Nemo non asperiores architecto corporis ratione.','velit.jpg',767,NULL,'1981-11-28 00:43:00.000','2019-06-19 18:11:58.000')
,(1,65,'Id quos rerum delectus quas porro eos. Qui in accusantium nihil et possimus. Qui doloribus dolores a deserunt illo.','ducimus.jpg',663,NULL,'2005-01-31 02:53:19.000','2019-06-19 18:11:58.000')
,(2,66,'Ipsa odit ut sed et. Eos vero aut veritatis doloribus ipsam et at repellendus. Fugiat sequi sint aliquam nostrum voluptate. Omnis quaerat consequatur cum.','mollitia.jpg',66726632,NULL,'1970-10-07 22:45:18.000','2019-06-19 18:11:58.000')
,(3,67,'Placeat aut consequatur unde sed qui voluptatum. Harum ut quasi reprehenderit nostrum et. Facilis magnam consectetur ea suscipit accusantium.','enim.jpg',213578,NULL,'2015-06-20 15:21:47.000','2019-06-19 18:11:58.000')
,(4,68,'Quod assumenda impedit aut odio consequatur aut quisquam. In officia mollitia nobis. Non accusantium ut tempore.','iure.jpg',0,NULL,'1996-05-24 05:33:17.000','2019-06-19 18:11:58.000')
,(1,69,'Nemo eum et placeat non et repellat consequuntur. Rem vitae rerum sed aut numquam voluptatum quia. Magni itaque rerum laboriosam saepe molestias a.','voluptas.jpg',8488,NULL,'1973-03-06 04:36:40.000','2019-06-19 18:11:58.000')
,(2,70,'Alias qui dolores tempore est. Molestiae necessitatibus debitis nihil qui. Et molestiae voluptatem doloribus tempore enim veritatis tenetur. Consequatur qui non debitis voluptas et in soluta.','aut.jpg',96,NULL,'2001-09-09 22:19:46.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,71,'Ipsam velit maiores sit expedita distinctio. Nostrum corrupti similique officiis et et dolor. Quasi autem voluptas voluptas id molestias.','dicta.jpg',968311915,NULL,'1979-02-24 11:29:37.000','2019-06-19 18:11:58.000')
,(4,72,'Natus vel est aspernatur qui velit adipisci sunt. Qui facilis cupiditate accusantium ut excepturi sequi esse. Numquam ipsam eos exercitationem qui perspiciatis. Sint quia consectetur recusandae in deserunt.','voluptate.jpg',985362,NULL,'2018-05-05 17:56:57.000','2019-06-19 18:11:58.000')
,(1,73,'Atque et sint quam maxime. Beatae necessitatibus soluta quos qui qui explicabo aut. Cupiditate quisquam quis ab modi. Modi aut explicabo voluptates rerum ut quaerat.','modi.jpg',3,NULL,'2000-10-06 09:42:23.000','2019-06-19 18:11:58.000')
,(2,74,'Sint nemo quasi est. Nulla vitae aut eveniet id exercitationem. Culpa eveniet neque ut minus ea eos.','possimus.jpg',17341,NULL,'1988-09-11 12:40:20.000','2019-06-19 18:11:58.000')
,(3,75,'Sed sed ad eum commodi quam nulla perspiciatis doloremque. Corporis debitis nostrum harum consequuntur molestiae aut et. Voluptatibus in eos consequatur commodi molestiae.','eaque.jpg',778,NULL,'2012-12-31 08:29:33.000','2019-06-19 18:11:58.000')
,(4,76,'Quisquam consequuntur deleniti rerum et dolorum sapiente voluptatem. Laudantium voluptatibus rem repudiandae omnis voluptas harum sed. Nam officiis dignissimos ut similique ipsum et architecto ullam. Ipsa illo veniam fuga ullam.','iste.jpg',6,NULL,'1998-12-20 23:58:27.000','2019-06-19 18:11:58.000')
,(1,77,'Sequi vero nostrum sint dolores ratione aut et. Iure qui voluptas molestiae recusandae. Ut perferendis consequatur sed dolorum deleniti nobis exercitationem. Voluptas cumque laudantium aut quibusdam quia ex.','est.jpg',86,NULL,'1981-08-11 16:46:58.000','2019-06-19 18:11:58.000')
,(2,78,'Similique sit deserunt assumenda inventore sunt dolorem. Nihil quo rerum vel assumenda. Saepe dolorum reiciendis et esse ipsam amet quod. Et nam et earum eveniet debitis et nesciunt.','omnis.jpg',8603,NULL,'1981-11-02 11:26:06.000','2019-06-19 18:11:58.000')
,(3,79,'Sed qui ad quibusdam eaque dolores. Quia earum quis corporis non. Tempore consequatur qui a cupiditate.','ad.jpg',5346,NULL,'1996-01-26 17:47:20.000','2019-06-19 18:11:58.000')
,(4,80,'Facilis a ducimus ad. Ipsam rerum iure assumenda veniam dolorem consequatur quasi occaecati. Aut sed est et sapiente aspernatur illo accusamus. Voluptatem asperiores quaerat sit sit.','dignissimos.jpg',58481,NULL,'1989-09-23 11:33:51.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,81,'Quidem et eius doloremque ratione. Qui modi ipsum est officia et dolores. Molestias porro non velit totam.','rerum.jpg',5209165,NULL,'1990-06-19 20:06:13.000','2019-06-19 18:11:58.000')
,(2,82,'Perferendis et et enim beatae ut voluptas velit. Officiis perspiciatis sed quaerat rem. Fuga laborum quia sed amet laboriosam voluptatem.','dolores.jpg',47161319,NULL,'1974-09-03 13:54:26.000','2019-06-19 18:11:58.000')
,(3,83,'Delectus expedita libero fuga accusamus qui. Accusantium dolores iste nihil mollitia voluptatum. Eum error repellendus suscipit quia nisi culpa ut reiciendis. Tempore et reiciendis quaerat culpa.','quos.jpg',39321,NULL,'1995-07-10 19:13:21.000','2019-06-19 18:11:58.000')
,(4,84,'Repudiandae dolor illum est maxime sapiente aut perspiciatis. Sunt reiciendis molestiae commodi at odit est. Qui fuga voluptatibus sunt animi velit non et.','et.jpg',2,NULL,'1971-04-15 17:44:35.000','2019-06-19 18:11:58.000')
,(1,85,'Nisi iusto cum sed quam est cupiditate. Et praesentium necessitatibus ipsam maiores expedita. Velit autem possimus et labore.','deserunt.jpg',5929496,NULL,'2004-04-29 20:55:06.000','2019-06-19 18:11:58.000')
,(2,86,'Ea sapiente voluptatem dolores a temporibus enim. Rerum quasi quo atque modi. Autem repellendus vitae esse aspernatur iure natus reprehenderit. Quo aut fugit dolorem atque qui voluptate atque ullam.','possimus.jpg',92,NULL,'2019-02-23 20:58:44.000','2019-06-19 18:11:58.000')
,(3,87,'Dignissimos non qui est eligendi in. Et hic ea quidem et facilis.','sint.jpg',141,NULL,'2015-08-30 07:22:54.000','2019-06-19 18:11:58.000')
,(4,88,'Ipsa dolores voluptatem maxime rem dolores dolores. Cupiditate doloribus porro in fuga ut. Aut aut nihil repellendus nisi asperiores. Ut voluptas id in veniam voluptatem veritatis.','rem.jpg',74236435,NULL,'1971-12-03 21:35:48.000','2019-06-19 18:11:58.000')
,(1,89,'Doloremque rerum placeat dolores ut error. Assumenda dolores voluptatem nihil consequatur et aspernatur ab. Ducimus rerum et minus doloribus at ullam.','quo.jpg',258,NULL,'1984-01-05 19:50:11.000','2019-06-19 18:11:58.000')
,(2,90,'Aliquid rerum sit natus deserunt. Nihil sint in ut facere eum. Quibusdam magnam ut qui officia quod dolore.','odio.jpg',163,NULL,'1978-08-29 20:13:55.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,91,'Laboriosam non quia et blanditiis. Nihil ut est non autem voluptatibus. Molestiae reprehenderit at est sed sint enim. Voluptatibus ex eligendi doloribus non quaerat nostrum dignissimos. Architecto in veniam laboriosam inventore beatae.','autem.jpg',1,NULL,'1988-11-12 22:11:24.000','2019-06-19 18:11:58.000')
,(4,92,'Vero esse suscipit non quis sed temporibus. Consectetur sit vel distinctio repellendus deleniti veniam qui. Eius veritatis at tempore quia.','neque.jpg',2,NULL,'2009-05-27 09:49:55.000','2019-06-19 18:11:58.000')
,(1,93,'Repellat delectus nulla est nulla cum. Voluptas eum aut necessitatibus sit animi illo impedit aut. Consectetur aut et excepturi porro esse. Sint praesentium autem deleniti omnis et harum vitae. Minima error dolores voluptas provident cupiditate officiis.','et.jpg',93,NULL,'1987-09-12 21:34:04.000','2019-06-19 18:11:58.000')
,(2,94,'Tempore corrupti vel nemo doloremque quibusdam expedita. Similique sit quam quis dolorum non excepturi. Rem voluptas laborum quos voluptas vel et. Error eveniet ea cum minus nihil officia dolorum. Ullam qui voluptatem autem ut.','quisquam.jpg',5591,NULL,'1998-08-05 08:54:38.000','2019-06-19 18:11:58.000')
,(3,95,'Labore velit ipsam et sint voluptas. Necessitatibus maxime nihil repellendus quo cupiditate. Sit ad qui nemo. Sed magnam quia eos dignissimos in quo iusto.','maiores.jpg',0,NULL,'2007-08-10 00:40:53.000','2019-06-19 18:11:58.000')
,(4,96,'Ducimus possimus dolorem quia corrupti dolore. Omnis nam ea eum culpa distinctio ex optio aut. Voluptas non facilis quo natus corrupti perferendis. Illo rerum ut explicabo sit.','ipsum.jpg',667274,NULL,'2011-03-10 23:39:19.000','2019-06-19 18:11:58.000')
,(1,97,'Voluptatem corrupti exercitationem nulla est itaque. Ipsum quaerat similique ut dolorum. Qui aliquid neque labore alias ut placeat.','non.jpg',62,NULL,'1996-01-18 02:10:58.000','2019-06-19 18:11:58.000')
,(2,98,'Qui aspernatur aut sit veniam. Aliquam nisi fuga facere. Asperiores aut beatae laboriosam libero. Fugiat id perspiciatis a dolores voluptatem ad earum.','aut.jpg',801927073,NULL,'1980-01-09 06:19:44.000','2019-06-19 18:11:58.000')
,(3,99,'Assumenda iure delectus optio blanditiis atque occaecati. Ea assumenda dolor quibusdam nemo aut. Fugiat omnis velit quod. Sequi nihil quis consequatur sit et.','est.jpg',707,NULL,'1985-07-16 10:26:38.000','2019-06-19 18:11:58.000')
,(4,100,'Deserunt accusantium laudantium ab soluta facilis assumenda. Et temporibus ab corporis dolorum rem qui. Ipsa veritatis amet voluptas quod. Ut incidunt illo ullam fugit optio recusandae.','doloribus.jpg',4,NULL,'2011-08-04 09:10:30.000','2019-06-19 18:11:58.000')
;

drop table if exists likes;
create table  likes(
    id serial primary key,
    user_id Bigint unsigned not null,
    media_id Bigint unsigned not null,
    created_at datetime default now(),
    
    FOREIGN key likes_fk (user_id) REFERENCES users(id),
    FOREIGN KEY likes_fk_1 (media_id) REFERENCES media(id)
);

INSERT INTO `likes` VALUES 
('1','1','1','1988-10-14 18:47:39'),
('2','2','1','1988-09-04 16:08:30'),
('3','3','1','1994-07-10 22:07:03'),
('4','4','1','1991-05-12 20:32:08'),
('5','5','2','1978-09-10 14:36:01'),
('6','6','2','1992-04-15 01:27:31'),
('7','7','2','2003-02-03 04:56:27'),
('8','8','8','2017-04-24 09:30:19'),
('9','9','9','1974-02-07 20:53:55'),
('10','10','10','1973-05-11 03:21:40'),
('11','11','11','2008-12-17 13:03:56'),
('12','12','12','1995-07-17 21:22:38'),
('13','13','13','1985-09-07 23:34:21'),
('14','14','14','1973-01-27 23:11:53'),
    (15,56,20,'2017-04-24 09:30:19'),
    (16,57,20,'2017-04-24 09:30:19'),
    (17,46,7,'2015-11-02 00:11:31'),
    (18,85,7,'2017-04-24 09:30:19'),
    (19,77,7,'2014-06-20 03:34:11'),
    (20,36,7,'2015-11-02 00:11:31'),
    (21,12,7,'2003-02-03 04:56:27'),
    (22,48,93,'2014-06-20 03:34:11'),
    (23,18,93,'2014-06-20 03:34:11'),
    (24,38,93,'2014-06-20 03:34:11'),
    (25,63,93,'2014-06-20 03:34:11'),
    (26,71,45,'2015-11-02 00:11:31'),
    (27,3,45,'2015-11-02 00:11:31'),
    (28,15,45,'2014-06-20 03:34:11'),
    (29,84,45,'2015-11-02 00:11:31'),
    (30,99,45,'2015-11-02 00:11:31'); 


drop table if exists profiles;
create table profiles(
    user_id serial primary key,
    gender char(1),
    birthday Date,
    photo_id Bigint unsigned null,
    created_at datetime default now(),
    nativetown varchar(100),
    foreign key fk_user_id (user_id) references users(id),
    FOREIGN KEY (photo_id) REFERENCES media(id)
);

INSERT INTO `profiles` VALUES 
('1','f','1976-11-08','1','1970-01-18 03:54:01','Adriannaport'),
('2','f','2011-12-20','2','1994-11-06 23:56:10','North Nettieton'),
('3','m','1994-06-15','3','1975-11-27 02:27:11','Padbergtown'),
('4','f','1979-11-07','4','1994-04-12 04:31:49','Port Rupertville'),
('5','f','1976-04-19','5','1976-07-05 02:25:30','Spencerfort'),
('6','f','1983-09-07','6','1981-06-20 15:54:43','South Woodrowmouth'),
('7','m','2014-07-31','7','1997-06-21 07:52:05','South Jeffereyshire'),
('8','f','1975-03-26','8','2008-08-18 18:23:25','Howeside'),
('9','f','1982-11-01','9','2014-09-29 01:22:26','Loweborough'),
('10','m','1977-05-14','10','1980-03-17 18:17:45','New Nellaside'),
('11','m','1988-10-28','11','2011-08-22 08:31:06','New Skylar'),
('12','f','1994-02-07','12','2015-08-04 16:34:50','South Dameontown'),
('13','f','1998-08-08','13','1978-02-12 03:14:55','North Terencemouth'),
('14','f','1973-11-16','14','2015-03-13 03:01:16','West Wilfordshire'),
('15','m','1979-08-20','15','1983-08-13 03:48:56','North Xavier'),
('16','m','1997-03-17','16','1989-09-08 23:17:00','Port Kayton'),
('17','m','2015-02-25','17','1992-10-29 05:38:24','New Odie'),
('18','f','2011-04-05','18','1981-08-22 06:53:53','South Newton'),
('19','f','1981-01-24','19','1975-08-17 04:48:38','Port Jovanyview'),
('20','f','2010-03-12','20','2008-02-11 09:39:28','Port Adolfoville'),
('21','f','1971-02-01','21','1972-09-21 21:31:09','Kleinbury'),
('22','f','2000-08-30','22','1977-03-15 13:44:30','South Ciara'),
('23','f','1991-08-17','23','1991-10-15 01:01:05','Magdalenahaven'),
('24','m','2008-08-26','24','2016-06-23 23:04:39','Port Jettchester'),
('25','f','2005-03-19','25','2002-11-21 22:26:09','West Juneview'),
('26','m','1970-03-17','26','1995-06-07 00:37:46','South Jose'),
('27','m','2011-01-12','27','1992-03-18 22:28:05','Christinahaven'),
('28','m','2000-01-22','28','2003-06-16 16:15:57','Lednerstad'),
('29','f','1988-02-16','29','1988-02-09 12:47:21','Lisandrofort'),
('30','m','1977-08-16','30','1977-03-09 23:28:37','Sethfort'),
('31','f','1978-11-28','31','2008-01-31 16:16:06','Tessieport'),
('32','f','2004-02-06','32','1995-11-19 13:46:21','Lake Reilly'),
('33','f','2000-05-07','33','1991-11-21 16:14:32','East Rosalinda'),
('34','f','1988-11-22','34','2008-08-17 22:20:26','Lake Henderson'),
('35','f','2008-08-28','35','1991-07-07 07:37:17','Melanyport'),
('36','m','2004-02-05','36','1973-11-04 03:21:50','Bryanaland'),
('37','m','2012-01-21','37','2014-11-25 14:47:51','South Lorenstad'),
('38','f','1999-10-17','38','1990-04-29 04:32:11','Rocioport'),
('39','f','1991-02-16','39','1976-09-18 06:18:30','New Petra'),
('40','m','1993-08-26','40','1976-10-03 19:24:42','Wizabury'),
('41','m','2005-07-31','41','1997-04-11 10:03:16','Port Elton'),
('42','m','2000-01-08','42','1971-02-20 18:14:51','New Hannahchester'),
('43','f','1996-01-09','43','1999-05-18 06:05:39','North Deion'),
('44','f','1976-02-16','44','1997-09-01 08:44:31','Lake Johnpaulport'),
('45','f','2018-10-20','45','1995-04-02 18:37:27','East Ivybury'),
('46','m','1981-03-05','46','1978-01-04 19:53:38','West Zula'),
('47','m','1973-06-27','47','1992-08-24 13:18:15','Medatown'),
('48','f','1974-11-15','48','1992-12-01 00:54:49','Medhursthaven'),
('49','f','1987-11-04','49','1973-10-23 18:53:51','Kileyton'),
('50','m','1971-05-09','50','1974-01-17 03:57:15','East Electaland'),
('51','m','1985-01-12','51','1998-06-20 11:06:11','Isabellaland'),
('52','m','1989-06-05','52','1986-09-23 20:01:28','Lake Houston'),
('53','f','2010-12-11','53','2002-08-02 09:00:39','Lake Mohammad'),
('54','m','1975-05-29','54','1973-09-21 12:52:05','Odessaside'),
('55','m','1996-06-27','55','1974-07-07 05:47:32','West Jordy'),
('56','m','1976-08-28','56','1994-10-13 21:37:38','Laceybury'),
('57','f','2016-05-22','57','2007-10-31 21:36:34','Port Zelmastad'),
('58','f','1999-10-10','58','2003-06-03 17:27:10','Vivienberg'),
('59','m','2008-12-12','59','2015-11-19 11:12:16','West Sibyl'),
('60','m','1999-09-14','60','1981-02-06 04:05:26','Antwantown'),
('61','m','2005-02-09','61','1972-07-02 08:34:26','New Nonaview'),
('62','f','1993-07-09','62','1996-12-19 03:17:29','Hilarioland'),
('63','f','2012-04-04','63','1978-12-23 11:06:08','South Skylarmouth'),
('64','f','2005-10-07','64','2010-10-31 01:21:49','West Bernadine'),
('65','f','1992-11-02','65','1971-10-15 06:36:08','New Kacie'),
('66','m','2009-10-12','66','1993-10-20 16:49:29','New Doylefort'),
('67','f','1982-08-16','67','1990-01-23 22:14:55','West Kellihaven'),
('68','f','2006-05-13','68','1997-04-29 02:49:42','East Ottis'),
('69','m','2003-09-20','69','1987-02-12 08:27:11','Busterfort'),
('70','f','2011-09-09','70','2017-05-04 11:35:24','Kassandrachester'),
('71','f','1979-10-23','71','1993-10-23 12:37:59','North Estelle'),
('72','f','1978-07-10','72','1990-09-16 18:57:43','Sonyachester'),
('73','m','1993-07-13','73','1992-08-10 05:04:44','West Mozelle'),
('74','m','1977-12-04','74','2009-09-19 18:30:49','South Kayleeton'),
('75','f','1981-08-27','75','1974-12-15 01:52:32','Port Abdul'),
('76','f','1998-02-10','76','2012-05-22 12:05:10','Lake Kellyland'),
('77','m','1973-10-17','77','1984-06-22 12:10:24','West Alice'),
('78','f','2018-10-25','78','1994-03-02 05:14:12','New Danykaberg'),
('79','m','1990-06-28','79','2010-03-06 20:16:13','Port Nickolaschester'),
('80','m','2006-10-08','80','2007-10-20 17:07:41','South Marleeburgh'),
('81','m','1972-02-09','81','2012-02-18 04:33:04','South Elizabethside'),
('82','f','1971-09-28','82','1979-09-10 00:00:36','Volkmanberg'),
('83','m','1987-11-02','83','1994-02-03 03:15:34','South Bernita'),
('84','f','2019-03-20','84','1979-09-08 02:29:57','Rennerfort'),
('85','m','2013-06-30','85','2003-12-31 09:46:13','New Dagmar'),
('86','f','1974-12-29','86','1978-05-13 16:58:53','West Cade'),
('87','f','2006-04-20','87','2006-10-20 00:25:45','New Alycia'),
('88','f','1995-12-10','88','2000-04-28 19:55:37','Hermanmouth'),
('89','f','1972-05-13','89','2010-09-05 17:54:37','East Aliyah'),
('90','m','2006-08-02','90','2007-10-11 03:49:30','Majorland'),
('91','f','1988-11-18','91','2000-05-01 02:03:19','Sydneeport'),
('92','f','1983-07-24','92','1977-10-20 00:24:36','Trinityland'),
('93','m','2015-04-16','93','2003-01-06 17:49:50','South Noeliaton'),
('94','f','2016-09-20','94','1990-07-07 06:28:12','South Kirstin'),
('95','m','1980-10-15','95','1974-09-15 21:30:36','West Coryville'),
('96','m','1984-10-02','96','1972-05-04 20:10:50','Hettingerside'),
('97','f','1971-12-10','97','2005-07-14 15:03:46','Dooleyland'),
('98','f','2005-09-07','98','1990-04-06 05:48:14','Lockmantown'),
('99','f','1996-10-09','99','1981-09-24 02:19:44','Lake Lora'),
('100','f','1990-02-11','100','1974-08-23 15:31:47','Port Mable');