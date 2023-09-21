<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Janies" %>
<%@ page import="java.sql.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>詳細</title>
<!-- Bootstrap CSSをリンク -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%
    Janies janies = (Janies) request.getAttribute("janies");
    %>
<div class="container mt-4">
    <h1 class="mb-4">詳細</h1>

    <form action="JaniesServlet" method="post">
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="text" name="id" class="form-control" value="<%= janies != null ? janies.getId() : "" %>" readonly>
        </div>

        <div class="form-group">
            <label for="name">名前:</label>
            <input type="text" name="name" class="form-control" value="<%= janies != null ? janies.getName() : "" %>" required>
        </div>

        <div class="form-group">
            <label for="birthday">生年月日:</label>
            <input type="date" name="birthday" class="form-control" value="<%= janies != null ? janies.getBirthday() : "" %>">
        </div>

        <div class="form-group">
            <label for="joinDate">入学日:</label>
            <input type="date" name="joinDate" class="form-control" value="<%= janies != null ? janies.getJoinDate() : "" %>">
        </div>

        <div class="form-group">
            <label for="homeTown">出生地:</label>
            <input type="text" name="homeTown" class="form-control" value="<%= janies != null ? janies.getHomeTown() : "" %>">
        </div>

        <div class="form-group">
            <label for="bloodType">血液型:</label>
            <input type="text" name="bloodType" class="form-control" value="<%= janies != null ? janies.getBloodType() : "" %>">
        </div>

        <div class="form-group">
            <label for="age">年齢:</label>
            <input type="number" name="age" class="form-control" value="<%= janies != null ? janies.getAge() : "" %>">
        </div>

        <div class="form-group">
            <label for="memberColor">メンバーカラー:</label>
            <input type="text" name="memberColor" class="form-control" value="<%= janies != null ? janies.getMemberColor() : "" %>">
        </div>

        <button type="submit" class="btn btn-primary">更新</button>
        <button type="submit" name="delete" class="btn btn-danger">削除</button>
    </form>
</div>

<!-- Bootstrap JavaScriptをリンク -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
