package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class Adv6Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv6);
    }
    public void goToAdv5Activity(View view) {
        Intent intent = new Intent(this, Adv5Activity.class);
        startActivity(intent);
    }
}
