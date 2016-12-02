package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class Adv3Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv3);
    }

    /** Called when the user clicks the Login button */
    public void goToAdv2Activity(View view) {
        Intent intent = new Intent(this, Adv2Activity.class);
        startActivity(intent);
    }

    /** Called when the user clicks the Login button */
    public void goToAdv4Activity(View view) {
        Intent intent = new Intent(this, Adv4Activity.class);
        startActivity(intent);
    }
}
