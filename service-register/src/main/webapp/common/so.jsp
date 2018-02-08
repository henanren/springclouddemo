<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
 
	<article class="container   ">
		<section class="row " id="contact1"
			style='margin: 10px 0 10px 0; width: 100%'>
			<div class="span12  panel " style='margin: 10px 0 10px 0; width: 100%'>
				<div class="modal-title">
					<h2 class="text-center">程序员搜索引擎</h2>
				</div>
				<div class="modal-body text-center">
					<form id ="frm" class="form-group" action="${ctx}/so" method="get">
					 
						 
						 
							 
						<div class="text-center">
						 <input id="kw" class="form-control" value="${kw}"
								type="text" placeholder="输入技术关键字，比如，java" style="width: 500px;" name='kw' >&nbsp;&nbsp;&nbsp; 
							<button class="btn btn-primary" type="submit" onclick="cl();">搜索</button>
							 
						</div>
					 
					</form>
				</div>
 <script type="text/javascript">
 
function cl(){
// 	var v= $("#kw").val();
// 	 $("#frm").attr("action",encodeURL("${ctx}/so/"+v+"/p/1"))  ;
// 	location.href=encodeURL("${ctx}/so/"+v+"/p/1");
// 	v=escape(v);
// 	alert(v);
// 	 $("#frm").attr("action","${ctx}/so?kw="+v);
// 	location.href=  encodeURI("${ctx}/so/"+v+"/p/1")  ;
	 $("#frm").submit();
}
 
</script>
		

			</div>


		</section>
	</article>
 