create table table_1 (
id_prod varchar(50) primary key,
prod_name varchar(50),
prod_type string
);

create table table_2 (
id_prod varchar(50),
agree_number int,
amount int,
rate float,
[date] date,
id_tt varchar(50)
);

create table table_3 (
id_tt varchar(50),
macro_region string
);

INSERT INTO table_1 (id_prod, prod_name, prod_type) 
VALUES ('1d_1', 'Почтовый_23', 'CASH'),
       ('1d_2', 'Выгодный 0-24', 'POS'),
       ('1d_3', 'Кредитная карта Э120', 'CARD'),
       ('1d_4',	'prod_name_4', 'CARD'),
       ('1d_5',	'prod_name_5',	'CASH'	),
       ('1d_6', 'prod_name_6',	'CASH'	),
       ('1d_7',	'prod_name_7',	'CARD'	),
       ('1d_8',	'prod_name_8',	'POS'	),
       ('1d_9',	'prod_name_9',	'POS'	),
       ('1d_10','prod_name_10',	'CASH'	),
       ('1d_11','prod_name_11',	'CASH'	),
       ('1d_12','prod_name_12',	'POS'	),
       ('1d_13','prod_name_13',	'POS'	),
       ('1d_14','prod_name_14',	'CARD'	),
       ('1d_15', 'prod_name_15', 'CARD'),
       ('1d_16', 'prod_name_16', 'CARD'),
       ('1d_17', 'prod_name_17', 'POS'),
       ('1d_18', 'prod_name_18', 'POS'),
       ('1d_19', 'prod_name_19', 'CARD'),
       ('1d_20', 'prod_name_20', 'CARD'),
       ('1d_21', 'prod_name_21', 'CASH'),
       ('1d_22', 'prod_name_22', 'CARD'),
       ('1d_23', 'prod_name_23', 'CASH'),
       ('1d_24', 'prod_name_24', 'POS'),
       ('1d_25', 'prod_name_25', 'POS'),
       ('1d_26', 'prod_name_26', 'POS'),
       ('1d_27', 'prod_name_27', 'POS'),
       ('1d_28', 'prod_name_28', 'CARD'),
       ('1d_29', 'prod_name_29', 'CASH'),
       ('1d_30', 'prod_name_30', 'CASH'),
       ('1d_31', 'prod_name_31', 'CASH'),
       ('1d_32', 'prod_name_32', 'POS'),
       ('1d_33', 'prod_name_33', 'CASH'),
       ('1d_34', 'prod_name_34', 'CASH'),
       ('1d_35', 'prod_name_35', 'CARD'),
       ('1d_36', 'prod_name_36', 'CARD'),
       ('1d_37', 'prod_name_37', 'CASH'),
       ('1d_38', 'prod_name_38', 'POS'),
       ('1d_39', 'prod_name_39', 'CASH'),
       ('1d_40', 'prod_name_40', 'CASH'),
       ('1d_41', 'prod_name_41', 'POS'),
       ('1d_42', 'prod_name_42', 'CARD'),
       ('1d_43', 'prod_name_43', 'CARD'),
       ('1d_44', 'prod_name_44', 'POS'),
       ('1d_45', 'Лето 9,9(50)', 'CASH');

INSERT INTO table_2 (id_prod, agree_number, amount, rate, [date], id_tt ) 
VALUES ('1d_33', 1, 10000, 22.3, '2021-02-01', '1t_2'),
       ('1d_33', 2, 26000, 21.1, '2021-01-05', '1t_3'),
       ('1d_28', 3, 44300, 16.9, '2021-03-18', '1t_1000'),
       ('1d_16', 1, 13575, 15.7, '2021-05-01','1t_1'), 
       ('1d_20', 4,34847, 15.3, '2021-04-27','1t_3'),
       ('1d_6', 5,29811, 16.3, '2021-07-28','1t_1000'), 
       ('1d_9', 6,53622,17.8, '2021-01-23','1t_3'),
       ('1d_10', 7,21332,22.5, '2021-11-02','1t_1000'), 
       ('1d_31', 8,1000,16.7, '2021-06-01','1t_2'),
       ('1d_31', 9,48886,21.3, '2021-03-22','1t_1'), 
       ('1d_37', 10,22777,22.3, '2021-11-17','1t_3'),
       ('1d_41', 11,25822,15.7, '2021-11-22','1t_1'), 
       ('1d_23', 12,49657,19.1, '2021-05-11','1t_1'),
       ('1d_33', 13,9753,16.5, '2021-02-11','1t_2'), 
       ('1d_36', 14,35340,18.7, '2021-01-20','1t_2'),
       ('1d_28', 15,27517,16.8, '2021-01-21','1t_3'), 
       ('1d_40', 16,18891,19.2, '2021-03-12','1t_1000'),
       ('1d_27', 17,48664,17.5, '2021-04-03','1t_1000'), 
       ('1d_32', 18,57410,17.5, '2021-12-17','1t_3'),
       ('1d_44', 19,41491,19.9, '2021-02-21','1t_2'), 
       ('1d_32', 20,55805,19.4, '2021-06-01','1t_1'),
       ('1d_28', 21,17198,19.1, '2021-04-10','1t_1'), 
       ('1d_16', 22,44173,16.5, '2021-06-23','1t_2'),
       ('1d_7', 23,49677,17, '2021-06-15','1t_3'), 
       ('1d_4', 24,45650,16, '2021-03-09','1t_1000'),
       ('1d_19', 25,56164,16.2, '2021-02-17','1t_1000'), 
       ('1d_43', 26,29184,21.4, '2021-09-06','1t_3'),
       ('1d_32', 27,34263,16.2, '2021-04-05','1t_2'), 
       ('1d_37', 28,23417,17.8, '2021-06-01','1t_1'),
       ('1d_34', 29,9067,19.3, '2021-08-26','1t_1'), 
       ('1d_3', 30,20427,17.7, '2021-06-22','1t_2'),
       ('1d_41', 31,36091,21.4, '2021-02-12','1t_2'), 
       ('1d_3', 32,31964,22.3, '2021-09-07','1t_3'),
       ('1d_5', 33,41986,18.4, '2021-12-09','1t_2'), 
       ('1d_14', 34,22622,22.7, '2021-04-10','1t_1'),
       ('1d_19', 35,48495,22.9, '2021-09-11','1t_1000'), 
       ('1d_5', 36,59249,17.2, '2021-03-17','1t_2'),
       ('1d_29', 37,9388,18.4, '2021-08-09','1t_3'), 
       ('1d_41', 38,23742,20, '2021-01-04','1t_2'),
       ('1d_1', 39,11350,15, '2021-05-17','1t_1000'), 
       ('1d_20', 40,36777,22.3, '2021-03-28','1t_1'),
       ('1d_24', 41,33529,20.1, '2021-06-07','1t_2'), 
       ('1d_13', 42,40938,22.5, '2021-04-06','1t_3'),
       ('1d_5', 43,15007,21, '2021-03-05' ,'1t_2'), 
       ('1d_23', 44,44357,21.1, '2021-06-22','1t_1'),
       ('1d_44', 100000, 38600, 16.9, '2021-04-02', '1t_1000');

INSERT INTO table_3 (id_tt, macro_region) 
VALUES ('1t_1', 'Москва'),
       ('1t_2', 'Москва'),
       ('1t_3', 'Дальний Восток'),
       ('1t_1000', 'Северный Кавказ');
      ; 
drop table table_1;
drop table table_2;
drop table table_3;



/*Задание 1*/
select table_2.id_prod, agree_number, prod_type, amount, rate
from table_2
join table_1 on table_2.id_prod = table_1.id_prod
order by rate DESC, amount DESC
limit 5;

/*Задание 2*/
SELECT table_1.id_prod as result_task_2, prod_name, avg_amount, max_amount, min_amount
from(
select id_prod, avg(amount) avg_amount, max(amount) max_amount, min(amount) min_amount
from table_2 
group by id_prod
order by id_prod
) a 
join table_1 on a.id_prod = table_1.id_prod
where avg_amount < 25000 and max_amount > 25000;

/*Задание 3*/
with table_task_2 as(
SELECT table_1.id_prod as result_task_2, prod_name, avg_amount, max_amount, min_amount
from(
select id_prod, avg(amount) avg_amount, max(amount) max_amount, min(amount) min_amount
from table_2 
group by id_prod
order by id_prod
) a 
join table_1 on a.id_prod = table_1.id_prod
where avg_amount<25000 and max_amount>25000
)
select id_prod
from table_1
except
select result_task_2
from table_task_2;

/*Задача 4*/
select count(agree_number),
strftime('%Y', [date]),
strftime('%m', [date]),
CASE 
	when amount <= 15000
	then 'до 15000' 
	when amount >= 15001 and amount <= 20000
	then 'от 15001 до 20000'
	when amount >= 20001 and amount <= 30000
	then 'от 20001 до 30000'
	when amount >= 30001
	then 'более 30001'
end segment
from table_2
group by segment, strftime('%Y', [date]), strftime('%m', [date]);

/*Задача 4(максимально прибыльный сектор)
 я сгруппировала таблицу по каждому сектору, 
 в каждом секторе посчитала сумму на которую банк выдал кредит,
 если рассуждать так что прибыль банка больше тогда когда сумма выдаваемых кредитов больше,
 тогда ищем максимум среди сумм по каждому сектору */
select segment,
max(sum_amount) as max_sum_amount
from(
select count(agree_number) as cnt_of_agree,
sum(amount) as sum_amount,
CASE 
	when amount <= 15000
	then 'до 15000' 
	when amount >= 15001 and amount <= 20000
	then 'от 15001 до 20000'
	when amount >= 20001 and amount <= 30000
	then 'от 20001 до 30000'
	when amount >= 30001
	then 'более 30001'
END segment
from table_2
group by segment
) a;

/*Задача4(максимально прибыльный месяц)
 аналогично, если рассуждать что прибыль банка больше тогда
 когда сумма кредита больше, то можно сгрупировать данные по месяцу и году 
 и в каждом месяце найти сумму выданных кредитов,
 и дальше найти максимум среди этих сумм*/
select year, month, max(sum_amount) as max_sum_amount
from(
select strftime('%Y', [date]) as [year],
strftime('%m', [date]) as [month],
sum(amount) as sum_amount
from table_2
group by strftime('%Y', [date]), strftime('%m', [date])
) a;



/*Задание 5*/
with help_table as(
select macro_region, 
table_2.id_tt,
strftime('%Y', [date]) as [year],
strftime('%m', [date]) as [month],
CAST(SUM(case when prod_type = 'CASH' then 1 else 0 end) as float) as sold_CASH,
CAST(SUM(case when prod_type = 'CARD' then 1 else 0 end) as float) as sold_CARD,
SUM(case when prod_type = 'CASH' then amount else 0 end) as accum_sold_CASH,
SUM(case when prod_type = 'CARD' then amount else 0 end) as accum_sold_CARD
from table_2 
join table_1 on table_2.id_prod = table_1.id_prod
join table_3 on table_2.id_tt = table_3.id_tt
where prod_type != 'POS'
group by macro_region, table_2.id_tt, strftime('%Y', [date]), strftime('%m', [date])
)

select macro_region,
id_tt,
CASE when [month] = 12 then DATE([year] || '-' || '12' || '-' || '31') else DATE([year] || '-' || [month] || '-' || '01', '+1 month', '-1 day')  end as [month],
sold_CASH, 
sold_CARD, 
accum_sold_CASH, 
accum_sold_CARD, 
sold_CASH/(sold_CASH+sold_CARD), 
sold_CARD/(sold_CASH+sold_CARD)
from help_table;