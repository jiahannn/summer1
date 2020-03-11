package com.dao;

import java.util.List;

import com.pojo.Address;
import com.pojo.Orders;
import com.util.DbUtil;

public class PayDAO {

	public int addorder(String userid, String sumprice, String orderid,
			String ordertime, String addressid, String status) {
		String sql = "insert into orders(orderid, userid, sumprice, ordertime,address,status) values(?,?,?,?,?,?)";
		int n = DbUtil.zsg(sql, orderid,userid, sumprice, ordertime,addressid, status); 
		if(n>0){
			return n;
		}
		return 0;
	}

	public int adddetail(String goodsids, String goodsnums, String goodsprices,
			String orderid) {
		String sql = "insert into details(goodsid,goodsnum,goodsprice,orderid) values(?,?,?,?)";
		int n = DbUtil.zsg(sql, goodsids, goodsnums, goodsprices, orderid);
		if(n>0){
			return n;
		}
		return 0;
	}

	public List<Address> FindAddress(String userid) {
		
		String sql = "select addressid, province, city, area, userid, username, userphone, zipcode, areadetail from address where userid=?";
		List<Address> list = DbUtil.query(Address.class, sql, userid);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public int addarea(String userid, String username, String userphone, String province,
			String city, String area, String zipcode, String detail) {
	
		String sql = "insert into address(userid,username,userphone,province,city,area,zipcode,areadetail) values(?,?,?,?,?,?,?,?)";
		int n = DbUtil.zsg(sql, userid,username,userphone,province,city,area,zipcode,detail);
		if(n>0){
			return n;
		}
		return 0;
	}

	public int deleteshopar(String goodsids, String userid) {
		String sql = "delete from shopcar where userid =? and goods_id = ?";
		int n = DbUtil.zsg(sql, userid, goodsids);
		if(n>0){
			return n;
		}
		return 0;
	}


	public int changesta(String status, String orderid) {
		String sql = "update orders set status = ? where orderid =?";
		int n = DbUtil.zsg(sql, status,orderid);
		if(n>0){
			return n;
		}
		return 0;
	}

	

}
