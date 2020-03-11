package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.dao.UserDAO;
import com.pojo.Collection;
import com.pojo.Orders;
import com.pojo.Userinfo;

public class UserServlet extends HttpServlet {

	private UserDAO userDAO = new UserDAO();
	private Verification Code = new Verification();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		if("login".equals(method)){
			doLogin(request,response);
		}
		
		if("regist".equals(method)){
			doRegist(request,response);
		}
		
		if("checkphone".equals(method)){
			doCheckPhone(request,response);
		}
		
		if("checkCode".equals(method)){
			doCheckCode(request,response);
		}
		
		if("addCollection".equals(method)){
			doAddCollection(request,response);
		}
		if("login1".equals(method)){
			doLogin1(request,response);
		}
		if("quit".equals(method)){
			doQuit(request,response);
		}
		if("showorder".equals(method)){
			doShowOrder(request,response);
		}
		if("findorder".equals(method)){
			doFindStatus(request,response);
		}
		if("finduser".equals(method)){
			doFindUser(request,response);
		}
		if("selectorder".equals(method)){
			doSelectOrder(request,response);
		}
		if("showcollect".equals(method)){
			doShowCollect(request,response);
		}
	}





	private void doShowCollect(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String userid = request.getSession().getAttribute("userid")+"";
		List<Collection> list = userDAO.showcollect(userid);
		Map map = new HashMap();
		map.put("list", list);
		request.getSession().setAttribute("map", map);
		response.sendRedirect("collection.jsp");
		
	}





	private void doSelectOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		String userid = request.getSession().getAttribute("userid")+"";
		String orderid = request.getParameter("orderid");
	//	System.out.println(orderid);
		List<Orders> list = userDAO.findorderun(userid,orderid);
		Map map = new HashMap();
		map.put("list", list);
		request.getSession().setAttribute("map1", map);
		HttpSession session = request.getSession();
		session.setAttribute("orderid", orderid);
		response.sendRedirect("orderdetail.jsp");
	}





	private void doFindUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String userid = request.getSession().getAttribute("userid")+"";
		Userinfo user = userDAO.finduser(userid);
		
		request.getSession().setAttribute("user", user);
		
		response.sendRedirect("person.jsp");
	}





	private void doFindStatus(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		String unfinish = request.getParameter("unfinish");
		String finish = request.getParameter("finish");
		
		int count1 = userDAO.selectorder1(unfinish);
		
		int count2 = userDAO.selectorder2(finish);
		
		Map map = new HashMap();
		map.put("count1", count1);
		map.put("count2", count2);
		
		JSONObject s = JSONObject.fromObject(map);
		response.getWriter().print(s);
		
	}





	private void doShowOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		String userid = request.getSession().getAttribute("userid")+"";
		String status = request.getParameter("status");
		
			List<Orders> list = userDAO.findorder(userid,status);
			
			Map map = new HashMap();
			map.put("list", list);
			request.getSession().setAttribute("map", map);
			response.sendRedirect("order.jsp");
		
	}





	private void doQuit(HttpServletRequest request, HttpServletResponse response) throws IOException {

		HttpSession session = request.getSession();//防止创建Session
		if(session == null){
			response.sendRedirect("main.jsp");
			return;
		}
		
		session.removeAttribute("userinfo");
		session.removeAttribute("username");
		session.removeAttribute("userid");
		
		response.sendRedirect("main.jsp");
	}





	private void doLogin1(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		Userinfo userinfo = userDAO.login1(phone,password);
		HttpSession session = request.getSession();
		if(userinfo!=null){
			session.setAttribute("username", userinfo.getUsername());
			session.setAttribute("userinfo", userinfo);
			request.getSession().setAttribute("userid", userinfo.getUserid());
			
			JsonConfig config = new JsonConfig();
			String s = JSONArray.fromObject(userinfo, config).toString();
			response.getWriter().print("ture");
		}
	}

	private void doAddCollection(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		Userinfo userinfo = (Userinfo) request.getSession().getAttribute("userinfo");
		if(userinfo == null){
			response.getWriter().print("false");
			return ;
		}
		
		String goodsid1 = request.getParameter("goodsid");
		Integer goodsid = Integer.valueOf(goodsid1);
		
		boolean f = userDAO.checkUser(userinfo.getUserid(),goodsid);
		
		if(f){
			response.getWriter().print("hasCollection");
			return ;
		}else {
			int n = userDAO.addCollection(userinfo.getUserid() , goodsid);
			
			if(n>0){
				response.getWriter().print("yes");
			}
		}
	}

	private void doCheckCode(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		String pageCode = request.getParameter("pageCode");
		String checkCode = (String) request.getSession().getAttribute("checkCode");
		if (pageCode.equalsIgnoreCase(checkCode)) {			
			response.getWriter().print("");   	 
	    }else{
	    	response.getWriter().print("*验证码错误！");
	    }
	}

	private void doCheckPhone(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String phone = request.getParameter("phone");
		boolean f = userDAO.check(phone);
		if(f){
			response.getWriter().print("*该手机号已被注册！");	
			
		}else{
			response.getWriter().print("");
		}	
	}

	private void doRegist(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	    String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
		String username = request.getParameter("username");
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		int n = userDAO.regist(username,password,phone,sex,email);
		Userinfo userinfo = userDAO.saveuser(phone,username);
		session.setAttribute("userinfo", userinfo);
		session.setAttribute("userid", userinfo.getUserid());
		if(n>0){			
			request.getRequestDispatcher("person.jsp").forward(request, response);
		}else {
			response.sendRedirect("regist.jsp");
		}
		
	}

	private void doLogin(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		Userinfo userinfo = userDAO.login(phone,password);

		if(userinfo!=null){
			request.getSession().setAttribute("userphone", userinfo.getPhone());
			request.getSession().setAttribute("userinfo", userinfo);
			request.getSession().setAttribute("userid", userinfo.getUserid());
			request.getSession().setAttribute("username", userinfo.getUsername());
			
			request.getRequestDispatcher("main.jsp").forward(request, response);
		}
	}
	
}
