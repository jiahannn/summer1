package com.dao;

import java.util.List;

import com.pojo.MakeUP;
import com.util.DbUtil;

public class FindDAO {


	public List<MakeUP> findlip(String liptype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype from lipstick where goodstype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, liptype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findmakeup(String makeuptype) {
		String sql = "select goodsid, goodsname, goodsname1, goodspic, goodsprice, goodstype, makeuptype from makeup,lipstick where makeup.makeupid=lipstick.makeupid and makeuptype = ?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, makeuptype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findface(String facetype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype from face where goodstype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, facetype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findeye(String eyetype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype from eye where goodstype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, eyetype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findmlip(String makeuptype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,lipstick where makeup.makeupid=lipstick.makeupid and makeuptype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, makeuptype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findmface(String makeuptype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,face where makeup.makeupid=face.makeupid and makeuptype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, makeuptype);
		if(list.size()>0){
			return list;
		}
		return null;
	}
	
	public List<MakeUP> findmeye(String makeuptype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,eye where makeup.makeupid=eye.makeupid and makeuptype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, makeuptype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findltall(String mutype){

		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,lipstick where makeup.makeupid=lipstick.makeupid and makeuptype=? order by goods_price desc";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}
	
	public List<MakeUP> findftall(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,face where makeup.makeupid=face.makeupid and makeuptype=? order by goods_price desc";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findetall(String mutype){

		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,eye where makeup.makeupid=eye.makeupid and makeuptype=? order by goods_price desc";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}
	
	public List<MakeUP> findllow(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,lipstick where makeup.makeupid=lipstick.makeupid and makeuptype=? order by goods_price";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}
	
	public List<MakeUP> findflow(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,face where makeup.makeupid=face.makeupid and makeuptype=? order by goods_price";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}
	
	public List<MakeUP> findelow(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,eye where makeup.makeupid=eye.makeupid and makeuptype=? order by goods_price";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findlgoods(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,lipstick where makeup.makeupid=lipstick.makeupid and makeuptype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findfgoods(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,face where makeup.makeupid=face.makeupid and makeuptype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findegoods(String mutype) {
		String sql = "select goodsid, goods_name, goods_name1, goods_picture, goods_price, goodstype, makeuptype from makeup,eye where makeup.makeupid=eye.makeupid and makeuptype=?";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql, mutype);
		if(list.size()>0){
			return list;
		}
		return null;
	}
}
