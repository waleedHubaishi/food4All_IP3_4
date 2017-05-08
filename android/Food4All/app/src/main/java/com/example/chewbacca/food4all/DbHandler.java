package com.example.chewbacca.food4all;

import java.util.Date;

/**
 * This class is for handling everything db related
 */

// TODO: write all the functions for this class
public class DbHandler {

    boolean connect() {
        return true;
    }

    boolean closeCon() {
        return true;
    }

    boolean regUser(String uname, String email, String pass) {
        return true;
    }

    boolean delUser() {
        return true;
    }

    boolean addFood(String name, String category, String descr, Date expire, Date pickup) {
        return true;
    }

    boolean delFood(Food food) {
        return true;
    }
}
