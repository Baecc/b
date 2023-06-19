<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<div class="container  " >

<form action="/action_page.php" >
	<input type="hidden" id="id"  value="${principal.user.id }"/>
  <div class="form-group ">
    <label for="username">아이디</label>
    <input type="text" value="${principal.user.username }" class="form-control "  id="username" style="width: 200px " readonly>
  </div>
  
  <div class="form-group ">
    <label for="password">비밀번호</label>
    <input type="password"  class="form-control"id="password" style="width: 200px;">
  </div>
  
  <div class="form-group">
    <label for="email">이메일</label>
    <input type="email" value="${principal.user.email}"  class="form-control" id="email" style="width: 200px;">
  </div>
  
</form>
  <button id = "btn-userupdate" class="btn btn-dark">수정하기</button>
</div>
<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp" %>


