package com.dao;

import java.util.List;

import com.pojo.Address;
import com.pojo.Collection;
import com.pojo.Orders;
import com.pojo.Userinfo;
import com.util.DbUtil;

public class UserDAO {

	public Userinfo login(String phone, String password) {
		String sql = "select  phone, password, userid, username, sex, email from userinfo where phone = ? and password = ?";
		List<Userinfo> list = DbUtil.query(Userinfo.class, sql, phone,password);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public int regist(String username, String password, String phone,
			String sex, String email) {
		int n = 0;
		String sql = "insert into userinfo(username,password,sex,email,phone) values(?,?,?,?,?)";
		n = DbUtil.zsg(sql, username,password,sex,email,phone);
		return n;	
	}

	public boolean check(String phone) {
		String sql = "select phone, password, userid, username, sex, email from userinfo where phone = ?";
		List<Userinfo> list = DbUtil.query(Userinfo.class, sql, phone);
		if(list.size()>0){
			return true;
		}
		return false;
	}

	public boolean checkUser(Integer userid, Integer goodsid) {
		
		String sql = "select userid, goodsid from collection where userid = ? and goodsid = ?";
		List<Collection> list = DbUtil.query(Collection.class, sql, userid,goodsid);
		if(list.size()>0){
			return true;
		}
		return false;
	}

	public int addCollection(Integer userid, Integer goodsid) {
		String sql = "insert into collection(userid,goodsid) values(?,?)";
		int n = DbUtil.zsg(sql, userid,goodsid);
		return n;
	}

	public Userinfo login1(String phone, String password) {
		String sql = "select  phone, password, userid, username, sex, email from userinfo where phone = ? and password = ?";
		List<Userinfo> list = DbUtil.query(Userinfo.class, sql, phone,password);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public Userinfo saveuser(String phone, String username) {
		
		String sql = "select  phone, password, userid, username, sex, email from userinfo where phone = ? and username = ?";
		List<Userinfo> list = DbUtil.query(Userinfo.class, sql, phone,username);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	
	
	public int selectorder1(String unfinish, String userid) {
		String sql = "select count(*) from orders where status=? and userid=?";
		int n = DbUtil.uniqueQuery(sql, unfinish,userid);
		if(n>0){
			return n;
		}
		return 0;
	}

	public int selectorder2(String finish, String userid) {
		String sql = "select count(*) from orders where status=? and userid=?";
		int n = DbUtil.uniqueQuery(sql, finish,userid);
		if(n>0){
			return n;
		}
		return 0;
	}

	public Userinfo finduser(String userid) {
		String sql = "select username, sex, phone, email, birthday from userinfo where userid=?";
		List<Userinfo> list = DbUtil.query(Userinfo.class, sql, userid);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public List<Orders> findorderun(String userid, String orderid) {
		
		String sql = "select orders.orderid, ordertime, userid, sumprice, address, status, details.goodsid,goodsnum,goods_picture,goods_name,goods_price from orders,details,goods where orders.orderid=details.orderid and details.goodsid = goods.goodsid and userid=? and orders.orderid=?";
		List<Orders> list = DbUtil.query(Orders.class, sql, userid,orderid);
		if(list.size()>0){
			return list;
		}
		return null;
	}
	
	
	public List<Orders> findorder(String userid, String status) {
		String sql = "select orderid, ordertime, orders.userid, sumprice,address, areadetail, status from orders,address where orders.address=address.addressid and orders.userid=? and status=?";
		List<Orders> list = DbUtil.query(Orders.class, sql, userid,status);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<Collection> showcollect(String userid) {

		String sql = "select userid, collection.goodsid, goods_name, goods_color, goods_picture ,goods_price from collection,goods where collection.goodsid=goods.goodsid and userid=?";
		List<Collection> list = DbUtil.query(Collection.class, sql, userid);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public int addarea(String userid, String username, String userphone,
			String province, String city, String area, String zipcode,
			String detail) {
		String sql = "insert into address(userid,username,userphone,province,city,area,zipcode,areadetail) values(?,?,?,?,?,?,?,?)";
		int n = DbUtil.zsg(sql, userid,username,userphone,province,city,area,zipcode,detail);
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

	public int deladdress(String addressid) {
		String sql = "delete from address where addressid=?";
		int n = DbUtil.zsg(sql, addressid);
		if(n>0){
			return n;
		}
		return 0;
	}

	
	

}
