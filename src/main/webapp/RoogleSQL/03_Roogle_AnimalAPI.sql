CREATE TABLE Roogle_AnimalAPI
(   
    api_name     VARCHAR2(50)   PRIMARY KEY,--동물이름
    api_species  VARCHAR2(30)   NOT NULL,	--종
    api_ename    VARCHAR2(100)  NOT NULL,	--영명	
    api_sname    VARCHAR2(100)  NOT NULL,	--학명
    api_photo    VARCHAR2(100)  NOT NULL,	--사진명
    api_life     VARCHAR2(100)  NOT NULL,	--수명
    api_size     VARCHAR2(100)  NOT NULL,	--크기
    CONSTRAINT fk_api_species FOREIGN KEY (api_species) REFERENCES roogle_species(species)
);

--거북
INSERT INTO Roogle_animalAPI  VALUES (
	'레오파드육지거북',
	'거북',
	'Leopard Tortoise' , 
	'Stigmochelys Pardalis (Bell, 1828)' , 
	'Leopard Tortoise1.png' , 
	'50년 이상' ,
	'동부 아프리카, 남부 아프리카'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '호스필드육지거북',
    '거북',
    'Horsfield tortoise',
    'Testudo horsfieldii Gray, 1844',
    'Horsfield tortoise1.png',
    '50년 이상',
    '중앙아시아 , 서아시아'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '커먼머스크터틀',
    '거북',
    'Common Musk Turtle',
    'Sternotherus Odoratus',
    'Common Musk Turtle1.png',
    '30 ~ 50년',
    '캐나다 남동부에서 미국 남동부, 중남부'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '레이저백',
    '거북',
    'Razor-back musk turtle',
    'Sternotherus carinatus Gray, 1856',
    'Razor-back musk turtle1.png',
    '30년 이상',
    '미국 남부 지역'
);

--도마뱀
INSERT INTO Roogle_animalAPI  VALUES (
    '크레스티드게코',
    '도마뱀',
    'Crested Gecko',
    'Rhacodactylus ciliatus',
    'Crested Gecko2.png',
    '최대 20년',
    '뉴칼레도니아에 서식'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '레오파드게코',
    '도마뱀',
    'Leopard Gecko',
    'Eublepharis macularius',
    'Leopard Gecko2.png',
    '최대 20년 이상',
    '파키스탄, 아프가니스탄, 서부인도 등의 사막지역'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '블루텅스킨크',
    '도마뱀',
    'Blue tongued skink',
    'Tiliqua(Gray, 1825)',
    'Blue tongued skink1.png',
    '20년 이상',
    '인도네시아'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '베일드카멜레온',
    '도마뱀',
    'Veiled chameleon',
    'Chamaeleo calyptratus Duméril & Bibron, 1851',
    'Veiled chameleon3.jpeg',
    '최대 7년',
    '사우디아라비아'
);

--뱀
INSERT INTO Roogle_animalAPI  VALUES (
    '블랙킹스네이크',
    '뱀',
    'Mexican Black King Snake',
    'Lampropeltis getula nigrita',
    'Mexican Black King Snake1.png',
    '25년',
    '멕시코'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '노말콘스네이크',
    '뱀',
    'Corn snake',
    'Pantherophis guttatus (Linnaeus, 1766)',
    'Corn snake1.png',
    '25년',
    '북미대륙'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '캘리포니아킹스네이크',
    '뱀',
    'Common King Snake',
    'Lampropeltis getula',
    'Common King Snake1.jpeg',
    '25년',
    '미국,멕시코'
);

--양서류
INSERT INTO Roogle_animalAPI  VALUES (
    '타이거살라만다',
    '양서류',
    'TigerSalamander',
    'Ambystoma tigrinum',
    'FireSalamander1.png',
    '12 ~ 15년',
    '북미대륙'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '파이어살라만다',
    '양서류',
    'FireSalamander',
    'Salamandra salamandra',
    'FireSalamander3.jpeg',
    '최대 50년',
    '중부유럽'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '엠페러뉴트',
    '양서류',
    'EmperorNewt',
    'Tylototriton shanjing',
    'EmperorNewt2.png',
    '7년',
    '중국'
);

INSERT INTO Roogle_animalAPI  VALUES (
    '화이트트리프록',
    '양서류',
    'Australian green tree frog',
    'Ranoidea caerulea/Litoria caerulea',
    'Australian green tree frog1.png',
    '16년',
    '호주북부 , 뉴기지'
);

