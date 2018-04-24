package cse308.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class District {

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int districtId;
	private String districtName;
	private int districtNameId;
	private int[] precinctList;//store precincts with their id
	private int[] borderPrecinctList;

	public District( int did, String districtName, int[] precinctList,int[] borderPrecinctList) {
		this.districtId= did;
		this.districtName = districtName;
		this.precinctList= precinctList;
		this.borderPrecinctList=borderPrecinctList;
	}

	public District( int did, int districtNameId, int[] precinctList) {
		this.districtId= did;
		this.districtNameId = districtNameId;
		this.precinctList= precinctList;
	}
	
	public District() {
		super();
	}

	public int[] getPList() {
		return precinctList;
	}

	public void setPList(int[] pList) {
		this.precinctList=pList;
	}
	
	public int[] getBorderPList() {
		return borderPrecinctList;
	}

	public void setBorderPList(int[] BPList) {
		this.borderPrecinctList=BPList;
	}


	public String getDName() {
		return districtName;
	}

	public void setDName(String d) {
		this.districtName= d;
	}

	public int getDId() {
		return districtId;
	}

	public void setDId(int id) {
		this.districtId= id;
	}
	
}