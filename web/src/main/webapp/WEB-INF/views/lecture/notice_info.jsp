<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/table.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container py-5">
		<h3>공지사항 내용</h3>
		<div class="row">
            <div class="col-lg-7 mx-auto bg-white rounded shadow">
		<table class="table">
			<tr>
				<th class="col-3">제목</th>
				<td class="col-3" colspan='3'>${notice_info.title }</td>
			</tr>
			<tr>
				<th class="col-3">작성자</th><td class="col-3">${notice_info.member_name }</td>
				<th class="col-3">작성일자</th><td class="col-3">${notice_info.writedate }</td>
			</tr>
			<tr>
				<th class="col-3">내용</th>
				<td class="col-3" colspan='5'>${notice_info.content }</td>
			</tr>
		</table>
		</div>
		</div>
	</div>
	

</body>
</html>