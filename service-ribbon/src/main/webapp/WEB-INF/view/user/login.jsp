<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%@include file="/common/head.jsp"%>
 <article class="container">
<section class="row"  >
       <div class="span12   " style='margin:10px 0 10px 0;text-align: center;' >
   <!-- 登录窗口 -->
  
                <div class="modal-title">
                    <h1 class="text-center">登录</h1>
                </div>
                <div class="modal-body text-center">
                    <form class="form-group" action="">
                            <div class="form-group">
                                <label for="">用户名 : </label>
                                <input class="form-control" type="text" placeholder="用户名" style="width: 200px;">
                            </div>
                            	<div style='height:10px;'></div>
                            <div class="form-group">
                                <label for="">密&nbsp;&nbsp;&nbsp; 码 : </label>
                                <input class="form-control" type="password" placeholder="密码"  style="width: 200px;">
                            </div>
                            <div style='height:10px;'></div>
                            <div class="text-center">
                                <button class="btn btn-primary" type="submit">登录</button>
                                <button class="btn btn-danger" data-dismiss="modal">取消</button>
                            </div>
                            <div style='height:10px;'></div>
                            <a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
                    </form>
                </div>
            </div>
         
    </section>
    </article>
<%@include file="/common/footer.jsp"%>