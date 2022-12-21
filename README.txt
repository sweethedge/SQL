■ 조금 충격적인 거
insert into values (); 로 집어넣는 건 많이 봤는데

insert into select * from 어쩌구; 로 해서 values가 없이도 insert가 된다더라.

어디에 써먹냐면 니가 db에서 작업하다가 뭐 고치기가 좀 겁이 날 때 쓰기 좋다.

insert into stock2 select * from stock; 이런 식으로 쓰면 테이블이 복사가 되거든.

조금 더 그런 용도로 쓰기가 좋은 게 temporary table인데 껐다 키면 없어진다는 모양이다.

그런 임시 테이블을 만드는 문법이 다른데 mySQL에서는
create temporary table stock3 select * from stock; 이런 식으로 쓰시면 되고

SELECT * INTO 새로운테이블명 FROM 기존테이블명 WHERE 조건식 이런 식으로 쓴다는 모양이다.
