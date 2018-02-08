<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:if test="${list!=null&& fn:length(list) > 0}">


	<article class="container   ">
		<section class="row " id="contact1"
			style='margin: 10px 0 10px 0; width: 100%'>
			<div class="span12  panel" style='margin: 10px 0 10px 0; width: 1170px'>
				<div class="navbar" style='margin: 10px 0 10px 0; width: 100%'>

					<div class="main_nav">
						<ul class="nav_left">

							<c:forEach var="obj" items="${list}">
								<c:choose>
									<c:when test="${obj.id==cid}">

										<li class="active" style='background-color:  #369;'><a
											href="${ctx }/article/list/${obj.id}/p/1"><font size=2
												color='#FFF'>${obj.name}</font></a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${ctx }/article/list/${obj.id}/p/1"><font
												size=2 color='#369'>${obj.name}</font></a></li>
									</c:otherwise>

								</c:choose>
							</c:forEach>

						</ul>
					</div>
				</div>
			</div>


		</section>
	</article>

</c:if>
