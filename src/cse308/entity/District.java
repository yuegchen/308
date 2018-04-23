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
//	private String districtName;
	private int originalDistrictId;
	private int[] movedIntoPrecinctList;//store precincts with their id
//	private int[] movedOutPrecinctList;

	public District( int did, int oDid, int[] inprecinctList) {
		this.districtId= did;
		this.originalDistrictId=oDid;
//		this.districtName = districtName;
		this.movedIntoPrecinctList= inprecinctList;
//		this.movedOutPrecinctList=outPrecinctList;
	}

	public District() {
		super();
	}

	public int[] getIntoPList() {
		return movedIntoPrecinctList;
	}

	public void setIntoPList(int[] pList) {
		this.movedIntoPrecinctList=pList;
	}
	
//	public int[] getOutPList() {
//		return movedOutPrecinctList;
//	}
//
//	public void setOutPList(int[] BPList) {
//		this.movedOutPrecinctList=BPList;
//	}

//
//	public String getDName() {
//		return districtName;
//	}
//
//	public void setDName(String d) {
//		this.districtName= d;
//	}

	public int getDId() {
		return districtId;
	}

	public void setDId(int id) {
		this.districtId= id;
	}
	public int getODId() {
		return originalDistrictId;
	}

	public void setODId(int id) {
		this.originalDistrictId= id;
	}
	
}