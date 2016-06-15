<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="wangyi.UserBean"%>

<%@ page import="wangyi.Game"%>
<%@ page import="wangyi.dao.GameDao"%>
<%@ page import="utils.SpringFactory"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>百度</title>
	<link rel="stylesheet" href="css/base.css" media="all" />
</head>
<body style="height:100%; margin: 0;padding: 0;" scroll="no">

<% 
		UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
	
		if(currentUser==null)
		{
	%>
	<script>location.href="index.jsp";</script>
	<% 
		}
		else
		{
			GameDao gameDao=(GameDao)SpringFactory.getFactory().getBean("gameDao");
			Game game=gameDao.getGame(currentUser.getUserName());
			if(game.getUserName1().equals("") || game.getUserName2().equals(""))
			{
	%>
				<p>等待中</p>
				
				<script>
					function refreshPage()
					{
						this.location.href=this.location.href;
					}
					
					setTimeout(refreshPage, 5000);
				
				</script>
	<%
			}
			else
			{
	%>

    <script src="js/jquery-1.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.js" type="text/javascript"></script>
	<script src="js/core.js" type="text/javascript"></script>
    <script src="js/ui.js" type="text/javascript"></script>
    <script src="js/legend.js" type="text/javascript"></script>
    
    <% 
			}
		}
	%>
</body>
</html>