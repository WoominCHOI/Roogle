CREATE TABLE Roogle_CART
(   
    cart_id         VARCHAR2(14)    PRIMARY KEY,	--id
    cart_no 		number			not null , 		--장바구니번호
    cart_animalname VARCHAR2(50)     NOT NULL,		--동물이름
    cart_site       VARCHAR2(300)    NOT NULL,		--분양사이트 이름
    cart_amount     NUMBER           NOT NULL,		--마릿수
    cart_price      NUMBER           NOT NULL,		--가격
    CONSTRAINT fk_cart_user_id FOREIGN KEY (cart_id) REFERENCES ROOGLE_USER(user_id),
    CONSTRAINT fk_cart_animalname FOREIGN KEY (cart_animalname) REFERENCES ROOGLE_AnimalAPI(api_name)
);
