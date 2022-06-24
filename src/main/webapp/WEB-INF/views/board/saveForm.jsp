<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
    <meta charset="UTF-8">
    <title>Summernote with Bootstrap 4</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <main class="container p-3">
    <div class="form-group">
	  <label for="usr">Title:</label>
	  <input type="text" class="form-control" id="title">
	</div>
    <textarea class="summernote" id="content"></textarea>
    <div class="m-2">
    <button type="button" onclick="save()" class="btn btn-info" id="btn-save">발행하기</button>
    </div>
    </main>
    <script>
    	function save() {
    		let title = document.querySelector("#title").value;
    		let content = document.querySelector("#content").value;
    		
    		console.log(title);
    		console.log(content);
    		
    		let data = {
    			title: title,
    			content: content
    		}
    		
    		fetch("/board/save", {
    			method: "post",
    			headers: {
    				"content-type" : "application/json; charset=utf-8"
    			},
    			body: JSON.stringify(data)
    		}).then(res => res.text())
    		.then(res => {
    			if(res == "ok") {
    				alert("저장 완료");
    				location.href = "/";
    			} else {
    				alert("저장 실패")
    			}
    		});
    		
    	}
    
      $('.summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 350
      });
    </script>
<%@ include file="../layout/footer.jsp" %>