<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boardList}" var="list">
				<td>${boardList.bno}</td>
				<td>${boardList.title}</td>
				<td>${boardList.regDate}</td>
				<td>${boardList.writer}</td>
				<td>${boardList.viewCnt}</td>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>