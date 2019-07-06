package com.ineo.trust.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "auth_role")
public class Role  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5654435969031796926L;

	@Id
	@Column(name = "auth_role_id")
	@GeneratedValue(
		    strategy= GenerationType.AUTO,
		    generator="native"
		)
	@GenericGenerator(
		    name = "native",
		    strategy = "native"
		)

	private int id;

	@Column(name = "role_name")
	private String role;

	
	 @ManyToMany(mappedBy="roles")
	    private Set<User> user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", role=" + role + ", user=" + user + "]";
	}


	
	
}