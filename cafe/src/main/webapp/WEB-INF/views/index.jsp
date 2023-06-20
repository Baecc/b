<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp" %>



  <h2>전체글보기</h2>
  <br/>
  <table class="table">
    <thead>
      <tr>
      <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회</th>
      </tr>
    </thead>
    <c:forEach var="board" items="${boards.content}">
    <tbody>
      <tr>
       <td>${board.id }</td>
       <td  style="cursor:pointer;" onclick="location.href='/board/${board.id }'">${board.title }</td>
 	   <td>${ board.user.username}</td>
       <td>${ board.createDate}</td>
       <td> ${board.count}</td>
      </tr>
    </tbody>
    </c:forEach>
  </table>
  
  
  <ul class="pagination justify-content-center">
  <c:choose>
  	<c:when test="${boards.first }">
  	  <li class="page-item disabled "><a class="page-link" href="?page=${boards.number-1}"> < </a></li>
  	</c:when>
  	<c:otherwise>
  	   <li class="page-item "><a class="page-link" href="?page=${boards.number-1}"> < </a></li>
  	</c:otherwise>
  </c:choose>
  
    <c:choose>
  	<c:when test="${boards.last }">
  	  <li class="page-item disabled "><a class="page-link" href="?page=${boards.number+1}"> > </a></li>
  	</c:when>
  	<c:otherwise>
  	   <li class="page-item "><a class="page-link" href="?page=${boards.number+1}"> > </a></li>
  	</c:otherwise>
  </c:choose>
  

	</ul>
  

<%@ include file="layout/footer.jsp" %>


