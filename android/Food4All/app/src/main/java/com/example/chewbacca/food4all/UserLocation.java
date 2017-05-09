package com.example.chewbacca.food4all;

public class UserLocation {
    private static double latitude;
    /**
     * @return the latitude
     */
    public static double getLatitude() {
        return latitude;
    }

    /**
     * @param latitude the latitude to set
     */
    public static void setLatitude(double l) {
        latitude = l;
    }

    private static double longitude;
    /**
     * @return the longitude
     */
    public static double getLongitude() {
        return longitude;
    }

    /**
     * @param d the longitude to set
     */
    public static void setLongitude(double d) {
        longitude = d;
    }

    /**
     * gets the accurate address of the user
     * @param l
     * @param d
     */
    public static void getUserAdress( double l, double d) {
        System.out.println("latitude"+d);
        System.out.println("longtitude"+l);
    }
}