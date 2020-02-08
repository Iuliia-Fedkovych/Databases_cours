-- для создания базы и таблиц с данными, необходимыми для выполнения задания, запустите скрипт Lesson6_HW_database.sql
USE vk;

/*1. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека,
  который больше всех общался с нашим пользователем.*/

-- 1й Вариант выводим в таблице все сообщения от друзйи к друзьям  и их колличество.
-- в этом варианте я не придумала как вывести человека с которым пользователь общался больше всего
SELECT 
     id,
     from_user_id, 
     to_user_id,
     count(from_user_id) as message_quantity
FROM messages WHERE from_user_id IN (
  SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved'
  union
  SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved'
) and to_user_id=1
group by from_user_id
union
SELECT 
     id,
     from_user_id, 
     to_user_id,
     count(to_user_id) as message_quantity
FROM messages WHERE to_user_id IN (
  SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved'
  union
  SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved'
) and from_user_id=1
group by to_user_id;


-- 2й здесь я учитываю только сообщения присланный от друзей к моему пользователю. 
SELECT 
     id,
     from_user_id, 
     to_user_id,
     count(from_user_id) as message_quantity
FROM messages WHERE from_user_id IN (
  SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved'
  union
  SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved'
) and to_user_id=1
group by from_user_id
order by message_quantity desc
limit 1;

/*2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..*/

select
    count(id) as total_likes
from likes where media_id in (select id from media where user_id in (
select user_id from profiles where TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10));

/*3. Определить кто больше поставил лайков (всего) - мужчины или женщины?*/

select count(id) as like_quantity, 'female'as gender
from likes where user_id in (select user_id from profiles where gender='f')
union
select count(id), 'male'as gender
from likes where user_id in (select user_id from profiles where gender='m')
order by like_quantity desc
limit 1;
