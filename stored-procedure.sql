/*
강의는 보니까 너무 간단하고 옛날에 봤었던 stored prodecure 생각해 보면 되겠다. stored procedure 밑에 in으로 매개변수를 넣어서 begin시에 insert into 어쩌구 values () 해서 아래와 같이 매개변수를 입력받고 할 수 있는 거지.
*/

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert강좌`(
in 
강좌이름_ varchar(45),
사무실_ varchar(45)
)
BEGIN
insert into 강좌 values (강좌이름_, 사무실_);
END