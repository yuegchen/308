package cse308.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Precinct {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private 	int 		pid;
	private 	String 		name;
	private 	double[][] 		geometry;
	private 	int 	cd;
	

	public Precinct(int pid, String name, double[][] geometry, int cd) {
		super();
		this.pid = pid;
		this.name = name;
		this.geometry = geometry;
		this.cd = cd;
	}
	public Precinct() {
		super();
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double[][] getGeometry() {
		return geometry;
	}

	public void setGeometry(double[][] geometry) {
		this.geometry = geometry;
	}

	public int getCd() {
		return cd;
	}

	public void setCd(int cd) {
		this.cd = cd;
	}
}