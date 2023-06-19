<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<div class="container">

<div>
번호 :  <span id = "id"><i>${ board.id}</i></span>
작성자 : <span ><i>${board.user.username }</i></span>
작성일 : <span ><i>${ board.createDate}</i></span>
</div>
 <div style="position:absolute; ">
    <c:if test="${board.user.id==principal.user.id }">
   		<a href="/board/${board.id}/update"  class="btn btn-dark"> 수정</a>
		<button id="btn-delete"  class="btn btn-dark"> 삭제</button>
	</c:if>
    <button class="btn btn-dark" onclick="history.back()">목록으로</button>

</div>
<br/><br/>
  <div >
    <h3>${board.title}</h3>
  </div>
  <hr/>
  
  <div >
    <div>${board.content } </div>
  </div>
  
 
</div>
    <script src="/js/board.js"></script>
    
<%@ include file="../layout/footer.jsp" %>

