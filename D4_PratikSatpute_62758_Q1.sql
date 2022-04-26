
Drop procedure if exists sp_digitsum;

DELIMITER $$

create procedure sp_digitsum(sp_num INT)
BEGIN
declare sp_var INT Default sp_num;
declare sp_sum INT Default 0;
declare sp_add INT;

while sp_var!= 0 
Do 
set sp_add= FLOOR(sp_var%10);
set sp_sum=sp_sum + sp_add;
set sp_var=FLOOR(sp_var/10);
END while;
insert into temp values(sp_num,sp_sum); 

END;
$$
DELIMITER ;