package com.pojo;

public class MakeUP {

	private int goodsid;
	private String goods_name;
	private String goods_name1;
	private String goods_picture;
	private float goods_price;
	private String goods_desc;
	private String goodstype;
	private int makeupid;
	
	
	
	public String getGoods_desc() {
		return goods_desc;
	}

	public void setGoods_desc(String goods_desc) {
		this.goods_desc = goods_desc;
	}
	private String makeuptype;
	private String keyword;
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public MakeUP(int goodsid, String goodsname, Float goodsprice, String goodsdesc, String goodsname1,String goodspicture,String goodstype ){
		super();
		this.goodsid = goodsid;
		this.goods_name = goodsname;
		this.goods_name1 = goodsname1;
		this.goodstype = goodstype;
		this.goods_desc = goodsdesc;
		this.goods_picture = goodspicture;
		this.goods_price = goodsprice;
	}
	
	public MakeUP() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_name1() {
		return goods_name1;
	}
	public void setGoods_name1(String goods_name1) {
		this.goods_name1 = goods_name1;
	}
	public String getGoods_picture() {
		return goods_picture;
	}
	public void setGoods_picture(String goods_picture) {
		this.goods_picture = goods_picture;
	}
	public float getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(float goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoodstype() {
		return goodstype;
	}
	public void setGoodstype(String goodstype) {
		this.goodstype = goodstype;
	}
	public int getMakeupid() {
		return makeupid;
	}
	public void setMakeupid(int makeupid) {
		this.makeupid = makeupid;
	}
	public String getMakeuptype() {
		return makeuptype;
	}
	public void setMakeuptype(String makeuptype) {
		this.makeuptype = makeuptype;
	}

	
	
	
	
	
	
}