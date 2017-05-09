package com.example.chewbacca.food4all;

import java.sql.Date;
import java.util.ArrayList;

/**
 * This class manages the description of the advertisement
 */

public class Advertisement {


    private String foodName, foodCategory, description, imageUrl, label;
    private int foodID, donorId, recieverId;
    private boolean statusResv, statusPickup;
    private Date expTimestamp, pickupTimestamp;
    private Person donor;


    public boolean isStatusResv() {
        return statusResv;
    }

    public void setStatusResv(boolean statusResv) {
        this.statusResv = statusResv;
    }

    public boolean isStatusPickup() {
        return statusPickup;
    }

    public void setStatusPickup(boolean statusPickup) {
        this.statusPickup = statusPickup;
    }

    public Person getDonor() {
        return donor;
    }

    public void setDonor(Person donor) {
        this.donor = donor;
    }

    public Date getExpTimestamp() {
        return expTimestamp;
    }

    public void setExpTimestamp(Date expTimestamp) {
        this.expTimestamp = expTimestamp;
    }

    public Date getPickupTimestamp() {
        return pickupTimestamp;
    }

    public void setPickupTimestamp(Date pickupTimestamp) {
        this.pickupTimestamp = pickupTimestamp;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setimageURL(String imageURL) {
        this.imageUrl = imageURL;
    }

    public void setlabel(String label) {
        this.label = label;
    }

    public String getFoodName() {
        return foodName;
    }

    public String getDescription() {
        return description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(String foodCategory) {
        this.foodCategory = foodCategory;
    }

    public int getFoodID() {
        return foodID;
    }

    public void setFoodID(int foodID) {
        this.foodID = foodID;
    }

    public int getDonorId() {
        return donorId;
    }

    public void setDonorId(int donorId) {
        this.donorId = donorId;
    }

    public int getRecieverId() {
        return recieverId;
    }

    public void setRecieverId(int recieverId) {
        this.recieverId = recieverId;
    }
}
