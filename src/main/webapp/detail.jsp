<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Janies" %>
<%@ page import="java.sql.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>詳細</title>
</head>
<body>
    <%
    Janies janies = (Janies) request.getAttribute("janies");
    %>
    <form action="JaniesServlet" method="post">
        <label for="name">ID:</label>
        <input type="text" name="id" value="<%= janies != null ? janies.getId() : "" %>" readonly><br>

        <label for="name">名前:</label>
        <input type="text" name="name" value="<%= janies != null ? janies.getName() : "" %>" required><br>

        <label for="birthday">生年月日:</label>
        <input type="date" name="birthday" value="<%= janies != null ? janies.getBirthday() : "" %>"><br>

        <label for="joinDate">入学日:</label>
        <input type="date" name="joinDate" value="<%= janies != null ? janies.getJoinDate() : "" %>"><br>

        <label for="birth_place">出生地:</label>
        <input type="text" name="homeTown" value="<%= janies != null ? janies.getHomeTown() : "" %>"><br>

        <label for="blood">血液型:</label>
        <input type="text" name="bloodType" value="<%= janies != null ? janies.getBloodType() : "" %>"><br>

        <label for="age">年齢:</label>
        <input type="number" name="age" value="<%= janies != null ? janies.getAge() : "" %>"><br>

        <label for="color">メンバーカラー:</label>
        <input type="text" name="memberColor" value="<%= janies != null ? janies.getMemberColor() : "" %>"><br>

        <input type="submit" value="更新">
        <input type="submit" name="delete" value="削除">
    </form>
</body>
</html>
