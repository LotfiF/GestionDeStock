package com.stock.mvc.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.codehaus.jackson.annotate.JsonIgnore;



@Entity
public class Category implements Serializable {
	
	@Id
	@GeneratedValue
	private Long idCategory;
	
	private String codeCategory;
	
	private String designation;
	
	@OneToMany(mappedBy = "category")
	private List<Article> articles;
	
	public Category(){
		//TODO Auto-generated constructor stub
	}
	
	public Long getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(Long id) {
		this.idCategory = id;
	}
	
	public String getCodeCategory() {
		return codeCategory;
	}

	public void setCodeCategory(String codeCategory) {
		this.codeCategory = codeCategory;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	@JsonIgnore
	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}




}
