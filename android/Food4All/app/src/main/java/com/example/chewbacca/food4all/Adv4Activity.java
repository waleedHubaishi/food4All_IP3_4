package com.example.chewbacca.food4all;

import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;

import static android.Manifest.permission_group.LOCATION;

public class Adv4Activity extends AppCompatActivity {




    /** Called when the user clicks the Login button */
    public void goToAdv3Activity(View view) {
        Intent intent = new Intent(this, Adv3Activity.class);
        startActivity(intent);
    }

    public void gotoadv7Activity(View view) {
        Intent intent = new Intent(this, Adv7ActivitySelectLocation.class);
        startActivity(intent);
    }


    /** Called when the user clicks the Login button */
    public void goToAdv5Activity(View view) {
        Intent intent = new Intent(this, Adv6Activity.class);
        startActivity(intent);
    }

}
