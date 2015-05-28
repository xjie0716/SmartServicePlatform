package net.simflow.ssp;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import net.simflow.ssp.DBManager;


import net.simflow.ssp.*;

public class PostDAO {
	private Connection connection=null;
	private ResultSet resultSet=null;
	private PreparedStatement preState=null;
	private Statement state=null;
	public PostDAO(){}
   public ArrayList SearchPost(String tmpstring) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM post WHERE postname like \"%"+tmpstring+"%\"";
		ArrayList al=new ArrayList<Post>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
			Post post=null;
			int time=0;
		  while(resultSet.next())
		  {
			  time++;
			  System.out.println(time);
			  
				post=new Post();
				post.idpost=resultSet.getInt(1);
				post.postname=resultSet.getString(2);
				post.classid=resultSet.getInt(3);
				post.content=resultSet.getString(4);
				post.birthday=resultSet.getTimestamp(5);
				post.ownerid=resultSet.getInt(6);
			    post.ownername=resultSet.getString(7);
			    post.posturl=resultSet.getString(8);
			     al.add(post);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
   }

   public ArrayList GetGlobalLatestPost(int HowLatest) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
	   //SELECT * FROM post  order by birthday desc LIMIT 10
		String sqlState = "SELECT * FROM post  order by birthday desc LIMIT "+HowLatest;
		ArrayList al=new ArrayList<Post>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
			  Post post=new Post();
			  	post.setidpost(resultSet.getInt("idpost"));
				post.setpostname(resultSet.getString("postname"));
				post.setclassid(resultSet.getInt("classid"));
				post.setcontent(resultSet.getString("content"));
				post.setbirthday(resultSet.getTimestamp("birthday"));
				post.setownid(resultSet.getInt("ownerid"));
			    post.setownername(resultSet.getString("ownername"));
			    post.setposturl(resultSet.getString("posturl"));
		      
			     al.add(post);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
	   
   }
	public void addpost(Post post) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
		System.out.println("here is addpost");
	 
			connection=DBManager.getConnection();		
		StringBuffer SqlState=new StringBuffer();
		SqlState.append("INSERT INTO post(idpost,postname,classid,content,ownerid,ownername,posturl)");
		SqlState.append(" VALUES(?,?,?,?,?,?,?)");
		try{
		
		preState=connection.prepareStatement(SqlState.toString());
		preState.setInt(1, post.idpost);
		preState.setString(2, post.postname);
		preState.setInt(3, post.classid);
		preState.setString(4, post.content);
		preState.setInt(5, post.ownerid);
		preState.setString(6, post.ownername);
		preState.setString(7, post.posturl);
		
		//preState.execute("begin");
		preState.executeUpdate();
		//preState.execute("commit");
		//return true;
	} catch (SQLException e) {
		
		// ≤Â»Î ß∞‹‘Úªÿπˆ
		try {
			preState.execute("rollback");
		} catch (SQLException e1) {
			e1.printStackTrace();
		//	return false;
		}
		e.printStackTrace();
	} finally {
		DBManager.closeAll(connection, state, resultSet);
	}
	//return false;
		
					
	}

}
