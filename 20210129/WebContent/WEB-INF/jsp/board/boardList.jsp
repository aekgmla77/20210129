<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<style type="text/css">
tr.row:hover {
	background-color: lightblue
}
</style> 
<!-- 글 상세보기 시 post 방법으로 데이터 전달 -->    
<script type="text/javascript">
	function formSubmit(str){
		frm.bId.value=str;
		frm.submit();
	}
</script>    

<jsp:include page="../main/menu.jsp" />

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">
<div align="center">
	<div><h1>게시글 목록</h1></div>
	<div>
		<form class="rr" id="frm" name="frm" action="boardView.do" method="post">
			<input type="hidden" id="bId" name="bId">
		</form>
	</div>
	<div>
		<table border="1">
			<tr>
				<th width="100">글 번호</th>
				<th width="200">제 목</th>
				<th width="150">작성자</th>
				<th width="150">작성일자</th>
				<th width="100">조회수</th>
			</tr>
			<c:choose>
			<c:when test="${empty list }">
				<tr><td align="center" colspan="5">게시글이 없습니다.</td></tr>
			</c:when>
			<c:when test="${not empty list }">
				<c:forEach var = "vo" items="${list }">
					<tr class="row" onclick="formSubmit(${vo.bId })">
						<td align="center">${vo.bId }</td>
						<td>&nbsp;${vo.bTitle }</td>
						<td align="center">${vo.bName }</td>
						<td align="center">${vo.bDate }</td>
						<td align="center">${vo.bHit }</td>
					</tr>
				</c:forEach>
			</c:when>
			</c:choose>			
		</table>
	</div><br/>
	<div>
		<button type="button" onclick="location.href='boardForm.do'">새 글 등록</button>&nbsp;&nbsp;
	</div>
</div>
</div>
</body>
</html>