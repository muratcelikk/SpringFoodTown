package com.works.model;
// Generated 25.Eyl.2019 00:10:58 by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Api generated by hbm2java
 */
@Entity
@Table(name = "api", catalog = "foodtown")
public class Api implements java.io.Serializable {

	private Integer apiid;
	private String apiname;
	private String apikey;
	private String apimail;
	private String apipass;
	private String role;

	public Api() {
	}

	public Api(String apiname, String apikey, String apimail, String apipass, String role) {
		this.apiname = apiname;
		this.apikey = apikey;
		this.apimail = apimail;
		this.apipass = apipass;
		this.role = role;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "apiid", unique = true, nullable = false)
	public Integer getApiid() {
		return this.apiid;
	}

	public void setApiid(Integer apiid) {
		this.apiid = apiid;
	}

	@Column(name = "apiname")
	public String getApiname() {
		return this.apiname;
	}

	public void setApiname(String apiname) {
		this.apiname = apiname;
	}

	@Column(name = "apikey")
	public String getApikey() {
		return this.apikey;
	}

	public void setApikey(String apikey) {
		this.apikey = apikey;
	}

	@Column(name = "apimail")
	public String getApimail() {
		return this.apimail;
	}

	public void setApimail(String apimail) {
		this.apimail = apimail;
	}

	@Column(name = "apipass")
	public String getApipass() {
		return this.apipass;
	}

	public void setApipass(String apipass) {
		this.apipass = apipass;
	}

	@Column(name = "role")
	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
