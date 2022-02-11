package com.yuliapianova.fullCrudSaveTravels.model;


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="expenses")
public class Expense {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@NotBlank(message="What did you buy?")
	private String name;
	
	@NotBlank(message="Vendor name required")
	private String vendor;
	
	@NotNull(message="Price required")
    @Min(value=0, message="Please enter the price")
    private Float price;
	
	@NotBlank(message="Enter description")
	private String description;
	
	
	@Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    public Expense() {

}

    public Expense(String name, String vendor, @NotBlank @Min(0) Float price, String description, Date createdAt, Date updatedAt) {
	this.name = name;
	this.vendor = vendor;
	this.price = price;
	this.description = description;
	this.createdAt = createdAt;
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


    public Long getId() {
    	return id;
    }
    public String getDescription() {
    	return description;
    }
    public void setDescription(String description) {
    	this.description = description;
    }
    public void setId(Long id) {
    	this.id = id;
    }
    public String getName() {
    	return name;
    }
    public void setName(String name) {
    	this.name = name;
    }
    public String getVendor() {
    	return vendor;
    }
    public void setVendor(String vendor) {
    	this.vendor = vendor;
    }
    public Float getPrice() {
    	return price;
    }
    public void setPrice(Float price) {
    	this.price = price;
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

}
