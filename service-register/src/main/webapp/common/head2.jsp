<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN" manifest="${ctx}/common/cache.manifest">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/css/bootstrap.min.css" />
<!-- 	<link rel="stylesheet" type="text/css" -->
<%-- 	href="${ctx}/static/css/bootstrap.css" /> --%>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/css/common.css" />
	
	<link rel="stylesheet" type="text/css"
	href="${ctx}/static/css/style.css" />
	

<style type="text/css">
</style>
<script type="text/javascript">
var ctx ="${ctx}" ;
</script>
</head>

<body>
	<div class="header">
		<div class="mbox">
			<span class="logo"> <a title="${title}" href="<%=basePath%>"> <img
					alt="${title}" src="${ctx}/static/img/logo.png">
			</a>
			</span>
		</div>
		<div class="main_nav_wrapper">
			<div class="main_nav">
				<ul class="nav_left">
					<li><a class="brand" href="<%=basePath%>">首 页</a></li>

					<c:forEach var="obj" items="${headlist}">
						<c:choose>
							<c:when test="${obj.id==pcid}">
								<!-- 适应手机端 -->
								<%-- 									<c:if test="${logospan=='1' && obj.id=='8'}"> --%>
								<!-- 									<li> &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  </li> -->
								<%-- 									 </c:if> --%>


								<li><a href="${ctx }/cate/list/${obj.id}/p/1" class="brand"
									style='background-color:  #Fff ; color: #369'> ${obj.name}
								</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${ctx }/cate/list/${obj.id}/p/1" class="brand">
										${obj.name} </a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>


				</ul>
			</div>
		</div>
	</div>








<!-- 	<div style='height: 50px;'></div> -->
	<c:if test="${!empty  cleardiv  }"> 
						 ${cleardiv}
						</c:if>
	