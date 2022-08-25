package com.teamludo.ludogame.models;

import java.util.Date;
import java.util.List;

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
	private Integer finishedHorse;
	private Integer startPosition;
	private boolean turn;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "board_id")
	private Board board;
	
	@OneToMany(fetch = FetchType.LAZY)
	private List<Horse> horses;
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;


	//Constructors
	
	public Player() {
		this.finishedHorse = 0;
		
	}
	public Player(String color) {
		this.color = color;
		this.finishedHorse = 0;
		
	}

	
	
	//Getters and Setters
	
	public Integer getStartPosition() {
		return startPosition;
	}
	public void setStartPosition(Integer startPosition) {
		this.startPosition = startPosition;
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
	
	
	public boolean isTurn() {
		return turn;
	}
	public void setTurn(boolean turn) {
		this.turn = turn;
	}
	public Integer getFinishedHorse() {
		return finishedHorse;
	}
	public void setFinishedHorse(Integer finishedHorse) {
		this.finishedHorse = finishedHorse;
	}
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	public List<Horse> getHorses() {
		return horses;
	}
	public void setHorses(List<Horse> horses) {
		this.horses = horses;
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
