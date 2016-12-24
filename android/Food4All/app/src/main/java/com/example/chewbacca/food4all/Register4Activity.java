package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class Register4Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register4);
    }

    /** Called when the user clicks the Weiter-button */
    public void goToStartscreen(View view) {
        Intent intent = new Intent(this, Startscreen.class);
        startActivity(intent);
    }
}
