<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.Arrays,
                     java.util.HashMap,
                     java.util.HashSet,
                     java.util.Map"
%>

<%
    HashMap<String, String> morphDB = new HashMap<>();
    HashMap<String, Integer> duplicateMap = new HashMap<>();

    String TextTest1;
    String TextTest2;
    int uniqueCount = 0;

    // 기본 모프 설정 2의 제곱으로 범위가 증가
    // normal = llccssppttaa

    // 모프 개인 DB
    String[] lily = {"ll","Ll","LL"}; // 2
    String[] caphu = {"cc","Cc","CC"}; // 4
    String[] sable = {"ss","Ss","SS"}; // 8
    String[] panthom = {"pp","Pp","PP"}; // 16
    String[] thyo = {"tt","Tt", "TT"}; // 32
    String[] azantic = {"aa","Aa","AA"}; // 64

    // 모프네임 DB
    String[] lilyN = {"","릴리","슈퍼릴리"};
    String[] caphuN = {"","카푸","슈퍼카푸"};
    String[] sableN = {"","세이블","슈퍼세이블"};
    String[] panthomN = {"","헷팬텀","팬텀"};
    String[] thyoN = {"","헷초초","초초"};
    String[] azanticN = {"","헷아잔틱","아잔틱"};

    // name + code
    String[][] fullName = new String[729][6];
    String[][] fullCode = new String[729][6];

    int full_Num = 0;

    for (int aa = 0; aa < 3; aa++) {
        String aN = lilyN[aa];
        String a = lily[aa];
        for (int bb = 0; bb < 3; bb++) {
            String bN = caphuN[bb];
            String b = caphu[bb];
            for (int cc = 0; cc < 3; cc++) {
                String cN = sableN[cc];
                String c = sable[cc];
                for (int dd = 0; dd < 3; dd++) {
                    String dN = panthomN[dd];
                    String d = panthom[dd];
                    for (int ee = 0; ee < 3; ee++) {
                        String eN = thyoN[ee];
                        String e = thyo[ee];
                        for (int ff = 0; ff < 3; ff++) {
                            String fN = azanticN[ff];
                            String f = azantic[ff];

                            fullCode[full_Num] = new String[] { a, b, c, d, e, f };
                            fullName[full_Num] = new String[] { aN, bN, cN, dN, eN, fN };
                            morphDB.put(Arrays.toString(fullCode[full_Num]), Arrays.toString(fullName[full_Num]));
                            full_Num++;
                        }
                    }
                }
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크레스티드게코 모프 계산기</title>
<link rel="Stylesheet" type ="text/css"  href="./../CSS/KinshipCoefficientCalculator.css">
</head>

<body>
<form action = "./morph_Col_Result.jsp" method = "post">
<div id = "all">
<div class = "head">
	<h1>Crested Gecko Morph Calculator</h1>
	<h4>크레스티드게코의 모프 발현확률을 계산할 수 있습니다.</h4>
</div>

<div id = "wrapper">
<div class="select" id="select">
<label for="select1"><h3>부모1의 모프를 선택해주세요:</h3></label>
	
   <select id = "select1" name = "select1" class = "custom-select">
       <%-- HashMap의 값을 출력하기 위해 키-값 쌍을 순회 --%>
        <% for (Map.Entry<String, String> entry : morphDB.entrySet()) { %>
            <%-- 값에서 [와]를 없애고 출력 --%>
            <% 
                String value = entry.getValue().replace("[", "").replace("]", "").replace(",", "");
            	String select1 = entry.getValue();
                // 값이 비어 있다면 "노말"로 대체
                if (value.trim().isEmpty()) {
                    value = "노말";
                }
            %>
            <option value="<%= select1 %>"><%= value %></option>
        <% } %>
    </select>
    
<label for="select2"><h3>부모2의 모프를 선택해주세요:</h3></label>    
    <select id = "select2" name = "select2" class = "custom-select">
        <%-- HashMap의 값을 출력하기 위해 키-값 쌍을 순회 --%>
        <% for (Map.Entry<String, String> entry : morphDB.entrySet()) { %>
            <%-- 값에서 [와]를 없애고 출력 --%>
            <% 
                String value = entry.getValue().replace("[", "").replace("]", "").replace(",", "");
            	String select2 = entry.getValue();
                // 값이 비어 있다면 "노말"로 대체
                if (value.trim().isEmpty()) {
                    value = "노말";
                }
            %>
            <option value="<%= select2 %>"><%= value %></option>
        <% } %>
    </select>
    <br><br>
     <button type = "submit" class = "btn">계산하기</button>
     </div> 
     </div>
     </div>
     </form>  
</body>
</html>
