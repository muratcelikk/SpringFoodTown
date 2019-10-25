package com.works.model;
// Generated 25.Eyl.2019 00:10:58 by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Fcomment generated by hbm2java
 */
@Entity
@Table(name = "fcomment", catalog = "foodtown")
public class Fcomment implements java.io.Serializable {

	private Integer fcid;
	private String fcname;
	private String fcmail;
	private String fcomment;
	private Integer fcommentid;

	public Fcomment() {
	}

	public Fcomment(String fcname, String fcmail, String fcomment, Integer fcommentid) {
		this.fcname = fcname;
		this.fcmail = fcmail;
		this.fcomment = fcomment;
		this.fcommentid = fcommentid;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "fcid", unique = true, nullable = false)
	public Integer getFcid() {
		return this.fcid;
	}

	public void setFcid(Integer fcid) {
		this.fcid = fcid;
	}

	@Column(name = "fcname", length = 100)
	public String getFcname() {
		return this.fcname;
	}

	public void setFcname(String fcname) {
		this.fcname = fcname;
	}

	@Column(name = "fcmail")
	public String getFcmail() {
		return this.fcmail;
	}

	public void setFcmail(String fcmail) {
		this.fcmail = fcmail;
	}

	@Column(name = "fcomment", length = 65535)
	public String getFcomment() {
		return this.fcomment;
	}

	public void setFcomment(String fcomment) {
		this.fcomment = fcomment;
	}

	@Column(name = "fcommentid")
	public Integer getFcommentid() {
		return this.fcommentid;
	}

	public void setFcommentid(Integer fcommentid) {
		this.fcommentid = fcommentid;
	}

}
