package net.simflow.ssp;
import java.sql.Date;
import java.sql.Timestamp;
public class Post {
public int idpost;
public String postname;
public int classid;
public String content;
public Timestamp birthday;
public int ownerid;
public String ownername;
public String posturl;
public Post(){
	
}
public void setposturl(String url){
	this.posturl=url;
}
public String getposturl(){
	return this.posturl;
}
public void setownername(String name){
	this.ownername=name;
}
public String getownername(){
	return this.ownername;
}
public void  setidpost(int id){
	this.idpost=id;
}
public int getidpost(){
	return this.idpost;
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
public void setpostname(String name){
	this.postname=name;
}
public String getpostname(){
	return this.postname;
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
