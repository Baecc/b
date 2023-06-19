<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<div class="container  " >

<form action="/action_page.php" >
  <div class="form-group ">
    <label for="username">아이디</label>
    <input type="text" class="form-control "  id="username" style="width: 200px ">
  </div>
  
  <div class="form-group ">
    <label for="password">비밀번호</label>
    <input type="password" class="form-control"id="password" style="width: 200px;">
  </div>
  
  <div class="form-group">
    <label for="email">이메일</label>
    <input type="email" class="form-control" id="email" style="width: 200px;">
  </div>
  
</form>
  <button id = "btn-save" class="btn btn-dark">회원가입</button>
</div>
<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp" %>


