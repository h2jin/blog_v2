<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
	<main class="container p-5">
	<form action="/action_page.php">
  <div class="form-group">
    <label for="name">Name(이름) :</label>
    <input type="name" class="form-control" placeholder="Enter name" id="name">
  </div>
  <div class="form-group">
    <label for="pwd">Password(비밀번호) :</label>
    <input type="password" class="form-control" placeholder="Enter password" id="pwd">
  </div>
  <button type="submit" onclick="login()" class="btn btn-primary" id="btn-login">로그인</button>
</form>
</main>
<br/>
<script>
	function login() {
		let data = {
			name: $("#name").val(),
			password: $("#password").val()
		}
		
		
	}
</script>
<%@ include file="layout/footer.jsp" %>