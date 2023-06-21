<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container  d-flex  justify-content-center ">
	<div class="card item"
		style="width: 18rem; position: absolute; top: 25%;">
		<br />
		<form action="/action_page.php">
			<div class="form-group  d-flex  justify-content-center"">
				<input type="text" class="form-control " id="username"
					style="width: 200px" placeholder="아이디">
			</div>

			<div class="form-group  d-flex  justify-content-center"">
				<input type="password" class="form-control" id="password"
					style="width: 200px;" placeholder="비밀번호">
			</div>

			<div class="form-group  d-flex  justify-content-center"">
				<input type="email" class="form-control" id="email"
					style="width: 200px;" placeholder="이메일">
			</div>

		</form>
		<div class="card-footer d-flex  justify-content-center">
			<button id="btn-save" class="btn btn-dark">회원가입</button>
		</div>

	</div>
</div>
<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>


