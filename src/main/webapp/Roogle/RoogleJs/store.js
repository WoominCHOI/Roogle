/**
 * 
 */
//필터 스크립트 
function applyFilters() {
    const categoryFilter = document.getElementById('category-filter').value;

    const productList = document.getElementById("product-list");

    // 필터링된 제품 목록 초기화
    productList.innerHTML = '';

    products.forEach(product => {

        if (categoryFilter === 'all' || product.productDescription === categoryFilter) {
            // 제품 카드 생성
            const productCard = document.createElement("div");
            productCard.classList.add("product-card");

            // 제품 이미지
            const productImage = document.createElement("img");
            productImage.src = product.image;
            productImage.alt = product.name;

            // 제품 정보
            const productInfo = document.createElement("div");
            productInfo.classList.add("info");

            const productName = document.createElement("h2");
            productName.textContent = product.name;

            const productDescription = document.createElement("p");
            productDescription.textContent = product.productDescription;
            
            const productDate = document.createElement("p");
            productDate.classList.add("Date");
            productDate.textContent = product.date;

            productInfo.appendChild(productName);
            //productInfo.appendChild(productDescription);
            productInfo.appendChild(productDate);

            productCard.appendChild(productImage);
            productCard.appendChild(productInfo);

            productList.appendChild(productCard);
        }
    });
}

//동물정보 추가 스크립트
const products = [
    {
        name: "빅혼",
        image: "./../img/store/store_bighorn.jfif",
        productDescription: "https://bighornmania.cafe24.com/"
    },
    {
        name: "서울렙타일",
        image: "../img/store/store_seoulRetile.gif",
        productDescription: "https://www.seoulreptile.co.kr/goods/goods_list.php?cateCd=001"
    },
    {
        name: "더브리더스",
        image: "../img/store/store_theBreeders.png",
        productDescription: "https://thebreeders.cafe24.com/"
    },
    {
        name: "더쥬",
        image: "../img/store/store_theZoo.jpg",
        productDescription: "https://xn--9m1b023b.com/"
    },
    {
        name: "정글펫",
        image: "../img/store/store_junglePet.png",
        productDescription: "../img/store/store_junglePet.png"
    },
    {
        name: "발토앤제이",
        image: "../img/store/store_balto.png",
        productDescription: "https://baltonj.com/"
    },
    {
        name: "우수렙타일",
        image: "../img/store/store_woosoo.jpg",
        productDescription: "https://woosooreptile.com/"
    },
    {
        name: "반모리",
        image: "../img/store/store_vanmori.png",
        productDescription: "https://www.vanmori.com/"
    },
    {
        name: "뉴런렙타일",
        image: "../img/store/store_newRun.jpg",
        productDescription: "https://newrunreptile.co.kr/"
    },
    {
        name: "밀림펫",
        image: "../img/store/store_mil.png",
        productDescription: "http://www.milimpet.co.kr/goods/goods_list.php?cateCd=045"
    },
    {
        name: "게코홀릭",
        image: "../img/store/store_geckoHolic.png",
        productDescription: "https://geckoholic.co.kr/product/list.html?cate_no=65"
    },

];

//샵 이미지 클릭 시 해당 url로 이동 blank사용
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

        productInfo.appendChild(productName);

        productCard.appendChild(productImage);
        productCard.appendChild(productInfo);

        // 제품 카드를 클릭했을 때 상세 페이지 또는 productDescription 링크로 이동
        productCard.addEventListener("click", function() {
            if (product.productDescription.startsWith('http')) {
                // productDescription이 URL인 경우, 해당 URL로 이동
                window.open(product.productDescription, '_blank');
            } else {
                // 내부 페이지로 이동할 수 있는 로직 추가 (예: 상세 페이지로 이동)
                const productUrl = `./product.html?productId=${index}`;
                window.location.href = productUrl;
            }
        });

        productList.appendChild(productCard);
    });
});

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