/**
 * 
 */
// 초기 필터링 및 제품 출력
function initialLoad() {
    applyFilters(); // 초기 필터링 적용
}

// 필터 적용 함수
function applyFilters() {
    const categoryFilter = document.getElementById('category-filter').value;
    const priceFilter = document.getElementById('price-filter').value;

    const productList = document.getElementById("product-list");

    //카테고리 이름 바꾸기
    const categoryName = document.getElementById("categoryName");
    categoryName.innerHTML = categoryFilter;

    // 필터링된 제품 목록 초기화
    productList.innerHTML = '';

    // 필터링된 제품 배열 생성
    const filteredProducts = products.filter(product => {
        const productDescription = product.productDescription;
        const productPrice = product.price;

        // 카테고리 및 가격 범위에 따라 제품 필터링
        return (categoryFilter === 'all' || productDescription === categoryFilter) &&
               (priceFilter === 'all' || checkPriceRange(productPrice, priceFilter));
    });

    // 필터링된 제품 카드 생성 및 출력
    filteredProducts.forEach(product => {
        const productCard = createProductCard(product);
        productList.appendChild(productCard);
    });
}

// 가격 범위 확인 함수
function checkPriceRange(productPrice, priceFilter) {
    switch (priceFilter) {
        case '1-50000':
            return productPrice >= 1 && productPrice <= 50000;
        case '50001-100000':
            return productPrice >= 50001 && productPrice <= 100000;
        case '100001-200000':
            return productPrice >= 100001 && productPrice <= 200000;
        case '200000':
            return productPrice >= 200000;
        default:
            return true; // 기본적으로 모든 가격 범위를 통과하도록 설정
    }
}

// 제품 카드 생성 함수
function createProductCard(product) {
    const productCard = document.createElement("div");
    productCard.classList.add("product-card");

    const productImage = document.createElement("img");
    productImage.src = product.image;
    productImage.alt = product.name;

    const productInfo = document.createElement("div");
    productInfo.classList.add("info");

    const productName = document.createElement("h2");
    productName.textContent = product.name;

    const productDescriptionElem = document.createElement("p");
    productDescriptionElem.textContent = product.productDescription;


    productInfo.appendChild(productName);
    productInfo.appendChild(productDescriptionElem);

    productCard.appendChild(productImage);

    return productCard;
}

// 페이지 로드 시 초기 필터링 및 제품 출력
//document.addEventListener("DOMContentLoaded", initialLoad);


//이벤트 이미지 클릭 시 해당 url로 이동 blank사용
document.addEventListener("DOMContentLoaded", function() {
    const productList = document.getElementById("product-list");

    products.forEach((product, index) => {
        const productCard = document.createElement("div");
        productCard.classList.add("product-card");

        const productImage = document.createElement("img");
        productImage.src = product.image;
        productImage.alt = product.name;

        const productInfo = document.createElement("div");
        productInfo.classList.add("info");

        const productName = document.createElement("h2");
        productName.textContent = product.name;

        const productDescription = document.createElement("p");
        productDescription.textContent = product.productDescription;

        const URL = document.createElement("p");
        URL.textContent = product.URL;
        
        const productPriceElem = document.createElement("p");
    	productPriceElem.classList.add("price");
    	const formattedPrice = new Intl.NumberFormat('ko-KR').format(product.price);
    	productPriceElem.textContent = `₩${formattedPrice}`;

        productInfo.appendChild(productName);
        productInfo.appendChild(productPriceElem);

        productCard.appendChild(productImage);
        productCard.appendChild(productInfo);
        //productCard.appendChild(productInfo);

        // 제품 카드를 클릭했을 때 상세 페이지 또는 URL 링크로 이동
        productCard.addEventListener("click", function() {
            if (product.URL.endsWith('.html')) {
                // URL이 URL인 경우, 해당 URL로 이동
                window.open(product.URL, '_blank');
            } else {
                // 내부 페이지로 이동할 수 있는 로직 추가 (예: 상세 페이지로 이동)
                const productUrl = `./product.html?productId=${index}`;
                window.location.href = productUrl;
            }
        });

        productList.appendChild(productCard);
    });
});



const products = [
    {
        name: "레오파드육지거북",
        image: "./../img/categories_img/Leopard Tortoise1.png",
        price: 130000 ,
        productDescription: "turtle",
        URL: "./../../RgMini_Result/index.html"
    },
    {
        name: "커먼머스크터틀",
        image: "./../img/categories_img/Common Musk Turtle1.png",
        price: 29000,
        productDescription: "turtle"
    },
    {
        name: "베일드카멜레온",
        image: "./../img/categories_img/Veiled chameleon3.jpeg",
        price: 90000,
        productDescription: "lizard"
    },
    {
        name: "타이거살라만다",
        image: "./../img/categories_img/FireSalamander3.jpeg",
        price: 85000,
        productDescription: "amphibian"
    },
    {
        name: "캘리포니아킹스네이크",
        image: "./../img/categories_img/Common King Snake1.jpeg",
        price: 120000,
        productDescription: "snake"
    },
    {
        name: "레오파드게코",
        image: "./../img/categories_img/Leopard Gecko2.png",
        price: 20000,
        productDescription: "lizard"
    },
    {
        name: "크레스티드게코",
        image: "./../img/categories_img/Crested Gecko2.png",
        price: 18000,
        productDescription: "lizard"
    },
    {
        name: "블루텅스킨크",
        image: "./../img/categories_img/Blue tongued skink1.png",
        price: 160000,
        productDescription: "lizard"
    },
    {
        name: "호스필드육지거북",
        image: "./../img/categories_img/Horsfield tortoise1.png",
        price: 79000,
        productDescription: "turtle"
    },
    {
        name: "레이저백",
        image: "./../img/categories_img/Razor-back musk turtle1.png",
        price: 59000,
        productDescription: "turtle"
    },
    {
        name: "블랙킹스네이크",
        image: "./../img/categories_img/Mexican Black King Snake1.png",
        price: 120000,
        productDescription: "snake"
    },
    {
        name: "콘스네이크",
        image: "./../img/categories_img/Corn snake1.png",
        price: 40000,
        productDescription: "snake"
    },
    {
        name: "파이어살라만다",
        image: "./../img/categories_img/FireSalamander1.png",
        price: 90000,
        productDescription: "amphibian"
    },
    {
        name: "엠페러뉴트",
        image: "./../img/categories_img/EmperorNewt2.png",
        price: 100000,
        productDescription: "amphibian"
    },
    {
        name: "화이트트리프록",
        image: "./../img/categories_img/Australian green tree frog1.png",
        price: 28000,
        productDescription: "amphibian"
    }
];

//------------------------------------------------------------------------------------------------------------

//topbtn
let mybutton = document.getElementById("topBtn");

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
