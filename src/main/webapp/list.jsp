<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Janies"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メンバー一覧</title>
</head>
<body>

	<form method="post" action="JaniesServlet">
		<label for="searchName">名前で検索：</label> <input type="text" name="searchname"> <input type="submit" value="検索">
	</form>


	<table border="1">
		<tr>
			<th>ID</th>
			<th>名前</th>
			<th>詳細</th>
		</tr>
		<%
		List<Janies> janiesList = (List<Janies>) request.getAttribute("janiesList");
		%>
		<%
		for (Janies janies : janiesList) {
		%>
		<tr>
			<td><%=janies.getId()%></td>
			<td><%=janies.getName()%></td>
			<td><a href="JaniesServlet?janies_id=<%=janies.getId()%>">詳細</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<form method="post" action="JaniesServlet">
		<input type="submit" name="register" value="新規登録">
	</form>
	<form method="post" action="JaniesServlet">
		<input type="submit" name="reset" value="リセット">
	</form>
</body>
</html>