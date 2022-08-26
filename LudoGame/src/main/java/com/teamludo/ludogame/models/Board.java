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
	
	@OneToMany(mappedBy="board", fetch = FetchType.LAZY)
    private List<Player> players;
	
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;
	
	

	public Board() {
	}
	
	

	public static int rollDice() {
		int dice = (int) Math.ceil(Math.random() * 6);
		return dice;
	}
	
	public void moveHorse(Horse horse, Integer dice) {
		horse.setPosition(horse.getPosition()+ dice);
	}
	
//	public ArrayList<Horse> makeHorseArr(){
//		ArrayList<Player> playerList = new ArrayList<Player>(playerService.allPlayersOfBoard(this));
//		ArrayList<Horse> horseList = new ArrayList<Horse>();
//		for(int i = 0; i < 4; i++) {
//			ArrayList<Horse> playerHorse = (ArrayList<Horse>) horseService.allHorsesOfPlayer(playerList.get(i));
//			for(int j = 0; j < 4; j++) {
//				horseList.add(playerHorse.get(j));
//			}
//		}
//		return horseList;
//	}
	
//	public ArrayList<Integer> makePositionArr(){
//		ArrayList<Horse> horseList = this.makeHorseArr();
//		ArrayList<Integer> positionList = new ArrayList<Integer>();
//		for(int i = 0; i < 16; i++) {
//			positionList.add(horseList.get(i).getPosition());
//		}
//		return positionList;
//	}
	
//	public boolean canMove(Horse horse, Integer dice, Integer newPos) {
//		
//		//if the horse cannot move to new position in the number of dice rolls
//		if(!horse.isAddPos(dice, newPos)) {
//			return false;
//		}
//		
//		//if there is a horse already in that position
//		if(this.makePositionArr().contains(newPos)) {
//			
//			//if the horse in that position is owned by the same player as the horse being moved
//			if(this.makeHorseArr().get(this.makePositionArr().indexOf(newPos)).getPlayer() == horse.getPlayer()) {
//				return false;
//			}
//			//if the horse in that position is NOT owned by the same player as the horse being moved
//			return true;
//		}
//		//if there is no horse in the new position
//		return true;
//	}
	
	
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