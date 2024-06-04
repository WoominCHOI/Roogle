CREATE TABLE Roogle_USER
(   
    user_id      VARCHAR2(30)   NOT NULL,	--id
    user_pwd     VARCHAR2(30)   NOT NULL,	--pwd
    user_name    VARCHAR2(30)   NOT NULL, 	--이름
    user_email   VARCHAR2(30)   NOT NULL,	--이메일
    user_phon    VARCHAR2(20)   NOT NULL,	--핸드폰번호
    user_addr    VARCHAR2(100)  NOT NULL,	--주소
    CONSTRAINT PK_USER_ID PRIMARY KEY(user_id)
);

INSERT INTO Roogle_USER  VALUES ('admin' , '1234' , '최우민' , 'ano2massp@gmail.com' , '01012341234' , '서울특별시 노원구 월계동');