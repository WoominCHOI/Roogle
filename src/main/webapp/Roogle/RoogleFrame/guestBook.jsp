<%@page import="Roogle.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Roogle.boardDAO"%>
<%@page import="Roogle.Roogle_DAO"%>
<%@page import="Algorithm.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "boardDAO" class = "Roogle.boardDAO"/>
<jsp:useBean id = "boardDTO" class = "Roogle.boardDTO"/>
<%
	String vId = "";
	String vName = "";

	if(session.getAttribute("user_id") != null){
		vId = (String)session.getAttribute("user_id");
		LoginDAO loginDAO = new LoginDAO();
		vName = loginDAO.mLoginAPI(vId).getName();
	}
	
	int vno , vread;
	String vtitle, vwriter, vlog;
%>

<%@page import="Roogle.DbSet"%>

<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException ,
				java.sql.PreparedStatement , java.sql.ResultSet"
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>고객게시판</title>
    <link rel = "stylesheet" href="./../CSS/myService.css">
</head>
<body>
<%@ include file = "./header.jsp" %>
<!-- mSelect 글보기 guestBookSelect jsp 이동  -->
<form method = "post" action = "./guestBookSelect.jsp">
		<input type = "hidden" id = "attr" value = "" name = "bod_no">
</form>

<!-- mSub 글 등록 guestBookWrite jsp 이동  -->
<form method = "post" action = "./guestBookWrite.jsp">
	<input type = "hidden" name = "user_id" value = "<%=vId %>">
	<input type = "hidden" name = "user_name" value = "<%=vName %>">
</form>

    <form action ="#">
     <div id = "wrapper">
    
        <main class="Guestmain">
            <section class = "sideba">
                <form action="#">
                    <br>
                    <a href="./guestBook.jsp">게시판</a><br><br>       
                    <a href="./service.jsp">개인정보처리방침</a> <br><br>            
            	</form>
            </section>

            <div class="Guestframe">
                <h1 id="">게시판</h1>
                <div style="height:20px"></div>
                <h4>게시글 목록</h4>
                <div style="height:10px"></div>
                <hr>
                <div id="Guest_Menu">
                	<div class="gsNo">글번호</div>
                    <div class="gsTit">제목</div>
                    <div class="gsPer">작성자</div>
                    <div class="gsDat">작성일</div>
                    <div class="gsCnt">조회수</div>
                </div>
		<%
		boardDAO bodDAO = new boardDAO();
		ArrayList<boardDTO> dtoL = bodDAO.bodSelect();
		
	    int vNo, vCnt;
	    String vSubject, vWriter, vTime, vIp;
	    
	    if(dtoL!=null){
	    	int totalRecord = dtoL.size();
	    	int recPerPage = 10;			// 페이지당 보여질 레코드 수
	    	int pagePerBlock = 10;		// 블럭당 보여질 메시지
	    	
	    	int totalPage = (int)Math.ceil((double)totalRecord / recPerPage);	// 총 페이지 수
	    	int totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);	// 총 블럭 수
	    	
	    	int nowPage = 0;			// 현재 페이지 위치
	    	int nowBlock = 0;		// 현재 블럭 위치
	    
	  	 	// nowPage, nowBlock 값을 다시 받아오기!
	   	
	   	if (request.getParameter("nowPage") != null){
	   		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	   	}
	   	if (request.getParameter("nowBlock") != null){
	   		nowBlock = Integer.parseInt(request.getParameter("nowBlock"));
	   	}
	   	
	   	int recOfBeginPage = nowPage * recPerPage;
	   	int pageOfBeginBlock = nowBlock * pagePerBlock;
	   	
	   	for(int i = recOfBeginPage; i < recOfBeginPage + recPerPage; i++){
	   		if(i >= totalRecord){
	   			break;
	   		}
	   		
	   		boardDTO dto = (boardDTO)dtoL.get(i);
	   		vno = dto.getBod_no();
			vtitle = dto.getBod_title();
			vwriter = dto.getBod_writer();
			vlog = dto.getBod_write_time();
			vread = dto.getBod_readcnt();
	  
	    %>
			<div class="guestList" onClick = "mSelect(<%=vno%>)">
	          	<div class="gsNo"><%=vno %></div>
	            <div class="gsTit"><%=vtitle %></div>
	            <div class="gsPer"><%=vwriter %></div>
	            <div class="gsDat"><%=vlog %></div>
	            <div class="gsCnt"><%=vread %></div>
            </div>			
		<%
		}
		%>
		<div style="height:40px"></div>
		<div class="center">
			<div class="pagination">
			<%
			if(nowBlock != 0) {
			%>
				<div id = "pageLeft">
					<a href="guestBook.jsp?nowBlock=<%=nowBlock-1 %>&nowPage=<%=(nowBlock-1)*pagePerBlock %>"> ◀</a>
				</div>
			<%
			} else {
			%>
				<div id = "pageLeft"></div>
			<%
			}
			%>
			
			<%
			for(int idx1 = pageOfBeginBlock; idx1 < pageOfBeginBlock + pagePerBlock; idx1++){
				%>
				<div class="pageNum">
					<a href="guestBook.jsp?nowBlock=<%=nowBlock %>&nowPage=<%=idx1 %>" onclick="mFocus()" class="page"><%=idx1 + 1 %></a>
				</div>
				<%
				if(idx1 + 1 == totalPage){
					break;
				}
			}
			%>
			
			<%
			if(nowBlock + 1 < totalBlock){
			%>
				<div id = "pageRight">
					<a href="guestBook.jsp?nowBlock=<%=nowBlock+1 %>&nowPage=<%=(nowBlock+1)*pagePerBlock %>"> ▶</a>
				</div>
			<%
			} else {
			%>
				<div id = "pageRight"></div>
			<%
			}
	    }
		%>
		</div>
	</div>
           
    </div>
    </main>
    </div>
    </form>
        
	<%@ include file = "./footer.jsp" %>
</body>
<script type = "text/javascript">
	function mSub(id){
		if(id != ""){
			document.getElementsByTagName("form")[2].submit();
		} else {
			alert("로그인 후 글작성 가능하십니다");
		}
	}
	
	function mSelect(bod_no){
		document.getElementById("attr").value = bod_no;
		document.getElementsByTagName("form")[1].submit();
	}
</script>
</html>