package com.example.chewbacca.food4all;

import java.util.ArrayList;

/**
 * This class manages the description of the food
 */

public class Food {

    private String foodName, foodCategory, description, imageUrl, label, timeReserved, dateReserved;
    private int sessionFED, foodID, donorId, recieverId;
    private boolean foodStatus;


    public static ArrayList<Food> getFoods(){
        final ArrayList<Food> foodList = new ArrayList<>();

            //Initialise new FoodO bjects and add the data inside, at the moment hard coded
            Food foodOne = new Food();

            foodOne.setFoodName("Banana");
            foodOne.setDescription("eine Schöne Banane hast du da ;)");

            foodOne.setimageURL("www.google.ch");
            foodOne.setlabel("BananenLabel");

        foodList.add(foodOne);

        Food foodTwo = new Food();

        foodOne.setFoodName("Apfel");
        foodOne.setDescription("Apfel abgebissen als feature verkauft sich besser siehe Apple ");

        foodOne.setimageURL("www.apple.com");
        foodOne.setlabel("Apfellabel");
        foodList.add(foodTwo);

        return foodList;
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

    public Food createNewFoodInstance() {
        Food foodInstance = new Food();
        return foodInstance;
    }

    public Integer getSessionFED() {
        return sessionFED;
    }

    public void setSessionFED(int sessionFED) {
        this.sessionFED = sessionFED;
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

    public boolean isFoodStatus() {
        return foodStatus;
    }

    public void setFoodStatus(boolean foodStatus) {
        this.foodStatus = foodStatus;
    }

    public String getTimeReserved() {
        return timeReserved;
    }

    public void setTimeReserved(String timeReserved) {
        this.timeReserved = timeReserved;
    }

    public String getDateReserved() {
        return dateReserved;
    }

    public void setDateReserved(String dateReserved) {
        this.dateReserved = dateReserved;
    }
}
