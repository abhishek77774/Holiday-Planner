package com.cts.holiday_planner.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="source_destination")
public class SourceDestination {
	
	private String source;
	private String destination;
	private int cost;
	private int id;
	
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	public SourceDestination() {
		super();
	}
	
	
	@Override
	public String toString() {
		return "SourceDestination [source=" + source + ", destination=" + destination + ", cost=" + cost + ", id=" + id
				+ "]";
	}
	
	

}
