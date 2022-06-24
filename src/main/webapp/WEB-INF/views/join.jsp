<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
	<main class="container p-5">
	<!--  <form action="/board/save" method="post">  todo 확인 -->
	<form>
  <div class="form-group">
    <label for="name">Name(이름) :</label>
    <input type="text" value="t3" class="form-control" placeholder="Enter name" id="name">
  </div>
  <div class="form-group">
    <label for="pwd">Password(비밀번호) :</label>
    <input type="password"  value="asd123" class="form-control" placeholder="Enter password" id="password">
  </div>
  <div class="form-group">
    <label for="email">Email(이메일) :</label>
    <input type="email" value="t3@naver.com" class="form-control" placeholder="Enter email" id="email">
  </div>
  <div class="form-group">
    <label for="phone">PhoneNumber(전화번호) :</label>
    <input type="number" value="010123412334" class="form-control" placeholder="Enter phone" id="phone">
  </div>
  </form>
  <button type="button" onclick="join();" class="btn btn-primary" id="btn-join">회원가입</button>

</main>
<br/>
<script>
	function join() {
		console.log("1111");
		let data = {
			name: $("#name").val(),
			password: $("#password").val(),
			email: $("#email").val(),
			phoneNumber: $("#phone").val()
		}
		
		$.ajax({
			type: "POST",
			url: "/api/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8"
		}).done(function(data, textStatus, xhr) {
			console.log(data);
			console.log(textStatus);
			console.log(xhr);
			alert("회원가입 성공")
			location.href= "/";
		}).fail(function(error) {
			console.log(error);
			alert("회원가입 실패")
		});
		
		console.log("2222");
	}
</script>
<%@ include file="layout/footer.jsp" %>