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

public class HotelServiceDAO {
	private Connection connection=null;
	private ResultSet resultSet=null;
	private PreparedStatement preState=null;
	private Statement state=null;
	public HotelServiceDAO(){}
   public ArrayList SearchHotelService(String tmpstring) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM hotelservice WHERE 酒店名称 like \"%"+tmpstring+"%\"";
		ArrayList al=new ArrayList<HotelService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
			HotelService hotelservice=null;
			int time=0;
		  while(resultSet.next())
		  {
			  time++;
			  System.out.println(time);
			  
				hotelservice=new HotelService();
				hotelservice.hotelserviceid=resultSet.getInt(1);
				hotelservice.classid=resultSet.getInt(2);
				hotelservice.hotelservicename=resultSet.getString(3);
				hotelservice.hoteltype=resultSet.getString(4);
				hotelservice.hotelarea=resultSet.getString(5);
				hotelservice.hoteladd=resultSet.getString(6);
			    hotelservice.hotelprice=resultSet.getInt(7);
			    hotelservice.hotelinfo=resultSet.getString(8);
			    hotelservice.hotelintro=resultSet.getString(9);
			    hotelservice.hotelwifi=resultSet.getString(10);
			    hotelservice.hotelpark=resultSet.getString(11);
			    hotelservice.hotelroom=resultSet.getString(12);
			    hotelservice.hotelser=resultSet.getString(13);
			    hotelservice.hotelins=resultSet.getString(14);
			    hotelservice.hoteltel=resultSet.getString(15);
			    hotelservice.hotelurl=resultSet.getString(16);
			    hotelservice.hotelpic=resultSet.getString(17);
			     al.add(hotelservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
   }

   public ArrayList GetGlobalLatestHotelService(int HowLatest) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
	   //SELECT * FROM hotelservice  order by birthday desc LIMIT 10
		String sqlState = "SELECT * FROM hotelservice order by 酒店ID desc LIMIT "+HowLatest;
		ArrayList al=new ArrayList<HotelService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
			  HotelService hotelservice=new HotelService();
			  	hotelservice.sethotelserviceid(resultSet.getInt("酒店ID"));
				hotelservice.setclassid(resultSet.getInt("classid"));
				hotelservice.sethotelservicename(resultSet.getString("酒店名称"));
				hotelservice.sethoteltype(resultSet.getString("酒店类型"));
				hotelservice.sethotelarea(resultSet.getString("酒店区域"));
				hotelservice.sethoteladd(resultSet.getString("酒店地址"));
				hotelservice.sethotelprice(resultSet.getInt("酒店最低价"));
			    hotelservice.sethotelinfo(resultSet.getString("酒店基本信息"));
			    hotelservice.sethotelintro(resultSet.getString("酒店简介"));
			    hotelservice.sethotelwifi(resultSet.getString("酒店网络设施"));
			    hotelservice.sethotelpark(resultSet.getString("酒店停车场"));
			    hotelservice.sethotelroom(resultSet.getString("酒店房间设施"));
			    hotelservice.sethotelser(resultSet.getString("酒店服务"));
			    hotelservice.sethotelins(resultSet.getString("酒店设施"));
			    hotelservice.sethoteltel(resultSet.getString("酒店电话"));
			    hotelservice.sethotelurl(resultSet.getString("酒店链接"));
			    hotelservice.sethotelpic(resultSet.getString("酒店图片"));
		      
			     al.add(hotelservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
	   
   }
	public void addhotelservice(HotelService hotelservice) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
		System.out.println("here is addhotelservice");
	 
		connection=DBManager.getConnection();		
		StringBuffer SqlState=new StringBuffer();
		SqlState.append("INSERT INTO hotelservice(酒店ID,classid,酒店名称,酒店类型,酒店区域,酒店地址,酒店最低价,酒店基本信息,酒店简介,酒店网络设施,酒店停车场,酒店房间设施,酒店服务,酒店设施,酒店电话,酒店链接,酒店图片)");
		SqlState.append(" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		try{
		
		preState=connection.prepareStatement(SqlState.toString());
		preState.setInt(1, hotelservice.hotelserviceid);
		preState.setInt(2, hotelservice.classid);
		preState.setString(3, hotelservice.hotelservicename);
		preState.setString(4, hotelservice.hoteltype);
		preState.setString(5, hotelservice.hotelarea);
		preState.setString(6, hotelservice.hoteladd);
		preState.setInt(7, hotelservice.hotelprice);
		preState.setString(8, hotelservice.hotelinfo);
		preState.setString(9, hotelservice.hotelintro);
		preState.setString(10, hotelservice.hotelwifi);
		preState.setString(11, hotelservice.hotelpark);
		preState.setString(12, hotelservice.hotelroom);
		preState.setString(13, hotelservice.hotelser);
		preState.setString(14, hotelservice.hotelins);
		preState.setString(15, hotelservice.hoteltel);
		preState.setString(16, hotelservice.hotelurl);
		preState.setString(17, hotelservice.hotelpic);
		
		//preState.execute("begin");
		preState.executeUpdate();
		//preState.execute("commit");
		//return true;
	} catch (SQLException e) {
		
		// 插入失败则回滚
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
