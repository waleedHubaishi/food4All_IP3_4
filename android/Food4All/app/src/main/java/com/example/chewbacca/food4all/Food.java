package com.example.chewbacca.food4all;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.InputStream;
import java.util.ArrayList;

/**
 * Created by Julien on 01.12.2016.
 */

public class Food {

    private Integer seessionFID;
    private String title;
    private String description;
    private String imageUrl;
    private String label;
    private String foodPicked;
    private String timeReserved;
    private String dateReserved;


    public static ArrayList<Food> getFoods(){
        final ArrayList<Food> foodList = new ArrayList<>();

            //Initialise new FoodO bjects and add the data inside, at the moment hard coded
            Food foodOne = new Food();

            foodOne.setTitle("Banana");
            foodOne.setDescription("eine Schöne Banane hast du da ;)");
            foodOne.setimageURL("www.google.ch");
            foodOne.setlabel("BananenLabel");

        foodList.add(foodOne);

        Food foodTwo = new Food();

        foodOne.setTitle("Apfel");
        foodOne.setDescription("Apfel abgebissen als feature verkauft sich besser siehe Apple ");
        foodOne.setimageURL("www.apple.com");
        foodOne.setlabel("Apfellabel");
        foodList.add(foodTwo);

        return foodList;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public Integer getSeessionFID() {
        return seessionFID;
    }

    public void setSeessionFID(Integer seessionFID) {
        this.seessionFID = seessionFID;
    }

    public String getTitle() {
        return title;
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

    public String getFoodPicked() {
        return foodPicked;
    }

    public void setFoodPicked(String foodPicked) {
        this.foodPicked = foodPicked;
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
