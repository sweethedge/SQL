# 야 첫번째 꺼 쓰면 되겠다.
set @age = 20;
select @age := 20;
set @age := 20;
set @a = "=======";
# 이런 거 인터넷에서 본 적 있다 빈칸 같은 거 만들고 싶으면 이런 식으로 하면 중간에 공란 줄 수 있겠지.
select card.고객번호, @a, employee.이름 from card, employee;

set @price = 6000;
select * from product where 가격 = @price;
# 변수에 서브쿼리 넣어서 저장하셔도 되고.
set @price = (select count(*) from product where 가격 = 5000);
select @price;

# Stored Procedure의 변수는 여러번 실행해봐야 끌 때 없어진다.
call var_test;

# 그러니까 이 골뱅이를 user variable이라 그러는데
set @user_variable = 10;
# 이거는 서버 전역에서 돌고 해서
set @user_variable = @user_variable + 10;
# 계속 남아 있다.
select @user_variable;