package com.cts.holiday_planner.bean;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Tour")
public class Tour {
	
	private int tourId;
	private String source;
	private String destination;
	private Date startingDate;
	private Date endingDate;
	private int numberOfTourists;

	
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
	public Date getStartingDate() {
		return startingDate;
	}
	public void setStartingDate(Date startingDate) {
		this.startingDate = startingDate;
	}
	public Date getEndingDate() {
		return endingDate;
	}
	public void setEndingDate(Date endingDate) {
		this.endingDate = endingDate;
	}
	public int getNumberOfTourists() {
		return numberOfTourists;
	}
	public void setNumberOfTourists(int numberOfTourists) {
		this.numberOfTourists = numberOfTourists;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getTourId() {
		return tourId;
	}
	public void setTourId(int tourId) {
		this.tourId = tourId;
	}
	public Tour() {
		super();
	}
	
	@Override
	public String toString() {
		return "Tour [tourId=" + tourId + ", source=" + source + ", destination=" + destination + ", startingDate="
				+ startingDate + ", endingDate=" + endingDate + ", numberOfTourists=" + numberOfTourists + "]";
	}
	

	
	
	
	
	

}
