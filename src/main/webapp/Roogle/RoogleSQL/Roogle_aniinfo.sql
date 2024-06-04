CREATE TABLE Roogle_aniinfo
(   
    info_name       VARCHAR2(50)    NOT NULL, --동물이름
    info_data       VARCHAR2(1000)  NOT NULL, --세부정보
    info_habitat    VARCHAR2(300)   NOT NULL, --서식지
    info_breeding   VARCHAR2(1000)   NOT NULL, --키울 때 유용한 정보
    --info_map        VARCHAR2(300)   NOT NULL, --구글맵API
    CONSTRAINT fk_info_name FOREIGN KEY (info_name) REFERENCES ROOGLE_AnimalAPI(api_name)
);
