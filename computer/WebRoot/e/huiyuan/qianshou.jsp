﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<%@ page import="com.daowen.bll.*"%>
<%@ page import="com.daowen.entity.*"%>
<%@page import="com.daowen.dal.DALBase"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="law.jsp"%>
<%
	String  id=request.getParameter("id");
    
    Dingdan temobjdingdan=null;
    if( id!=null)
    {
      
      temobjdingdan=(Dingdan)DALBase.load("dingdan"," where id="+ id);
      request.setAttribute("dingdan",temobjdingdan);
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	src="<%=SystemParam.getSiteRoot()%>/webui/jquery/jquery-1.9.0.js"></script>
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
			当前位置：<a href="index.jsp">首页</a> &gt;&gt; 订单签收
		</div>
	
		<div class="main">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="main-content">
				<form name="payform" method="post" action="<%=SystemParam.getSiteRoot()%>/admin/dingdanmanager.do">
				
				 <input type="hidden" name="actiontype" value="qianshou"/>
						      
						      <input type="hidden" name="commentren" value="${huiyuan.accountname}"/>
						      <input type="hidden" name="errorurl" value="/e/huiyuan/qianshou.jsp"/>
						      <input type="hidden" name="forwardurl" value="/e/huiyuan/qianshoures.jsp"/>
						      <input type="hidden" name="ddid" value="<%=id%>"/>
						      <input type="hidden" name="photo" value="${huiyuan.touxiang}"/>
						      
				<table cellpadding="0" cellspacing="1" class="grid" width="100%">

                   <tr>
                      <td colspan='2'>
                         ${errormsg}
                      </td>
                      
                   </tr>
					<tr>
						<td align="right">订单号:</td>
						<td>${requestScope.dingdan.ddno}</td>

						<td align="right">下单时间:</td>
						<td><fmt:formatDate value="${requestScope.dingdan.xiadantime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
					</tr>
					<tr>
						<td align="right">下单人:</td>
						<td>${requestScope.dingdan.xiadanren}</td>

						<td align="right">总价格:</td>
						<td>${requestScope.dingdan.totalprice}</td>
					</tr>
					<tr>
						<td align="right">状态:</td>
						<td>${requestScope.dingdan.status}</td>


						<td align="right">收货地址:</td>
						<td>${requestScope.dingdan.shouhuodizhi}</td>
					</tr>
					<tr>
						<td align="right">收货人电话:</td>
						<td>${requestScope.dingdan.shrtel}</td>

						<td align="right">收货人姓名:</td>
						<td>${requestScope.dingdan.shrname}</td>
					</tr>

					<tr>
						<td colspan="4">

							<table border="0" cellspacing="1" class="whitegrid"
								cellpadding="0" width="100%">

								<tr>
									<td>快照</td>
									<td>商品名</td>
									<td>商品数量</td>
									<td>商品价格</td>
								</tr>

								<%
									List<Dingdanitems> listdingdanitems = DALBase.getEntity(
														"dingdanitems", "where ddno='" + temobjdingdan.getDdno()
																+ "'");

												for (Dingdanitems items : listdingdanitems) {
								%>
								<tr>

									<td bgcolor="#ffffff"><img src='<%=items.getSpimage()%>'
										width="60px" height="60px" />
									</td>
									<td><%=items.getSpname()%></td>

									<td><%=items.getShuliang()%></td>

									<td><%=items.getJiage()%></td>
								</tr>

								<%
									}
								%>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan="4">
						
						
						   支付金额:${requestScope.dingdan.totalprice}￥
						
						</td>
						
					</tr>
					
					<tr>
					   <td align="right">评价:</td>
					   <td> <input name="defen" type="radio"  value="5"  checked="checked"/>好评
					        <input name="defen" type="radio"  value="4"  />中评
					        <input name="defen" type="radio"  value="0"  />差评
					        
					   
					   </td>
					</tr>
					<tr>
					   <td align="right">描述:</td>
					   <td colspan="3"> 
					       <textarea name="des" style="width:98%;height:80px;"></textarea>
					   </td>
					</tr>

					<tr>
						<td colspan="4">
						
						
						 
						 
						     
						      <span >
						          <input type="submit" class="btn btn-default" value="确定收货"/>
						       </span>
						 
						
						 
						   
						
						</td>
						
					</tr>

				</table>
				 </form>
			</div>
		</div>
</body>
</html>
