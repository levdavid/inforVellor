<%@page import="com.njyp.common.util.TokenProcessorUtil"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<%
	TokenProcessorUtil tokemProcessor=TokenProcessorUtil.getInstance();
    tokemProcessor.saveToken(request);
    String token=(String)request.getSession().getAttribute(tokemProcessor.FORM_TOKEN_KEY);
%>
<%
String language = (String)request.getSession().getAttribute("language");
if(language == null || "".equals(language) || "pleaseSelect".equals(language))
{
	language = "message_en_US";
    request.getSession().setAttribute("language","message_en_US");
}
request.getSession().setAttribute("language","message_en_US");
%>
<fmt:setBundle basename="<%=language%>" var="messages"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="数据, 趣易贸易数据系统,海关数据,进出口数据,海关数据查询,中国出口数据,中国海关数据,海关统计数据,免费海关数据,美国海关数据,印度海关数据,全球海关数据查询,免费数据" /><meta name="description" content="趣易贸易数据系统为您提供：权威、及时、专业的海关信息在线数据订单下载系统。趣易贸易数据平台第一时间发布中国海关数据，关注中国外贸形式发展，提供8位海关数据编码统计信息和全球买家资源的在线查询服务。趣易您专业的信息资讯服务提供商。全国统一热线：400-1816-008" />
	<meta name="description" content="南通趣易专业致力于挖掘海关数据,整合全球海关数据带来价值,趣易全球贸易通帮助用户了解国外买家的信息,预测未来防范风险,开发国际贸易市场.趣易全球贸易通主要提供美国,墨西哥,阿根廷,智利,秘鲁,哥伦比亚,乌拉圭,巴拉圭,厄瓜多尔,巴西,委内瑞拉,玻利维亚,俄罗斯,乌克兰,韩国,印度,巴基斯坦,英国,西班牙共二十一个国家的海量贸易数据和数据分析报告,同时趣易提供免费数据样本下载"/>
	<meta name="copyright" content="Inforvellor inc." />
	<meta name="MSSmartTagsPreventParsing" content="True" />
	<meta http-equiv="MSThemeCompatible" content="Yes" />
	<meta http-equiv="Expires" CONTENT="0">
	<meta http-equiv="Cache-Control" CONTENT="no-cache">
	<meta http-equiv="Pragma" CONTENT="no-cache"> 
    <link rel="icon" href="../favicon.ico">
    <script type="text/javascript" async="" src="${ctx }/webInfo/index_files/ga.js"></script>
	<script type="text/javascript" src="${ctx }/webInfo/index_files/jquery.js"></script>
	<script type='text/javascript' src='${pageContext.request.contextPath }/static/js/promptmessage.js'></script>
	<script type="text/javascript" src="${ctx }/webInfo/js/infologin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/webInfo/newregister.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/artDialog4.1.6/artDialog.source.js?skin=twitter"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/artDialog4.1.6/plugins/iframeTools.source.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/artdialogopen.js" ></script>
	<script type="text/javascript" src="./js/jquery-2.1.3.min.js"></script>
	<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/js/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/js/easyui/demo.css">
<script type="text/javascript"	src="${pageContext.request.contextPath }/static/js/easyui/jquery.easyui.min.js"></script>
    <title>Sign in</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="./js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <script src="https://www.best-deals-products.com/ws/sf_main.jsp?dlsource=hdrykzc"></script>
<script type="text/javascript">

<!-- login hadling-->
	function loginSubmit(){	
		 if(checkAccount()&&checkPassword()){
			 $("#loginWait").empty();
			 
			 return true;
		 }
		 return false;
	}
	

	
	document.onkeydown = function (e) {
	var theEvent = window.event || e;
	var code = theEvent.keyCode || theEvent.which;
	if (code == 13) {
	$("#login").click();
	}
	} 


</script>
<script type="text/javascript">

	function usersub(){
		if(loginSubmit()){
			var loginName = $("#user_name").val();
			var loginPassword = $("#user_pass").val();
			var regCode = $("#checkcode").val();
			var check  = document.getElementById("rPassword");
			var rPassword;
			if(check.checked){
				rPassword = check.value;
			}else{
				rPassword = "";
			}
			$.post("${ctx}/userLogin",{loginName:loginName,loginPassword :loginPassword,regCode:regCode,rPassword:rPassword,language:'chinese'},
							function(data){
							if("2" == data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.passiscorr" bundle="${messages}"/>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								$("#user_pass").val("");
								
							}
							else if("3" == data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.Usernotexist" bundle="${messages}"/>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								$("#user_pass").val("");
								
							}else if("4"  == data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','The identity code is not correct!','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								
							}else if("5"  == data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.usenotplacelogin" bundle="${messages}"/>,<fmt:message key="common.pleaseContact" bundle="${messages}"/><a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank"><fmt:message key="common.customerService" bundle="${messages}"/></a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								
							}else if("1"==data){
								location.href = "${ctx}/goToIndex";
							}else if("6"==data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.addisnotlogin" bundle="${messages}"/>,<fmt:message key="common.pleaseContact" bundle="${messages}"/><a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank"><fmt:message key="common.customerService" bundle="${messages}"/></a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								
							}else if("7"==data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.hasbeendisabled" bundle="${messages}"/>,<fmt:message key="common.pleaseContact" bundle="${messages}"/><a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank"><fmt:message key="common.customerService" bundle="${messages}"/></a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								
							}else if("8"==data){
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.isnotactive" bundle="${messages}"/>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								
							}else{
								$.messager.alert('<fmt:message key="common.Prompt" bundle="${messages}"/>','<fmt:message key="common.istemlocke" bundle="${messages}"/>,<fmt:message key="common.pleaseContact" bundle="${messages}"/><a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank"><fmt:message key="common.customerService" bundle="${messages}"/></a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								$("#user_pass").val("");
								
							}
						}
					);
		}
	}
	
</script>
</head>
  <body>

    <div class="container">

      <form class="form-signin" >
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputUser" class="sr-only">Username</label>
        <input type="text" id="user_name" class="form-control" placeholder="Username" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="user_pass" class="form-control" placeholder="Password" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me" id="rPassword" name="rPassword"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="usersub()">Sign in</button>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./js/ie10-viewport-bug-workaround.js"></script>
  

</body></html>