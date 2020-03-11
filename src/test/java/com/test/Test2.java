package com.test;

import java.io.IOException;

import com.pojo.MakeUP;
import com.service.GoodsSerachService;

public class Test2 {

	public static void main(String[] args) throws IOException {
		GoodsSerachService goodsSerachService = new GoodsSerachService();
		MakeUP goods = new MakeUP(100,"臻致丝绒哑光唇釉",310.0F,"阿玛尼「红管」唇釉属于阿玛尼臻致丝绒哑光系列，阿玛尼首支兼具丝绒质地和光泽感的唇釉，一抹唇部饱满水润、光泽立现。不粘稠的质地能保持唇部在涂抹后保湿度。阿玛尼「红管」唇釉会令唇色焕发光彩的同时，散发热情和诱人魅力。","GIORGIO ARMANI LIP MAESTRO","400.png","唇釉");
		MakeUP goods1 = new MakeUP(5,"挚爱唇膏",310.0F,"阿玛尼挚爱唇膏让你拥有舒适、有光泽、不晕染、不溢色的非凡体验。挚爱唇膏独特的配方赋予双唇浓郁色彩，轻柔的质地为嘴唇持续保湿护航。这款持久力唇膏配有优雅的黑漆管身，搭配独特的磁性设计，合盖瞬间尽展女性魅力。","ROUGE D'ARMANI","z400.png","唇膏");
		goodsSerachService.addIndex(goods);
		goodsSerachService.addIndex(goods1);
		
		System.out.println("success");
	}
}
