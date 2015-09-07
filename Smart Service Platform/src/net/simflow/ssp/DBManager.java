package net.simflow.ssp;
import  java.sql.Connection;
import java.sql.*;
import com.mysql.jdbc.Driver;
public class DBManager {

//private static String url="jdbc:mysql://166.111.180.111:3306/ssp";
private static String url="jdbc:mysql://localhost:3306/ssp";
private static String username="root";
private static String password="root";

public static Connection getConnection() throws SQLException, IllegalAccessException, ClassNotFoundException
{
	Connection connection=null;
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
      connection=DriverManager.getConnection(url,username,password);
	}
	catch(InstantiationException e){
		e.printStackTrace();
	}
	return connection;
}

public static void closeAll(Connection connection,Statement state,ResultSet resultSet) throws SQLException{
	if(resultSet!=null){
		resultSet.close();
	}
	if(state!=null){
		state.close();
	}
	if(connection!=null){
		connection.close();
	}
}
public static void main(String[] args) throws SQLException, IllegalAccessException, ClassNotFoundException{
	DBManager.getConnection();
}
}