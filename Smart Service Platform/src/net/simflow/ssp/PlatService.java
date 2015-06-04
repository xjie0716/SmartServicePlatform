package net.simflow.ssp;
import java.sql.Date;
import java.sql.Timestamp;
public class PlatService {
public int platserviceid;
public String platservicename;
public int classid;
public String content;
public Timestamp birthday;
public int ownerid;
public String ownername;
public String platserviceurl;
public PlatService(){
	
}
public void setplatserviceurl(String url){
	this.platserviceurl=url;
}
public String getplatserviceurl(){
	return this.platserviceurl;
}
public void setownername(String name){
	this.ownername=name;
}
public String getownername(){
	return this.ownername;
}
public void  setplatserviceid(int id){
	this.platserviceid=id;
}
public int getplatserviceid(){
	return this.platserviceid;
}
public void setownid(int id){
	this.ownerid=id;
}
public int getownid(){
	return this.ownerid;
}
public void setclassid(int num){
	this.classid=num;
}
public int getclassid(){
	return this.classid;
}
public void setplatservicename(String name){
	this.platservicename=name;
}
public String getplatservicename(){
	return this.platservicename;
}
public void setbirthday(Timestamp date){
	this.birthday=date;
}
public Timestamp getbirthday(){
	return this.birthday;
}
public void setcontent(String con){
	this.content=con;
}
public String getcontent(){
	return this.content;
}
}
