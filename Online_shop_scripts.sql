use online_shop;

-- вывод всех заказов одного юзера (продукты и мастерклассы)
select 
   id, 
   order_status,
   updated_at
from order_product where user_id=5
union
select 
   id, 
   order_status,
   updated_at
from order_workshop where user_id=5;

-- вывод спика товаров ручной работы
select users.lastname, products.name, product_categories.name from  product_categories
join products on product_categories.id = products.prod_cat_id and products.own_product = 1
join users on products.user_id = users.id;


--  представление для вывода списка продавцов по рейтингу
create view seller_rating as
select users.id, users.lastname, avg(set_rating) as rating
from reviews
join users on reviews.target_user_id = users.id where users.is_seller = 1
group by users.id
order by rating desc;

select * from seller_rating;

 -- представления для вывода информации о продавце, включая рейтинг
create view seller as
select firstname, lastname, phone, gender, birthday, photo_id, avg(set_rating) as rating 
from users
join reviews on reviews.target_user_id = 2
join profiles on profiles.user_id = 2;

select * from seller;

-- процедура которая будет предлагать пользователю товары
drop procedure if exists products_offers;

delimiter //
create procedure products_offers(in for_user_id INT)
  begin
	-- список товаров из тех категорий что присутсвовали у пользователя в заказах
	select 
	   pr1.id,
	   pr1.name,
	   pr1.prod_cat_id 
    from products as pr1
    join(
      select products.prod_cat_id as prcat from product_in_order
      join order_product on product_in_order.order_id = order_product.id and user_id = for_user_id
      join products on products.id = product_in_order.product_id
      group by prod_cat_id) as cat on pr1.prod_cat_id = cat.prcat
   order by rand() -- случайные записи
   limit 5;
  END//
DELIMITER ;

call products_offers(5);

-- тригер обновляет колличество товара в налиичии после того как данный товар был кем-то заказан

drop trigger if exists update_prod_quntity;
delimiter //

create trigger update_prod_quntity after insert on product_in_order
for each row begin
	update products 
	set products.quantity = products.quantity - new.quantity_ord
    where products.id = new.product_id;
end//
delimiter ;

INSERT INTO online_shop.product_in_order (order_id,product_id,quantity_ord) VALUES
	(3,21,10);