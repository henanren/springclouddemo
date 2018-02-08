<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
 
			 
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
// 	v=encodeURIComponent(v);
// 	 $("#frm").attr("action","${ctx}/so?kw="+v);
	 $("#frm").submit();
}
 
</script>
		