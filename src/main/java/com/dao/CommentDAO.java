package com.dao;

import java.util.List;

import com.pojo.Comment;
import com.util.DbUtil;

public class CommentDAO {

	public int addcomment(String comment, String goodsname, String username,
			String userid, String pltime) {
		
		String sql = "insert into comment(userid,goodsname,username,comment_desc,comment_time) values(?,?,?,?,?)";
		int n = DbUtil.zsg(sql, userid,goodsname,username,comment,pltime);
		if(n>0){
			return n;
		}
		return 0;
	}

	public List<Comment> selectpl(String goodsname) {
		String sql = "select username,comment_desc,comment_time,goodsname from comment where goodsname=?";
		List<Comment> list = DbUtil.query(Comment.class, sql, goodsname);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public List<Comment> selectyhpl(String userid) {
		String sql = "select commentid, username,comment_desc,comment_time,goodsname from comment where userid=?";
		List<Comment> list = DbUtil.query(Comment.class, sql, userid);
		if(list.size()>0){
			return list;
		}
		return null;
	}

	public int deletepl(String commentid) {

		String sql = "delete from comment where commentid=?";
		int n = DbUtil.zsg(sql, commentid);
		if(n>0){
			return n;
		}
		return 0;
	}

}
