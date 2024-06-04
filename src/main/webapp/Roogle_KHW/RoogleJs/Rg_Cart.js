
let element = document.querySelector('#내용배경색');
let box = document.getElementsByClassName("주문상품");
let animalsPrice = document.getElementsByClassName("상품가격");
const checkAry = new Array(name.length);

let resultPay = document.getElementById('주문금액');
let result = 0;

let id = document.getElementById("idBlock").value;
let boxNo;
let cart_no_Ary = "";
let idx = 0;

function mInit(){
	boxNo = document.getElementsByClassName("박스번호");
}

let tagElement = document.getElementsByClassName('태그공간');
let tagTemplate = `<span class="태그박스">거북</span>`;

let tagBox = document.getElementsByClassName('태그박스');

let count = 0;

let checkboxes = document.getElementsByName('물품전체선택');
let check = document.getElementsByName("물품선택");
let check_Count = 1;

/* 셀렉트 박스를 전체 선택할 수 있게 해주는 함수 */
function selectAll(selectAll)  {
  for(let i = 0; i < box.length; i++){
    check[i].checked = checkboxes[0].checked;
  }
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

/* 선택한 블록을 삭제하게 해주는 함수 */
function deleteBlock(){
  for(let i = 0; i < check.length; i++){
    check[i].value = '물품'+(i);
  }
  if(checkboxes[0].checked){
    for(let i = 0, j = 0; j < name.length; i++, j++){
      box[i].remove();
      i--;
    }
    location.href = "./Rg_CartDelPro.jsp?cart_id="+id+"&All="+"true";
  }
  else if((checkboxes[0].checked) != true){
    for(let i = 0; i < box.length; i++){
      if(check[i].checked){
        cart_no_Ary += (boxNo[i].value)+" ";
        box[i].remove();
        i--;
      }
    }
    location.href = "./Rg_CartDelPro.jsp?cart_id="+id+"&cart_no_Ary="+cart_no_Ary+"&All="+"false";
  }
}
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */

let animalNum1 = document.getElementsByClassName('상품수량');
let animalNum2 = document.getElementsByClassName('분양수선택');
let updateBtn = document.getElementsByClassName('수정버튼');

function updateButton(idx, cart_no){
  if(count == 0){
    animalNum1[idx].style.display = 'none';
    animalNum2[idx].style.display = 'inline';
    count++;
  }
  else {
    animalNum1[idx].style.display = 'inline';
    animalNum2[idx].style.display = 'none';
    animalNum1[idx].innerHTML = animalNum2[idx].value;
    count = 0;
    location.href = "./Rg_CartUpdPro.jsp?cart_id="+id+"&cart_no="+cart_no+"&cart_amount="+animalNum1[idx].innerHTML;
  }
}

function goPrice(){
	location.href = "./Rg_Pay.jsp";
}

