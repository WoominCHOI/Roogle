CREATE TABLE Roogle_price
(   
    pr_name       VARCHAR2(50)   ,	--동물이름
    pr_bighorn    VARCHAR2(500)  ,	--빅혼
    pr_seoul      VARCHAR2(500)  ,	--서울렙타일
    pr_breeders   VARCHAR2(500)  ,	--더브리더스
    pr_zoo        VARCHAR2(500)  ,	--더쥬
    pr_balto      VARCHAR2(500)  ,	--발토앤제이
    pr_woosoo     VARCHAR2(500)  ,	--우수렙타일
    pr_vanmori    VARCHAR2(500)  ,	--반모리
    pr_newrun     VARCHAR2(500)  ,	--뉴런렙타일    
    pr_millim     VARCHAR2(500)  ,	--밀림펫
    pr_holic      VARCHAR2(500)  ,	--게코홀릭
    pr_thereptile VARCHAR2(500)  ,	--더렙타일
    CONSTRAINT fk_pr_name FOREIGN KEY (pr_name) REFERENCES ROOGLE_AnimalAPI(api_name)
);

INSERT INTO ROOGLE_price  VALUES (
	'레오파드육지거북',
	'https://bighorn.co.kr/product/%EB%A0%88%EC%98%A4%ED%8C%8C%EB%93%9C-%EC%9C%A1%EC%A7%80%EA%B1%B0%EB%B6%81-%EC%A4%91/3772/category/244/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002253',
	'https://thebreeders.cafe24.com/product/%EB%A0%88%EC%98%A4%ED%8C%8C%EB%93%9C-%EC%9C%A1%EC%A7%80%EA%B1%B0%EB%B6%81-7cm%EA%B8%89/2559/category/25/display/1/',
	'',
	'https://baltonj.com/product/detail.html?product_no=2592&cate_no=154&display_group=1',
	'',
	'https://www.vanmori.com/product/untitled-353',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=2155&cate_no=198&display_group=1',
	'',
	'https://geckoholic.co.kr/product/detail.html?product_no=247&cate_no=67&display_group=1',
	'https://www.thereptile.co.kr/product/krcb-%EB%B2%A0%EC%9D%B4%EB%B9%84-%EB%A0%88%EC%98%A4%ED%8C%8C%EB%93%9C-%EC%9C%A1%EC%A7%80%EA%B1%B0%EB%B6%81-5cm8cm/1147/category/114/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'호스필드육지거북',
	'https://bighornmania.cafe24.com/product/%ED%98%B8%EC%8A%A4%ED%95%84%EB%93%9C-%EC%9C%A1%EC%A7%80%EA%B1%B0%EB%B6%81-2023-8%EC%9B%94-800%EB%A7%88%EB%A6%AC-%EC%88%98%EC%9E%85/3853/category/244/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000000059',
	'',
	'',
	'',
	'',
	'https://www.vanmori.com/product/untitled-170',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=3917&cate_no=235&display_group=1',
	'http://www.milimpet.co.kr/goods/goods_view.php?goodsNo=1000000721',
	'https://geckoholic.co.kr/product/detail.html?product_no=246&cate_no=67&display_group=1',
	'https://www.thereptile.co.kr/product/%ED%98%B8%EC%8A%A4%ED%95%84%EB%93%9C-%EC%9C%A1%EC%A7%80%EA%B1%B0%EB%B6%81/1292/category/108/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'커먼머스크터틀',
	'https://bighornmania.cafe24.com/product/%EC%BB%A4%EB%A8%BC-%EB%A8%B8%EC%8A%A4%ED%81%AC-%ED%84%B0%ED%8B%80/3871/category/244/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000000056',
	'',
	'',
	'',
	'',
	'',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=924&cate_no=252&display_group=1',
	'http://www.milimpet.co.kr/goods/goods_view.php?goodsNo=1000000710',
	'',
	'https://www.thereptile.co.kr/product/%EC%BB%A4%EB%A8%BC%EB%A8%B8%EC%8A%A4%ED%81%AC%ED%84%B0%ED%8B%80/1351/category/107/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'레이저백',
	'https://bighornmania.cafe24.com/product/%EB%A0%88%EC%9D%B4%EC%A0%80-%EB%B0%B1-%EB%A8%B8%EC%8A%A4%ED%81%AC-%ED%84%B0%ED%8B%80/3872/category/244/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000001318',
	'',
	'',
	'',
	'',
	'',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=64&cate_no=252&display_group=1',
	'http://www.milimpet.co.kr/goods/goods_view.php?goodsNo=1000000711',
	'',
	'https://www.thereptile.co.kr/product/%EB%A0%88%EC%9D%B4%EC%A0%80%EB%B0%B1%EB%A8%B8%EC%8A%A4%ED%81%AC%ED%84%B0%ED%8B%80/1352/category/107/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'크레스티드게코',
	'',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002517',
	'https://thebreeders.cafe24.com/product/%ED%81%AC%EB%A0%88%EC%8A%A4%ED%8B%B0%EB%93%9C%EA%B2%8C%EC%BD%94-%EB%B2%A0%EC%9D%B4%EB%B9%84-nb59/4053/category/72/display/1/',
	'https://xn--9m1b023b.com/product/%EB%9E%9C%EB%8D%A4-%ED%81%AC%EB%A0%88%EC%8A%A4%ED%8B%B0%EB%93%9C-%EA%B2%8C%EC%BD%94-%EB%B2%A0%EC%9D%B4%EB%B9%84%EC%9E%85%EB%AC%B8%EC%9E%90-%EC%B6%94%EC%B2%9C/7886/category/177/display/1/',
	'',
	'https://woosooreptile.com/product/%ED%81%AC%EB%A0%88%EC%8A%A4%ED%8B%B0%EB%93%9C-%EA%B2%8C%EC%BD%94-%EB%85%B8%EB%A9%80-%EB%9E%9C%EB%8D%A4%EB%AA%A8%ED%94%84/752/category/50/display/2/',
	'https://www.vanmori.com/product/untitled-609',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=2044&cate_no=197&display_group=1',
	'http://www.milimpet.co.kr/goods/goods_view.php?goodsNo=1000000698',
	'https://geckoholic.co.kr/product/detail.html?product_no=249&cate_no=65&display_group=1',
	'https://www.thereptile.co.kr/product/%ED%81%AC%EB%A0%88%EC%8A%A4%ED%8B%B0%EB%93%9C%EA%B2%8C%EC%BD%94-%EA%B3%A0%ED%80%84%EB%A6%AC%ED%8B%B0-%EB%9E%9C%EB%8D%A4%EB%AA%A8%ED%94%84%EB%B8%8C%EB%A6%AC%EB%94%A9%EA%B0%9C%EC%B2%B4-%ED%95%AD%EC%8B%9C200%EB%A7%88%EB%A6%AC%EC%9D%B4%EC%83%81/397/category/105/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'레오파드게코',
	'https://bighornmania.cafe24.com/product/%EB%A0%88%EC%98%A4%ED%8C%8C%EB%93%9C%EA%B2%8C%EC%BD%94-%EB%9E%9C%EB%8D%A4/2645/category/242/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002462',
	'https://thebreeders.cafe24.com/product/%EB%A0%88%EC%98%A4%ED%8C%8C%EB%93%9C%EA%B2%8C%EC%BD%94-%EB%B2%A0%EC%9D%B4%EB%B9%84-%EB%9E%9C%EB%8D%A4/3806/category/71/display/1/',
	'',
	'',
	'',
	'https://www.vanmori.com/product/untitled-451',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=1645&cate_no=221&display_group=1',
	'http://www.milimpet.co.kr/goods/goods_view.php?goodsNo=1000000724',
	'',
	'https://www.thereptile.co.kr/product/%EB%A0%88%EC%98%A4%ED%8C%8C%EB%93%9C-%EA%B2%8C%EC%BD%94-%EB%9E%9C%EB%8D%A4%EB%AA%A8%ED%94%84/1286/category/108/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'블루텅스킨크',
	'https://bighornmania.cafe24.com/product/%EB%B8%94%EB%A3%A8%ED%85%85-%EC%8A%A4%ED%82%A8%ED%81%AC-%EB%B2%A0%EC%9D%B4%EB%B9%84/3936/category/242/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002397',
	'https://thebreeders.cafe24.com/product/%EB%B8%94%EB%A3%A8%ED%85%85%EC%8A%A4%ED%82%A8%ED%81%AC-%EB%A9%94%EB%9D%BC%EC%9A%B0%EC%BC%80/2402/category/25/display/1/',
	'https://xn--9m1b023b.com/product/%EB%B8%94%EB%A3%A8%ED%85%85-%EC%8A%A4%ED%82%A8%ED%81%AC-%EB%B2%A0%EC%9D%B4%EB%B9%84/5165/category/143/display/1/',
	'',
	'',
	'https://www.vanmori.com/product/untitled-317-2284',
	'https://newrunreptile.co.kr/product/detail.html?product_no=906&cate_no=228&display_group=1',
	'',
	'',
	'https://www.thereptile.co.kr/product/%EB%B8%94%EB%A3%A8%ED%85%85%EC%8A%A4%ED%82%A8%ED%81%AC-%EB%B2%A0%EC%9D%B4%EB%B9%84/1304/category/107/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'베일드카멜레온',
	'https://bighornmania.cafe24.com/product/%EB%B2%A0%EC%9D%BC%EB%93%9C-%EC%B9%B4%EB%A9%9C%EB%A0%88%EC%98%A8-%EC%95%84%EC%84%B1%EC%B2%B4/717/category/242/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002390',
	'',
	'',
	'',
	'',
	'https://www.vanmori.com/product/untitled-830',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=419&cate_no=225&display_group=1',
	'',
	'https://geckoholic.co.kr/product/detail.html?product_no=380&cate_no=70&display_group=1',
	'https://www.thereptile.co.kr/product/%EB%B2%A0%EC%9D%BC%EB%93%9C-%EC%B9%B4%EB%A9%9C%EB%A0%88%EC%98%A8/420/category/116/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'블랙킹스네이크',
	'https://bighornmania.cafe24.com/product/%EB%B2%A0%EC%9D%BC%EB%93%9C-%EC%B9%B4%EB%A9%9C%EB%A0%88%EC%98%A8-%EC%95%84%EC%84%B1%EC%B2%B4/717/category/242/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002304',
	'https://thebreeders.cafe24.com/product/%EB%A9%95%EC%8B%9C%EC%B9%B8-%EB%B8%94%EB%9E%99%ED%82%B9%EC%8A%A4%EB%84%A4%EC%9D%B4%ED%81%AC-%EC%88%98/3810/category/52/display/1/',
	'',
	'',
	'',
	'https://www.vanmori.com/product/untitled-1009',
	'https://newrunreptile.co.kr/product/detail.html?product_no=3768&cate_no=249&display_group=1',
	'',
	'',
	'https://www.thereptile.co.kr/product/%EB%B8%94%EB%9E%99%ED%82%B9-%EC%8A%A4%EB%84%A4%EC%9D%B4%ED%81%AC/1301/category/108/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'노말콘스네이크',
	'https://bighornmania.cafe24.com/product/%EC%BD%98%EC%8A%A4%EB%84%A4%EC%9D%B4%ED%81%AC/1500/category/273/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002175',
	'',
	'',
	'',
	'',
	'https://www.vanmori.com/product/untitled-315-1123',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=882&cate_no=260&display_group=1',
	'',
	'',
	'https://www.thereptile.co.kr/product/%EC%BD%98%EC%8A%A4%EB%84%A4%EC%9D%B4%ED%81%AC-%EB%9E%9C%EB%8D%A4%EB%AA%A8%ED%94%84/1149/category/126/display/1/'
);
INSERT INTO ROOGLE_price  VALUES (
	'캘리포니아킹스네이크',
	'https://bighornmania.cafe24.com/product/%EB%B8%94%EB%9E%99%EC%95%A4%ED%99%94%EC%9D%B4%ED%8A%B8-%EB%B0%B4%EB%94%94%EB%93%9C-%ED%82%B9%EC%8A%A4%EB%84%A4%EC%9D%B4%ED%81%AC-%EB%B2%A0%EC%9D%B4%EB%B9%84/3796/category/275/display/1/',
	'',
	'https://thebreeders.cafe24.com/product/%EB%B8%94%EB%9E%99%ED%99%94%EC%9D%B4%ED%8A%B8-%ED%82%B9%EC%8A%A4%EB%84%A4%EC%9D%B4%ED%81%AC-%EB%9E%9C%EB%8D%A4%EB%B0%9C%EC%86%A1%EB%90%98%EB%A9%B0-%EB%B0%A9%EB%AC%B8%EC%9E%85%EC%96%91%EC%8B%9C-%EA%B3%A0%EB%A5%B4%EC%8B%A4-%EC%88%98-%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4/3814/category/52/display/1/',
	'',
	'',
	'',
	'',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=3770&cate_no=249&display_group=1',
	'',
	'',
	''
);
INSERT INTO ROOGLE_price  VALUES (
	'타이거살라만다',
	'https://bighornmania.cafe24.com/product/%EC%9D%B4%EC%8A%A4%ED%84%B4-%ED%83%80%EC%9D%B4%EA%B1%B0-%EC%82%B4%EB%9D%BC%EB%A7%8C%EB%8B%A4/3549/category/260/display/1/',
	'',
	'https://thebreeders.cafe24.com/product/%ED%83%80%EC%9D%B4%EA%B1%B0-%EC%82%B4%EB%9D%BC%EB%A9%98%EB%8D%94/3821/category/31/display/1/',
	'https://xn--9m1b023b.com/product/%ED%83%80%EC%9D%B4%EA%B1%B0-%EC%82%B4%EB%9D%BC%EB%A7%8C%EB%8B%A4-%EC%95%84%EC%84%B1%EC%B2%B4/943/category/46/display/1/',
	'',
	'',
	'',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=3387&cate_no=289&display_group=1',
	'',
	'https://geckoholic.co.kr/product/detail.html?product_no=418&cate_no=68&display_group=1',
	''
);
INSERT INTO ROOGLE_price  VALUES (
	'파이어살라만다',
	'https://bighornmania.cafe24.com/product/%ED%8C%8C%EC%9D%B4%EC%96%B4%EC%82%B4%EB%9D%BC%EB%A7%8C%EB%8B%A4/2625/category/260/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002112',
	'https://thebreeders.cafe24.com/product/%ED%8C%8C%EC%9D%B4%EC%96%B4-%EC%82%B4%EB%9D%BC%EB%A9%98%EB%8D%94-%ED%85%8C%EB%A0%88%EC%8A%A4%ED%8A%B8%EB%A6%AC%EC%8A%A4/3820/category/31/display/1/',
	'',
	'',
	'',
	'',
	'',
	'',
	'',
	''
);
INSERT INTO ROOGLE_price  VALUES (
	'엠페러뉴트',
	'https://bighornmania.cafe24.com/product/%EC%97%A0%ED%8E%98%EB%9F%AC-%EB%89%B4%ED%8A%B8/3412/category/260/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002278',
	'',
	'',
	'',
	'https://woosooreptile.com/product/%EC%97%A0%ED%8E%98%EB%9F%AC-%EB%89%B4%ED%8A%B8/676/category/27/display/1/',
	'',
	'https://www.newrunreptile.co.kr/product/detail.html?product_no=3299&cate_no=289&display_group=1',
	'',
	'',
	''
);
INSERT INTO ROOGLE_price  VALUES (
	'화이트트리프록',
	'https://bighornmania.cafe24.com/product/%ED%99%94%EC%9D%B4%ED%8A%B8-%ED%8A%B8%EB%A6%AC-%ED%94%84%EB%A1%9D/3988/category/240/display/1/',
	'https://www.seoulreptile.co.kr/goods/goods_view.php?goodsNo=1000002503',
	'https://thebreeders.cafe24.com/product/%ED%99%94%EC%9D%B4%ED%8A%B8%ED%8A%B8%EB%A6%AC%ED%94%84%EB%A1%9D-%EB%B8%94%EB%A3%A8-baby/1816/category/30/display/1/',
	'',
	'',
	'',
	'https://www.vanmori.com/product/2ecaf09c-71e5-4506-ba25-f9faee0848c3',
	'https://newrunreptile.co.kr/product/detail.html?product_no=744&cate_no=288&display_group=1',
	'http://www.milimpet.co.kr/goods/goods_view.php?goodsNo=1000000714',
	'',
	'https://www.thereptile.co.kr/product/%EB%B2%A0%EC%9D%B4%EB%B9%84-%ED%99%94%EC%9D%B4%ED%8A%B8%ED%8A%B8%EB%A6%AC%ED%94%84%EB%A1%9D-%EB%B8%94%EB%A3%A8%ED%8F%BC-cb/1284/category/108/display/1/'
);