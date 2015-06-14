package net.simflow.ssp;

public class RestaurantService {
	public int restaurantserviceid;
	public int classid;
	public String restaurantservicename;
	public String cookingstyle;
	public String district;
	public String area;
	public String address;
	public String openingtime;
	public int priceperperson;
	public String classifiedlabel;
	public int totalscore;
	public float tastescore;
	public float environmentscore;
	public float servicescore;
	public String restaurantphone;
	public String restaurantlink;
	public String restaurantpic;
	
	public RestaurantService(){
		
	}
	
	public void SetRestaurantserviceid(int id){
		this.restaurantserviceid=id;
	}
	public int GetRestaurantserviceid(){
		return this.restaurantserviceid;
	}
	
	public void SetClassid(int id){
		this.classid=id;
	}
	public int GetClassid(){
		return this.classid;
	}
	
	public void SetRestaurantservicename(String name){
		this.restaurantservicename = name;
	}
	public String GetRestaurantservicename(){
		return this.restaurantservicename;
	}
	
	public void SetCookingStyle(String style){
		this.cookingstyle = style;
	}
	public String GetCookingstyle(){
		return this.cookingstyle;
	}
	
	public void SetDistrict(String newDistrict){
		this.district = newDistrict;
	}
	public String GetDistrict(){
		return this.district;
	}
	
	public void SetArea(String newArea){
		this.area = newArea;
	}
	public String GetArea(){
		return this.area;
	}
	
	public void SetAddress(String newAddress){
		this.address = newAddress;
	}
	public String GetAddress(){
		return this.address;
	}
	
	public void SetOpeningtime(String time){
		this.openingtime = time;
	}
	public String GetOpentime(){
		return this.openingtime;
	}
	
	public void SetPriceperperson(int price){
		this.priceperperson = price;
	}
	public int GetPriceperperson(){
		return this.priceperperson;
	}
	
	public void SetClassifiedlabel(String label){
		this.classifiedlabel = label;
	}
	public String GetClassifiedlabel(){
		return this.classifiedlabel;
	}
	
	public void SetTotalscore(int score){
		this.totalscore = score;
	}
	public int GetTotalscore(){
		return this.totalscore;
	}
	
	public void SetTasteScore(float score){
		this.tastescore = score;
	}
	public float GetTastescore(){
		return this.tastescore;
	}
	
	public void SetEnvironmentscore(float score){
		this.environmentscore = score;
	}
	public float GetEnvironmentscore(){
		return this.environmentscore;
	}
	
	public void SetServicescore(float score){
		this.servicescore = score;
	}
	public float GetServicescore(){
		return this.servicescore;
	}
	
	public void SetRestaurantphone(String phone){
		this.restaurantphone = phone;
	}
	public String GetRestaurantphone(){
		return this.restaurantphone;
	}
	
	public void SetRestaurantlink(String link){
		this.restaurantlink = link;
	}
	public String GetRestaurantlink(){
		return this.restaurantlink;
	}
	
	public void SetRestaurantpic(String pic){
		this.restaurantpic = pic;
	}
	public String GetRestaurantpic(){
		return this.restaurantpic;
	}
}
