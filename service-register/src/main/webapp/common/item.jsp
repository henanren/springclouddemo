<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.laomn.utils.Constants"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rowsss" value="<%=Constants.row%>" />
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:if test="${total!=0}">
	<article class="container">
		<section class="row" id="contact1"
			style='margin: 0px 0 0px 0; width: 100%'>
			<!-- 			<div class="span12 panel" style="display: block;margin:10px 0 10px 0; "> -->
			<div class="span12 panel "
				style='margin: 0 0 0 0; width: 100%; display: block;'>
				<%@include file="/common/so2.jsp"%>
				<div class="row">
					<div class="span12">
						<div class="padding-large">
							<div class="sns">
								<!-- 								<div class="page-header"> -->
								<%-- 									<h1>${cate.name}</h1> --%>
								<!-- 								</div> -->
								<div class="bs-docs-example">
									<table class="table">
										<!-- 										<thead> -->
										<!-- 											<tr> -->
										<!-- 												<th>文章标题</th> -->
										<!-- 												<th>发表时间</th> -->
										<!-- 												<th>阅读数</th> -->
										<!-- 											</tr> -->
										<!-- 										</thead> -->
										<tbody>
											<c:forEach var="obj" items="${itemlist}">
												<tr class="info">
													<td style="BORDER: NONE;">
<%-- 													<c:if test="${obj.author == 'csdn'}"> --%>
<%-- 													<a href="${obj.content}"><font --%>
<%-- 															color='#369'>${obj.title}</font></a> --%>
															
<%-- 															</c:if> --%>
<%-- 															<c:if test="${obj.author != 'csdn'}"> --%>
													<a
														href="${ctx }/article/item/${obj.id}"><font
															color='#369'>${obj.title}</font></a>
															
<%-- 															</c:if> --%>
															</td>
												</tr>

											</c:forEach>

										</tbody>
									</table>
								</div>
								<c:if test="${total/rowsss>1}">
									<div class="bs-docs-example" style='text-align: center;'>
										<ul class="pagination">
											<c:if test="${total%rowsss==0}">
												<c:forEach var="obj" begin="1" end="${total/rowsss}">
													<li <c:if test="${page==obj}">class="active" </c:if>><a
														href="${ctx }/article/list/${cid}/p/${obj}">${obj}</a></li>
												</c:forEach>
											</c:if>
											<c:if test="${total%rowsss>0}">
												<c:forEach var="obj" begin="1" end="${total/rowsss+1}">
													<li <c:if test="${page==obj}">class="active"</c:if>><a
														href="${ctx }/article/list/${cid}/p/${obj}">${obj}</a></li>
												</c:forEach>
											</c:if>


										</ul>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>


	</article>
</c:if>