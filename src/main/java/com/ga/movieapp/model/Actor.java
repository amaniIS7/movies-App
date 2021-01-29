package com.ga.movieapp.model;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity 
@Table(name="Actor")
public class Actor {
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	
	@ManyToMany(mappedBy = "actors")
	private Set<Movie> movies;
	
//	@ManyToMany
//	@JoinTable(name = "movie_actor",
//	             joinColumns = {@JoinColumn(name = "actor_id")},
//	             inverseJoinColumns = {@JoinColumn (name = "movie_id")})
//	private Set<Movie> movies;
	
	@Column(name="createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDateTime createAt;
	@Column(name="updatedat", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateAt;
	
	public int getActor_Id() {
		return id;
	}
	
	public void setActor_Id(int actor_Id) {
		this.id = actor_Id;
	}
	
	public String getActor_name() {
		return name;
	}
	
	public void setActor_name(String actor_name) {
		this.name = actor_name;
	}
	
	public LocalDateTime getCreateAt() {
		return createAt;
	}
	
	public void setCreateAt(LocalDateTime createAt) {
		this.createAt = createAt;
	}
	
	public LocalDateTime getUpdateAt() {
		return updateAt;
	}
	
	public void setUpdateAt(LocalDateTime updateAt) {
		this.updateAt = updateAt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Movie> getMovies() {
		return movies;
	}

	public void setMovies(Set<Movie> movies) {
		this.movies = movies;
	}


	

}
