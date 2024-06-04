<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>고객센터</title>
    <link rel = "stylesheet" href="./../CSS/myService.css">
</head>
<body onload="logChk02()">
	<%@ include file = "./header.jsp" %>
     <div id = "wrpper">
        <main class="Guestmain">
        <section class = "sideba">
                <br>
                <a href="./guestBook.jsp"> 게시판</a><br><br>       
                <a href="./service.jsp"> 개인정보처리방침</a> <br>       
        </section>

        <div class="frame">
            <h1>개인정보 처리방침</h1>
            <p>(주)Roogle(’당사')는&nbsp;귀하의&nbsp;개인정보를&nbsp;보호하고&nbsp;존중하며,&nbsp;관계 법령 및 규정에 따른 개인정보보호원칙과&nbsp;규정을&nbsp;준수하기 위해 노력하고 있습니다.</p>
            <p>당사는 본 개인정보 처리방침에 따라 귀하가 웹사이트&nbsp; 플랫폼을 통한 당사&nbsp;또는&nbsp;제3자('운영자')가&nbsp;제공하는&nbsp;서비스('서비스')를&nbsp;사용할 때 귀하의&nbsp;정보를&nbsp;수집, 처리, 사용,&nbsp;공개할&nbsp;수&nbsp;있습니다. 본&nbsp;개인정보&nbsp;처리방침에서&nbsp;'귀하'라 함은 Roogle에&nbsp;접속하거나 서비스를&nbsp;사용하는&nbsp;모든&nbsp;사용자를&nbsp;포함합니다.</p>
            <p>본 개인정보 처리방침은&nbsp;귀하가&nbsp;Roogle&nbsp;플랫폼에&nbsp;접속하거나&nbsp;서비스를&nbsp;사용할&nbsp;때&nbsp;당사가&nbsp;취득한&nbsp;귀하의 정보의&nbsp;수집, 처리, 사용&nbsp;또는&nbsp;공개에 관한&nbsp;기본적인 사항을&nbsp;규정합니다.</p>
            <p><strong>본&nbsp;개인정보 처리방침을&nbsp;주의&nbsp;깊게&nbsp;읽어&nbsp;주시기 바랍니다.</strong>&nbsp;</p>
            <ul>
            <li><p><strong>본&nbsp;개인정보 처리방침의 적용범위</strong></p></li>
            <li><p>당사는 사전통지&nbsp;없이&nbsp;본&nbsp;개인정보 처리방침 또는&nbsp;그&nbsp;일부를&nbsp;변경, 개정 또는 수정할&nbsp;수&nbsp;있고,&nbsp;이후 귀하의 계속적인 Roogle 플랫폼 또는 서비스 사용은, 변경사항이 귀하에게 불이익하여 당사가 귀하의 동의를 얻어야 하는 경우가 아닌 한,&nbsp;귀하가 그 변경,&nbsp;개정 또는 수정된 사항에 동의한 것으로 해석됩니다.&nbsp;만약 귀하가 본&nbsp;개인정보 처리방침 또는 그 변경,&nbsp;개정 또는 수정사항에 동의하지 않는다면,&nbsp;Roogle&nbsp;플랫폼&nbsp;또는&nbsp;서비스에 대한&nbsp;접속이나 사용을 중단해야 합니다.&nbsp;</p></li>
            <li><p>현행&nbsp;개인정보 처리방침은 이&nbsp;페이지에서 확인할 수 있습니다.&nbsp;</p></li>
            <li><p><strong>정보의&nbsp;수집</strong></p></li>
            <li><p>당사는 귀하가 Roogle 플랫폼을 이용하는 동안 귀하가 당사에게 제공한 귀하의 개인정보 및,&nbsp;귀하가 귀하의 사용자 계정(‘사용자계정’)을 개설하거나,&nbsp;방문하거나,&nbsp;원하는 서비스를 예약하거나,&nbsp;사용할 때 등의 경우에 귀하의 Roogle 플랫폼 사용 방법에 관한 정보를 수집할 수 있습니다.&nbsp;귀하가 당사에게&nbsp;귀하의 개인정보를&nbsp;제공할지 여부는&nbsp;항상&nbsp;귀하의&nbsp;자발적&nbsp;의사에 달려 있습니다. 다만&nbsp;귀하가 개인정보를&nbsp;제공하지&nbsp;않을 경우&nbsp;당사는 일정 서비스를 제공하지 못할 수 있습니다.&nbsp;예를 들어,&nbsp;귀하의&nbsp;성명과 연락 정보의 수집 없이는 귀하의 사용자계정을 개설하거나 예약을 할&nbsp;수&nbsp;없습니다.</p></li>
            </ul>
            
            <p><strong>개인위치정보의 처리</strong></p>
            <p>당사는 위치정보의 보호 및 이용 등에 관한 법률에 따라 귀하의 개인위치정보를 처리합니다.</p>
            <p>1.개인위치정보의 처리 목적 및 보유기간</p>
    
            <div class="service"><table>
            <thead>
            <tr>
            <th>서비스명</th>
            <th>서비스 내용 및 (보유)목적</th>
            <th>개인위치정보 보유기간</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td>위치기반서비스</td>
            <td>귀하가 제공하는 위치정보 및 상태정보를 기반으로 주변 도시, 액티비티, 식당 등의 여행 정보 및 맞춤형 컨텐츠 제공</td>
            <td>서비스 제공에 필요한 경우에 한해 임시로 보유</td>
            </tr>
            </tbody>
            </table></div>
    
            <p>2.개인위치정보 수집·이용·제공사실 확인자료의 보유근거 및 보유기간</p>
            <p>당사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 따라 위치정보 이용 및 제공사실 확인자료를 자동으로 기록 및 보존하며, 해당 자료는 6개월 이상 보관합니다.</p>
            <p>3.개인위치정보의 파기 절차 및 방법</p>
            <p>당사는 개인위치정보의 이용 또는 제공목적을 달성한 때에는 제3항의 위치정보 이용·제공사실 확인자료를 제외한 개인위치정보를 즉시 파기합니다. 다만, 다른 법률에 따라 보유하여야 하거나 귀하가 개인위치정보의 보유에 별도로 동의한 경우에는 이용자가 동의한 때로부터 최대 1년간 이를 보유할 수 있습니다.</p>
            <p>4.개인위치정보의 제3자 제공에 관한 사항</p>
            <p>당사는 귀하의 개인위치정보를 귀하의 동의 없이 제3자에게 제공하지 않습니다. 만약 당사가 개인위치정보를 귀하가 지정하는 제3자에게 제공하는 경우에는 제공받는 자 및 제공목적을 사전에 귀하에게 고지하고 동의를 받습니다.</p>
            <p>5.8세 이하의 아동등의 보호의무자의 권리</p>
            <p>다음 각호의 1에 해당하는 자(“8세 이하의 아동등”)의 보호의무자가 8세 이하의 아동등의 생명 또는 신체의 보호를 위하여 8세 이하의 아동등의 개인위치정보의 수집, 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.</p>
            <p>1） 8세 이하의 아동</p>
            <p>2） 피성년후견인</p>
            <p>3） 장애인복지법 제2조 제2항 제2호의 규정에 의한 정신적 장애를 가진 자로서 장애인고용촉진 및 직업재활법 제2조 제2호의 규정에 의한 중증장애인에 해당하는 자(장애인복지법 제32조의 규정에 의하여 장애인등록을 한 자에 한합니다)</p>
            <p>-&nbsp;8세 이하의 아동등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용에 동의하고자 하는 보호의무자는 (보호의무자임을 증명하는) 입증서류를 해당 동의서에 첨부하여 당사에 제출하여야 합니다.</p>
            <p>-&nbsp;8세 이하의 아동등을 위하여 개인위치정보의 이용 또는 제공에 동의하는 보호의무자에게는 개인정보주체에게 부여되는 모든 권리가 부여됩니다.</p>
            <p>6.개인위치정보의 보호업무 및 고충사항을 처리하는 부서의 명칭과 연락처</p>
            <p>당사의 개인정보 팀이 위치정보의 관리에 관한 업무 또한 담당합니다.</p>
            <p><strong>개인정보의 처리 및 보유 기간</strong></p>
            <ul>
            <li><p>당사가&nbsp;수집한&nbsp;개인정보&nbsp;및&nbsp;기타&nbsp;정보는 당사의&nbsp;서버&nbsp;또는&nbsp;타사&nbsp;서비스&nbsp;제공자의&nbsp;서버로&nbsp;전송, 처리&nbsp;및&nbsp;저장될&nbsp;수&nbsp;있습니다. 귀하의 개인정보는&nbsp;귀하의 회원가입 기간 동안(즉,&nbsp;귀하가 Roogle 계정을 유지하는 동안)보관되며,&nbsp;귀하로부터 유효한 삭제 요청을 받은 후 지체 없이 삭제됩니다.&nbsp;단,&nbsp;(i) 당사의 서비스 관련 계약상 의무의 이행을 위해 개인정보의 보유가 필요한 경우,&nbsp;또는 (ii) 다른 법률의 규정에 따라 개인정보의 보유가 필요한 경우는 예외로 합니다.&nbsp;당사는&nbsp;다음과 같이&nbsp;법률&nbsp;및&nbsp;관련규정에&nbsp;따라&nbsp;개인정보의&nbsp;보존기간을&nbsp;일정&nbsp;기간&nbsp;연장할&nbsp;수&nbsp;있습니다.</p></li>
            <li><p>계약&nbsp;및&nbsp;청약&nbsp;철회에&nbsp;관한&nbsp;기록&nbsp;: 5년(전자상거래등에서의 소비자보호에 관한 법률)</p></li>
            <li><p>대금결제 및 재화 등의&nbsp;공급에&nbsp;관한&nbsp;기록&nbsp;: 5년(전자상거래등에서의 소비자보호에 관한 법률)</p></li>
            <li><p>소비자의&nbsp;불만&nbsp;또는 분쟁처리에&nbsp;관한&nbsp;기록&nbsp;: 3년(전자상거래등에서의 소비자보호에 관한 법률)</p></li>
            <li><p>로그인&nbsp;기록&nbsp;: 3개월(통신비밀보호법)</p></li>
            </ul>
            <p><strong>개인정보의 파기 절차 및 방법에 관한 사항</strong></p>
            <ul>
            <li><p>당사는 귀하로부터 유효한 삭제 요청을 받거나 개인정보가 더 이상 그 수집목적을 위해 필요하지 않게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.</p></li>
            <li><p>귀하로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는,&nbsp;해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.</p></li>
            <li><p>개인정보 파기의 절차 및 방법은 다음과 같습니다.</p></li>
            </ul>
            <p>&nbsp;1) 파기절차</p>
            <p>&nbsp;&nbsp;당사는 파기 사유가 발생한 개인정보를 선정하고,&nbsp;당사의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.</p>
            <p>&nbsp;2) 파기방법</p>
            <ul>
            <li><p>당사는 귀하의 개인정보를 복구불가능하게 익명화하여,&nbsp;시간,&nbsp;비용,&nbsp;기술 등을 합리적으로 고려할 때 다른 정보를 사용하여도 더 이상 개인을 식별할 수 없도록 합니다.</p></li>
            <li><p>&nbsp;만일 당사가 분석연구 목적이나 트렌드&nbsp;분석을 위하여 귀하의 정보를 사용하고자 할 경우,&nbsp;이를 익명화하거나 합산하여&nbsp;집계하기&nbsp;위해&nbsp;노력하겠습니다.</p></li>
            <li><p>당사는 관련 법률&nbsp;및&nbsp;규정에&nbsp;따라&nbsp;적절한&nbsp;물리적, 전자적&nbsp;및&nbsp;조직적&nbsp;절차를&nbsp;유지하여&nbsp;개인정보&nbsp;및&nbsp;기타&nbsp;정보가&nbsp;본&nbsp;개인정보&nbsp;처리방침에&nbsp;따라&nbsp;안전하게&nbsp;처리되게&nbsp;하고&nbsp;무단&nbsp;접근,&nbsp;변조, 유출&nbsp;또는&nbsp;파기로부터 정보를 보호할 수 있도록 노력할 것입니다.</p></li>
            <li><p>당사는 귀하의 정보를&nbsp;취득한&nbsp;후&nbsp;엄격한&nbsp;절차와&nbsp;보안기능을&nbsp;사용하여&nbsp;무단&nbsp;접근을&nbsp;방지하기 위해 노력할 것입니다. 당사는&nbsp;귀하가&nbsp;제공한&nbsp;개인정보가&nbsp;항상&nbsp;안전하게&nbsp;보호될&nbsp;것이라는&nbsp;어떠한&nbsp;진술,&nbsp;보증 또는 보장도&nbsp;제공하지&nbsp;않습니다.&nbsp;당사가 그 의무를 모두 이행하였을 경우에는, 당사는 어떠한 경우에도 귀하의 개인정보에 대한 무단접속 또는 이용으로 인하여 귀하에게 발생할 수 있는 손실,&nbsp;손해,&nbsp;비용,&nbsp;지출에 대하여 일절 책임지지 않습니다.&nbsp;</p></li>
            <li><p>당사&nbsp;또는&nbsp;당사가 선택한&nbsp;결제처리서비스&nbsp;제공업체가&nbsp;수행하는&nbsp;모든&nbsp;결제거래는&nbsp;온라인&nbsp;암호화&nbsp;기술을&nbsp;사용하여&nbsp;암호화됩니다. 귀하는&nbsp;선택한&nbsp;암호를&nbsp;기밀로&nbsp;유지하고&nbsp;이를 제3자와 공유하지&nbsp;않을&nbsp;책임이&nbsp;있습니다.</p></li>
            </ul>
           
            <p><strong>귀하의&nbsp;권리</strong></p>
            <ul>
            <li><p>귀하(및&nbsp;귀하의&nbsp;법정대리인)는&nbsp;언제든지&nbsp;사용자&nbsp;포털의&nbsp;"내&nbsp;계정"에서&nbsp;Roogle 플랫폼을&nbsp;통해&nbsp;귀하의 개인정보를 열람, 수정&nbsp;또는&nbsp;삭제할&nbsp;수&nbsp;있습니다. 또는&nbsp;audco14@travel.com으로&nbsp;전자우편을 보내&nbsp;정보 열람, 수정&nbsp;또는&nbsp;삭제를 요청할&nbsp;수&nbsp;있습니다.</p></li>
            <li><p>적용 법령에서 요구되는 경우,&nbsp;귀하는 개인정보처리 제한을 요청하거나 audco14@travel.com으로&nbsp;귀하의 요청이나 이의신청 내용을 담은 전자우편을 보내 개인정보처리에 이의를 제기할 수 있습니다. 또한&nbsp;귀하는 audco14@travel.com으로&nbsp;전자우편을&nbsp;보내&nbsp;당사가 보유 중인 귀하의 정보의 사본을&nbsp;요청할&nbsp;수&nbsp;있습니다.</p></li>
            <li><p>귀하의 개인정보처리와&nbsp;관련하여&nbsp;불만사항이&nbsp;있으실 경우,&nbsp;하단에&nbsp;표시된&nbsp;연락처를&nbsp;통해&nbsp;연락주시기&nbsp;바랍니다.</p></li>
            <li><p>당사는&nbsp;상기&nbsp;요청을&nbsp;처리할&nbsp;때&nbsp;요청자의&nbsp;본인 확인을 위해 신원을&nbsp;확인할&nbsp;수&nbsp;있는&nbsp;권리가 있습니다.</p></li>
            </ul>
         
            <p>최종 개정일 : 2023년&nbsp;11월&nbsp;16일</p>
        </div>
  
    </main>
    </div>
    
    <%@ include file = "./footer.jsp" %>
</body>
</html>