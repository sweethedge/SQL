# 다른 테이블 2개를 보고 싶으면 union
# 근데 컬럼 갯수는 같아야 됨
# 컬럼명은 달라도 됨
select * from stock union select * from stock2;
# error code 1222
select id, 상품명 from stock union select * from stock2;
# 이렇게 쓰든지 해야
select id, 상품명 from stock union select id, 상품명 from stock2;
# union은 기본적으로 unique를 해 주는데
# union all을 하면 중복해서 보여준다.
# join이 가로로 테이블을 붙여준다면
# union은 세로로 붙여주는 거다.