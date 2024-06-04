CREATE TABLE Roogle_price
(   
    pr_name       VARCHAR2(50)    NOT NULL,	--동물이름
    pr_bighorn    VARCHAR2(200)   NOT NULL,	--빅혼
    pr_seoul      VARCHAR2(200)   NOT NULL,	--서울렙타일
    pr_breeders   VARCHAR2(200)   NOT NULL,	--더브리더스
    pr_zoo        VARCHAR2(200)   NOT NULL,	--더쥬
    pr_junggle    VARCHAR2(200)   NOT NULL,	--정글펫
    pr_balto      VARCHAR2(200)   NOT NULL,	--발토앤제이
    pr_woosoo     VARCHAR2(200)   NOT NULL,	--우수렙타일
    pr_vanmori    VARCHAR2(200)   NOT NULL,	--반모리
    pr_newrun     VARCHAR2(200)   NOT NULL,	--뉴런렙타일    
    pr_millim     VARCHAR2(200)   NOT NULL,	--밀림펫
    pr_holic      VARCHAR2(200)   NOT NULL,	--게코홀릭
    CONSTRAINT fk_pr_name FOREIGN KEY (pr_name) REFERENCES ROOGLE_AnimalAPI(api_name)
);
