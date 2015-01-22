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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="common.loginTitle" bundle="${messages}"/></title>
<meta name="keywords" content="数据, 趣易贸易数据系统,海关数据,进出口数据,海关数据查询,中国出口数据,中国海关数据,海关统计数据,免费海关数据,美国海关数据,印度海关数据,全球海关数据查询,免费数据" /><meta name="description" content="趣易贸易数据系统为您提供：权威、及时、专业的海关信息在线数据订单下载系统。趣易贸易数据平台第一时间发布中国海关数据，关注中国外贸形式发展，提供8位海关数据编码统计信息和全球买家资源的在线查询服务。趣易您专业的信息资讯服务提供商。全国统一热线：400-1816-008" />
<meta name="description" content="南通趣易专业致力于挖掘海关数据,整合全球海关数据带来价值,趣易全球贸易通帮助用户了解国外买家的信息,预测未来防范风险,开发国际贸易市场.趣易全球贸易通主要提供美国,墨西哥,阿根廷,智利,秘鲁,哥伦比亚,乌拉圭,巴拉圭,厄瓜多尔,巴西,委内瑞拉,玻利维亚,俄罗斯,乌克兰,韩国,印度,巴基斯坦,英国,西班牙共二十一个国家的海量贸易数据和数据分析报告,同时趣易提供免费数据样本下载"/>
<meta name="copyright" content="2012-2013 Comsenz Inc." />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Pragma" CONTENT="no-cache"> 
<script type="text/javascript" async="" src="${ctx }/webInfo/index_files/ga.js"></script>
<script type="text/javascript" src="${ctx }/webInfo/index_files/jquery.js"></script>
<script type='text/javascript' src='${pageContext.request.contextPath }/static/js/promptmessage.js'></script>
<script type="text/javascript" src="${ctx }/webInfo/js/infologin.js"></script>
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/js/easyui/demo.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/static/css/tabLogin.css">
<script language="javascript" src="${pageContext.request.contextPath }/static/js/checksystem.js"></script>
<script type="text/javascript" 	src="${pageContext.request.contextPath }/static/js/jquery/jquery-1.8.2.min.js"></script>
<link href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap-responsive.css"	rel="stylesheet">
<link href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap-responsive.css"	rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/webInfo/newregister.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath }/static/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/artDialog4.1.6/artDialog.source.js?skin=twitter"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/artDialog4.1.6/plugins/iframeTools.source.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/artdialogopen.js" ></script>
<style type="text/css">
 /*仅供本页面使用*/
	 label{
		display:inline;
		margin-bottom:0px;
		font-size:14px;
		font-family: 微软雅黑;
		color:#434343;
	}
	.mailBtn{
	   border:1px solid #00CCFF;
	   background-color:white;
	   border-radius:5px;
	   color:#00CCFF;
	   font-size:16px;
	   font-weight:bold;
	   cursor:pointer;
	   outline:none;
	}
	
	a.kefuMenu1 {
	font-size: 12px;
	color: #1b66c7;
	text-decoration: none;
	}
	a.kefuMenu1:hover {
		font-size: 12px;
		color: red;
		text-decoration: underline;
	}
 </style>
 <!-- 添加滚动条开始 -->
 	<style type="text/css"> 
		#gongao{width:100%;margin:0px auto; min-width:960px;float:none; *width:expression((this.offsetWidth < 960) ? (this.width = 960 +'px') : true); height:30px;overflow:hidden;line-height:30px;font-size:13px;font-family:'宋体';background:#DDE5ED;color:#ec5565;font-weight:bold;} 
		#gongao #scroll_begin, #gongao #scroll_end{display:inline} 
	</style> 
	<script type="text/javascript"> 
		function ScrollImgLeft(){ 
			var speed=50; 
			var scroll_begin = document.getElementById("scroll_begin"); 
			var scroll_end = document.getElementById("scroll_end"); 
			var scroll_div = document.getElementById("scroll_div"); 
			scroll_end.innerHTML="&nbsp;&nbsp;&nbsp;"+scroll_begin.innerHTML; 
			function Marquee(){ 
				if(scroll_end.offsetWidth-scroll_div.scrollLeft<=0) 
					scroll_div.scrollLeft-=scroll_begin.offsetWidth; 
				else 
					scroll_div.scrollLeft++; 
			} 
			var MyMar=setInterval(Marquee,speed); 
			scroll_div.onmouseover=function() {clearInterval(MyMar);} 
			scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed);} 
		} 
	</script> 
 <!-- 添加滚动条结束 -->
 <script type="text/javascript">
  $(function(){
   myRandReload();
  });
	function loginSubmit(){	
		 if(checkAccount()&&checkPassword()&&checkCode()){
			 $("#loginWait").empty();
			 $("#loginWait").append("<a style=\"background:url('${ctx}/webInfo/infobase_login/img/bg_button_blue.gif');\" class=\"dl\" >登录中......</a>");
			 return true;
		 }
		 return false;
	}
	function myRandReload(){
	var codeStr = "/customer_search/getCheckCode?nocache="+new Date().getTime();
	$("#createcheckcode")[0].src= codeStr;
	$("#createregistercheckcode")[0].src= codeStr;
    }

	function testLogin(v){
	    	$.post("${ctx}/userLogin",{loginName:v,language:'chinese'},
				function(data){
		    		if("2" == data){
						$.messager.alert('提示','密码不正确！','info');
					}else if("3" == data){
						$.messager.alert('提示','用户名不存在！','info');
					}else if("5"  == data){
						$.messager.alert('提示','对不起,该用户已经在其他地方登录,请您采用其他账号登录！请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
					}else if("1"==data){
						location.href = "${ctx}/goToIndex";
					}else if("6"==data){
						$.messager.alert('提示','对不起!您当前的地址不是您经常登录的地址,暂时无法登录!请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
					}else if("7"==data){
						$.messager.alert('提示','对不起!您的账户已被禁用!请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
					}else if("8"==data){
						$.messager.alert('提示','对不起!您的账户没有激活 ！','info');
					}else{
						$.messager.alert('提示','对不起!您的账户被暂时锁定,请您稍后'+data+'登录！请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
					}
				}
			);
	    }
    
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
								$.messager.alert('提示','密码不正确！','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								$("#user_pass").val("");
								myRandReload();
							}
							else if("3" == data){
								$.messager.alert('提示','用户名不存在！','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								$("#user_pass").val("");
								myRandReload();
							}else if("4"  == data){
								$.messager.alert('提示','验证码不正确！','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								myRandReload();
							}else if("5"  == data){
								$.messager.alert('提示','对不起,该用户已经在其他地方登录,请您采用其他账号登录！请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								myRandReload();
							}else if("1"==data){
								location.href = "${ctx}/goToIndex";
							}else if("6"==data){
								$.messager.alert('提示','对不起!您当前的地址不是您经常登录的地址,暂时无法登录!请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								myRandReload();
							}else if("7"==data){
								$.messager.alert('提示','对不起!您的账户已被禁用!请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								myRandReload();
							}else if("8"==data){
								$.messager.alert('提示','对不起!您的账户没有激活 ！','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								myRandReload();
							}else{
								$.messager.alert('提示','对不起!您的账户被暂时锁定,请您稍后'+data+'登录！请联系<a class="kefuMenu1" href="http://wpa.qq.com/msgrd?v=3&uin=2949978339&site=qq&menu=yes" target="_blank">在线客服</a>','info');
								$("#loginWait").empty();
								$("#loginWait").append("<input type=\"button\" name=\"login\" class=\"dl\" value=\"登录\" onclick=\"javascript:usersub();\"/>");
								$("#user_pass").val("");
								myRandReload();
							}
						}
					);
		}
	}
	 function checkCode(){
			var txt = $("#checkcode").val();
			if(txt.trim() == null||"" == txt.trim()){
				$.messager.alert('提示','验证码不能够为空！','info');
				return false;
			}
			return true;
		}
	function over(){
		$("#wjmm").css("color","red");
	}

	function out(){
		$("#wjmm").css("color","#1b66c7");
	}
	function over_movie(){
		$("#movie").css("color","red");
	}

	function out_movie(){
		$("#movie").css("color","#1b66c7");
	}

</script>
 <!-- 确认键的效果 -->
<script type="text/javascript">
	document.onkeydown = function (e) {
	var theEvent = window.event || e;
	var code = theEvent.keyCode || theEvent.which;
	if (code == 13) {
	$("#login").click();
	}
	} 

	$(function(){
	$("#submintButton").mouseover(function(){
	$(this).addClass('btnCursorOver');
	 $("#submintButton").css("background-image","url(${pageContext.request.contextPath }/static/img/yblogo/loginClickBg.png)");
	});
	$("#submintButton").mouseout(function(){
	$(this).removeClass('btnCursorOver');
	$("#submintButton").css("background-image","url(${pageContext.request.contextPath }/static/img/yblogo/loginBg.png)");
	});
	$("#login").mouseover(function(){
	$(this).addClass('btnCursorOver');
	 $("#login").css("background-image","url(${pageContext.request.contextPath }/static/img/yblogo/loginClickBg.png)");
	});
	$("#login").mouseout(function(){
	$(this).removeClass('btnCursorOver');
	$("#login").css("background-image","url(${pageContext.request.contextPath }/static/img/yblogo/loginBg.png)");
	});
	})

	function changeTab(){
		if($("#loginBody").is(":visible")){
			$("span.regMessage").empty();
			$("#loginBody").hide();
			$("#registerBody").show();
			$("#registerTab").removeClass("tabOneBorder");
			$("#registerTab").addClass("tabThreeBorder");
			$("#loginTab").removeClass("tabThreeBorder");
			$("#loginTab").addClass("tabOneBorder");
		}else{
			$("#registerBody").hide();
			$("#loginBody").show();
			$("#loginTab").removeClass("tabOneBorder");
			$("#loginTab").addClass("tabThreeBorder");
			$("#registerTab").removeClass("tabThreeBorder");
			$("#registerTab").addClass("tabOneBorder");
		}
	}
	function onChangeLanguage(v)
	{
	 	$.ajax({
 		type:'post',
        url : "/customer_search/language/changelanguage?language="+v.value,
         	success : function(data)
         	{
                  window.location.reload();
 		    }
 	    });
			
	}
</script>

</head>
  <body onload="displaytimedown()" style="padding:0px;">
   <!-- 添加滚动条开始 -->
    <div id="gongao"> 
		<div style="width:90%;height:30px;margin:0 auto;white-space: nowrap;overflow:hidden;" id="scroll_div" class="scroll_div"> 
			<div id="scroll_begin"> 
				<fmt:message key="common.browerTips" bundle="${messages}"/>
				&nbsp;&nbsp;&nbsp;
				<fmt:message key="common.browerTips" bundle="${messages}"/>
				&nbsp;&nbsp;&nbsp;
				<fmt:message key="common.browerTips" bundle="${messages}"/> 
				&nbsp;&nbsp;&nbsp;
				<fmt:message key="common.browerTips" bundle="${messages}"/> 
			</div> 
			<div id="scroll_end"></div> 
		</div> 
		<script type="text/javascript">ScrollImgLeft();</script> 
	</div> 
	 <!-- 添加滚动条结束 -->
    <div id="loginDiv">
     	<div id="loginTop">
     		<img src="${pageContext.request.contextPath }/webInfo/index_files/trade_easy_logo.png"/>
     	</div>
     	<!-- change language -->
     	<div style="position:absolute;top:40px;right: 60px;">
     	     
     	     <span class="commonStyle" style="float:left;"><fmt:message key="common.selectLanguage" bundle="${messages}"/></span>
		 	 <select id="sellanguage" style="width: 100px;float:left;" name="sellanguage" onchange="onChangeLanguage(this)">
		        <option value="pleaseSelect" selected="selected"><fmt:message key="common.pleaseSelect" bundle="${messages}"/></option>
		        <option value="message_zh_CN"><fmt:message key="common.chinese" bundle="${messages}"/></option>
		        <option value="message_en_US"><fmt:message key="common.english" bundle="${messages}"/></option>
		      </select>
			   
  		</div>
  		
     	<div id="main">
     		<div id="main_left">
		     		<div id="mainTab" >
		     			<%--
		     			<div id="loginTab" class="tabstyle tabThreeBorder noSelect" style="width:64px;padding-right:30px;" onmouseover="$(this).addClass('tabCursorOver')" onmouseout="$(this).removeClass('tabCursorOver')" onclick="changeTab()">
		     			--%>
		     			<div id="loginTab" class="tabstyle tabThreeBorder noSelect" style="width:64px;padding-right:30px;">
		     				<span class="commonStyle" style="position:relative;top:15px;left:30px"><fmt:message key="common.login" bundle="${messages}"/></span>
		     			</div>
		     			<%--
		     			<div id="registerTab" class="tabstyle tabOneBorder noSelect" style="width:88px;"  onmouseover="$(this).addClass('tabCursorOver')" onmouseout="$(this).removeClass('tabCursorOver')" onclick="changeTab()">
		     				<span class="commonStyle" style="position:relative;top:15px;left:30px">注册</span>
		     			</div>
		     			--%>
		     			<div id="spaceTab"  style="float:left;" >     			
		     			</div>
		     		</div>
		     		<div id="mainBody" >
		     			<div id="loginBody"  style="height:100%;">
		     						<form id="userForm" name = "userForm"  class = "loginForm" method = "post" action="${pageContext.request.contextPath }/userLogin">
		     							<table>
		     								<tr>
		     									<td class="loginTdLeft">
		     										<label for="user_name"><fmt:message key="common.userName" bundle="${messages}"/></label>
		     									</td>
		     									<td class="loginTdRight"> 
		     										<input type="text" id="user_name" name="loginName" class="name inputSize" style="border:1px solid #959595;height:24px;margin-bottom:22px;"	 tabindex="10" value=""/>
		     									</td>
		     								</tr>
		     								
		   									<tr>
			   									<td  class="loginTdLeft">
			   										<label  for="user_pass"><fmt:message key="common.passwd" bundle="${messages}"/></label>
			   									</td>
			   									<td  class="loginTdRight">
			   										<input type="password" id="user_pass" name="loginPassword" class="name inputSize" style="border:1px solid #959595;height:24px;margin-top:0px;margin-bottom:22px;"	 tabindex="10" value=""/>
			   									</td>
		   									</tr>
		   									
		   										<tr>
			   									<td  class="loginTdLeft">
			   										<label><fmt:message key="common.identifyCode" bundle="${messages}"/></label>
			   									</td>
			   									<td  class="loginTdRight">
			   										<div style="margin-bottom:14px;">
			   										<input type="text" name="checkCode" id="checkcode" class="check"   style="border:1px solid #959595;width: 110px;height:24px;margin-top:0px;margin-bottom:0px;"  tabindex="10" style="padding-top: 18px;height: 15px;"/>
			   										<a href="#" onClick="javascript:myRandReload()" alt="<fmt:message key="common.pleaseClickRegenerate" bundle="${messages}"/>" title="<fmt:message key="common.pleaseClickRegenerate" bundle="${messages}"/>" class="img" style="margin-top: 5px;"> 
													<img align="bottom" id="createcheckcode" style="width:100px;height:28px;" border="0">
													</a>
													<a id="bjc" href="javascript:myRandReload()" style="text-decoration: none;color:#4a97e3;margin-left:5px;">
													<img title="<fmt:message key="common.refreshCode" bundle="${messages}"/>" src="${pageContext.request.contextPath }/static/img/refresh.png"/>
													</a>
													</div>
			   									</td>
		   									</tr>
			     							<tr>
			     								<td  class="loginTdLeft">
			     								</td>
			     								<td  class="loginTdRight">
				     								<input type="checkbox" tabindex="90" value="forever" style="margin-top:0px;width:24px;height:16px;border:1px solid #959595;" id="rPassword" name="rPassword">
				     								<label for="rPassword" class="minFont" ><fmt:message key="common.automaticLoginNext" bundle="${messages}"/></label>		
													<span style="float:right;"><a id="wjmm"   class="minFont"  onmousemove="over();" onmouseout="out();" href="${pageContext.request.contextPath }/view/accout/acount/pwd.jsp" style="text-decoration: none;color:#4a97e3 "><fmt:message key="common.forgetPassword" bundle="${messages}"/></a></span>
			     								</td>
			     							</tr>
			     							<tr>
			     								<td  class="loginTdLeft"></td>
			     								<td  class="loginTdRight" style="padding-top:18px;">
			     										<div  name="login" id="login"  onclick="usersub();" style="margin-left:40px;width:174px;height:38px;background-color:#639D75; border-radius:5px; text-align:center;">
			     												<span class="noSelect" style="color:white;font-family: '微软雅黑';font-size:18px;float:left;position:relative;" ><fmt:message key="common.login" bundle="${messages}"/></span>
			     										</div>
			     								</td>
			     							</tr>
		     							</table>
		     						</form>
		     			</div>
		     			<div id="registerBody"  style="display:none;height:100%;">
		     					<form id="regForm" name="regForm"  method="post" action="/customer_search/registerUser" >
			     					<div>
			     						<div>
			     							<div class="regTdOne">
												<label for="inputUserName">用户名</label>
											</div>
											<div class="regTdTwo">
														<input type="text" id="inputUserName" onblur="fouceAccount()" onfocus="$('#J_UserNameTip').show();" class="inputSize" style="border:1px solid #959595;height:24px;margin-bottom:0px;"	name="loginName" >
			     										<div class="pw-tip" id="J_UserNameTip"
															style="position: relative; left: 254px; top: -38px; display: none;">
															<i class="pw-tip-arr"></i>
															<div class="pw-tip-bd">
																<div class="pw-strength">
																	账号必须由英文字母、数字(0-9)、汉字组成，长度在4-12个字符之间
																</div>
															</div>
														</div>
			     							</div>
			     							<div class="regTdThree" >
														<span id="userNameMessage" style="word-wrap:break-word; " class="smallerStyle regMessage"></span>
											</div>
			     										
			     							</div>
			     					</div>
			     						
			     					<div>
			     							<div class="regTdOne">
														<label for="inputPassword">用户密码</label>
											</div>
											<div  class="regTdTwo">
														<input type="password" id="inputPassword" name="loginPassword" class="inputSize"  style="border:1px solid #959595;height:24px;margin-bottom:0px;"
															onblur=" checkRegisterPassword()"  onfocus="$('#J_PwdTip').show();" onkeyup="getPasswordStrengthVerdict()">
		
														<div class="pw-tip" id="J_PwdTip"
															style="display: none ;position: relative; left: 254px; top: -60px;">
															<i class="pw-tip-arr"></i>
															<div class="pw-tip-bd">
																<div class="pw-strength">
																	<span class="tsl" data-phase-id="r_ui_pwd_strength">安全程度：</span>
																	<div class="pw-strength-bar">
																		<span class="pw-strength-1"></span>
																		<span class="pw-strength-2"></span>
																		<span class="pw-strength-3"></span>
																		<em></em>
																	</div>
																</div>
																<div class="pw-rule">
																 <ul style="list-style-type:square;margin-left:15px;">
																	<li>
																	<div class="pw-rule-item pw-rule-length">
																		<span class="tsl" 	data-phase-id="r_ui_pwdLengthTip">6-12个字符</span>
																	</div>
																	</li>
																	<li>
																	<div class="pw-rule-item pw-rule-legal">
																		<span class="tsl"
																			data-phase-id="r_ui_pwdCharacterTip">只能包含字母、数字以及标点符号（除空格）</span>
																	</div>
																	</li>
																</div>
															</div>
														</div>
											</div>
											<div class="regTdThree" >
														<span  id="passMessage" class="smallerStyle regMessage"></span>
											</div>	
			     					</div>
			     					<div>
			     							<div class="regTdOne">
													<label for="reinputPassword">确认密码</label>
											</div>
											<div class="regTdTwo">
													<input type="password" id="reinputPassword" class="inputSize"  style="border:1px solid #959595;height:24px;margin-bottom:0px;" onblur="checkrepassword()">
			     							</div>
			     							<div class="regTdThree" >
			     									 <span id="rePassMessage" class="smallerStyle regMessage"></span>
			     							</div>
			     					</div>
			     					 <div>
			     							<div class="regTdOne">
													<label for="inputEmail">邮箱地址</label>
											</div>
											<div class="regTdTwo" >
													<input type="text" id="inputEmail" name="email"  class="inputSize" style="border:1px solid #959595;height:24px;margin-bottom:0px;" onblur="checkEmail()">
			     							</div>
			     							<div class="regTdThree" >
			     									<span id="emailMessage" class="smallerStyle regMessage"></span>
			     							</div>
			     					 </div>
			     					 <div>
			     							<div class="regTdOne">
															<label>验证码</label>
											</div>
											<div style="float:left;width:252px;height:36px;margin-left:20px;margin-bottom:14px">
																<input align="top"  style="border:1px solid #959595;width: 110px;height:24px;margin-bottom:0px;" type="text" name="regCode" id="regCode"/>
																<a href="#"  style="margin-left:10px;" onClick="javascript:myRandReload()" alt="看不清，请点击重新生成"> 
																<img align="bottom" id="createregistercheckcode" width="112px"  border=0/>  
																</a>
			     							</div>
			     							<div id="againActivedMail" style="float:left;width:178px;height:36px;margin-left:2px;padding:5px 0px 2px 0px;display:none;">
			     						    <input type="button" class="mailBtn" value="未收到邮件，重新发送" onclick="timedown(this);displaymail();"/>
			     							</div>
			     					</div>
			     					<div>
			     						<div class="regTdOne"></div>
			     						
			     						<div  style="float:left;width:252px;margin-left:20px;margin-bottom:18px">
											<input type="hidden" name="<%=tokemProcessor.FORM_TOKEN_KEY %>" value="<%=token %>">
											<input type="checkbox" name="agree"  id="checkbox1" style="margin-top:0px;width:24px;height:16px;border:1px solid #959595;"  checked="checked" onclick="changeAgree(this)" />
			     							<label for="checkbox1" class="minFont" >我已阅读并同意</label>
											<a href="#"><span class="minFont" style="color:#4a97e3" >《用户注册协议》</span>
											</a>
			     						</div>

			     						<div class="regTdThree">
			     						</div>
			     					</div>
			     					<div>
			     						<div class="regTdOne"></div>
			     						<div class="regTdTwo" >
			     								<div  id="submintButton" onclick="userSubmit();" style="margin-left:40px;width:174px;height:38px;background-repeat:no-repeat;background-image:url(/customer_search/static/img/yblogo/loginBg.png)">
			     										<span  class="noSelect"  style="color:white;font-family: '微软雅黑';font-size:18px;float:left;position:relative;left:68px;top:8px;cursor:pointer" >注册</span>
			     								</div>
			     						    
			     						</div>
			     						<div class="regTdThree">
			     						</div>
			     					</div>
			     				</form>
			     		</div>
		     		 </div>
     		</div>
     		
     		<div id="main_right" class="commonStyle" >
     		 	<a class="commonStyle"  href="http://www.trade-easy.com.cn/" target="_blank" style="position:relative;top:15px;"><fmt:message key="common.returnHome" bundle="${messages}"/></a>
     	     	<a style="position:relative;top:15px;padding-left: 20px;" onmouseover="this.style.textDecoration='underline';this.style.color='#ec5565'" onMouseOut="this.style.textDecoration='none';this.style.color='#434343'" href="#" class="commonStyle" onclick="testLogin('trade');"><fmt:message key="common.freeTrial" bundle="${messages}"/></a>
     		</div>
     	</div>
     </div>
   
     <div id="dlgNew" style="display:none;padding:0px">
			<div id="dlgTip" style="font-size:14px;font-family: 微软雅黑;color:#ec5565;margin-bottom:1px;">温馨提示:</div>
			<hr  style="margin:0px;border-top-color:#ED5564;border-bottom-color:white";>
			<div style="width:390px;margin:1px auto;">
			<span class="minFont">
			本系统目前不支持IE8以下的版本，包括IE8，为了更好的使用系统请使用其它浏览器，谢谢！
			</span>
			<div>
				<img style="margin-left:13px;"  src="${pageContext.request.contextPath }/static/img/yblogo/google.png"/>
				<div class="grayBtnBdiv" style="display:inline-block;margin-left:6px;">
					<div  class="grayBtn minFont noSelect"  onclick="javascript:window.location.href='http://dlsw.baidu.com/sw-search-sp/aladin/2014_07_09_12/bind1/14744/ChromeStandaloneSetup35.0.1916.114.1401167998.exe'">下载谷歌浏览器</div>
				</div>
				<img style="margin-left:44px;" src="${pageContext.request.contextPath }/static/img/yblogo/firefox.png"/>
				<div class="grayBtnBdiv" style="display:inline-block;margin-left:6px;" >
					<div class="minFont noSelect "  onclick="javascript: window.location.href='http://dlsw.baidu.com/sw-search-sp/gaosu/2014_06_30_15/bind1/11843/Firefox-setup30.0.0.5269_11843_BDdl.exe'">下载火狐浏览器</div>
		  		</div>
		   </div>
		   	<div class="grayBtnSdiv"  style="margin-top:17px;margin-left:152px;" >
			<span class="minFont noSelect" onclick="javascript:art.dialog({id:'dlgNew'}).close();">我知道了</span>
			</div>
		</div>
	</div>
	  <div id="displayMail" style="display: none;padding:0px">
	   <div style="display:block;" id="sendgif">
    	   <img src="${pageContext.request.contextPath }/static/img/mail/progress.gif"></img>
       </div>
    	<div style="display:none;" id="sendsuccess"> 
			        	<p style="float: left">
			        	<img width="33px" height="30px" src="${pageContext.request.contextPath }/static/img/mail/ok.png">&nbsp;&nbsp;
			        	<span style="font-size:22px; color:#666666;" >发送成功</span>
			        	</p>
	   </div>
	   <div style="display:none;" id="senderror"> 
			        	<p style="float: left">
			        	<span style="font-size:22px; color:black;" >发送失败</span>
			        	</p>
	   </div>
       <div class="grayBtnSdiv"  style="margin-top:17px;margin-left:152px;" >
	   <span class="minFont noSelect" onclick="javascript:art.dialog({id:'displayMail'}).close();">确定</span>
	   </div>
 </div>
 
  </body>
</html>
