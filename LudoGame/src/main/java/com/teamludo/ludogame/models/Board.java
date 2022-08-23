package com.teamludo.ludogame.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name="boards")
public class Board {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	private Player turn;
	
	@OneToMany(mappedBy="board", fetch = FetchType.LAZY)
    private List<Player> players;
	
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;
	
	public Board() {
			Player newP1 = new Player();
			newP1.setColor("red");
			newP1.setStartPosition(0);
			this.players.add(newP1);
			
			Player newP2 = new Player();
			newP2.setColor("green");
			newP2.setStartPosition(13);
			this.players.add(newP2);
			
			Player newP3 = new Player();
			newP3.setColor("blue");
			newP3.setStartPosition(26);
			this.players.add(newP3);
			
			Player newP4 = new Player();
			newP4.setColor("yellow");
			newP4.setStartPosition(39);
			this.players.add(newP4);
			
			this.turn = this.players.get(0);
	}
	

	public int rollDice() {
		int dice1 = (int) Math.floor(Math.random() * 6); 
		int dice2 = (int) Math.floor(Math.random() * 6);
		return (dice1 + dice2);
	}
	
	public void moveHorse(Horse horse, int dice) {
		horse.setPosition(horse.getPosition()+ dice);
	}
	
	public boolean canMove(Horse horse, int dice) {
		
		return true;
	}
	
//	if(this.board[horse.getPosition() + dice] == null) {
//		this. moveHorse(horse, dice);
//		return true;
//	}
//	
//	
//	
//	else if(this.board[horse.getPosition() + dice] != null) {
//		
//		
//		if(this.board[horse.getPosition() + dice].getPlayer() == horse.getPlayer()) {
//			return false;
//		}
//		
//		
//		else if(this.board[horse.getPosition() + dice].getPlayer() != horse.getPlayer()) {
//			this.board[horse.getPosition() + dice].killHorse();
//			this.moveHorse(horse, dice);
//			return true;
//		}
//	}
//	return false;
	
	
	
	
	
	
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Player getTurn() {
		return turn;
	}


	public void setTurn(Player turn) {
		this.turn = turn;
	}


	public List<Player> getPlayers() {
		return players;
	}


	public void setPlayers(List<Player> players) {
		this.players = players;
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