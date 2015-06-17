package net.simflow.ssp;

public class User {
public int id;
public String name;
public String password;
public String type;
public String age;
public String email;
public User(User user){
	this.id=user.id;
	this.name=user.name;
	this.password=user.password;
	this.type=user.type;
	this.email=user.email;
	this.age=user.age;
}
public User(){
	
}
public void setid(int i){
	this.id=i;
}
public int getid(){
 return this.id;
}
public void setName(String Name){
	this.name=Name;
}
public String getName(){
	return this.name;
}
public void setPassword(String Password){
	this.password=Password;
}
public String getPassword(){
	return this.password;
}
public void setType(String Type){
	this.type=Type;
}
public String getType(){
	return this.type;
}
public void setAge(String Age){
	this.age=Age;
}
public String getAge(){
	return this.age;
}
public void setEmail(String Email){
	this.email=Email;
}
public String getEmail(){
	return this.email;
}
}
