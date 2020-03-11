package com.dao;

import java.util.List;

import com.pojo.MakeUP;
import com.util.DbUtil;

public class SerachDAO {

	public List<MakeUP> findgoods() {
		
		String sql = "select goodsid, goods_name, goods_name1, goods_desc, goods_price, goods_picture, goodstype, lipstick.makeupid from lipstick,makeup where makeup.makeupid = lipstick.makeupid";
		List<MakeUP> list = DbUtil.query(MakeUP.class, sql);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<MakeUP> findgoods1() {
			
			String sql = "select goodsid, goods_name, goods_name1, goods_desc, goods_price, goods_picture, goodstype, face.makeupid from face,makeup where makeup.makeupid = face.makeupid";
			List<MakeUP> list = DbUtil.query(MakeUP.class, sql);
			if(list.size()>0){
				return list;
			}
			return null;
		}
	
	public List<MakeUP> findgoods2() {
			
			String sql = "select goodsid, goods_name, goods_name1, goods_desc, goods_price, goods_picture, goodstype, eye.makeupid from eye,makeup where makeup.makeupid = eye.makeupid";
			List<MakeUP> list = DbUtil.query(MakeUP.class, sql);
			if(list.size()>0){
				return list;
			}
			return null;
		}
	
}
