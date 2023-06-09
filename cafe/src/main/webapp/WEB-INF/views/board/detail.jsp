<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">

	<div>
		번호 : <span id="id"><i>${ board.id}</i></span> 작성자 : <span><i>${board.user.username }</i></span>
		작성일 : <span><i>${ board.createDate}</i></span>
	</div>
	<div style="position: absolute;">
		<c:if test="${board.user.id==principal.user.id }">
			<a href="/board/${board.id}/update" class="btn btn-dark"> 수정</a>
			<button id="btn-delete" class="btn btn-dark">삭제</button>
		</c:if>
		<button class="btn btn-dark" onclick="location.href = `/`">목록으로</button>

	</div>
	<br /> <br />
	<div>
		<h3>${board.title}</h3>
	</div>
	<hr />

	<div>
		<div>${board.content }</div>
	</div>

	<div class="card">
		<div class="card-header" >댓글</div>
		<ul id="reply-box" class="list-group">
			<c:forEach var="reply" items="${board.replys }">
				<li id="reply-${reply.id }" class="list-group-item d-flex justify-content-between">
					<div>${reply.content }</div>
					<div class="d-flex">
						<div class="font-italic">${reply.user.username }&nbsp;</div>
						<c:if test="${board.user.id==principal.user.id }">
						<button onClick="index.replyDelete(${board.id }, ${reply.id })" class="badge">삭제</button>
						</c:if>
					</div>
				</li>
			</c:forEach>

		</ul>
	</div>

	<br />

	<div class="card">
		<form>
			<input type="hidden" id="boardId" value="${board.id }" />
			<div class="card-body ">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-dark">등록</button>
			</div>
		</form>
	</div>
	<br />



</div>
<script src="/js/board.js"></script>

<%@ include file="../layout/footer.jsp"%>


