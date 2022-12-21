/*
SELECT 로 찾은 행들이 너무나 마음에 들어서
테이블로 두고두고 저장해서 쓰고 싶습니까? 
그럼 실제 테이블로 저장해도 되겠지만 더 간단하게 view로 만들어둘 수도 있습니다. 
view는 가상의 테이블입니다. 테이블처럼 사용할 수 있습니다.
*/

select * from 학생, 성적, 강좌;
# 뭐 이런 거 좋잖아 고생해서 뽑은 select from 구문 같은거?
select 학생.학생이름, 학생.주소 from 학생, 성적, 강좌 where 학생.학생번호 = 성적.학생번호 and 성적.강좌이름 = 강좌.강좌이름;

# 좀 공들여서 join 해 둔 걸 두고두고 쓰고 싶을 땐 create view 어쩌구 as select ~
create view combo as
select 학생.학생이름, 학생.주소 from 학생 join 성적 on 학생.학생번호 = 성적.학생번호 join 강좌 on 성적.강좌이름 = 강좌.강좌이름;

select * from combo;