
package com.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import com.dao.CommentDAO;
import com.dao.GoodsDAO;
import com.pojo.Comment;
import com.pojo.Goods;
import com.pojo.Hot;
import com.pojo.shopCar;



public class GoodsServlet extends HttpServlet {

	private GoodsDAO goodsDAO = new GoodsDAO();
	private CommentDAO commentDAO = new CommentDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		if("fenye".equals(method)){
			doFenye(request,response);
			}
		if("findbyname".equals(method)){
			doFindByName(request,response);
		}
		if("hotgoods".equals(method)){
			doselectHot(request,response);
		}
		
		if("selectgoods".equals(method)){
			doSelectGoods(request,response);
		}
		if("addCar".equals(method)){
			doAddCar(request,response);
		}
		if("findcolor".equals(method)){
			doFindColor(request,response);
		}
		if("findbyid".equals(method)){
			doFindById(request,response);
		}
		if("deletefromcar".equals(method)){
			doDeleteFromCar(request,response);
		}
		if("addcar2".equals(method)){
			doAddCar2(request,response);
		}
		if("findbyid2".equals(method)){
			doFindById2(request,response);
		}
		if("findshopcar".equals(method)){
			doFindShopCar(request,response);
		}
		if("deleteshopcar".equals(method)){
			doDeleteShopCar(request,response);
		}
		
		if("changenum".equals(method)){
			doChange(request, response);
		}
		if("changenum2".equals(method)){
			doChangeNum2(request, response);
		}
	}

	private void doChangeNum2(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String op = request.getParameter("op");
		String goodsid= request.getParameter("goodsid");
		
		Goods goods = goodsDAO.findbyid(goodsid);
		HttpSession session = request.getSession();
		
		Map<Goods, Integer> map = (Map<Goods, Integer>) session.getAttribute("map");
		Integer integer = map.get(goods);
		
		if("jia".equals(op)){
			map.put(goods, integer+1);
		}
		
		if("jian".equals(op)){
			map.put(goods, integer-1);
		}
		
		response.getWriter().print("yes");
	
	}

	private void doChange(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String op = request.getParameter("op");
		String goodsid= request.getParameter("goodsid");
		HttpSession session = request.getSession();
		String userid = session.getAttribute("userid")+"";
		if("jia".equals(op)){
			
			int n = goodsDAO.changenum(userid, goodsid);
			if(n>0){
				List<shopCar> list = goodsDAO.findshopcar(userid);
				Map map = new HashMap();
				map.put("list", list);
				session.setAttribute("map", map);
				response.sendRedirect("shopbag1.jsp");
			}
		}
		if("jian".equals(op)){
			int n = goodsDAO.changen(userid, goodsid);
			if(n>0){
				List<shopCar> list = goodsDAO.findshopcar(userid);
				Map map = new HashMap();
				map.put("list", list);
				session.setAttribute("map", map);
				response.sendRedirect("shopbag1.jsp");
			}
		}
	}

	private void doDeleteShopCar(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String goodsid1 = request.getParameter("goodsid");
	//	System.out.println(goodsid1);
		String userid = request.getSession().getAttribute("userid")+"";
		int n = goodsDAO.deleteshopcar(goodsid1, userid);
		if(n>0){
			HttpSession session = request.getSession();
			List<shopCar> list = goodsDAO.findshopcar(userid);
			Map map = new HashMap();
			map.put("list", list);
			session.setAttribute("map", map);
			response.sendRedirect("shopbag1.jsp");
		}
	}

	private void doFindShopCar(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		
		HttpSession session = request.getSession();
		String userid = session.getAttribute("userid")+"";
		List<shopCar> list = goodsDAO.findshopcar(userid);
		Map map = new HashMap();
		map.put("list", list);
		session.setAttribute("map", map);
		response.sendRedirect("shopbag1.jsp");
	}

	private void doFindById2(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String goodsid = request.getParameter("goodsid");
		String numString = request.getParameter("num");
		Integer num = Integer.parseInt(numString);
		String goodsid1 = request.getParameter("goodsid1");
		String userid = request.getSession().getAttribute("userid")+"";
		
		
		int n = goodsDAO.addshopcar(goodsid, num, userid);
		
		if(n>0){
			int n1 = goodsDAO.deleteshopcar(goodsid1,userid);
			
			Goods goods = goodsDAO.findbyid(goodsid);
			Map map = new HashMap();
			map.put("goods", goods);
			request.getSession().setAttribute("map", map);
						
			JsonConfig config = new JsonConfig();
			String s = JSONArray.fromObject(goods, config).toString();

			response.getWriter().print(s);
//			if(n1>0){
//				response.sendRedirect("shopbag1.jsp");
//			}
			
		}
		
	}

	private void doAddCar2(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

			String goodsid = request.getParameter("goodsid");
			String numString = request.getParameter("num");
			String userid = request.getSession().getAttribute("userid")+"";
			
			HttpSession session = request.getSession();
			request.getSession().setAttribute("userid", userid);
			Integer num = Integer.parseInt(numString);
			
			shopCar shopCar = goodsDAO.findshopcar2(goodsid,userid);
		//	System.out.println(shopCar);
			if(shopCar==null){
				int n = goodsDAO.addshopcar(goodsid, num, userid);
		//		System.out.println(n);
				if(n>0){
					List<shopCar> list = goodsDAO.findshopcar(userid);
					Map map = new HashMap();			
					map.put("list", list);
					session.setAttribute("map", map);
					response.sendRedirect("shopbag1.jsp");
				//	System.out.println(map);
				}
			}else{
				int n = goodsDAO.updateshopcar(goodsid, num, userid);
			//	System.out.println(n);
				if(n>0){
					List<shopCar> list = goodsDAO.findshopcar(userid);
					Map map = new HashMap();
					map.put("list", list);
					request.getSession().setAttribute("map", map);
					response.sendRedirect("shopbag1.jsp");
				}
			}
	}

	private void doDeleteFromCar(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		HttpSession session = request.getSession();
		Map map = (Map) session.getAttribute("map");
		
		String goodsid = request.getParameter("goodsid");
		Goods goods = goodsDAO.findbyid(goodsid);
		map.remove(goods);
		response.sendRedirect("shopbag.jsp");
	}

	private void doFindById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
			String goodsid = request.getParameter("goodsid");
			String goodsid1 = request.getParameter("goodsid1");
			String numString = request.getParameter("num");
			HttpSession session = request.getSession();
			Goods goods1 = goodsDAO.findbyid1(goodsid1);
			Map map1 = (Map) session.getAttribute("map");
		//	System.out.println(map1);
		//	System.out.println(goods1);
			map1.remove(goods1);
			
			Map<Goods, Integer> map = (Map<Goods, Integer>) session.getAttribute("map");
			
			Goods goods = goodsDAO.findbyid(goodsid);
			
			map.put(goods, Integer.parseInt(numString));
			session.setAttribute("map", map);			
			JsonConfig config = new JsonConfig();
			String s = JSONArray.fromObject(goods, config).toString();

			response.getWriter().print(s);
			
//			response.sendRedirect("shopbag.jsp");
	}

	private void doFindColor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String goods_name = request.getParameter("goodsname");
		List<Goods> list = goodsDAO.findcolor(goods_name);
		JsonConfig config = new JsonConfig();
		String s = JSONArray.fromObject(list, config).toString();
		response.getWriter().print(s);
	}

	private void doAddCar(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String goodsid = request.getParameter("goodsid");
		String numString = request.getParameter("num");
		HttpSession session = request.getSession();
		
			
			Map<Goods, Integer> map = (Map<Goods, Integer>) session.getAttribute("map");
			if(map == null){
				map = new HashMap<Goods, Integer>();
			}
			Goods goods = goodsDAO.findbyid(goodsid);
			
			Integer num = map.get(goods);
			if(num == null){
				map.put(goods, Integer.parseInt(numString));
			}else {
				map.put(goods, Integer.parseInt(numString)+num);
			}
			session.setAttribute("map", map);
			response.sendRedirect("shopbag.jsp");
		
		//	List<shopCar> shopCar = goodsDAO.findshopcar(userid);
		//	int carnum = goodsDAO.findcarnum(userid);
		//	response.getWriter().print(carnum);
		//	Map<Goods, Integer> map = session.getAttribute();
		//	response.sendRedirect("shopbag.jsp");
	}

	private void doSelectGoods(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String goodsid = request.getParameter("goodsid");
	//	System.out.println(goodsid);
		List<Goods> list = goodsDAO.selectgoods(goodsid);
		
		
		JsonConfig config = new JsonConfig();
		String s = JSONArray.fromObject(list, config).toString();
		
		response.getWriter().print(s);
	}

	private void doFindByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String goodsname = request.getParameter("goodsname");
		List<Goods> list = goodsDAO.findGoods(goodsname);
//		for (Goods goods : list) {
//			GoodsSearchService.addIndex(goods);
//		}
		List<Comment> list2 = commentDAO.selectpl(goodsname);
		Map map = new HashMap();			
		map.put("list", list);
		
		map.put("list2", list2);
		System.out.println(list2+"aaa");
		request.setAttribute("map", map);
		request.getRequestDispatcher("goodsDetail.jsp").forward(request, response);
		
	}

	private void doselectHot(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		List<Hot> list = goodsDAO.selectHot();
		
		JsonConfig config = new JsonConfig();
		String s = JSONArray.fromObject(list, config).toString();		
		response.getWriter().print(s);
	}
		

	private void doFenye(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		int page = 1;
		int size = 3;

		String pageString = request.getParameter("page");
		if (pageString != null && pageString.trim().length() > 0) {
			page = Integer.parseInt(pageString);
		}

		String sizeString = request.getParameter("size");
		if (sizeString != null && sizeString.trim().length() > 0) {
			size = Integer.parseInt(sizeString);
		}

		if (page < 1) {
			page = 1;
		}

		int count = goodsDAO.getCount();

		int pageCount = count % size == 0 ? count / size : count / size + 1;

		if (page > pageCount) {
			page = pageCount;
		}

		List<Goods> list = goodsDAO.fenye(page, size);

		Map map = new HashMap();
		map.put("page", page);
		map.put("size", size);
		map.put("count", count);
		map.put("pageCount", pageCount);
		map.put("list", list);

		request.setAttribute("map", map);
		request.getRequestDispatcher("").forward(request, response);
	}
	
	
}
