<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%@ page import="mvc.model.CommentDTO"%>
<%
BoardDTO notice = (BoardDTO) request.getAttribute("board");
List commentList = (List) request.getAttribute("commentlist");
int num = ((Integer) request.getAttribute("num")).intValue();
int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/styles.css" />
<title>Board</title>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<header class="masthead bg-secondary">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="site-heading">
						<h1 class="form-signin-heading ">Post</h1>
						<form name="newUpdate"
							action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
							class="form-signin subheading" method="post">
							<div class="form-group row m-3">
								<label class="col-sm-1 mb-2">Name</label> <input name="name"
									class="form-control" value="<%=notice.getName()%>">
							</div>
							<div class="form-group row m-3">
								<label class="col-sm-1 mb-2">Title</label> <input name="subject"
									class="form-control" value="<%=notice.getSubject()%>">
							</div>
							<div class="form-group row m-3">
								<label class="col-sm-1 mb-2">Content</label>
								<textarea name="content" class="form-control" cols="50" rows="5"
									style="word-break: break-all;"><%=notice.getContent()%></textarea>
							</div>
							<div class="form-group row m-3">
								<div class="col-sm-offset-4 ">
									<c:set var="userId" value="<%=notice.getId()%>" />
									<c:if test="${sessionId==userId}">
										<input type="submit" class="btn btn-success" value="UPDATE">
										<a
											href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
											class="btn btn-danger" style="text-decoration: none;">
											DELETE</a>
									</c:if>
									<a href="./BoardListAction.do?pageNum=<%=nowpage%>"
										class="btn btn-primary" style="text-decoration: none;">
										LIST</a>
								</div>
							</div>
						</form>
					</div>
					<div class="site-heading">
						<form name="newComment"
							action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
							class="form-signin subheading" method="post">
							<div class="form-group row m-3">
								<c:if test="${sessionId!=null}">
									<label class="col-sm-1 mb-2">Comment</label>
									<input name="comment" class="form-control">
								</c:if>
								<c:if test="${sessionId==null}">
									<label class="col-sm-1 mb-2">Comment</label>
									<input name="comment" class="form-control" value="댓글을 작성하려면 로그인을 해주세요!">
								</c:if>
							</div>
							<div class="form-group row m-3">
								<div class="col-sm-offset-4 ">
									<c:if test="${sessionId!=null}">
										<input type="submit" class="btn btn-success"
											value="ADD COMMENT">
									</c:if>
								</div>
							</div>
							<table
								class="table table-hover  table-light table-striped align-middle">
									<thead>
										<tr>
											<th>Names</th>
											<th>Comments</th>
										</tr>
									</thead>
									<tbody class="table-group-divider">
									<%
									for (int j = 0; j < commentList.size(); j++) {
										CommentDTO comments = (CommentDTO) commentList.get(j);
									%>

									<tr>
										<td><%=comments.getName()%></td>
										<td><%=comments.getContent()%></td>
									</tr>
									<%
									}
									%>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>