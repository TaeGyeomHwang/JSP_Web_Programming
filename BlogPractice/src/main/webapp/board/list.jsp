<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
List boardList = (List) request.getAttribute("boardlist");
int total_record = ((Integer) request.getAttribute("total_record")).intValue();
int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
int total_page = ((Integer) request.getAttribute("total_page")).intValue();
%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/styles.css" />
<title>Board</title>
<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인 해주세요.");
			return false;
		}

		location.href = "./BoardWriteForm.do?id=<%=sessionId%>"
	}
</script>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="container">
		<form action="<c:url value="./BoardListAction.do"/>" method="post">
			<div style="padding-top: 50px">
				<table class="table table-hover table-light align-middle">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회</th>
						<th>글쓴이</th>
					</tr>
					<%
					for (int j = 0; j < boardList.size(); j++) {
						BoardDTO notice = (BoardDTO) boardList.get(j);
					%>
					<tr>
						<td><%=notice.getNum()%></td>
						<td><a
							href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a></td>
						<td><%=notice.getRegist_day()%></td>
						<td><%=notice.getHit()%></td>
						<td><%=notice.getName()%></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
			<div align="center">
				<c:set var="pageNum" value="<%=pageNum%>" />
				<c:forEach var="i" begin="1" end="<%=total_page%>">
					<a href="<c:url value="./BoardListAction.do?pageNum=${i}" /> ">
						<c:choose>
							<c:when test="${pageNum==i}">
								<font color='4C5317'><b> [${i}]</b></font>
							</c:when>
							<c:otherwise>
								<font color='4C5317'> [${i}]</font>

							</c:otherwise>
						</c:choose>
					</a>
				</c:forEach>
			</div>
			<div align="left">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; <select
							name="items" class="txt">
								<option value="subject">제목으로</option>
								<option value="content">본문으로</option>
								<option value="name">글쓴이로</option>
						</select> <input name="text" type="text" /> <input type="submit"
							id="btnAdd" class="btn btn-outline-primary " value="SEARCH " />
						</td>
						<td width="100%" align="right"><a href="#"
							onclick="checkForm(); return false;"
							class="btn btn-outline-primary text-uppercase">write</a></td>
					</tr>
				</table>
			</div>
		</form>
		<hr>
	</div>
</body>
</html>





