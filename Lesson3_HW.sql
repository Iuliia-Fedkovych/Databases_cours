drop table if exists media_comments; -- комментарии к новостям
create table  media_comments(
    id serial primary key,
    user_id Bigint unsigned not null,
    media_id Bigint unsigned not null,
    body text,
    created_at datetime default now(),
    
    foreign key (user_id) references users(id),
    foreign key (media_id) references media(id)
);

drop table if exists photo_likes; -- отдельные лайки к фотографиям
create table  photo_likes(
    id serial primary key,
    user_id Bigint unsigned not null,
    photo_id Bigint unsigned not null,
    created_at datetime default now(),
    
    foreign key (user_id) references users(id),
    foreign key (photo_id) references photos(id)
);

drop table if exists video;  -- видео
create table  video(
    id serial primary key,
    media_id Bigint unsigned not null,
    name varchar(255) default null,
    
    foreign key (media_id) references media(id),
    index (name)  -- индексируем по имени, так как поиск видео будет осуществлятся по имени
);