package com.mindtree.model;

public class Player implements Comparable<Player> {
	private int playerId;
	private String name;
	private short age;
	private String gender;
	private String teamName;

	public Player() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Player(int playerId, String name, short age, String gender, String teamName) {
		super();
		this.playerId = playerId;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.teamName = teamName;
	}

	public int getPlayerId() {
		return playerId;
	}

	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public short getAge() {
		return age;
	}

	public void setAge(short age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	@Override
	public String toString() {
		return "Player [playerId=" + playerId + ", name=" + name + ", age=" + age + ", gender=" + gender + ", teamName="
				+ teamName + "]";
	}

	@Override
	public int compareTo(Player psgr) {
		if (this.age == psgr.age)
			return 0;
		else if (this.age > psgr.age)
			return 1;
		else
			return -1;
	}
}
