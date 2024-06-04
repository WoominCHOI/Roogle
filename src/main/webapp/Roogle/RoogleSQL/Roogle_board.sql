CREATE TABLE Roogle_board
(   
    bod_no         NUMBER          NOT NULL,	--글번호
    bod_writer     VARCHAR2(14)    NOT NULL,	--글쓴이
    bod_title      VARCHAR2(30)    NOT NULL,	--글제목
    bod_write_time DATE DEFALUT SYSDATE,		--글쓴시간
    bod_content    VARCHAR2(300)   NOT NULL,	--내용
    bod_readcnt    NUMBER          NOT NULL,	--조회수
    CONSTRAINT fk_bod_writer FOREIGN KEY (bod_writer) REFERENCES ROOGLE_USER(user_id)
);