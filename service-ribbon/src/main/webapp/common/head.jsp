<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN" manifest="cache.manifest">
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
	<div class="navbar-header">
		<a class="navbar-brand" href="${ctx}"> <img alt="Brand"
			style="max-width:100px;margin-top:10px;<c:choose><c:when test="${logospan=='1'}">margin-left:140px;</c:when><c:otherwise>margin-left:120px;</c:otherwise></c:choose>"
			src="${ctx}/static/img/logo.png">
		</a>
	</div>

	<div class="navbar-wrapper" style="padding-top: 50px;">
		<!-- 		class="container" -->
		<div style="margin: 2px auto 0; background-color: #2A5DA9;">
			<div class="navbar navbar-inverse "
				style='width: 1170px; margin: 0 auto; color: #FFFFFF;'>
				<div class="navbar-inner">
					<button type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<%-- 					<a class="brand" href="${ctx}">主页</a> --%>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>
							<li><a href="${ctx}/" class="brand">首页 </a></li>
							<li><a href="http://download.pansoso.cn" class="brand">下载
							</a></li>
							<c:forEach var="obj" items="${headlist}">
								<c:choose>
									<c:when test="${obj.id==pcid}">
										<!-- 适应手机端 -->
										<c:if test="${logospan=='1' && obj.id=='8'}">
											<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
												&nbsp; &nbsp; &nbsp;</li>
										</c:if>


										<li><a href="${ctx }/cate/list/${obj.id}/p/1"
											class="brand" style='background-color: white; color: #369'>
												${obj.name} </a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${ctx }/cate/list/${obj.id}/p/1"
											class="brand"> ${obj.name} </a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<!-- 							<li class="dropdown"><a href="#" class="brand dropdown-toggle" -->
							<!-- 								data-toggle="dropdown">帮助  </a> -->
							<!-- 								<ul class="dropdown-menu"> -->
							<!-- 									<li><a href="#">企2业1</a></li> -->
							<!-- 									<li><a href="#">商3户</a></li> -->
							<!-- 									<li><a href="#">服4务网站</a></li> -->
							<!-- 									<li class="divider"></li> -->
							<!-- 									<li class="nav-header">灰掉</li> -->
							<!-- 									<li><a href="#">分4割线1</a></li> -->
							<!-- 									<li><a href="#">分5割线2</a></li> -->
							<!-- 								</ul></li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div style='height: 50px;'></div>
	<c:if test="${!empty  cleardiv  }"> 
						 ${cleardiv}
						</c:if>