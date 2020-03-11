package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.dao.GoodsDAO;
import com.dao.PayDAO;
import com.pojo.Address;
import com.pojo.Detail;
import com.pojo.Orders;

public class PayServlet extends HttpServlet {

	private PayDAO payDAO = new PayDAO();
	private GoodsDAO goodsDAO = new GoodsDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		if("pay".equals(method)){
			doPay(request,response);
		}
		if("showaddress".equals(method)){
			doShowAddress(request, response);
		}
		if("addarea".equals(method)){
			doAddArea(request,response);
		}
		if("tjorder".equals(method)){
			doAddOrder(request,response);
		}
		if("changestatus".equals(method)){
			doChangeStatus(request,response);
		}
		
	}


		private void doChangeStatus(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String status = request.getParameter("status");
		String orderid = request.getParameter("orderid");
		int n = payDAO.changesta(status,orderid);
		if(n>0){
			response.sendRedirect("main.jsp");
		}
		
	}


		private void doAddOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
			String userid = request.getSession().getAttribute("userid")+"";
			String sumprice = request.getParameter("sumprice");
			String paymethod = request.getParameter("paymethod");
			String addressid = request.getParameter("addressid");
			String orderid = UUID.randomUUID().toString().replace("-", "").substring(0, 16);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String ordertime = sdf.format(System.currentTimeMillis());
			String status = "待支付";
			String goodsid = request.getParameter("goodsid");
			
	//		request.getSession().setAttribute("orderid", orderid);
			
			String[] goodsids = goodsid.split(","); 
			String goodsprice = request.getParameter("goodsprice");
			String[] goodsprices = goodsprice.split(",");
			String goodsnum = request.getParameter("goodsnum");
			String[] goodsnums = goodsnum.split(",");
			
			int n = payDAO.addorder(userid, sumprice, orderid, ordertime,addressid,status);
			if(n>0){
				int n2=0;
				for(int i=0;i<goodsids.length;i++){
					n2 = payDAO.adddetail(goodsids[i], goodsnums[i], goodsprices[i], orderid);
					if(n2>0){
						int n3 = payDAO.deleteshopar(goodsids[i],userid);
						
					}
				}
				response.getWriter().print(orderid);
			}
			
	}

		private void doAddArea(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
			
			String userid = request.getSession().getAttribute("userid")+"";
			String username = request.getParameter("username");
			String userphone = request.getParameter("userphone");
			String province = request.getParameter("province");
			String city = request.getParameter("city");
			String area = request.getParameter("area");
			String zipcode = request.getParameter("zipcode");
			String detail = request.getParameter("address");
			
			int n = payDAO.addarea(userid,username,userphone,province,city,area,zipcode,detail);
			if(n>0){
				List<Address> list = payDAO.FindAddress(userid);
				Map map = new HashMap();
				map.put("list", list);
				request.getSession().setAttribute("map", map);
				response.sendRedirect("pay.jsp");
			}
			
	}

	/**
	 * address.jsp���ַ*/
		private void doShowAddress(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

			String userid = request.getSession().getAttribute("userid")+"";
			List<Address> list = payDAO.FindAddress(userid);
			Map map = new HashMap();
			map.put("list", list);
			request.getSession().setAttribute("map", map);
			
			response.sendRedirect("address.jsp");
			 
			
	}

		private void doPay(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
		
			String s = request.getParameter("list");
			String sumprice = request.getParameter("sumprice");
			request.getSession().setAttribute("sumprice", sumprice);
			
			JSONArray json = JSONArray.fromObject(s);
			List list = new ArrayList();
			for(int i=0;i<json.size();i++){ 
		         
				  JSONObject jo = json.getJSONObject(i); 
				  list.add(jo);
			} 
			request.getSession().setAttribute("list", list);
			
			
			String userid = request.getSession().getAttribute("userid")+"";
			
			
			List<Address> list2 = payDAO.FindAddress(userid);
			Map map = new HashMap();
			map.put("list", list2);
			
			request.getSession().setAttribute("map", map);
			
			response.getWriter().print("[]");
	}
}
