package com.teamludo.ludogame.models;

import java.util.ArrayList;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name="players")
public class Player {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String color;
	private Horse horseA;
	private Horse horseB;
	private Horse horseC;
	private Horse horseD;
	private ArrayList<Horse> finishLane;
	private ArrayList<Horse> homeBase;
	private ArrayList<Horse> afterFinish;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "board_id")
	private Board board;
	
	@OneToMany(fetch = FetchType.LAZY)
	private ArrayList<Horse> horses;
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;

	public Player() {
		for(int i = 0; i<5; i++) {
		this.finishLane.add(null);
		}
	
		
	}
	public Player(String color) {
		this.color = color;
		
	}

	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Horse getHorseA() {
		return horseA;
	}
	public void setHorseA(Horse horseA) {
		this.horseA = horseA;
	}
	public Horse getHorseB() {
		return horseB;
	}
	public void setHorseB(Horse horseB) {
		this.horseB = horseB;
	}
	public Horse getHorseC() {
		return horseC;
	}
	public void setHorseC(Horse horseC) {
		this.horseC = horseC;
	}
	public Horse getHorseD() {
		return horseD;
	}
	public void setHorseD(Horse horseD) {
		this.horseD = horseD;
	}
	public ArrayList<Horse> getFinishLane() {
		return finishLane;
	}
	public void setFinishLane(ArrayList<Horse> finishLane) {
		this.finishLane = finishLane;
	}
	public ArrayList<Horse> getHomeBase() {
		return homeBase;
	}
	public void setHomeBase(ArrayList<Horse> homeBase) {
		this.homeBase = homeBase;
	}
	public ArrayList<Horse> getAfterFinish() {
		return afterFinish;
	}
	public void setAfterFinish(ArrayList<Horse> afterFinish) {
		this.afterFinish = afterFinish;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	
}
