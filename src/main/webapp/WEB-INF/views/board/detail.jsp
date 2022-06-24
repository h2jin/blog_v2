<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
	<main class= "container p-5">
		
		<div>
			<h1 class = "m-2">${board.title}</h1>
			<h7 class = "m-2">발행일자 : <i>${board.createtime}</i></h7>
			<h7 class = "m-2">조회수 : <i>${board.readcount}</i></h7>
		</div>
			<hr/>
			<div style="height:320px" >
				<h5>${board.content}</h5>
			</div>
			<div class="float-right">
				<a class="btn btn-success" href="/updateForm/${board.id}">수정</a>
				<a class="btn btn-secondary" onclick="delete(${board.id})" >삭제</a>
			</div>

	</main>
	
<script>
	function delete(id) {
		fetch("/board/" + id, {
			method: "delete"
		}).then(res => res.text())
		.then(res => {
			if(res == "ok") {
				alert("삭제 성공");
				location.href = "/";
			} else {
				alert("삭제 실패");
			}
		});
	}
</script>	
	
<%@ include file="../layout/footer.jsp" %>
