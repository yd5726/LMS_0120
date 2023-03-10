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
		<h1>공지 시험목록</h1>
        <div class="row">
            <div class="col-lg-7 mx-auto bg-white rounded shadow">
				<table class="table table-fixed"> 
					<thead>
						<tr>
							<th scope="col" class="col-1">번호</th>
							<th scope="col" class="col-3">시험구분</th>
							<th scope="col" class="col-3">시험기간</th>
							<th scope="col" class="col-3">점수</th>
							<th scope="col" class="col-3">시험보기</th>
						</tr>
					</thead>
			
					<tbody>
						<c:forEach items="${exam_list}" var="list">
							<tr>
								<th scope="row" class="col-1">${list.rownum }</th>
								<td scope="col" class="col-3">${list.exam_title }</td>
								<td scope="col" class="col-3">	
									<c:set var="now" value="<%=new java.util.Date()%>" />
										${list.startdate } ~ ${list.duedate }
										<c:set var="date"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
										<c:if test="${list.duedate < date }"><span class="text-danger">[마감]</span></c:if>
										<c:if test="${list.duedate >= date }"><span class="text-success">[진행중]</span></c:if>
								</td>
								<td scope="col" class="col-3">${list.total_score }</td>
								<td scope="col" class="col-3">
									<a class="btn-fill" href='exam_take.le'>시험보기</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>