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

public class PlatServiceDAO {
	private Connection connection=null;
	private ResultSet resultSet=null;
	private PreparedStatement preState=null;
	private Statement state=null;
	public PlatServiceDAO(){}
   public ArrayList SearchPlatService(String tmpstring) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM platservice WHERE platservicename like \"%"+tmpstring+"%\"";
		ArrayList al=new ArrayList<PlatService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
			PlatService platservice=null;
			int time=0;
		  while(resultSet.next())
		  {
			  time++;
			  System.out.println(time);
			  
				platservice=new PlatService();
				platservice.platserviceid=resultSet.getInt(1);
				platservice.platservicename=resultSet.getString(2);
				platservice.classid=resultSet.getInt(3);
				platservice.content=resultSet.getString(4);
				platservice.birthday=resultSet.getTimestamp(5);
				platservice.ownerid=resultSet.getInt(6);
			    platservice.ownername=resultSet.getString(7);
			    platservice.platserviceurl=resultSet.getString(8);
			     al.add(platservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
   }

   public ArrayList GetGlobalLatestPlatService(int HowLatest) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
	   //SELECT * FROM platservice  order by birthday desc LIMIT 10
		String sqlState = "SELECT * FROM platservice  order by birthday desc LIMIT "+HowLatest;
		ArrayList al=new ArrayList<PlatService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
			  PlatService platservice=new PlatService();
			  	platservice.setplatserviceid(resultSet.getInt("platserviceid"));
				platservice.setplatservicename(resultSet.getString("platservicename"));
				platservice.setclassid(resultSet.getInt("classid"));
				platservice.setcontent(resultSet.getString("content"));
				platservice.setbirthday(resultSet.getTimestamp("birthday"));
				platservice.setownid(resultSet.getInt("ownerid"));
			    platservice.setownername(resultSet.getString("ownername"));
			    platservice.setplatserviceurl(resultSet.getString("platserviceurl"));
		      
			     al.add(platservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
	   
   }
	public void addplatservice(PlatService platservice) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
		System.out.println("here is addplatservice");
	 
			connection=DBManager.getConnection();		
		StringBuffer SqlState=new StringBuffer();
		SqlState.append("INSERT INTO platservice(platserviceid,platservicename,classid,content,ownerid,ownername,platserviceurl)");
		SqlState.append(" VALUES(?,?,?,?,?,?,?)");
		try{
		
		preState=connection.prepareStatement(SqlState.toString());
		preState.setInt(1, platservice.platserviceid);
		preState.setString(2, platservice.platservicename);
		preState.setInt(3, platservice.classid);
		preState.setString(4, platservice.content);
		preState.setInt(5, platservice.ownerid);
		preState.setString(6, platservice.ownername);
		preState.setString(7, platservice.platserviceurl);
		
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
