package com.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;

import com.dao.SerachDAO;
import com.pojo.Goods;
import com.pojo.MakeUP;
import com.service.GoodsSerachService;

public class SerachServlet extends HttpServlet {

	private GoodsSerachService goodsSerachService = new GoodsSerachService();
	private SerachDAO serachDAO = new SerachDAO();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		
		if("xxx".equals(method)){
			doXXX(request,response);
		}
		
		if("serach".equals(method)){
			try {
				doSerach(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void doXXX(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		List<MakeUP> list1 = serachDAO.findgoods();
		List<MakeUP> list3 = serachDAO.findgoods1();
		List<MakeUP> list4 = serachDAO.findgoods2();
		for(MakeUP goods : list1){
			goodsSerachService.addIndex(goods);
		}
		for(MakeUP goods: list3){
			goodsSerachService.addIndex(goods);
		}
		for(MakeUP goods: list4){
			goodsSerachService.addIndex(goods);
		}
		
		
	}

	private void doSerach(HttpServletRequest request,
			HttpServletResponse response) throws IOException, InvalidTokenOffsetsException, ServletException {

		String keyword = request.getParameter("keyword");
		List<MakeUP> list = goodsSerachService.search(keyword,false, 1, 20);
//		for(MakeUP goods : list){
//			System.out.println(goods.getGoodsid()+"\t"+goods.getGoods_name()+"\t"+goods.getGoods_name1()+"\t"+goods.getGoods_desc()+"\t"+goods.getGoodstype()+"\t"+goods.getGoods_price());
//			
//		}
//		System.out.println(list+"bbc");
		
		
		Map map = new HashMap();
		map.put("list", list);
		request.getSession().setAttribute("map3", map);
		request.getRequestDispatcher("show.jsp").forward(request, response);
		
	}
}
