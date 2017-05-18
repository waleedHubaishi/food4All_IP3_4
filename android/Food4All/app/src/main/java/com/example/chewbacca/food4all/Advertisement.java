package com.example.chewbacca.food4all;

import java.sql.Date;
import java.util.ArrayList;

/**
 * This class manages the description of the advertisement
 */

public class Advertisement {

    private String advName, description, imageUrl, advCategory;
    private int advID;
    private boolean statusResv, statusPickup;
    private Date expTimestamp, pickupTimestamp;
    private Person donor, receiver;

    public String getAdvCategory() { return advCategory; }

    public void setAdvCategory(String advCategory) {
        this.advCategory = advCategory;
    }

    public Person getReceiver() {
        return receiver;
    }

    public void setReceiver(Person receiver) {
        this.receiver = receiver;
    }

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

    public void setAdvName(String advName) {
        this.advName = advName;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setimageURL(String imageURL) {
        this.imageUrl = imageURL;
    }

    public String getAdvName() {
        return advName;
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

    public int getAdvID() {
        return advID;
    }

    public void setAdvID(int advID) {
        this.advID = advID;
    }
}
