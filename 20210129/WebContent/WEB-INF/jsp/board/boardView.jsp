<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
	function deleteAlert() {
		var yn = confirm("정말 삭제하시겠습니까?");
		if (yn) {
			frm.action = "boardDelete.do";
			frm.submit();
		} else {

		}
	}
</script>

<jsp:include page="../main/menu.jsp" />

<!-- Page content -->
<div class="w3-content" style="max-width: 2000px; margin-top: 46px">
	<div align="center">
		<div>
			<h1>게시글 상세화면</h1>
		</div>
		<div>
			<form id="frm" name="frm" method="post">
				<input type="hidden" id="bId" name="bId" value="${vo.bId }">
				<table border="1">
					<%-- <c:if test="${empty list }">
				<tr>
					<td width="750" align="center">존재하지 않는 글입니다.</td>
				</tr>
			</c:if> --%>
					<tr>
						<th width="100">작성자</th>
						<td width="100" align="center">${vo.bName }</td>
						<th width="100">작성일자</th>
						<td width="120" align="center">${vo.bDate }</td>
						<th width="70">조회수</th>
						<td width="70" align="center">${vo.bHit}</td>
					</tr>
					<tr>
						<th width="100">제 목</th>
						<td colspan="5">&nbsp;${vo.bTitle }</td>
					</tr>
					<tr>
						<th width="100">내 용</th>
						<td colspan="5">
						<textarea rows="6" cols="95" style="margin: 0px; width: 551px; height: 276px;">${vo.bContent }</textarea></td>
					</tr>
				</table><br />
				<div>
				<c:if test="${not empty rlist }">
					<c:forEach var = "rvo" items="${rlist }">
						<table border="1">
							<tr>
								<td width="500">${rvo.subject }</td>
								<td width="100">${rvo.rDate }</td>
							</tr>
						</table>
					</c:forEach>
				</c:if>
				</div><br/>
				<div>
					<button type="button" onclick="location.href='boardList.do'">목록</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="deleteAlert()">삭제</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button"
						onclick="location.href='boardupForm.do?row='+${param.bId}">수정</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>