package net.simflow.ssp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import net.simflow.ssp.*;

public class ScenicspotServiceDAO {
	private Connection connection=null;
	private ResultSet resultSet=null;
	private PreparedStatement preState=null;
	private Statement state=null;
	public ScenicspotServiceDAO(){}
	
	//search restaurant service
   public ArrayList SearchScenicSpotService(String tmpstring) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM scenicspotservice WHERE scenicspotname like \"%"+tmpstring+"%\"";
		ArrayList al=new ArrayList<ScenicspotService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
			ScenicspotService spotservice=null;
			int time=0;
		  while(resultSet.next())
		  {
			  time++;
			  System.out.println(time);
			  
			  spotservice=new ScenicspotService();
			  spotservice.scenicspotid = resultSet.getInt(1);
			  spotservice.classid = resultSet.getInt(2);
			  spotservice.scenicspotname = resultSet.getString(3);
			  spotservice.introduce = resultSet.getString(4);
			  spotservice.address = resultSet.getString(5);
			  spotservice.traffic = resultSet.getString(6);
			  spotservice.ticket = resultSet.getString(7);
			  spotservice.openingtime = resultSet.getString(8);
			  spotservice.costingtime = resultSet.getString(9);
			  spotservice.scenicspotlink = resultSet.getString(10);
			  spotservice.scenicspotpic = resultSet.getString(11);
			     al.add(spotservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
   }

   // get global latest spot service
   public ArrayList GetGlobalLatestScenicspotService(int HowLatest) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
	   //SELECT * FROM scenicspotservice  order by birthday desc LIMIT 10
		String sqlState = "SELECT * FROM scenicspotservice order by scenicspotid desc LIMIT "+HowLatest;
		ArrayList al=new ArrayList<ScenicspotService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
			  ScenicspotService spotservice=new ScenicspotService();
			  spotservice.scenicspotid = resultSet.getInt(1);
			  spotservice.classid = resultSet.getInt(2);
			  spotservice.scenicspotname = resultSet.getString(3);
			  spotservice.introduce = resultSet.getString(4);
			  spotservice.address = resultSet.getString(5);
			  spotservice.traffic = resultSet.getString(6);
			  spotservice.ticket = resultSet.getString(7);
			  spotservice.openingtime = resultSet.getString(8);
			  spotservice.costingtime = resultSet.getString(9);
			  spotservice.scenicspotlink = resultSet.getString(10);
			  spotservice.scenicspotpic = resultSet.getString(11);
			     al.add(spotservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
	   
   }
   
   //add new spot service
	public void addscenicspotservice(ScenicspotService spotservice) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
		System.out.println("here is addscenicspotservice");
	 
		connection=DBManager.getConnection();		
		StringBuffer SqlState=new StringBuffer();
		SqlState.append("INSERT INTO scenicspotservice(scenicspotid,classid,scenicspotname,introduce,address,"
				+ "traffic,ticket,openingtime,costingtime,scenicspotlink,scenicspotpic");
		SqlState.append(" VALUES(?,?,?,?,?,?,?,?,?,?,?)");
		try{
		
		preState=connection.prepareStatement(SqlState.toString());
		preState.setInt(1, spotservice.scenicspotid);
		preState.setInt(2, spotservice.classid);
		preState.setString(3, spotservice.scenicspotname);
		preState.setString(4, spotservice.introduce);
		preState.setString(5, spotservice.address);
		preState.setString(6, spotservice.traffic);
		preState.setString(7, spotservice.ticket);
		preState.setString(8, spotservice.openingtime);
		preState.setString(9, spotservice.costingtime);
		preState.setString(10, spotservice.scenicspotlink);
		preState.setString(11, spotservice.scenicspotpic);
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
