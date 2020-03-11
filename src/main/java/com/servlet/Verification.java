
package com.servlet;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Verification extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	private ServletRequest request;
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		* 一、绘图  
		*/
		//step1, 创建一个内存映像(画布)
		BufferedImage image = new BufferedImage(80,30,BufferedImage.TYPE_INT_RGB);
		//step2,获得画笔
		Graphics g = image.getGraphics();
		//step3,给笔设置颜色
		g.setColor(new Color(255,255,255));
		//step4,设置画布的背景颜色
		g.fillRect(0, 0, 80, 30);
		//step5,给笔设置颜色和字体
		Random r = new Random();
		g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
		g.setFont(new Font(null,Font.BOLD+Font.ITALIC,25));
		//step6,生成一个随机数
		String pagecode = getNumber(4);
		
		request.getSession().setAttribute("checkCode", pagecode);
//		HttpSession session = request.getSession();
//		session.setAttribute("checkCode", pagecode);
		//step7,绘制图片
		g.drawString(pagecode, 5,26);
		//step8,加一些干扰线
		/*
		for(int i = 0; i < 8; i ++){g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
		g.drawLine(r.nextInt(80), r.nextInt(30),
		r.nextInt(80), r.nextInt(30));
		}
		*/
		/*
		* 二、压缩图片并输出 
		*/
		//step1,告诉浏览器，返回的是图片
		response.setContentType("image/jpeg");
		//step2,要使用字节流输出
		OutputStream os = response.getOutputStream();
		//step3,压缩图片并输出
		javax.imageio.ImageIO.write(
			image, "jpeg", os);
			os.close();
		}
		
		/*
		* 生成一个验证码
		*/
		private String getNumber(int size) {
		String number = "";
		String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		Random r = new Random();
		for(int i = 0; i < size; i ++){
			number += chars.charAt(
			r.nextInt(chars.length()));
		} 
		System.out.println(number);
		return number;  
		}


}



