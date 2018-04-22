package cse308.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
@Entity

@Table
public class Plan {

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int planId;
	private Date creationDate;
	private String stateName;
	private int stateId;

	public Plan( int pid, Date d, String stateName, int stateId) {
		this.planId= pid;
		this.creationDate = d;
		this.stateName = stateName;
		this.stateId = stateId;
	}

	public Plan() {
		super();
	}

	public int getPlanId() {
		return planId;
	}

	public void setUname(int pid) {
		this.planId=pid;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCD(Date d) {
		this.creationDate= d;
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