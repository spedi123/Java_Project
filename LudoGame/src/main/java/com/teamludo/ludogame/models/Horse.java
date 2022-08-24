package com.teamludo.ludogame.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name="horses")
public class Horse {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private boolean onBoard;
	private Integer position;
	
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "player_id")
	private Player player;
	
	
	//Constructors
	
	public Horse() {
		this.position = -1;
		this.onBoard = false;
	}
	
	
	
	//Methods
	public boolean isAddPos(int dice, int newPos) {
		if((this.position + dice) > 51) {
			int currPos = this.position + dice - 52;
			if(currPos == newPos) {
				return true;
			}
			return false;
		}
		if(this.position + dice == newPos) {
			return true;
		}
		return false;
	}
	
	public void addPos(int dice) {
		if((this.position + dice) > 51) {
			this.position = this.position + dice - 52;				
		}
		this.position +=  dice;
	}
	
	public void killHorse() {
		this.position = -1;
	}
	public void finishHorse() {
		this.position = -2;
	}
	
	
	
	
	//Getters and Setters
	
	
	
	
	
	public Long getId() {
		return id;
	}
	
	public Player getPlayer() {
		return player;
	}

	public void setPlayer(Player player) {
		this.player = player;
	}


	public boolean isOnBoard() {
		return onBoard;
	}

	public void setOnBoard(boolean onBoard) {
		this.onBoard = onBoard;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public Integer getPosition() {
		return position;
	}


	public void setPosition(Integer position) {
		this.position = position;
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
