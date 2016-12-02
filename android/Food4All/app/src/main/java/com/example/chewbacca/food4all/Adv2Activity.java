package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class Adv2Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv2);
    }

    /** Called when the user clicks the Login button */
    public void goToAdv1Activity(View view) {
        Intent intent = new Intent(this, Adv1Activity.class);
        startActivity(intent);
    }

    /** Called when the user clicks the Login button */
    public void goToAdv3Activity(View view) {
        Intent intent = new Intent(this, Adv3Activity.class);
        startActivity(intent);
    }
}