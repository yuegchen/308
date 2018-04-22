package cse308.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table
public class State {

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int stateId;
	private String stateName;
	private int[] districtList;

	public State( int sid, String stateName, int[] dList) {
		this.stateId= sid;
		this.stateName = stateName;
		this.districtList= dList;
	}

	public State() {
		super();
	}

	public int[] getDList() {
		return districtList;
	}

	public void setDList(int[] dList) {
		this.districtList=dList;
	}



	public String getStateName() {
		return stateName;
	}

	public void setStateName(String s) {
		this.stateName= s;
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int id) {
		this.stateId= id;
	}
	
	
}