package com.pojo;

public class Goods {

	private int goodsid;
	private String goods_name;
	private String goods_name1;
	private String goods_pic;
	private String goods_picture;
	private String goodstype;
	
	
	public String getGoodstype() {
		return goodstype;
	}
	public void setGoodstype(String goodstype) {
		this.goodstype = goodstype;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getGoods_picture() {
		return goods_picture;
	}
	public void setGoods_picture(String goods_picture) {
		this.goods_picture = goods_picture;
	}

	private String goods_color;
	private String goods_desc;
	private float goods_price;
	

	public Integer getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(Integer goodsid) {
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
	public String getGoods_color() {
		return goods_color;
	}
	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}
	public String getGoods_desc() {
		return goods_desc;
	}
	public void setGoods_desc(String goods_desc) {
		this.goods_desc = goods_desc;
	}
	
	
	public String getGoods_pic() {
		return goods_pic;
	}
	public void setGoods_pic(String goods_pic) {
		this.goods_pic = goods_pic;
	}
	public float getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(float goods_price) {
		this.goods_price = goods_price;
	}
	@Override
	public int hashCode() {
		return goodsid;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Goods){
			if(((Goods)obj).getGoodsid()==this.goodsid){
				return true;
			}
		}
		return false;
	}
}
