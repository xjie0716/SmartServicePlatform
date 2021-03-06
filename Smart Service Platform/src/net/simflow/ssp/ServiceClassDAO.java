package net.simflow.ssp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import net.simflow.ssp.*;

public class ServiceClassDAO {

	private Connection connection=null;
	private ResultSet resultSet=null;
	private PreparedStatement preState=null;
	private Statement state=null;
	public ServiceClassDAO(){}
	
	//search service class table
   public ArrayList SearchAllClassservice() throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM serviceclass";
		ArrayList al=new ArrayList<ServiceClass>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
			ServiceClass serviceclass=null;
			int time=0;
			while(resultSet.next())
			{
			  time++;
			  System.out.println(time);
			  
			  serviceclass=new ServiceClass();
			  serviceclass.setClassid(resultSet.getInt("classid"));
			  serviceclass.setClassname(resultSet.getString("classname"));
			  serviceclass.setClassdes(resultSet.getString("classdes"));
			  serviceclass.setClasstable(resultSet.getString("classtable"));
			  al.add(serviceclass);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
   }
   
   //add new class service
	public void addClassservice(ServiceClass mserviceclass) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
	 
		connection=DBManager.getConnection();		
		StringBuffer SqlState=new StringBuffer();
		SqlState.append("INSERT INTO serviceclass(classid,classname,classdes,classtable");
		SqlState.append(" VALUES(?,?,?,?)");
		try{
		
		preState=connection.prepareStatement(SqlState.toString());
		preState.setInt(1, mserviceclass.getClassid());
		preState.setString(2, mserviceclass.getClassname());
		preState.setString(3, mserviceclass.getClassdes());
		preState.setString(4, mserviceclass.getClasstable());
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
