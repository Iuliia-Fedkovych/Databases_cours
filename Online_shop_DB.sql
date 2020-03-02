/*База данных online_shop это база интернет магазина для любителй творчества и рукоделия. Юзеры этого магазина как покупатели так и продавцы.
 * В данном магазине продаются: товары ручной работы, материали для творчества и мастер классы.
 * В магазине есть возможность оценить продавца и оставть отзыв
 */

drop database if exists online_shop;
create database online_shop;
use online_shop;

drop table if exists users;
create table users(
    id serial primary key,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(50) unique,
    is_seller bit(1),   -- поле показывет является ли юзер продавцом
    `password_hash` varchar(100),
    phone varchar(12),

    index (phone),
    index (firstname, lastname)
);

INSERT INTO online_shop.users (firstname,lastname,email,is_seller,phone) values
	('Валерия','Александрова','kdjvk_dkkl@mail.ru',1,'1564799522'),
	('Татьяна','Иванова','sddf_kjbj@mail.ru',1,'1564799622'),
	('Мария','Петрова','sdvs_fvsf@mail.ru',1,'1569799522'),
	('Виктория','Андреева','adas_fhk@mail.ru',1,'8564799522'),
	('Анна','Беляева','skjdfb_sdj@mail.ru',0,'2364799522'),
	('Ирина','Максимова','adaf_dajk@mail.ru',0,'1564589522'),
	('Юлия','Волкова','jmg_rtp@mail.ru',0,'2364359522'),
	('Петр','Чернышев','khj_sdjkf@mail.ru',0,'7364781522'),
	('Иван','Климов','dsfb_wdj@mail.ru',0,'5264799522'),
	('Евгения','Васильева','afkk_qgwj@mail.ru',0,'2364962522'),
	('Инга','Храброва','aiknl_mle@mail.ru',0,'2365139441'),
	('Валентина','Разумова','efwrg_dfb@mail.ru',0,'6564235971'),
	('Екатерина','Молчанова','efqe_efqe@mail.ru',0,'2289621464'),
	('Светлана','Власова','qwdq_fknj@mail.ru',0,'3189119945'),
	('Алла','Никитна','efnlk_kjbsf@mail.ru',0,'4989224236');

drop table if exists photos;
create table photos(
    id serial primary key,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO online_shop.photos (user_id,body,filename,`size`) values
	(1,'Est aut aliquid est. Soluta eveniet doloribus ipsam ut id assumenda quam. Consequuntur et velit aperiam error corporis rem corporis. Est similique quisquam quia maxime eaque possimus facere officiis. Odio magni atque dicta voluptatibus hic iste delectus.','a.jpg',5),
	(2,'Laborum dolorem magni unde vero sit hic. Pariatur quia voluptas magnam. Blanditiis dolorem et molestias veniam facere provident.','asperiores.jpg',4510),
	(3,'A quam ea ullam reiciendis vel et reiciendis. Delectus iure mollitia est. Eum dolores dolores sed officia vitae qui. Sed repudiandae voluptatem voluptatibus libero culpa quo.','sapiente.jpg',763116),
	(4,'Velit commodi in veniam occaecati. Tenetur temporibus ullam enim officiis aut illum. In maiores velit nobis soluta molestias maiores tempora. Quisquam et ut et sequi.','rerum.jpg',740),
	(5,'Est eaque est qui et omnis rerum. Expedita porro nesciunt inventore consequatur quos. Inventore aut rerum voluptas. Dicta vel ut quibusdam cupiditate tempore.','user5-profile-image.jpg',40813),
	(6,'Atque et nam nulla et aliquid. Vel repellendus aut natus odit quibusdam quis atque et. Laudantium minima velit dolores eos voluptate nostrum.','quasi.jpg',119422),
	(7,'Nihil ut et reprehenderit et. Numquam veniam quis impedit. Voluptas saepe rerum illo vel omnis. Aliquam illum ut quo saepe ea unde est.','non.jpg',704558),
	(8,'Sint quod fugit molestiae dolore repellendus est. Quis corporis necessitatibus commodi placeat temporibus doloremque voluptatem. Nemo maxime sit dolorem perferendis repellat. Et impedit deleniti eaque pariatur ut quia voluptatibus.','earum.jpg',65108),
	(9,'Optio sed aperiam veniam eum. Rerum placeat soluta iusto perspiciatis quibusdam dolorem eos. Ea pariatur optio est ut.','ullam.jpg',83717449),
	(10,'Facere nostrum facilis aperiam quisquam dolor. Minima omnis est nam.','maiores.jpg',75),
	(11,'A omnis ratione non. Et velit sed incidunt corporis ut rerum nemo. Ut pariatur tempora ea incidunt praesentium ut. Eligendi et et rerum sequi ut.','non.jpg',0),
	(12,'Quo minus harum debitis debitis quis sunt. Dolores suscipit placeat dolorum non voluptate et. Non eos odio esse tempore. Illum minus quidem temporibus porro.','earum.jpg',1826766),
	(13,'Et aliquid sit natus vitae fuga enim repudiandae. Quis ab et debitis est accusantium labore. Exercitationem delectus eaque necessitatibus.','hic.jpg',979),
	(14,'Nobis est sed blanditiis assumenda incidunt explicabo. Facere rem assumenda odio explicabo ad enim repellat quia. Dolor mollitia fugiat officia nihil animi.','iste.jpg',18),
	(15,'Tempora ad et aspernatur laborum ut dolor et. Exercitationem quaerat corporis placeat et.','quia.jpg',7),
	(1,'Accusantium est ea fuga omnis mollitia. Dolores officia et consequatur iste est quo. Ullam laborum qui ut quo delectus temporibus.','omnis.jpg',2058670),
	(1,'Quasi itaque atque ut aliquam debitis. Qui consequuntur maiores sit ad perspiciatis quaerat assumenda repudiandae. Necessitatibus placeat quaerat aut voluptatem ratione voluptate expedita. Nulla doloremque aut molestiae nam.','aperiam.jpg',3489253),
	(1,'Deserunt voluptatem quia voluptatem sit. Qui omnis distinctio optio voluptatem veniam atque dolorem. Repellat laboriosam illo consequatur nesciunt voluptas magni rerum. Saepe quos qui doloremque.','commodi.jpg',8),
	(1,'Fugiat consequuntur voluptatem odit omnis. Quia aut voluptate officia rerum. Cumque voluptatem eaque dolorum voluptas sed. Et autem atque est minus veritatis explicabo eos.','id.jpg',1),
	(1,'Autem dolore beatae aut corporis fugit ratione. Ex beatae qui at. Est deleniti asperiores temporibus perferendis est.','fugiat.jpg',82),
	(1,'Provident eligendi animi quidem qui ipsum. Accusamus dolor sint est qui magnam. Omnis enim quis dolore magni facilis repudiandae deserunt. Consequatur eum at recusandae id tenetur voluptas amet.','ipsa.jpg',1),
	(1,'Animi ut labore dolore atque consequuntur maxime fugit. Sunt et et facere sint. Recusandae numquam accusamus a. Non quia dolorem reiciendis earum et officiis iure.','adipisci.jpg',4582),
	(2,'Sint officiis a ipsa quaerat rerum ea totam. Aut perferendis deleniti error ipsa ducimus ipsam. Ipsum a sunt quis placeat.','qui.jpg',8302441),
	(2,'Et accusamus a et adipisci dolore. Blanditiis sit vitae dolorem voluptas temporibus numquam ab. Aut temporibus accusantium consectetur.','maxime.jpg',91764),
	(2,'Consequuntur animi sed ea perferendis ad magnam. Aut libero alias sequi iste qui est. Ut quo dignissimos quibusdam doloremque est est incidunt.','qui.jpg',90944),
	(2,'Accusantium sit praesentium voluptatem molestias architecto. Excepturi doloremque ab eligendi eum ullam voluptas qui. Inventore expedita distinctio omnis laborum laboriosam.','eveniet.jpg',317340),
	(2,'Et iure cupiditate expedita ut earum et illum. Cum sed assumenda velit officia. Voluptas harum ea magni aspernatur aut ea vel.','incidunt.jpg',0),
	(2,'A culpa nostrum et quis. Id ipsum ipsum deserunt earum eaque aut earum. Blanditiis et commodi voluptas.','eaque.jpg',9525),
	(2,'Cumque quod provident provident fugit cumque numquam. Fuga totam delectus a aut quaerat nemo dignissimos eos. Ratione harum et laborum qui dolore aliquam facilis numquam. At quas nam sapiente porro nesciunt voluptatum.','non.jpg',20697427),
	(2,'Provident quia fuga et consequatur reprehenderit repellat. Et aut cum nostrum ut beatae animi aut alias.','et.jpg',263408),
	(2,'Voluptatem est recusandae molestias quod. Voluptatem velit omnis asperiores dolorum est vero. Quo doloribus aut natus rem. Dolor sapiente libero quis sit.','et.jpg',4391),
	(2,'Et commodi tempora voluptate perferendis. Ullam ratione sequi in eveniet accusantium consequatur. Quod quis ipsum consectetur fuga numquam.','odio.jpg',90),
	(2,'Similique qui quibusdam vitae et. Voluptas nihil nesciunt reiciendis et. Incidunt necessitatibus illo asperiores quidem ipsa quam. Amet quisquam amet aut facere totam fuga quasi.','expedita.jpg',87),
	(2,'Eos id culpa inventore voluptatem aut placeat dolorem. Ex sunt rem esse aspernatur. Est ut ut quidem est esse. Possimus quia nisi neque.','beatae.jpg',694461),
	(2,'Libero ut qui dicta impedit. Consequatur earum neque quis consequatur numquam consequatur. Voluptatibus eos vel ex quis sed cum.','et.jpg',154603),
	(2,'Sapiente in totam sed aliquam rem qui occaecati. Dolor dignissimos omnis mollitia temporibus repellendus ut. Est esse facilis deleniti eum dolorem ex distinctio. Est nisi rerum aut optio. Quod dolor occaecati expedita quia incidunt debitis.','tenetur.jpg',6392040),
	(2,'Ut praesentium soluta facere sunt. Eveniet in voluptatem optio neque cumque quis ut. Dolores assumenda ullam error quis atque magni ut. Quia at aut et aliquid consectetur.','accusantium.jpg',0),
	(2,'Ut ab libero dolor eum deleniti porro facilis. Quo iusto perspiciatis fugiat voluptatem nam sint. Ut nisi sed et dicta eos explicabo quos.','corrupti.jpg',3),
	(2,'Nam voluptas omnis in quas aut. Nihil perspiciatis magni voluptatum mollitia aut nulla. Consequuntur nostrum atque nihil omnis. Velit hic eum sapiente quis molestiae deleniti.','tempore.jpg',2896602),
	(3,'Ea odio eveniet totam asperiores aut vel. Nihil dolores natus magnam aut delectus perspiciatis eum ullam. Magnam est cupiditate earum fuga aut numquam. Delectus modi ut occaecati est et aut.','necessitatibus.jpg',0),
	(3,'Dolorem molestias similique laboriosam et. Incidunt earum voluptatem magnam voluptas eligendi quos. Cum voluptatem quia odio sed. Ut voluptatum ex sint illum molestias perferendis laborum.','sapiente.jpg',816152694),
	(3,'Id illo quia corporis. Magni id illo commodi natus. Eos porro error nihil optio quia.','dolorem.jpg',7095),
	(3,'Eos omnis error quis est debitis. Itaque adipisci voluptatibus velit autem. Tempora quo saepe nesciunt sapiente sequi hic.','illo.jpg',1520673),
	(3,'Dolore non repellat mollitia dolor ut sequi. Excepturi enim dolorem mollitia eaque sit porro ab. Eos consequatur hic dolore itaque quia animi ea.','dignissimos.jpg',548),
	(3,'Cupiditate modi molestiae culpa delectus est et voluptatem. Eius non impedit asperiores praesentium repellendus tempore. Minus natus quod eos quidem.','qui.jpg',7380),
	(3,'Provident dignissimos necessitatibus ut et esse. Excepturi et iste facere id suscipit ut. Voluptatem est ex et dolor nobis facilis et. Ut voluptatibus sunt et ut.','aut.jpg',14685),
	(3,'In mollitia consequatur aspernatur atque. Alias illum voluptatem et nemo et exercitationem. Voluptatem in ut quia similique quis. Saepe cupiditate sunt tenetur minima.','laborum.jpg',3),
	(3,'Quidem ad libero voluptas et veniam. Dolores dolores quia voluptatem soluta. Voluptatibus facere saepe non nulla.','consequatur.jpg',490),
	(3,'Esse eveniet similique sit temporibus aliquam. Sequi consequatur excepturi enim aut. Mollitia voluptas facilis velit omnis animi ea numquam. Accusamus nostrum aspernatur ullam itaque et eveniet quia. Corrupti tempora fugit rerum architecto voluptatem pariatur.','quae.jpg',26430194),
	(3,'Molestiae excepturi quia necessitatibus id voluptatem laudantium. Et ut ea mollitia quisquam. Vel consequatur quas excepturi totam sit suscipit. Aut tempora ratione eos ipsam quae possimus libero. Architecto et quia voluptatem et tempora alias sequi.','nulla.jpg',0),
	(3,'Omnis quaerat minus inventore quaerat. Ut sunt optio similique laboriosam. Fugit voluptas nesciunt debitis possimus tempore. Architecto sunt maiores laborum quod laboriosam.','dolorem.jpg',38),
	(3,'Ullam unde earum dolorem. Vel doloremque harum optio deserunt iure. Voluptate at animi veniam suscipit quisquam.','dolorum.jpg',447),
	(3,'Ut distinctio non vero qui. Accusantium a consectetur magnam eum quisquam molestias. Sequi et quam fuga ut sint.','impedit.jpg',874783484),
	(3,'Fugiat rem eveniet laborum eius ipsa. Soluta provident nihil dolor aliquid ut modi magnam delectus. Ratione amet dolores quam molestiae blanditiis.','voluptas.jpg',86837),
	(3,'Consequatur voluptatem et sequi voluptatibus ut accusamus perferendis. Aut perspiciatis laboriosam ut consectetur. Ducimus omnis rem ut unde nobis sit rerum laborum. Reiciendis quaerat amet consequatur velit excepturi deserunt atque. Sed natus quibusdam quidem pariatur.','et.jpg',868),
	(3,'Non est quia doloribus sed. Voluptates vitae necessitatibus molestiae quo dolorum mollitia at. Quos rem omnis porro nulla vero tempore similique ratione. Mollitia quo quo et et non laboriosam perferendis sit.','aliquid.jpg',10461638),
	(3,'Quia provident autem nisi quisquam rerum. Inventore nostrum dolores eum explicabo hic ipsum deserunt. Eos et eum aut.','maiores.jpg',482028),
	(4,'Repellat minima animi iure explicabo blanditiis sed. Incidunt vel animi reprehenderit quisquam reprehenderit. Dolor ut ipsum deleniti ut officia. Velit sequi consequatur nemo nam sed rerum.','dolorem.jpg',142917961),
	(4,'Assumenda ipsum officiis fuga unde itaque eveniet magni. Quasi assumenda qui sed quod quis. Amet sit dolores accusantium voluptatem omnis unde soluta.','unde.jpg',6099),
	(4,'Non est animi consequatur. Neque aliquid aut voluptatem aut inventore ut. Maiores hic voluptas nesciunt. Nulla vel facilis deleniti tempore.','dignissimos.jpg',783631045);


drop table if exists profiles;
create table profiles(
    user_id serial primary key,
    gender char(1),
    birthday Date,
    photo_id Bigint unsigned null,
    created_at datetime default now(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    foreign key (user_id) references users(id),
    foreign key (photo_id) references photos(id)
);

INSERT INTO online_shop.profiles (user_id,gender,birthday,photo_id) values
	(1,'f','1976-11-08',1),
	(2,'f','2000-12-20',2),
	(3,'f','1994-06-15',3),
	(4,'f','1979-11-07',4),
	(5,'f','1976-04-19',5),
	(6,'f','1983-09-07',6),
	(7,'f','1987-07-31',7),
	(8,'m','1975-03-26',8),
	(9,'m','1982-11-01',9),
	(10,'f','1977-05-14',10),
	(11,'f','1988-10-28',11),
	(12,'f','1994-02-07',12),
	(13,'f','1998-08-08',13),
	(14,'f','1973-11-16',14),
	(15,'f','1979-08-20',15);

drop table if exists workshop_category;  -- категории мастерклассов
create table workshop_category(
    id serial primary key,
    name varchar(150)
);


INSERT INTO online_shop.workshop_category (name) VALUES 
	('Рисование'),
    ('Вышивка'),
	('Изготовление украшений');

drop table if exists workshop;
create table workshop(
    id serial primary key,
    workshop_cat_id bigint unsigned not null,
    user_id Bigint unsigned not null,
    name VARCHAR(255),
    description TEXT,
    workshop_type enum('online video', 'online photo', 'live worksop'), -- еще одна классификация мастеркласса по типу подачи материала
    price DECIMAL (11,2) COMMENT 'Price',
    photo_id Bigint unsigned null,
    created_at datetime default now(),
    updated_at datetime default current_timestamp on update current_timestamp,
    
    index (id),
    index (user_id),
    foreign key (user_id) references users(id),
    foreign key (workshop_cat_id) references workshop_category(id),
    foreign key (photo_id) references photos(id)
);


INSERT INTO online_shop.workshop (workshop_cat_id,user_id,name,description,workshop_type,price,photo_id) VALUES
	(1,1,'Натюрморо акварелью','Dignissimos non qui est eligendi in. Et hic ea quidem et facilis.','online video',3000,16),
	(1,1,'Базовый курс по рисованию','Ipsa dolores voluptatem maxime rem dolores dolores. Cupiditate doloribus porro in fuga ut. Aut aut nihil repellendus nisi asperiores. Ut voluptas id in veniam voluptatem veritatis.','live worksop',10000,17),
	(1,1,'Пейзаж акварелью','Doloremque rerum placeat dolores ut error. Assumenda dolores voluptatem nihil consequatur et aspernatur ab. Ducimus rerum et minus doloribus at ullam.','online video',5000,18),
	(2,3,'Вышивка зайца гладью','Aliquid rerum sit natus deserunt. Nihil sint in ut facere eum. Quibusdam magnam ut qui officia quod dolore.','online video',4500,40),
	(3,4,'Серьги из бисера','Laboriosam non quia et blanditiis. Nihil ut est non autem voluptatibus. Molestiae reprehenderit at est sed sint enim. Voluptatibus ex eligendi doloribus non quaerat nostrum dignissimos. Architecto in veniam laboriosam inventore beatae.','online photo',3000,58),
	(3,4,'Браслет из бисера','Vero esse suscipit non quis sed temporibus. Consectetur sit vel distinctio repellendus deleniti veniam qui. Eius veritatis at tempore quia.','online photo',4000,59),
	(3,4,'Брошь клевер','Repellat delectus nulla est nulla cum. Voluptas eum aut necessitatibus sit animi illo impedit aut. Consectetur aut et excepturi porro esse. Sint praesentium autem deleniti omnis et harum vitae. Minima error dolores voluptas provident cupiditate officiis.','live worksop',7000,60);


drop table if exists product_categories;  -- категории продаваемых продуктов (в одной таблице и товары ручной работы и материалы для творчества)
create table product_categories(
    id serial primary key,
    name varchar(150)
);

INSERT INTO online_shop.product_categories (name) VALUES 
	('Картина'),
    ('Предметы декора'),
	('Украшения'),
	('Ткани'),
	('Нитки'),
	('Бисер'),
	('Фурнитура'),
	('Пайетки');

drop table if exists products;
create table products(
    id serial primary key,
    prod_cat_id bigint unsigned not null,
    user_id Bigint unsigned not null,
    name VARCHAR(255),
    own_product bit(1),   -- данное поле показывет является ли товар изделием ручной работы
    manufacturer VARCHAR(255),
    description TEXT,
    colour VARCHAR(255),
    material VARCHAR(255),
    price DECIMAL (11,2),

    quantity int unsigned,
    photo_id Bigint unsigned null,
    created_at datetime default now(),
    updated_at datetime default current_timestamp on update current_timestamp,
    
    index (id),
    index (user_id),
    foreign key (user_id) references users(id),
    foreign key (prod_cat_id) references product_categories(id),
    foreign key (photo_id) references photos(id)
);

INSERT INTO online_shop.products (prod_cat_id,user_id,name,own_product,manufacturer,description,colour,material,price,quantity,photo_id) VALUES
	(1,1,'Париж',1,'-','Nihil quasi doloremque rerum velit non libero. Non veritatis perspiciatis autem.','многоцветный','бумага, акварель',2500,1,19),
	(1,1,'Персики',1,'-','Id quos rerum delectus quas porro eos. Qui in accusantium nihil et possimus. Qui doloribus dolores a deserunt illo.','многоцветный','бумага, акварель',3000,1,20),
	(1,1,'Венеция',1,'-','Nesciunt aut sint nam dolor facilis ut est. ','многоцветный','бумага, акварель',4700,1,21),
	(1,1,'Амстердам',1,'-','Aliquid facere dignissimos quidem quo et beatae.','многоцветный','бумага, акварель',3800,1,22),
	(2,2,'Скатерть',1,'-','Id quos rerum delectus quas porro eos. Qui in accusantium nihil et possimus. Qui doloribus dolores a deserunt illo.','синий','лён, никти мулине',12000,1,23),
	(2,2,'Скатерть',1,'-','Ipsa odit ut sed et. Eos vero aut veritatis doloribus.','кремовый','лён, никти мулине',15000,1,24),
	(2,2,'Диванная подушка',1,'-','Quod assumenda impedit aut odio consequatur aut quisquam.','серый','лён, никти мулине',7000,1,25),
	(2,2,'Вышитая картина',1,'-','Nemo eum et placeat non et repellat consequuntur.','многоцветный','хлопок, никти мулине',7000,1,26),
	(2,2,'Столовые салфекти',1,'-','Alias qui dolores tempore est.','елый','хлопок, никти мулине',3000,1,27),
	(3,3,'Серьги',1,'-','Ipsam velit maiores sit expedita distinctio. Nostrum corrupti similique.','золотой','бисер, крсисталы',2500,1,41),
	(3,3,'Браслет',1,'-','Natus vel est aspernatur qui velit adipisci sunt. ','голубой','бисер, крсисталы',5000,1,42),
	(4,2,'Лён',0,'Ваш лён','Atque et sint quam maxime. Beatae necessitatibus soluta ','бежевый','лён',1300,5,28),
	(4,2,'Хлопок',0,'Moda','Sint nemo quasi est. Nulla vitae aut eveniet id exercitationem.','белый','хлопок',1500,8,29),
	(4,2,'Канва',0,'Аида','Sed sed ad eum commodi quam nulla perspiciatis.','кремовый','хлопок',1400,11,30),
	(4,2,'Шёлк',0,'Rubelli','Quisquam consequuntur deleniti rerum et dolorum sapiente.','голубой','шёлк',3000,10,31),
	(5,2,'Мулине',0,'DMC','Sequi vero nostrum sint dolores ratione aut et. ','красный','хлопок',60,35,32),
	(5,2,'Мулине',0,'DMC','Similique sit deserunt assumenda inventore sunt dolorem.','синий','хлопок',60,45,33),
	(5,2,'Мулине',0,'DMC','Sed qui ad quibusdam eaque dolores.','зелёный','хлопок',60,84,34),
	(5,2,'Мулине',0,'DMC','Facilis a ducimus ad. Ipsam rerum iure assumenda veniam.','жёлтый','хлопок',60,13,35),
	(5,2,'Мулине',0,'Радуга','Quidem et eius doloremque ratione. ','красный','шерсть',15,26,36),
	(5,2,'Мулине',0,'Радуга','Perferendis et et enim beatae ut voluptas velit. ','синий','шерсть',15,51,37),
	(5,2,'Мулине',0,'Радуга','Delectus expedita libero fuga accusamus qui. ','зелёный','шерсть',15,41,38),
	(5,2,'Мулине',0,'Радуга','Repudiandae dolor illum est maxime sapiente aut','жёлтый','шерсть',15,22,39),
	(6,3,'Бисер круглый',0,'Miyuki','Nisi iusto cum sed quam est cupiditat.','золотой','стекло',200,12,43),
	(6,3,'Бисер круглый',0,'Miyuki','Ea sapiente voluptatem dolores a temporibus enim.','серый','стекло',100,21,44),
	(6,3,'Бисер круглый',0,'Miyuki','Dignissimos non qui est eligendi in. ','белый','стекло',100,32,45),
	(6,3,'Бисер круглый',0,'Miyuki','Ipsa dolores voluptatem maxime rem dolores dolo.','черный','стекло',100,14,46),
	(6,3,'Бисер цилиндрический',0,'Toho','Doloremque rerum placeat dolores ut error.','золотой','стекло',300,26,47),
	(6,3,'Бисер цилиндрический',0,'Toho','Aliquid rerum sit natus deserunt.','серый','стекло',150,25,48),
	(6,3,'Бисер цилиндрический',0,'Toho','Laboriosam non quia et blanditiis. Nihil ut est no.','белый','стекло',150,31,49),
	(7,3,'Основа для броши',0,'Корея','Vero esse suscipit non quis sed temporibus.','золотой','латунь',50,35,50),
	(7,3,'Пусеты',0,'Корея','Voluptatem est recusandae molestias quod.','золотой','латунь',45,15,51),
	(8,3,'Пайетки плоские',0,'LM','Et commodi tempora voluptate perferendis. ','серый','пластик',150,16,52),
	(8,3,'Пайетки плоские',0,'LM','Similique qui quibusdam vitae et. ','белый','пластик',150,19,53),
	(8,3,'Пайетки плоские',0,'LM','Eos id culpa inventore voluptatem aut placeat dolorem. E','черный','пластик',150,12,54),
	(8,3,'Пайетки чаши',0,'Италия','Libero ut qui dicta impedit. ','серый','пластик',90,24,55),
	(8,3,'Пайетки чаши',0,'Италия','Sapiente in totam sed aliquam rem qui occaecati.','белый','пластик',90,17,56),
	(8,3,'Пайетки чаши',0,'Италия','Ut praesentium soluta facere sunt.','черный','пластик',90,16,57);


DROP TABLE IF EXISTS rating;
CREATE TABLE rating(
    id tinyint unsigned not null,
    index (id)
);

INSERT INTO rating VALUES
  (1),
  (2),
  (3),
  (4),
  (5);


DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
	id SERIAL PRIMARY KEY,
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    review_text TEXT,
    set_rating tinyint unsigned not null,
    created_at DATETIME DEFAULT NOW(),
    
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id),
    foreign key (set_rating) references rating(id)
);

INSERT INTO online_shop.reviews (initiator_user_id,target_user_id,review_text,set_rating) VALUES
	(2,1,'Est aut aliquid est. Soluta eveniet doloribus ipsam ut id assumenda quam. Consequuntur et velit aperiam error corporis rem corporis. Est similique quisquam quia maxime eaque possimus facere officiis. Odio magni atque dicta voluptatibus hic iste delectus.',4),
	(5,1,'Laborum dolorem magni unde vero sit hic. Pariatur quia voluptas magnam. Blanditiis dolorem et molestias veniam facere provident.',4),
	(9,1,'A quam ea ullam reiciendis vel et reiciendis. Delectus iure mollitia est. Eum dolores dolores sed officia vitae qui. Sed repudiandae voluptatem voluptatibus libero culpa quo.',4),
	(8,1,'Velit commodi in veniam occaecati. Tenetur temporibus ullam enim officiis aut illum. In maiores velit nobis soluta molestias maiores tempora. Quisquam et ut et sequi.',5),
	(5,2,'Est eaque est qui et omnis rerum. Expedita porro nesciunt inventore consequatur quos. Inventore aut rerum voluptas. Dicta vel ut quibusdam cupiditate tempore.',3),
	(7,2,'Atque et nam nulla et aliquid. Vel repellendus aut natus odit quibusdam quis atque et. Laudantium minima velit dolores eos voluptate nostrum.',5),
	(8,2,'Nihil ut et reprehenderit et. Numquam veniam quis impedit. Voluptas saepe rerum illo vel omnis. Aliquam illum ut quo saepe ea unde est.',4),
	(4,2,'Sint quod fugit molestiae dolore repellendus est. Quis corporis necessitatibus commodi placeat temporibus doloremque voluptatem. Nemo maxime sit dolorem perferendis repellat. Et impedit deleniti eaque pariatur ut quia voluptatibus.',5),
	(6,2,'Optio sed aperiam veniam eum. Rerum placeat soluta iusto perspiciatis quibusdam dolorem eos. Ea pariatur optio est ut.',4),
	(5,3,'Facere nostrum facilis aperiam quisquam dolor. Minima omnis est nam.',3),
	(4,3,'A omnis ratione non. Et velit sed incidunt corporis ut rerum nemo. Ut pariatur tempora ea incidunt praesentium ut. Eligendi et et rerum sequi ut.',3),
	(6,3,'Quo minus harum debitis debitis quis sunt. Dolores suscipit placeat dolorum non voluptate et. Non eos odio esse tempore. Illum minus quidem temporibus porro.',5),
	(12,3,'Et aliquid sit natus vitae fuga enim repudiandae. Quis ab et debitis est accusantium labore. Exercitationem delectus eaque necessitatibus.',5),
	(8,3,'Nobis est sed blanditiis assumenda incidunt explicabo. Facere rem assumenda odio explicabo ad enim repellat quia. Dolor mollitia fugiat officia nihil animi.',5),
	(2,3,'Tempora ad et aspernatur laborum ut dolor et. Exercitationem quaerat corporis placeat et.',4),
	(15,3,'Accusantium est ea fuga omnis mollitia. Dolores officia et consequatur iste est quo. Ullam laborum qui ut quo delectus temporibus.',4),
	(13,4,'Quasi itaque atque ut aliquam debitis. Qui consequuntur maiores sit ad perspiciatis quaerat assumenda repudiandae. Necessitatibus placeat quaerat aut voluptatem ratione voluptate expedita. Nulla doloremque aut molestiae nam.',5),
	(14,4,'Deserunt voluptatem quia voluptatem sit. Qui omnis distinctio optio voluptatem veniam atque dolorem. Repellat laboriosam illo consequatur nesciunt voluptas magni rerum. Saepe quos qui doloremque.',5),
	(11,4,'Fugiat consequuntur voluptatem odit omnis. Quia aut voluptate officia rerum. Cumque voluptatem eaque dolorum voluptas sed. Et autem atque est minus veritatis explicabo eos.',5),
	(15,4,'Autem dolore beatae aut corporis fugit ratione. Ex beatae qui at. Est deleniti asperiores temporibus perferendis est.',5),
	(8,4,'Provident eligendi animi quidem qui ipsum. Accusamus dolor sint est qui magnam. Omnis enim quis dolore magni facilis repudiandae deserunt. Consequatur eum at recusandae id tenetur voluptas amet.',5),
	(6,4,'Animi ut labore dolore atque consequuntur maxime fugit. Sunt et et facere sint. Recusandae numquam accusamus a. Non quia dolorem reiciendis earum et officiis iure.',5),
	(2,4,'Sint officiis a ipsa quaerat rerum ea totam. Aut perferendis deleniti error ipsa ducimus ipsam. Ipsum a sunt quis placeat.',2),
	(3,4,'Et accusamus a et adipisci dolore. Blanditiis sit vitae dolorem voluptas temporibus numquam ab. Aut temporibus accusantium consectetur.',4),
	(5,4,'Consequuntur animi sed ea perferendis ad magnam. Aut libero alias sequi iste qui est. Ut quo dignissimos quibusdam doloremque est est incidunt.',4),
	(7,4,'Accusantium sit praesentium voluptatem molestias architecto. Excepturi doloremque ab eligendi eum ullam voluptas qui. Inventore expedita distinctio omnis laborum laboriosam.',4),
	(7,3,'Et iure cupiditate expedita ut earum et illum. Cum sed assumenda velit officia. Voluptas harum ea magni aspernatur aut ea vel.',5),
	(10,3,'A culpa nostrum et quis. Id ipsum ipsum deserunt earum eaque aut earum. Blanditiis et commodi voluptas.',5),
	(13,3,'Cumque quod provident provident fugit cumque numquam. Fuga totam delectus a aut quaerat nemo dignissimos eos. Ratione harum et laborum qui dolore aliquam facilis numquam. At quas nam sapiente porro nesciunt voluptatum.',3),
	(14,3,'Provident quia fuga et consequatur reprehenderit repellat. Et aut cum nostrum ut beatae animi aut alias.',4);

DROP TABLE IF EXISTS order_product;
CREATE TABLE order_product (
    id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    order_status enum('paid', 'in work', 'redy for delivery', 'sent', 'delivered'),
    created_at datetime default now(),
    updated_at datetime default current_timestamp on update current_timestamp,
    
    index (user_id),
    foreign key (user_id) references users(id)
);

INSERT INTO online_shop.order_product (user_id,order_status) VALUES
	(5,'delivered'),
	(5,'in work'),
	(5,'redy for delivery'),
	(8,'delivered'),
	(8,'paid'),
	(9,'paid'),
	(9,'sent'),
	(9,'delivered'),
	(15,'in work'),
	(15,'sent');

DROP TABLE IF EXISTS product_in_order;
CREATE TABLE product_in_order (
    id SERIAL PRIMARY KEY,
    order_id BIGINT UNSIGNED NOT NULL,
    product_id BIGINT UNSIGNED NOT NULL,
    quantity_ord int unsigned,
    
    index (order_id),
    foreign key (order_id) references order_product(id),
    foreign key (product_id) references products(id)
);

INSERT INTO online_shop.product_in_order (order_id,product_id,quantity_ord) VALUES
	(1,16,2),
	(1,17,5),
	(1,18,4),
	(2,2,1),
	(2,3,1),
	(3,26,3),
	(3,27,2),
	(4,1,1),
	(5,10,1),
	(6,8,1),
	(6,9,1),
	(7,36,3),
	(7,37,4),
	(8,11,1),
	(9,25,5),
	(9,26,4),
	(9,27,2),
	(10,14,1),
	(10,13,1);

DROP TABLE IF EXISTS order_workshop;
CREATE TABLE order_workshop (
    id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    order_status enum('paid', 'in work', 'access provided'),
    created_at datetime default now(),
    updated_at datetime default current_timestamp on update current_timestamp,
    
    index (user_id),
    foreign key (user_id) references users(id)
);

INSERT INTO online_shop.order_workshop (user_id,order_status) VALUES
	(5,'access provided'),
	(9,'in work'),
	(13,'paid'),
	(10,'access provided'),
	(7,'access provided');


DROP TABLE IF EXISTS workshop_in_order;
CREATE TABLE workshop_in_order (
    id SERIAL PRIMARY KEY,
    order_wrk_id BIGINT UNSIGNED NOT NULL,
    worshop_id BIGINT UNSIGNED NOT NULL,

    
    index (order_wrk_id),
    foreign key (order_wrk_id) references order_workshop(id),
    foreign key (worshop_id) references workshop(id)
);

INSERT INTO online_shop.workshop_in_order (order_wrk_id,worshop_id) VALUES
	(1,1),
	(1,3),
	(2,4),
	(3,2),
	(4,6),
	(4,4),
	(5,5);