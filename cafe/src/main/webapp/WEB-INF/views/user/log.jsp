<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<div class="container  "  >

<form action="/auth/loginProc" method="post">
  <div class="form-group ">
    <label for="username">아이디</label>
    <input type="text" name="username"class="form-control "  id="username" style="width: 200px ">
  </div>
  
  <div class="form-group">
    <label for="password">비밀번호</label>
    <input type="password" name="password" class="form-control "id="password" style=" width: 200px;">
  </div>
  
   <button id = "btn-log" class="btn btn-dark">로그인</button>
</form>
</div>

<%@ include file="../layout/footer.jsp" %>


