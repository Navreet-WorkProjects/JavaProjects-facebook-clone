package com.socialcommunity.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Comment implements Serializable {

	private static final long serialVersionUID = -5527566248002296042L;
	
	
	@Id
	@Column(name = "COMMENTID")
	@GeneratedValue
	private Integer comment_id;
	
	@Column(name = "ID")
	private Integer id;
	
	@Column(name = "COMMENT_DATE")
	private String comment_date;
	
	@Column(name = "COMMENT")
	private Integer comment;

	
	public Integer getComment_id() {
		return comment_id;
	}

	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getComment_date() {
		return comment_date;
	}

	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

	public Integer getComment() {
		return comment;
	}

	public void setComment(Integer comment) {
		this.comment = comment;
	}
		
}
