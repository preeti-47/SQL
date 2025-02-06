


1.Complex SQL Query 1 | Derive Points table for ICC tournament
  



create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

select * from icc_world_cup;

sol-
select team_name , count(1), sum(win_flag) as no_of_won_matches,
count(1) - sum(win_flag)  as no_of_loss_matches
FROM
(
select team_1  as team_name, 
case when team_1 = winner then 1 else 0 end as win_flag
from icc_world_cup 
group by team_name
union all
select 
team_2  as team_name, 
case when team_2 = winner then 1 else 0 end as win_flag
from icc_world_cup)
group by team_name









