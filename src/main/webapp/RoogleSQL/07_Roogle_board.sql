CREATE TABLE Roogle_board
(   
    bod_no         NUMBER          NOT NULL,	--글번호
    bod_writer     VARCHAR2(14)    NOT NULL,	--글쓴이
    bod_title      VARCHAR2(30)    NOT NULL,	--글제목
    bod_write_time DATE DEFAULT SYSDATE,	--글쓴시간
    bod_content    VARCHAR2(300)   NOT NULL,	--내용
    bod_readcnt    NUMBER          NOT NULL,	--조회수
    CONSTRAINT fk_bod_writer FOREIGN KEY (bod_writer) REFERENCES ROOGLE_USER(user_id)
);

insert into roogle_board values('1', 'admin', '테스트1', sysdate, '반갑습니다.', 0);
insert into roogle_board values('2', 'admin', '테스트2', sysdate, '반갑습니다.', 0);
insert into roogle_board values('3', 'admin', '테스트3', sysdate, '반갑습니다.', 0);
insert into roogle_board values('4', 'admin', '테스트4', sysdate, '반갑습니다.', 0);
insert into roogle_board values('5', 'admin', '테스트5', sysdate, '반갑습니다.', 0);
insert into roogle_board values('6', 'admin', '테스트6', sysdate, '반갑습니다.', 0);
insert into roogle_board values('7', 'admin', '테스트7', sysdate, '반갑습니다.', 0);
insert into roogle_board values('8' , 'admin' , '테스트8' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('9' , 'admin' , '테스트9' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('10' , 'admin' , '테스트10' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('11' , 'admin' , '테스트11' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('12' , 'admin' , '테스트12' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('13' , 'admin' , '테스트13' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('14' , 'admin' , '테스트14' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('15' , 'admin' , '테스트15' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('16' , 'admin' , '테스트16' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('17' , 'admin' , '테스트17' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('18' , 'admin' , '테스트18' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('19' , 'admin' , '테스트19' . sysdate , '반갑습니다' , 0);
insert into roogle_board values('20' , 'admin' , '테스트20' . sysdate , '반갑습니다' , 0);
