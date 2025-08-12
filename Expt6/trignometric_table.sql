--PART B
Create table angle(
Angle INT, 
SIN VARCHAR(10), 
COS VARCHAR(10), 
TAN VARCHAR(10), 
COT VARCHAR(10), 
SEC VARCHAR(10));

insert into angle(Angle) values(0);
insert into angle(Angle) values(30);
insert into angle(Angle) values(45);
insert into angle(Angle) values(60);
insert into angle(Angle) values(90);

select * from angle;

update angle set SIN=round(sin(Angle*(3.14/180)),2);
update angle set COS=round(cos(Angle*(3.14/180)),2);
update angle set TAN=round(tan(Angle*(3.14/180)),2);
update angle set COT=round(1/tan(Angle*(3.14/180)),2);
update angle set COT=round(1/tan(Angle*(3.14/180)),2) where angle=30;
update angle set COT=round(1/tan(Angle*(3.14/180)),2) where angle=45;
update angle set COT=round(1/tan(Angle*(3.14/180)),2) where angle=60;
update angle set COT=round(1/tan(Angle*(3.14/180)),2) where angle=90;
update angle set SEC=round(1/cos(Angle*(3.14/180)),2);
