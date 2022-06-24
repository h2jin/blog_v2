<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

	<div style="height:480px">
		<main class="row d-flex p-5 justify-content-center">
		<c:forEach var="board" items="${boards.content}">
			<nav>
			<div class="card">
				  <div class="card-body bg-secondary text-center" style="height:50px">
				    <h5 class="ID fs-3">${board.id}</h5>
				  </div>
				</div>
				<div class="card m-3" style="width:500px">
			  	<div class="card-img-overlay">
			    <h4 class="card-title">${board.title}</h4>
			    <div style="height:250px">
			    	<p class="card-text" >${board.content}</p>
			    </div>
			    <a href="/board/${board.id}" class="btn btn-info">전체 보기</a>
			  </div>
			</div>
			</nav>
		
		</c:forEach>
		</main>
	</div>
	
	<ul class="pagination justify-content-center">
	  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	  <li class="page-item"><a class="page-link" href="#">Next</a></li>
	</ul>
		
<script>

</script>	
	

<%@ include file="layout/footer.jsp" %>
