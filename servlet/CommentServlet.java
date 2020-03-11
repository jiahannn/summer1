package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CommentDAO;
import com.pojo.Comment;

public class CommentServlet extends HttpServlet {

	private CommentDAO commentDAO = new CommentDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		
		if("addcomment".equals(method)){
			doAddComment(request,response);
		}
		if("selectpl".equals(method)){
			doSelectPl(request,response);
		}
		if("deletepl".equals(method)){
			doDeletePl(request,response);
		}
	}
	private void doDeletePl(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String commentid = request.getParameter("commentid");
		int n = commentDAO.deletepl(commentid);
		if(n>0){
			response.sendRedirect("orderdetail.jsp");
		}
	}
	private void doSelectPl(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String userid = request.getSession().getAttribute("userid")+"";
		List<Comment> list = commentDAO.selectyhpl(userid);
		Map map = new HashMap();
		map.put("list", list);
		request.getSession().setAttribute("map2", map);
		response.getWriter().print("success");
	}
	private void doAddComment(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String comment = request.getParameter("comment");
		String goodsname = request.getParameter("goodsname");
		String username = request.getSession().getAttribute("username")+"";
		String userid = request.getSession().getAttribute("userid")+"";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String pltime = sdf.format(System.currentTimeMillis());
		
		int n = commentDAO.addcomment(comment,goodsname,username,userid,pltime);
		if(n>0){
			List<Comment> list = commentDAO.selectyhpl(userid);
			Map map = new HashMap();
			map.put("list", list);
			request.getSession().setAttribute("map2", map);
			response.sendRedirect("orderdetail.jsp");
		}
	}
}
