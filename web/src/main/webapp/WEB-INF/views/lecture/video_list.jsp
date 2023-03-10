<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container py-5">
		<h1>영상강의 목록</h1>
        <div class="row">
            <div class="col-lg-7 mx-auto bg-white rounded shadow">
				<table class="table table-fixed"> 
					<thead>
						<tr>
							<th scope="col" class="col-3">번호</th>
							<th scope="col" class="col-3">제목</th>
							<th scope="col" class="col-3">작성일자</th>
							<th scope="col" class="col-3">시청하기</th>
						</tr>
					</thead>
			
					<tbody>
						<c:forEach items="${video_list}" var="list">
							<tr>
								<th scope="row" class="col-3">${list.rownum }</th>
								<td scope="col" class="col-3">${list.title }</td>
								<td scope="col" class="col-3">${list.writedate }</td>
								<td scope="col" class="col-3"><a class="btn-fill" href="video_watch.le?board_code=${list.board_code }">시청하기</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>