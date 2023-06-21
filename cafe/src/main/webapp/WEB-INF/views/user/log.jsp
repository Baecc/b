<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<div class="container d-flex  justify-content-center  ">

<div class="card item" style="width: 18rem; position: absolute;
  top: 25%; ">
<br/>
<form action="/auth/loginProc" method="post">
  <div class="form-group  d-flex  justify-content-center">
    <input type="text" name="username"class="form-control "  id="username" style="width: 200px " placeholder="아이디">
  </div>
  
  <div class="form-group d-flex  justify-content-center">
    <input type="password" name="password" class="form-control "id="password" style=" width: 200px;"placeholder="비밀번호">
  </div>
  
 <div class="card-footer d-flex  justify-content-center">  <button id = "btn-log" class="btn btn-dark">로그인</button></div>
</form>
</div>
</div>

<%@ include file="../layout/footer.jsp" %>


