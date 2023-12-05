/*создание таблиц*/
create table scenario (
id varchar(50) primary key,
name varchar(50),
created_at date,--дата создания сценария (когда впервые появилась запись в таблице)
status varchar(50),--статус (активен/не активен/в разработке/приостановлен)
[type] varchar(50) 
);

create table scenario_run (
id varchar(50) primary key, --id запуска
scenario_id varchar(50),
launch_date datetime,--дата и время запуска
scenario_result varchar(50)--результат запуска(успешно/ошибка)
);

/*заполнение таблиц*/
INSERT INTO scenario (id, name, created_at, status, [type]) 
VALUES
('s1', 'Управление финансами', '2021-09-01', 'active', 'finance'),
('s2', 'Информация о банковских продуктах', '2021-09-12', 'active', 'information'),
('s3', 'Поддержка клиентов', '2021-09-01', 'suspend', 'support'),
('s4', 'Уведомления о финансовых операциях', '2021-09-19', 'active', 'notification'),
('s5', 'Консультации по инвестициям', '2021-09-21', 'active', 'information'),
('s6', 'Выбор оптимального банковского продукта', '2021-09-06', 'in development', 'product'),
('s7', 'Информация о ближайших отделениях и банкоматах', '2021-09-02', 'active', 'information'),
('s8', 'Оформление заявок на банковские услуги', '2021-09-05', 'not active', 'application'),
('s9', 'Поддержка в проведении финансовых операций за границей', '2021-09-25', 'active', 'support');


INSERT INTO scenario_run (id, scenario_id, launch_date, scenario_result) VALUES
('l1', 's5', '2021-10-01 12:00:00', 'success'),
('l2', 's4', '2021-10-01 13:00:00', 'success'),
('l3', 's1', '2021-10-01 14:00:00', 'success'),
('l4', 's5', '2021-10-01 15:00:00', 'error'),
('l5', 's4', '2021-10-01 16:00:00', 'error'),
('l6', 's7', '2021-10-01 17:00:00', 'error'),
('l7', 's1', '2021-10-01 18:00:00', 'success'),
('l8', 's2', '2021-10-01 19:00:00', 'success'),
('l9', 's5', '2021-10-01 20:00:00', 'success'),
('l10', 's2', '2021-10-01 21:00:00', 'success'),
('l11', 's2', '2021-10-02 12:00:00', 'success'),
('l12', 's9', '2021-10-02 13:00:00', 'success'),
('l13', 's4', '2021-10-02 14:00:00', 'success'),
('l14', 's7', '2021-10-02 15:00:00', 'success'),
('l15', 's4', '2021-10-02 16:00:00', 'success'),
('l16', 's2', '2021-10-02 17:00:00', 'error'),
('l17', 's7', '2021-10-02 18:00:00', 'success'),
('l18', 's7', '2021-10-02 19:00:00', 'success'),
('l19', 's4', '2021-10-02 20:00:00', 'success'),
('l20', 's2', '2021-10-02 21:00:00', 'error'),
('l21', '', '2021-10-03 12:00:00', 'error'),
('l22', 's4', '2021-10-03 13:00:00', 'error'),
('l23', 's4', '2021-10-03 14:00:00', 'success'),
('l24', 's2', '2021-10-03 15:00:00', 'success'),
('l25', 's4', '2021-10-03 16:00:00', 'success'),
('l26', 's2', '2021-10-03 17:00:00', 'success'),
('l27', 's4', '2021-10-03 18:00:00', 'success'),
('l28', 's1', '2021-10-03 19:00:00', 'success'),
('l29', 's4', '2021-10-03 20:00:00', 'success'),
('l30', 's1', '2021-10-03 21:00:00', 'success'),
('l31', 's2', '2021-10-04 12:00:00', 'success'),
('l32', 's4', '2021-10-04 13:00:00', 'error'),
('l33', 's9', '2021-10-04 14:00:00', 'error'),
('l34', 's2', '2021-10-04 15:00:00', 'error'),
('l35', 's9', '2021-10-04 16:00:00', 'success'),
('l36', 's5', '2021-10-04 17:00:00', 'error'),
('l37', 's7', '2021-10-04 18:00:00', 'success'),
('l38', 's2', '2021-10-04 19:00:00', 'success'),
('l39', 's5', '2021-10-04 20:00:00', 'success'),
('l40', 's2', '2021-10-04 21:00:00', 'success'),
('l41', 's4', '2021-10-05 12:00:00', 'success'),
('l42', 's2', '2021-10-05 13:00:00', 'error'),
('l43', 's1', '2021-10-05 14:00:00', 'success'),
('l44', 's2', '2021-10-05 15:00:00', 'success'),
('l45', 's7', '2021-10-05 16:00:00', 'success'),
('l46', 's1', '2021-10-05 17:00:00', 'success'),
('l47', 's4', '2021-10-05 18:00:00', 'success'),
('l48', 's5', '2021-10-05 19:00:00', 'success'),
('l49', 's4', '2021-10-05 20:00:00', 'error'),
('l50', 's2', '2021-10-05 21:00:00', 'error');

drop table scenario;
drop table scenario_run;

/*запрос*/
with launch_cum_count as (
SELECT scenario_id, 
date(launch_date) as l_date, 
cast(sum(count(id)) over(partition by scenario_id order by date(launch_date)) as float) as cum_count
FROM scenario_run
group by scenario_id, date(launch_date)
),
/*создали вспомогательную таблицу с накопительным количеством запусков по дням*/
sum_count_by_scenario as (
SELECT scenario_id, 
cast(count(id) as float) as launch_count
FROM scenario_run 
group by scenario_id
)
/*создали вспомогательную таблицу с количеством запусков по каждому сценарию*/

/*в примере для накопительной доли для каждого сценария 
 *был приведен пример где посчитали просто количество
 *запусков в день на общее количество запусков по каждому
 *сценарию, я решила все-таки посчитать отношение 
 *накопительного количества к общему количество 
 *запусков*/
select name as scenario, 
l_date as [date], 
cum_count as comulative_count,
cum_count/launch_count as comulative_share
from launch_cum_count as lcc 
join sum_count_by_scenario as scs on lcc.scenario_id = scs.scenario_id 
join scenario on scenario.id = lcc.scenario_id;
