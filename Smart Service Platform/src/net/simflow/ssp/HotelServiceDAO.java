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
		String sqlState = "SELECT * FROM hotelservice WHERE �Ƶ����� like \"%"+tmpstring+"%\"";
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
		String sqlState = "SELECT * FROM hotelservice order by �Ƶ�ID desc LIMIT "+HowLatest;
		ArrayList al=new ArrayList<HotelService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
			  HotelService hotelservice=new HotelService();
			  	hotelservice.sethotelserviceid(resultSet.getInt("�Ƶ�ID"));
				hotelservice.setclassid(resultSet.getInt("classid"));
				hotelservice.sethotelservicename(resultSet.getString("�Ƶ�����"));
				hotelservice.sethoteltype(resultSet.getString("�Ƶ�����"));
				hotelservice.sethotelarea(resultSet.getString("�Ƶ�����"));
				hotelservice.sethoteladd(resultSet.getString("�Ƶ��ַ"));
				hotelservice.sethotelprice(resultSet.getInt("�Ƶ���ͼ�"));
			    hotelservice.sethotelinfo(resultSet.getString("�Ƶ������Ϣ"));
			    hotelservice.sethotelintro(resultSet.getString("�Ƶ���"));
			    hotelservice.sethotelwifi(resultSet.getString("�Ƶ�������ʩ"));
			    hotelservice.sethotelpark(resultSet.getString("�Ƶ�ͣ����"));
			    hotelservice.sethotelroom(resultSet.getString("�Ƶ귿����ʩ"));
			    hotelservice.sethotelser(resultSet.getString("�Ƶ����"));
			    hotelservice.sethotelins(resultSet.getString("�Ƶ���ʩ"));
			    hotelservice.sethoteltel(resultSet.getString("�Ƶ�绰"));
			    hotelservice.sethotelurl(resultSet.getString("�Ƶ�����"));
			    hotelservice.sethotelpic(resultSet.getString("�Ƶ�ͼƬ"));
		      
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
		SqlState.append("INSERT INTO hotelservice(�Ƶ�ID,classid,�Ƶ�����,�Ƶ�����,�Ƶ�����,�Ƶ��ַ,�Ƶ���ͼ�,�Ƶ������Ϣ,�Ƶ���,�Ƶ�������ʩ,�Ƶ�ͣ����,�Ƶ귿����ʩ,�Ƶ����,�Ƶ���ʩ,�Ƶ�绰,�Ƶ�����,�Ƶ�ͼƬ)");
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
		
		// ����ʧ����ع�
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
