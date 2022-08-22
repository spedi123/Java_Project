package com.teamludo.ludogame.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name="game_data")
public class Board {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	private String turn;
	private String player1;
	private String player2;
	private String player3;
	private String player4;
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
		this.board[horse.position + dice] = horse;
		this.board[horse.position] = null;
		horse.positon += dice;
	}
	
	public boolean setHorseOnBoard(Horse horse, short dice) {
		
		if(this.board[horse.position + dice] == null) {
			this. moveHorse(horse, dice);
			return true;
		}
		
		
		
		else if(this.board[horse.position + dice] != null) {
			
			
			if(this.board[horse.position + dice].player_id == horse.player_id) {
				return false;
			}
			
			
			else if(this.board[horse.position + dice].player_id != horse.player_id) {
				this.board[horse.position + dice].setPosition(-1);
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