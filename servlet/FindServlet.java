package com.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FindDAO;
import com.pojo.Goods;
import com.pojo.MakeUP;

public class FindServlet extends HttpServlet {

	private FindDAO findDAO = new FindDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		
		if("findlip".equals(method)){
			doFindLip(request,response);
		}
		if("findface".equals(method)){
			doFindFace(request, response);
		}
		if("findeye".equals(method)){
			doFindEye(request, response);
		}
		if("findtall".equals(method)){
			doFindTall(request, response);
		}
		if("findlow".equals(method)){
			doFindLow(request, response);
		}
		if("findgoods".equals(method)){
			doFindGoods(request,response);
		}
		if("findmakelip".equals(method)){
			doFindMakeLip(request,response);
		}
		if("findmakeface".equals(method)){
			doFindMakeFace(request,response);
		}
		if("findmakeeye".equals(method)){
			doFindMakeEye(request,response);
		}

		
	}
	private void doFindGoods(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String mutype = request.getParameter("mutype");
		
		if("lip".equals(mutype)){	
			List<MakeUP> list = findDAO.findlgoods( mutype);
			HttpSession session = request.getSession();
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		if("face".equals(mutype)){
			List<MakeUP> list = findDAO.findfgoods( mutype);
			HttpSession session = request.getSession();
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		if("eye".equals(mutype)){
			List<MakeUP> list = findDAO.findegoods( mutype);
			HttpSession session = request.getSession();
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
	}
	private void doFindMakeEye(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String makeuptype = request.getParameter("makeuptype");
		List<MakeUP> list = findDAO.findmeye(makeuptype);
		HttpSession session = request.getSession();
		LinkedHashMap map = new LinkedHashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		
		String mutype = "眼部";
		session.setAttribute("mutype", mutype);
		request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		
	}
	private void doFindMakeFace(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String makeuptype = request.getParameter("makeuptype");
		List<MakeUP> list = findDAO.findmface(makeuptype);
		HttpSession session = request.getSession();
		LinkedHashMap map = new LinkedHashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		String mutype = "面部";
		session.setAttribute("mutype", mutype);
//		request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		response.sendRedirect("showgoods.jsp");
	}
	private void doFindMakeLip(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String makeuptype = request.getParameter("makeuptype");
		List<MakeUP> list = findDAO.findmlip(makeuptype);
		HttpSession session = request.getSession();
		LinkedHashMap map = new LinkedHashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		
		String mutype = "唇部";
		session.setAttribute("mutype", mutype);
//		request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		response.sendRedirect("showgoods.jsp");
	}
	
	private void doFindEye(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String eyetype = request.getParameter("eyetype");
		List<MakeUP> list = findDAO.findeye(eyetype);
		HttpSession session = request.getSession();
		LinkedHashMap map = new LinkedHashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		request.getRequestDispatcher("showgoods.jsp").forward(request, response);
	}
	
	private void doFindFace(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String facetype = request.getParameter("facetype");
		List<MakeUP> list = findDAO.findface(facetype);
		HttpSession session = request.getSession();
		LinkedHashMap map = new LinkedHashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		request.getRequestDispatcher("showgoods.jsp").forward(request, response);
	}
	
	private void doFindLow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String mutype = request.getParameter("mutype");
		
		if("lip".equals(mutype)){
			List<MakeUP> list = findDAO.findllow(mutype);
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			HttpSession session = request.getSession();
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		if("face".equals(mutype)){
			List<MakeUP> list = findDAO.findflow( mutype);
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			HttpSession session = request.getSession();
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		if("eye".equals(mutype)){
			List<MakeUP> list = findDAO.findelow( mutype);
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			HttpSession session = request.getSession();
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		
		
	}
	private void doFindTall(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String mutype = request.getParameter("mutype");
		
		if("lip".equals(mutype)){	
			List<MakeUP> list = findDAO.findltall( mutype);
			HttpSession session = request.getSession();
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		if("face".equals(mutype)){
			List<MakeUP> list = findDAO.findftall( mutype);
			HttpSession session = request.getSession();
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		if("eye".equals(mutype)){
			List<MakeUP> list = findDAO.findetall( mutype);
			HttpSession session = request.getSession();
			LinkedHashMap map = new LinkedHashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			request.getRequestDispatcher("showgoods.jsp").forward(request, response);
		}
		
	}
	private void doFindLip(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String liptype = request.getParameter("liptype");
		List<MakeUP> list = findDAO.findlip(liptype);
		HttpSession session = request.getSession();
		LinkedHashMap map = new LinkedHashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		request.getRequestDispatcher("showgoods.jsp").forward(request, response);
	}

}
