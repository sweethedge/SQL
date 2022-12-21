update product set 가격 = 5000, 상품명 = '단무지' where 번호 = 1;

select * from product;
-- 가격 += 100 같은 복합연산자는 안 먹는다. 
update product set 가격 = 가격 + 100, 상품명 = '단무지' where 번호 = 1;

select * from program, teacher;

update program p join teacher t on p.id = t.id set 가격 = 5500 where p.id = 1;
# 이미 program의 alias를 p로 줬기 때문에 delete program이라고 쓰면 그런 테이블 없다고 한다.
-- delete program from program p join teacher t on p.id = t.id where p.id = 5;

delete p from program p join teacher t on p.id = t.id where p.id = 5;
select * from user_sales where first_name = "solly";
update user_sales set email = "admin@test.com" where first_name = "Solly";