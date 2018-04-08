package cse308.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User {

   
   @GeneratedValue(strategy = GenerationType.AUTO) 	
   
   private int uid;
   private String uname;
   @Id
   private String email;
   private String password;
//   private double salary;
//   private String deg;
   
   public User(int uid, String uname, String email, String passwd) {
      this.password=passwd;
      this.uid = uid;
      this.uname = uname;
      this.email=email;
//      this.salary = salary;
//      this.deg = deg;
   }

   public User( ) {
      super();
   }

   public int getUid( ) {
      return uid;
   }
   
   public void setuid(int uid) {
      this.uid =uid;
   }
   
   public String getuname( ) {
      return uname;
   }
   
   public void setuname(String uname) {
      this.uname = uname;
   }
   
   public String getPwd( ) {
      return password;
   }
   
   public void setPwd(String pwd) {
      this.password = pwd;
   }

   public String getEmail( ) {
      return email;
   }
   
   public void setEmail(String e) {
      this.email = email;
   }
//   
   @Override
   public String toString() {
      return "User [uid=" + uid + ", uname=" + uname + "]";
   }
}