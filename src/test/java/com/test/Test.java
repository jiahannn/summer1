package com.test;

import java.io.IOException;

import java.util.List;

import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;

import com.pojo.Goods;
import com.pojo.MakeUP;
import com.service.GoodsSerachService;


public class Test {

	public static void main(String[] args) throws IOException, InvalidTokenOffsetsException {
		GoodsSerachService goodsSerachService = new GoodsSerachService();
		List<MakeUP> list = goodsSerachService.search("红", false, 1, 10);
		System.out.println(list);
		for(MakeUP goods : list){
			System.out.println(goods.getGoodsid()+"\t"+goods.getGoods_name()+"\t"+goods.getGoods_price()+"\t"+goods.getGoods_desc()+"\t"+goods.getGoods_name1()+"\t"+goods.getGoods_picture()+"\t"+goods.getGoodstype());
			
		}
		
	}
}
