<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<jsp:include page="../main/menu.jsp" />

<!-- Page content -->
<div class="w3-content" style="max-width: 2000px; margin-top: 46px">
<div align="center">
	<div><h1>게시글 수정 화면</h1></div>
	<div>
	<form id="frm" name="frm" action="boardUpdate.do" method="post">
	<input type="hidden" id="bId" name="bId" value="${vo.bId }">
		<table border="1">
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
					<textarea id="bContent" name="bContent" rows="7" cols="100" style="margin: 0px; width: 545px; height: 276px;">${vo.bContent }</textarea></td>
			</tr>	
		</table>
		<div><br/>
			<button type="submit">수정</button>&nbsp;&nbsp;&nbsp;
			<button type="reset">취소</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='boardList.do'">목록</button>
		</div>
	</form>
	</div>
</div>
</div>
</body>
</html>