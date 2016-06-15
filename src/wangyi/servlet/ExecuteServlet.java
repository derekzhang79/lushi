package wangyi.servlet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import utils.EngineHelper;
import wangyi.handler.ClientHandler;
import wangyi.handler.FavoriteHandler;
import wangyi.handler.LoginHandler;
import wangyi.handler.PracticeHandler;
import wangyi.handler.RegHandler;


public class ExecuteServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		
		String params=request.getParameter("parmas");
		System.out.println(params);
		
		String[] parts=params.split(",");
		
		// handle login event 
		if(parts[0].equals("routes.user.login"))
		{
			LoginHandler.login(parts, request, response);
		}
		else if(parts[0].equals("routes.user.regUser"))
		{
			RegHandler.handle(parts, request, response);
		}	
		else if(parts[0].equals("routes.user.logout"))
		{
			LoginHandler.logout(parts, request, response);
		}
		
		else if(parts[0].equals("legend.practice.getMoney"))
		{
			PracticeHandler.getMoney(parts, request, response);
		}
		
		else if(parts[0].equals("legend.favorites.getCards"))
		{
			FavoriteHandler.getCards(parts, request, response);
		}
		else if(parts[0].equals("legend.favorites.getPacks"))
		{
			FavoriteHandler.getPacks(parts, request, response);
			
		}
		else if(parts[0].equals("legend.favorites.newPack"))
		{
			FavoriteHandler.newPack(parts, request, response);
		}
		else if(parts[0].equals("legend.favorites.storePack"))
		{
			FavoriteHandler.storePack(parts, request, response);
		}
		
		else if(parts[0].equals("legend.practice.begin"))
		{
			PracticeHandler.begin(parts, request, response);			
		}
		else if(parts[0].equals("legend.client.field"))
		{
			ClientHandler.field(parts, request, response);
		}
		else if(parts[0].equals("legend.client.getCard"))
		{
			ClientHandler.getCard(parts, request, response);
		}
		else if(parts[0].equals("legend.client.connect"))
		{
			ClientHandler.connect(parts, request, response);
		}
		else if(parts[0].equals("legend.client.userCard"))
		{
			ClientHandler.useCard(parts, request, response);
		}
		else if(parts[0].equals("legend.client.next"))
		{
			ClientHandler.next(parts, request, response);
		}
		else if(parts[0].equals("legend.client.attack"))
		{
			ClientHandler.attack(parts, request, response);
		}
		else if(parts[0].equals("legend.client.userSkill"))
		{
			ClientHandler.useSkill(parts, request, response);
		}
		else if(parts[0].equals("legend.client.surrender"))
		{
			ClientHandler.surrender(parts, request, response);
		}
	}
	
		
	
	
}















