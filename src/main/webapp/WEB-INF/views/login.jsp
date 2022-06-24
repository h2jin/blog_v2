<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
	<main class="container p-5">
	<form>
  <div class="form-group">
    <label for="name">Name(이름) :</label>
    <input type="name" class="form-control" placeholder="Enter name" id="name">
  </div>
  <div class="form-group">
    <label for="pwd">Password(비밀번호) :</label>
    <input type="password" class="form-control" placeholder="Enter password" id="password">
  </div>
</form>
<button type="button" onclick="login()" class="btn btn-primary" id="btn-login">로그인</button>
</main>
<br/>
<script>
	function login() {
		let data = {
			name: $("#name").val(),
			password: $("#password").val()
		}
		
		$.ajax({
			type: "POST",
			url: "/api/user/login",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
		}).done(function (data, textStatus, xhr){
			console.log(data);
			console.log(textStatus);
			console.log(xhr);
			alert("로그인 성공")
			location.href= "/";
		}).fail(function(error) { 
			alert("로그인 실패")
			console.log(error);
		});
		
	}
</script>
<%@ include file="layout/footer.jsp" %>