package net.simflow.ssp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import net.simflow.ssp.User;
 
import net.simflow.ssp.DBManager;

public class UserDAO {
	/**
	 * Statement对象 
	 */
	private Statement state = null;

	/**
	 * PreparedStatement对象
	 */
	private PreparedStatement preState = null;

	/**
	 * 结果集对象
	 */
	private ResultSet resultSet = null;

	/** 
	 * 数据库连接类对象
	 */
	private Connection connection = null;

	/**
	 * 数据库连接的包装类对象
	 */
	private DBManager dbManager = null;

	public UserDAO(){}
	public int CheckUser(String name,String password) throws SQLException, IllegalAccessException, ClassNotFoundException{
		connection = DBManager.getConnection();
		
		String sqlState = "SELECT id FROM USER WHERE name = '" + name + "'"+"AND password='"+password+"'";

			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		   if(resultSet.next())
		   {
			   int temp=resultSet.getInt("id"); 
			   DBManager.closeAll(connection, state, resultSet);
			   return temp;
		   }
		   else 
		   {
			   DBManager.closeAll(connection, state, resultSet);
			   return -1;
		   }
	
					
		
	}
	public User GetUserFromId(int id) throws SQLException, IllegalAccessException, ClassNotFoundException{
		System.out.println("here is GetUSerFromID");
		User user=new User();
		connection = DBManager.getConnection();
		System.out.println("this id is "+id);
		String sqlState = "SELECT * FROM USER WHERE id =" + id;
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  if(resultSet.next())
		  {
			  System.out.println("this is getuserfromid result");
			    System.out.println(resultSet.getInt(1)); 
			    System.out.println(resultSet.getString(2));
			    System.out.println(resultSet.getString(3));
			   System.out.println(resultSet.getString(4));
			   System.out.println(resultSet.getString(5));
			   System.out.println(resultSet.getString(6));
			      user.id=resultSet.getInt(1);
			      user.name=resultSet.getString(2);
			     user.password=resultSet.getString(3);
			     user.type=resultSet.getString(4);
			     user.email=resultSet.getString(5);
			     user.age=resultSet.getString(6);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return user;
	}
	public ArrayList SearchUserName(String name) throws SQLException, IllegalAccessException, ClassNotFoundException{
		//select * from user where name like "%fe%"
		ArrayList al = new ArrayList<User>();

		connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM USER WHERE name like \'%"+name+"%\'";
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
				User user=new User();
			      user.id=resultSet.getInt(1);
			      user.name=resultSet.getString(2);
			     user.password=resultSet.getString(3);
			     user.type=resultSet.getString(4);
			     user.email=resultSet.getString(5);
			     user.age=resultSet.getString(6);
			     al.add(user);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
		
		
	}

	public void AddUser(User user) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
		
		connection= DBManager.getConnection(); // 得到数据库连接
          
		StringBuffer sqlState = new StringBuffer();
		sqlState.append("INSERT INTO USER(name,password,type,age,email)");
		sqlState.append(" VALUES(?,?,?,?,?)");
		//System.out.println(sqlState);
		try {

			preState = connection.prepareStatement(sqlState.toString()); // 采用预处理方式
			preState.setString(1, user.getName()); // 设置每个要插入的的属性
			preState.setString(2, user.getPassword());
			preState.setString(3, user.getType());
			preState.setString(4,user.getAge());
			preState.setString(5, user.getEmail());

		preState.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

			//try {
		//		preState.execute("rollback"); // 回滚
		//	} catch (SQLException e1) {
		//		e1.printStackTrace();
		//	}
		//	e.printStackTrace();
		} finally {
			DBManager.closeAll(connection, preState, resultSet);
		}
		
		
		
		
	}
    
    public ArrayList GetOwnPlatService(User user) throws SQLException, IllegalAccessException, ClassNotFoundException{
    	ArrayList al = new ArrayList();
				

			connection=DBManager.getConnection();
			state=connection.createStatement();
			String sqlStr="select * from platservice where ownerid="+user.id+" order by birthday desc";
			resultSet=state.executeQuery(sqlStr);
			
			while(resultSet.next()){
				PlatService ps=new PlatService();
				ps.setplatserviceid(resultSet.getInt("platserviceid"));
				ps.setplatservicename(resultSet.getString("platservicename"));
				ps.setclassid(resultSet.getInt("classid"));
				ps.setcontent(resultSet.getString("content"));
				ps.setbirthday(resultSet.getTimestamp("birthday"));
				ps.setownid(resultSet.getInt("ownerid"));
			    ps.setownername(resultSet.getString("ownername"));
			    ps.setplatserviceurl(resultSet.getString("platserviceurl"));
				
				al.add(ps); // 加到容器
			}
			DBManager.closeAll(connection,state,resultSet);
            return al;
		
		
    }

}
