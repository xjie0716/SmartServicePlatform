package net.simflow.ssp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import net.simflow.ssp.*;



public class RestaurantServiceDAO {

	private Connection connection=null;
	private ResultSet resultSet=null;
	private PreparedStatement preState=null;
	private Statement state=null;
	public RestaurantServiceDAO(){}
	
	//search restaurant service
   public ArrayList SearchRestaurantService(String tmpstring) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
		String sqlState = "SELECT * FROM restaurantservice WHERE restaurantservicename like \"%"+tmpstring+"%\"";
		ArrayList al=new ArrayList<RestaurantService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
			RestaurantService restauranservice=null;
			int time=0;
		  while(resultSet.next())
		  {
			  time++;
			  System.out.println(time);
			  
			    restauranservice=new RestaurantService();
			    restauranservice.restaurantserviceid= resultSet.getInt(1);
			    restauranservice.classid = resultSet.getInt(2);
			    restauranservice.restaurantservicename = resultSet.getString(3);
			    restauranservice.cookingstyle = resultSet.getString(4);
			    restauranservice.district = resultSet.getString(5);
			    restauranservice.area = resultSet.getString(6);
			    restauranservice.address = resultSet.getString(7);
			    restauranservice.openingtime = resultSet.getString(8);
			    restauranservice.priceperperson = resultSet.getInt(9);
			    restauranservice.classifiedlabel = resultSet.getString(10);
			    restauranservice.totalscore = resultSet.getInt(11);
			    restauranservice.tastescore = resultSet.getFloat(12);
			    restauranservice.environmentscore = resultSet.getFloat(13);
			    restauranservice.servicescore = resultSet.getFloat(14);
			    restauranservice.restaurantphone = resultSet.getString(15);
			    restauranservice.restaurantlink = resultSet.getString(16);
			    restauranservice.restaurantpic = resultSet.getString(17);
			     al.add(restauranservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
   }

   // get global latest restaurant service
   public ArrayList GetGlobalLatestRestaurantService(int HowLatest) throws SQLException, IllegalAccessException, ClassNotFoundException{
	   connection = DBManager.getConnection();
	   //SELECT * FROM restaurantservice  order by birthday desc LIMIT 10
		String sqlState = "SELECT * FROM restaurantservice order by restaurantserviceid desc LIMIT "+HowLatest;
		ArrayList al=new ArrayList<RestaurantService>();
			state = connection.createStatement();
			resultSet = state.executeQuery(sqlState);
		  while(resultSet.next())
		  {
			  RestaurantService restaurantservice=new RestaurantService();
			  restaurantservice.SetRestaurantserviceid(resultSet.getInt("restaurantserviceid"));
			  restaurantservice.SetClassid(resultSet.getInt("classid"));
			  restaurantservice.SetRestaurantservicename(resultSet.getString("restaurantservicename"));
			  restaurantservice.SetCookingStyle(resultSet.getString("cookingstyle"));
			  restaurantservice.SetDistrict(resultSet.getString("district"));
			  restaurantservice.SetArea(resultSet.getString("area"));;
			  restaurantservice.SetAddress(resultSet.getString("address"));
			  restaurantservice.SetOpeningtime(resultSet.getString("openingtime"));
			  restaurantservice.SetPriceperperson(resultSet.getShort("priceperperson"));
			  restaurantservice.SetClassifiedlabel(resultSet.getString("classifiedlabel"));
			  restaurantservice.SetTotalscore(resultSet.getInt("totalscore"));
			  restaurantservice.SetTasteScore(resultSet.getFloat("tastescore"));
			  restaurantservice.SetEnvironmentscore(resultSet.getFloat("environmentscore"));
			  restaurantservice.SetServicescore(resultSet.getFloat("servicescore"));
			  restaurantservice.SetRestaurantphone(resultSet.getString("restaurantphone"));
			  restaurantservice.SetRestaurantlink(resultSet.getString("restaurantlink"));
			  restaurantservice.SetRestaurantpic(resultSet.getString("restaurantpic"));
		      
			     al.add(restaurantservice);
		  }
			   DBManager.closeAll(connection, state, resultSet);		 		
		return al;
	   
   }
   
   //add new restaurant service
	public void addrestaurantservice(RestaurantService restaurantservice) throws SQLException, IllegalAccessException, ClassNotFoundException
	{
		System.out.println("here is addrestaurantservice");
	 
		connection=DBManager.getConnection();		
		StringBuffer SqlState=new StringBuffer();
		SqlState.append("INSERT INTO restaurantservice(restaurantserviceid,classid,restaurantservicename,cookingstyle,district,"
				+ "area,address,openingtime,priceperperson,classifiedlabel,totalscore,"
				+ "tastescore,environmentscore,servicescore,restaurantphone,restaurantlink,restaurantpic)");
		SqlState.append(" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		try{
		
		preState=connection.prepareStatement(SqlState.toString());
		preState.setInt(1, restaurantservice.restaurantserviceid);
		preState.setInt(2, restaurantservice.classid);
		preState.setString(3, restaurantservice.restaurantservicename);
		preState.setString(4, restaurantservice.cookingstyle);
		preState.setString(5, restaurantservice.district);
		preState.setString(6, restaurantservice.area);
		preState.setString(7, restaurantservice.address);
		preState.setString(8, restaurantservice.openingtime);
		preState.setInt(9, restaurantservice.priceperperson);
		preState.setString(10, restaurantservice.classifiedlabel);
		preState.setInt(11, restaurantservice.totalscore);
		preState.setFloat(12, restaurantservice.tastescore);
		preState.setFloat(13, restaurantservice.environmentscore);
		preState.setFloat(14, restaurantservice.servicescore);
		preState.setString(15, restaurantservice.restaurantphone);
		preState.setString(16, restaurantservice.restaurantlink);
		preState.setString(17, restaurantservice.restaurantpic);
		
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
