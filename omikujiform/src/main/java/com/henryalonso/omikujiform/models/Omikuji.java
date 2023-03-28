package com.henryalonso.omikujiform.models;

public class Omikuji {
	private int formNumber;
	private String city;
	private String person;
	private String hobby;
	private String organism;
	private String compliment;
	
	public Omikuji(Integer formNumber, String city, String person, String hobby, String organism, String compliment) {
		this.formNumber = formNumber;
		this.city = city;
		this.person = person;
		this.hobby = hobby;
		this.organism = organism;
		this.compliment = compliment;
	}

	public Integer getFormNumber() {
		return formNumber;
	}

	public void setFormNumber(Integer formNumber) {
		this.formNumber = formNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getOrganism() {
		return organism;
	}

	public void setOrganism(String organism) {
		this.organism = organism;
	}

	public String getCompliment() {
		return compliment;
	}

	public void setCompliment(String compliment) {
		this.compliment = compliment;
	}

}
