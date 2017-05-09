package com.example.chewbacca.food4all;

import android.location.Location;
import android.os.Bundle;


import static com.example.chewbacca.food4all.UserLocation.setLatitude;
import static com.example.chewbacca.food4all.UserLocation.setLongitude;

/**
 * Created by Julien on 08.05.2017.
 */
public class MyLocationListener implements android.location.LocationListener{
        public void onLocationChanged(Location location) {
//            setAccuracy(location.getAccuracy());
            setLongitude(location.getLongitude());
            setLatitude(location.getLatitude());
        }

        @Override
        public void onProviderDisabled(String provider) {

    }

        @Override
        public void onProviderEnabled(String provider) {

        }

        @Override
        public void onStatusChanged(String provider, int status, Bundle extras) {

        }
}
