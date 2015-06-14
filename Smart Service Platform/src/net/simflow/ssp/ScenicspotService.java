package net.simflow.ssp;

public class ScenicspotService {
	public int scenicspotid;
	public int classid;
	public String scenicspotname;
	public String introduce;
	public String address;
	public String traffic;
	public String ticket;
	public String openingtime;
	public String costingtime;
	public String scenicspotlink;
	public String scenicspotpic;
	
	public ScenicspotService(){
		
	}
	
	public void SetScenicspotid(int id){
		this.scenicspotid = id;
	}
	public int GetScenicspotid(){
		return this.scenicspotid;
	}
	
	public void SetClassid(int id){
		this.classid = id;
	}
	public int GetClassid(){
		return this.classid;
	}
	
	public void SetScenicspotname(String name){
		this.scenicspotname = name;
	}
	public String GetScenicspotname(){
		return this.scenicspotname;
	}
	
	public void SetIntroduce(String newIntroduce){
		this.introduce = newIntroduce;
	}
	public String GetIntroduce(){
		return this.introduce;
	}
	
	public void SetAddress(String newAddress){
		this.address = newAddress;
	}
	public String GetAddress(){
		return this.address;
	}
	
	public void SetTraffic(String newTraffic){
		this.traffic = newTraffic;
	}
	public String GetTraffic(){
		return this.traffic;
	}
	
	public void SetTicket(String newTicket){
		this.ticket = newTicket;
	}
	public String GetTicket(){
		return this.ticket;
	}
	
	public void SetOpeningtime(String time){
		this.openingtime = time;
	}
	public String GetOpeningTime(){
		return this.openingtime;
	}
	
	public void SetCostingTime(String time){
		this.costingtime = time;
	}
	public String GetCostingtime(){
		return this.costingtime;
	}
	
	public void SetScenicsoptlink(String link){
		this.scenicspotlink = link;
	}
	public String GetScenicspotlink(){
		return this.scenicspotlink;
	}
	
	public void SetScenicspotpic(String pic){
		this.scenicspotpic = pic;
	}
	public String GetScenicspotpic(){
		return this.scenicspotpic;
	}
	
}
