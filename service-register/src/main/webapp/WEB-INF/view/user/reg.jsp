<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@include file="/common/head.jsp"%>
<article class="container">
	<section class="row">
		<div class="span12   "
			style='margin: 10px 0 10px 0; text-align: center;'>

			<div class="modal-title">
				<h1 class="text-center">注册</h1>
			</div>
			<div class="modal-body">
				<form class="form-group" action="">
					<div class="form-group" >
						<label for=""  >用&nbsp;&nbsp;&nbsp;&nbsp; 户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名 : </label> <input class="form-control" type="text" style="width: 200px;"
							placeholder="6-15位字母或数字">
					</div>
					<div style='height:10px;'></div>
					<div class="form-group">
						<label for=""  >密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;码   : </label> <input class="form-control" style="width: 200px;"
							type="password" placeholder="至少6位字母或数字">
					</div>
					<div style='height:10px;'></div>
					<div class="form-group">
						<label for="" >再&nbsp; 次&nbsp;  密&nbsp;  码 : </label> <input class="form-control" style="width: 200px;"
							type="password" placeholder="至少6位字母或数字">
					</div>
					<div style='height:10px;'></div>
					<div class="form-group">
						<label for="">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;箱 : </label> <input class="form-control" type="email" style="width: 200px;"
							placeholder="例如:123@123.com">
					</div>
					<div style='height:10px;'></div>
					<div class="form-group">
						<label for="">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;机 : </label> <input class="form-control" type="email" style="width: 200px;"
							placeholder="例如:138001380000">
					</div>
					<div style='height:10px;'></div>
					<div class="text-center">
						<button class="btn btn-primary" type="submit">提交</button>
						<button class="btn btn-danger" data-dismiss="modal">取消</button>
					</div>
					<div style='height:10px;'></div>
					<a href="" data-toggle="modal" data-dismiss="modal"
						data-target="#login">已有账号？点我登录</a>
				</form>
			</div>
		</div>
	</section>
</article>
<%@include file="/common/footer.jsp"%>