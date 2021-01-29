<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../main/menu.jsp" />

<!-- Page content -->
<div class="w3-content" style="max-width: 2000px; margin-top: 46px">

<div align="center">
	<div>
		<h1>새 글 등록</h1>
	</div>

	<form id="frm" name="frm" action="boardInsert.do" method="post">
		<table border="1">
			<tr>
				<th width="120">작성자</th>
				<td width="70"><input type="text" id="bName" name="bName"
					size="30" required="required"></td>
				<th width="100">작성일자</th>
				<td width="100"><input type="date" id="bDate" name="bDate"
					size="30" required="required"></td>
			</tr>
			<tr>
				<th width="100">제 목</th>
				<td colspan="5"><input type="text" id="bTitle" name="bTitle"
					size="63" required="required"></td>
			</tr>
			<tr>
				<th width="100">내 용</th>
				<td colspan="5"><textarea id="bContent" name="bContent"
						rows="7" cols="95" style="margin: 0px; width: 523px; height: 276px;" required="required"></textarea></td>
			</tr>
		</table>
		<div>
			<br />
			<button type="submit">등록</button>
			&nbsp;&nbsp;&nbsp;
			<button type="reset">취소</button>
			&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='boardList.do'">목록</button>
		</div>
	</form>
</div>
<div>
</div>
</div>
</body>
</html>