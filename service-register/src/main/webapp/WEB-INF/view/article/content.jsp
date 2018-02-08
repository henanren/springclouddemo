<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%@include file="/common/head.jsp"%>
<%@include file="/common/cate.jsp"%>
<article class="container">

	<section class="row" id="contact1">
		<div class="span12 panel"
			style="  margin: 10px 0 10px 0;text-align: left;padding: 30px; line-height: 30px; word-break: break-all; word-wrap: break-all;">

						${item.content}
						<c:if test="${!empty  item.author    &&   item.author != 'test'}"> 
						<br/><br/><br/>
						参考:${item.author}
						</c:if>
				</div>
	</section>
</article>


<%@include file="/common/footer.jsp"%>