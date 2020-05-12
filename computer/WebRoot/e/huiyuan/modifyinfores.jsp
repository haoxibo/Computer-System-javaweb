<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<%@ page import="com.daowen.bll.*"%>
<%@ page import="com.daowen.entity.*"%>
<%@page import="com.daowen.dal.DALBase"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="law.jsp"%>
<%
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>订单信息查看</title>
<link rel="stylesheet"
	href="<%=SystemParam.getSiteRoot()%>/e/css/index.css" type="text/css"></link>
<link rel="stylesheet"
	href="<%=SystemParam.getSiteRoot()%>/e/css/box.all.css"
	type="text/css"></link>
<link href="<%=SystemParam.getSiteRoot()%>/admin/css/web2table.css"
	rel="stylesheet" type="text/css" />
<link href="<%=SystemParam.getSiteRoot()%>/uploadifyv3.1/uploadify.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=SystemParam.getSiteRoot()%>/webui/jquery/jquery-1.8.3.min.js"></script>
<script
	src="<%=SystemParam.getSiteRoot()%>/uploadifyv3.1/jquery.uploadify-3.1.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=SystemParam.getSiteRoot()%>/webui/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="<%=SystemParam.getSiteRoot()%>/webui/jquery-validation/jquery.metadata.js"></script>
<script type="text/javascript"
	src="<%=SystemParam.getSiteRoot()%>/webui/jquery-validation/messages_cn.js"></script>
<script type="text/javascript"
	src="<%=SystemParam.getSiteRoot()%>/editor/kindeditor-min.js"></script>
<script type="text/javascript"
	src="<%=SystemParam.getSiteRoot()%>/editor/lang/zh_CN.js"></script>
<script type="text/javascript">
	$(function() {
	});
</script>
</head>
<body style="padding:10px">
	<jsp:include page="/e/head.jsp"></jsp:include>
	<div class="wrap round-block">
		<div class="cover-title">
			当前位置：<a href="index.jsp">首页</a> &gt;&gt; 账户信息修改
		</div>
	
		<div class="main">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="main-content">
				<div style="margin-top:80px;font-size:26px; margin-left:80px;">
					<i class="fa fa-check"></i> 账户信息修改成功

				</div>

			</div>
		</div>
</body>
</html>
