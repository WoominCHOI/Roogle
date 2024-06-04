<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<% request.setCharacterEncoding("utf-8"); %>
<%

	String parent1 = request.getParameter("select1");
	String parent2 = request.getParameter("select2");
		
    // 확인이 완료된 부모의 code 값
    String[] TextTest1_Result = new String[6];
    String[] TextTest2_Result = new String[6];
    
    // 결과 매치 알고리즘 부 & 모

	//부모 유전자코드 1
    TextTest1 = parent1;
    for (int i = 0; i < morphDB.size(); i++) {
        if (TextTest1.equals(morphDB.get(Arrays.toString(fullCode[i])))) {
            TextTest1_Result = fullCode[i];
        } else {
        }
    }
	
	//부모 유전자코드 2
    TextTest2 = parent2;
    for (int i = 0; i < morphDB.size(); i++) {
        if (TextTest2.equals(morphDB.get(Arrays.toString(fullCode[i])))) {
            TextTest2_Result = fullCode[i];
        } else {
        }
    }
%>

<%
// --------------------------------------------------------------------------------------
String[][] test = new String[6][4];
char[] testC = new char[2];

try{
	for (int r = 0; r < 6; r++) {
		testC[0] = TextTest1_Result[r].charAt(0);
		testC[1] = TextTest2_Result[r].charAt(0);
		if (Character.isUpperCase(testC[1]) && Character.isUpperCase(testC[0]) == false) {
			char temp = testC[0];
			testC[0] = testC[1];
			testC[1] = temp;

		}
		test[r][0] = String.valueOf(testC);

		// 뒷자리가 대문자일 경우 앞자리와 바꾸어주는 기능 추가
		testC[0] = TextTest1_Result[r].charAt(0);
		testC[1] = TextTest2_Result[r].charAt(1);

		if (Character.isUpperCase(testC[1]) && Character.isUpperCase(testC[0]) == false) {
			char temp = testC[0];
			testC[0] = testC[1];
			testC[1] = temp;
		}
		test[r][1] = String.valueOf(testC);

		testC[0] = TextTest1_Result[r].charAt(1);
		testC[1] = TextTest2_Result[r].charAt(0);

		if (Character.isUpperCase(testC[1]) && Character.isUpperCase(testC[0]) == false) {
			char temp = testC[0];
			testC[0] = testC[1];
			testC[1] = temp;
		}
		test[r][2] = String.valueOf(testC);

		testC[0] = TextTest1_Result[r].charAt(1);
		testC[1] = TextTest2_Result[r].charAt(1);

		if (Character.isUpperCase(testC[1]) && Character.isUpperCase(testC[0]) == false) {
			char temp = testC[0];
			testC[0] = testC[1];
			testC[1] = temp;
		}
		test[r][3] = String.valueOf(testC);
	}
}catch(NullPointerException e){}


// for문 4개짜리로 변경 4096개 대조테이블
String[][] contrastTable = new String[4096][6];

for (int aa = 0; aa < 4; aa++) {
    String a = test[0][aa];
    for (int bb = 0; bb < 4; bb++) {
        String b = test[1][bb];
        for (int cc = 0; cc < 4; cc++) {
            String c = test[2][cc];
            for (int dd = 0; dd < 4; dd++) {
                String d = test[3][dd];
                for (int ee = 0; ee < 4; ee++) {
                    String e = test[4][ee];
                    for (int ff = 0; ff < 4; ff++) {
                        String f = test[5][ff];
                        // 현재 조합을 문자열로 만들어 HashMap에 추가 (중복 확인 및 카운트)
                        String[] combination = { a, b, c, d, e, f };
                        String combinationStr = Arrays.toString(combination);

                        // HashMap에 이미 있는지 확인
                        if (duplicateMap.containsKey(combinationStr)) {
                            int count = duplicateMap.get(combinationStr);
                            duplicateMap.put(combinationStr, count + 1);
                        } else {
                            // 처음 등장하는 경우: HashMap에 추가하고 유일한 조합으로 카운트
                            duplicateMap.put(combinationStr, 1);
                            uniqueCount++;
                        }
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
<title>모프 계산 결과</title>
<link rel="Stylesheet" type ="text/css"  href="./../CSS/mor_Result.css">
</head>
<body>
<div id = "all">
<div class = "sort">발현 가능한 모프 수 : &nbsp;<%=uniqueCount %></div>
<div id = "wrapper">

<div id="resultContainer">
<%
int lineCount = 0;
for (Map.Entry<String, Integer> entry : duplicateMap.entrySet()) {
    if (entry.getValue() > 1) {
        try {
            double percentage = (entry.getValue() * 100.0) / 4096.0;
            String id = "line" + lineCount;
            String content = "";
            if (morphDB.get(entry.getKey()).equals("[, , , , , ]")) {
                content = "<div>" + (lineCount+1) + ". 노말 : " + percentage + "%</div>";
            } else {
                content = "<div>"+ (lineCount+1) + ".  "+ morphDB.get(entry.getKey()).replace("[", "").replace("]", "").replace(",", "") + " : " + percentage + "%</div>";
            }
%>
            <!-- 각 라인을 감싸는 div -->
            <div id="<%=id %>" class="lineContainer">
                <%= content %>
            </div>
<%
            lineCount++;
        } catch(NullPointerException e) {}
    }
}
%>
</div>
</div>
</div>
</div>
</body>
<script>

function fadeInLines() {
    var lines = document.querySelectorAll('.lineContainer');
    var delay = 50;
    lines.forEach(function(line, index) {
        setTimeout(function() {
            line.style.opacity = 1;
        }, index * delay);
    });
}

window.onload = function() {
    fadeInLines();
};
</script>
</html>