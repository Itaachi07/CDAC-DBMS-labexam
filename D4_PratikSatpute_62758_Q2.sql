
Drop procedure if exists sp_digitsum1;

DELIMITER $$

create procedure sp_digitsum1(IN s_num INT)
BEGIN
DEClARE v_res INT Default 0;
DEClARE v_rem INT ;
DEClARE v_num INT;
SET v_num=s_num;

WHILE s_num!= 0 
Do 
if s_num!= 0 then
SET v_rem= FLOOR(s_num%10);
SET v_res=v_res + v_rem;
SET s_num=FLOOR(s_num/1000);
END  if;
END WHILE;
insert into res values(v_num,v_res); 

END;
$$
DELIMITER ;