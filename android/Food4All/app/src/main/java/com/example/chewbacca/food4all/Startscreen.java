package com.example.chewbacca.food4all;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.content.Intent;
import android.view.View;

public class Startscreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_startscreen);
    }

    /** Called when the user clicks the Login button */
    public void goToLogin(View view) {
        Intent intent = new Intent(this, LoginActivity.class);
        startActivity(intent);
    }

    /** Called when the user clicks the Register button */
    public void goToRegister(View view) {
        Intent intent = new Intent(this, RegisterActivity.class);
        startActivity(intent);
    }

    /** provisional Activiy to get to the advertisement views */
    public void goToFirstAdvertisementPage(View view) {
        Intent intent = new Intent(this, Adv1SelectFood.class);
        startActivity(intent);
    }
    /** provisional Activiy to get to the advertisement views */
    public void goToReservepage(View view) {
        Intent intent = new Intent(this, Reserve2Activity.class);
        startActivity(intent);
    }
}