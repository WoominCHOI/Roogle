/**
 * 
 */

//동물정보 추가 스크립트
const products = [
    {
        name: "애니멀포럼",
        image: "./../img/event/forum.jpg",
        date: "2024-05-04 ~ 2024-05-05",
        productDescription: "https://cafe.naver.com/reptilia/3999779"
    },
    {
        name: "코리아렙타일쇼",
        image: "./../img/event/reptileshow.png",
        date: "2024-08-04 ~ 2024-08-05",
        productDescription: "https://cafe.naver.com/reptilia/3998926"
    },
    {
        name: "제 11회 희귀반려동물 박람회",
        image: "./../img/event/setec2.png",
        date: "2024-05-11 ~ 2024-05-12",
        productDescription: "https://cafe.naver.com/reptilia/3977322"
    }
];

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
        
        const productDate = document.createElement("p");
        productDate.classList.add("Date");
        productDate.textContent = product.date;

        productInfo.appendChild(productName);
        productInfo.appendChild(productDate);

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