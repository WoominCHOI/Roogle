let element = document.querySelector('#추천품목리스트');

let name = document.getElementById('이름');
let engName = document.getElementById('영명내용');
let binoName = document.getElementById('학명내용');
let expBox = document.getElementsByClassName('정보블럭');
let floatBox = document.getElementById('최저가정렬');
let floatEle = document.getElementsByClassName('최저가요소');
let cash = document.getElementById('가격블록');

let animalExp = 
["거북목 땅거북과에 속하는 파충류. 동부에서 남부 아프리카의 건초지대에서 서식하는 중형 거북으로, 애완용으로 널리 사육되는 종이기도 하다. 등갑의 문양이 표범무늬 같아서 표범무늬거북이라고 불리며, 주로 영명인 레오파드거북으로도 불린다.",
"땅거북중에서 4번째로 크게 자라는 거북으로, 평균길이는 40cm에, 몸무게는 13kg 정도다. 등갑이 다른 땅거북에 비해서 높게 자라는 특징이 있다. 때문에 뒤집혀도 오뚜기처럼 빨리 정상으로 돌아온다.다른 땅거북과 마찬가지로 초식성 동물이며, 주로 낮에 활동한다. 수컷끼리는 암컷을 앞에 두고 경쟁하는 경우가 많다. 암컷은 교미후 한번에 5-30개의 알을 낳을 수 있으며, 번식기 마다 5-7 번 산란할 수 있다. 알은 8-15개월 이후에 부화하게 된다. 생후 12~15년 이후에 성적으로 성장하며, 수명은 50년 이상이다.",
"온도는 보통 파충류용 램프로 조절한다. 바닥 열원은 거북이에게는 효율이 높지 않다. 보통 야간용과 주간용을 따로 놓거나 세라믹 계열을 놓는 경우가 있다. 온도계를 놓거나, 온도건을 사용해 온도를 모니터링해야 한다. 주간 (12시간 내외) 사육장 내의 온도는 종마다 다르지만 대체로 추운 곳은 25도 정도, 스팟램프 등을 쓰는 스팟존은 33~38도 정도는 되어야 한다."];

function mInit(){

}


let checkBox = document.getElementById("가격체크박스");
let priceBlock = document.getElementById("가격블록");
let nameBlock = document.getElementById("이름");

function changePrice(num){
	priceBlock.innerHTML = num;
	checkBox.checked = true;
}

let hiddenForm = document.getElementById("hiddenForm");
let inputName = document.getElementById("inputName");
let inputPrice = document.getElementById("inputPrice");
let amount = document.getElementById("amount");
let img = document.getElementsByTagName("img")[1];
let cartToPay = "false";
let cartAPI = "";

function cartCharge(id){
	if(id != ""){
		inputName.value = nameBlock.innerHTML;
		inputPrice.value = priceBlock.innerHTML;
		hiddenForm.submit();
	} else {
		alert("로그인 후 이용해주시기 바랍니다.");
	}
}

let subAniName = document.getElementsByClassName("추천품목내용");
let subAniPrice = document.getElementsByClassName("추천품목가격숫자");

function subCartCharge(num, id){
	if(id != ""){
		inputName.value = subAniName[num].innerHTML;
		inputPrice.value = subAniPrice[num].innerHTML;
		hiddenForm.submit();
	} else {
		alert("로그인 후 이용해주시기 바랍니다.");
	}
} 

function goPay(id){
	if(id != ""){
		cartToPay = "true";
		cartAPI = nameBlock.innerHTML +"-"+ priceBlock.innerHTML +"-"+ amount.value+"-"+ img.src;
		location.href = "./Rg_Pay_Single.jsp?cartToPay="+cartToPay+"&cartAPI="+cartAPI;
	} else {
		alert("로그인 후 이용해주시기 바랍니다.");
	}
}
