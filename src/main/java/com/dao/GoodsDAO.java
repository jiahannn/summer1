package com.dao;

import java.util.List;

import com.pojo.Goods;
import com.pojo.Hot;
import com.pojo.shopCar;
import com.util.DbUtil;

public class GoodsDAO {

	public int getCount() {
		
		String sql = "select count(*) from goods ";
		int n = DbUtil.uniqueQuery(sql);
		return n;
	}

	public List<Goods> fenye(int page, int size) {
		
		String sql = "select goodsid, goods_name, goods_name1, goods_desc, goods_color, goods_picture, goods_price from goods limit ?,?";
		List<Goods> list = DbUtil.query(Goods.class, sql, (page - 1) * size, size);
		return list;
	}



	public List<Hot> selectHot() {

		String sql = "select hotid, hotname, hotname1, hotpic, hotprice from hot";
		List<Hot> list = DbUtil.query(Hot.class, sql);
		return list;
	}

	public List<Goods> findGoods(String goodsname) {
		String sql = "select goodsid, goods_name,goods_name1, goods_color, goods_desc, goods_price,goods_picture  from goods where goods_name=?";
		List<Goods> list = DbUtil.query(Goods.class, sql, goodsname);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<Goods> selectgoods(String goodsid) {

		String sql = "select goodsid, goods_name, goods_name1, goods_desc, goods_pic, goods_price from goods,picture where goods.goodsid=picture.goods_id and goods.goodsid=?";
		List<Goods> list = DbUtil.query(Goods.class, sql, goodsid);
		System.out.println(list);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public Goods findbyid(String goodsid) {
		String sql = "select goodsid, goods_name, goods_name1, goods_color, goods_desc, goods_picture, goods_price from goods where goodsid=?";
		List<Goods> list = DbUtil.query(Goods.class, sql, goodsid);                                                                                         
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public int addshopcar(String goodsid, Integer num, String userid) {
		
		String sql = "insert into shopcar(goods_id, number, userid) values(?,?,?)";
		int n = DbUtil.zsg(sql, goodsid, num, userid);
		return n;
	}

	public List<Goods> findcolor(String goods_name) {

		String sql = "select goodsid, goods_name, goods_name1, goods_color, goods_desc, goods_picture, goods_price, goodstype from goods where goods_name=?";
		List<Goods> list = DbUtil.query(Goods.class, sql, goods_name);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<shopCar> findshopcar(String userid) {
		
		String sql = "select goods_id, userid, number, goods_name, goods_name1, goods_desc, goods_color, goods_picture, goods_price from shopcar,goods where goods.goodsid = shopcar.goods_id and userid =?";
		List<shopCar> list = DbUtil.query(shopCar.class, sql, userid);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public shopCar findcarnum(String userid, String goodsid) {
		String sql = "select userid , goods_id, num from shopcar where userid = ? and goods_id=?";
		List<shopCar> list = DbUtil.query(shopCar.class, sql, userid, goodsid);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public int deleteshopcar(String goodsid1, String userid) {
		String sql = "delete from shopcar where userid =? and goods_id = ?";
		int n = DbUtil.zsg(sql, userid , goodsid1);
		if(n>0){
			return n;
		}
		return 0;
	}

	public int updateshopcar(String goodsid, Integer num, String userid) {
		String sql = "update shopcar set number=number+? where goods_id=? and userid=?";
		int n = DbUtil.zsg(sql, num, goodsid, userid);
		if(n>0){
			return n;
		}
		return 0;
	}

	public shopCar findshopcar2(String goodsid, String userid) {
		String sql = "select goods_id, userid, number from shopcar where goods_id=? and userid=?";
		List<shopCar> list = DbUtil.query(shopCar.class, sql, goodsid, userid);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public Goods findbyid1(String goodsid1) {
		String sql = "select goodsid, goods_name, goods_name1, goods_color, goods_desc, goods_picture, goods_price, goodstype from goods where goodsid=?";
		List<Goods> list = DbUtil.query(Goods.class, sql, goodsid1);
		System.out.println(list);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public int changenum(String userid, String goodsid) {
		String sql = "update shopcar set number=number+1 where goods_id = ? and userid = ?";
		int n = DbUtil.zsg(sql, goodsid, userid);
		if(n>0){
			return n;
		}
		return 0;
	}

	public int changen(String userid, String goodsid) {
		String sql = "update shopcar set number=number-1 where goods_id = ? and userid = ?";
		int n = DbUtil.zsg(sql, goodsid, userid);
		if(n>0){
			return n;
		}
		return 0;
	}




}
