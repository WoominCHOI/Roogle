
/* 주문상품 칸에 배열 안의 정보를 넣어서 블럭 추가하는 코드 */
let element = document.querySelector('#내용2 .내용배경색');
let template = "";

let resultLastPay = document.getElementById('총결제금액');
let resultPay = document.getElementById('주문금액');
let result = 0;

function mInit(){

}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */


/* 배송메모 선택지 중 직접 입력 선택시 텍스트박스로 바꿔주는 함수 */
let inputBox = document.getElementById("직접입력");
let memoBox = document.getElementById("배송메모");
let memoInputBox = document.querySelectorAll("select[id=배송메모] option")[3];

function inputMemo() {
    if(memoInputBox.selected){
        inputBox.value = "";
        memoBox.style.display = 'none';
        inputBox.style.display = 'block';
    }
    else {
        memoInputBox.innerHTML = "직접 입력";
    }
}

function inputComplete() {
    if(inputBox.value != "" || inputBox.value != undefined){
        memoBox.style.display = 'block';
        inputBox.style.display = 'none';
        memoInputBox.innerHTML = inputBox.value;
    }
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

/* 배송지 변경 버튼 눌렀을 때 텍스트 입력 박스로 바꿔주는 함수 */
let userAPI = document.getElementsByClassName('개인정보');
let userAPIinput = document.getElementsByClassName('개인정보변경');

function apiChange() {  
    new daum.Postcode({
        oncomplete: function(data) {
            //data는 사용자가 선택한 주소 정보를 담고 있는 객체이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
            userAPI[2].innerHTML = data.query;
            userAPI[2].innerHTML += " ("+data.zonecode+")";
        }
    }).open();
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

/* 배송지 수정완료한 뒤 엔터를 누르면 다시 돌아오는 함수 */
function enterClick() {
    userAPIinput[2].addEventListener('keydown', event);
    if(event.key == 'Enter'){
        for(let i = 1; userAPI.length; i++){
            userAPI[i].style.display = 'block'; 
            userAPIinput[i].style.display = 'none';
            userAPI[i].innerHTML = userAPIinput[i].value;
        }
    }       
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

/* 현금영수증 변경 화면을 보여주는 함수 */
let cashBefor = document.getElementById('현금영수증변경전');
let cashAfter = document.getElementById('현금영수증변경');
let telInput = document.getElementsByClassName('전번변경');
let telNum = document.getElementsByClassName('전번');
let count = 0;

let cashCheck = document.getElementsByName('현금영수증종류');

function cashPaperChange() {
    if(count == 0){
        cashBefor.style.display = 'none';
        cashAfter.style.display = 'block';
        telInput[0].focus();

        for(let i = 0; i < telInput.length; i++){
            telInput[i].value = telNum[i].innerHTML;
        }
        count = 1;
    }
    else{
        cashBefor.style.display = 'block';
        cashAfter.style.display = 'none';

        for(let i = 0; i < telInput.length; i++){
            telNum[i].innerHTML = telInput[i].value;
        }
        count = 0;
    }

    if(cashCheck[1].checked){
        cashCheck[0].innerHTML = '개인소득공제용';
    }
    else if(cashCheck[2].checked){
        cashCheck[0].innerHTML = '사업자증빙용(세금계산서)';
    }
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

/*  */
function enterkey(num) {
	if (window.event.keyCode == 13) {
    	// 엔터키가 눌렸을 때
        if(num == 0){
            telInput[1].focus();
        }
        else if(num == 1){
            telInput[2].focus();
        }
        else if(num == 2){
            cashBefor.style.display = 'block';
            cashAfter.style.display = 'none';

            for(let i = 0; i < telInput.length; i++){
                telNum[i].innerHTML = telInput[i].value;
            }
            count = 0;

            if(cashCheck[1].checked){
                cashCheck[0].innerHTML = '개인소득공제용';
            }
            else if(cashCheck[2].checked){
                cashCheck[0].innerHTML = '사업자증빙용(세금계산서)';
            }
        }   
    }
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

function goPayPro(id){
	location.href = "./Rg_PayPro.jsp?id="+id;
}

function goPayProSingle(){
	location.href = "./Rg_PaySinglePro.jsp";
}

let cashName1 = document.getElementsByClassName("결제수단이름");
let cashName2 = document.getElementById("결제방법");

function mPayChange(num){
	cashName2.innerHTML = cashName1[num].innerHTML;
}
