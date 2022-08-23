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
	private String turn;
	private Player player1;
	private Player player2;
	private Player player3;
	private Player player4;
	
	@OneToMany(mappedBy="board", fetch = FetchType.LAZY)
    private List<Player> players;
	
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;
	private Horse[] board;
	
	public Board() {
		this.board = new Horse[52];
	}
	
	public boolean isBoardEmpty() {
		for(int i = 0; i < 52; i++) {
			if(this.board[i] != null) {
				return false;
			}
		}
		return true;
	}

	public short rollDice() {
		short dice1 = (short) Math.floor(Math.random() * 6); 
		short dice2 = (short) Math.floor(Math.random() * 6);
		return (short) (dice1 + dice2);
	}
	
	public void moveHorse(Horse horse, short dice) {
		this.board[horse.getPosition() + dice] = horse;
		this.board[horse.getPosition()] = null;
		horse.setPosition(horse.getPosition()+ dice);
	}
	
	public boolean setHorseOnBoard(Horse horse, short dice) {
		
		if(this.board[horse.getPosition() + dice] == null) {
			this. moveHorse(horse, dice);
			return true;
		}
		
		
		
		else if(this.board[horse.getPosition() + dice] != null) {
			
			
			if(this.board[horse.getPosition() + dice].player_id == horse.player_id) {
				return false;
			}
			
			
			else if(this.board[horse.getPosition() + dice].player_id != horse.player_id) {
				this.board[horse.getPosition() + dice].killHorse();
				this.moveHorse(horse, dice);
				return true;
			}
		}
		return false;
	}
	
	
	
	
	public Horse getHorseOnSquare(short position) {
		return this.board[position];
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