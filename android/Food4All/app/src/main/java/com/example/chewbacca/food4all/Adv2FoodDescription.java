package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class Adv2FoodDescription extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv2);

        final Button nextPage = (Button)findViewById(R.id.button7);
        nextPage.setEnabled(false);

        ((EditText)findViewById(R.id.editText3)).addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                if(s.length() > 0) {
                    nextPage.setEnabled(true);
                } else {
                    nextPage.setEnabled(false);
                }
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if(s.length() > 0) {
                    nextPage.setEnabled(true);
                } else {
                    nextPage.setEnabled(false);
                }
            }

            @Override
            public void afterTextChanged(Editable s) {
                if(s.length() > 0) {
                    nextPage.setEnabled(true);
                } else {
                    nextPage.setEnabled(false);
                }
            }
        });

    }

    /** Called when the user clicks the Login button */
    public void goToAdv1Activity(View view) {
        Intent intent = new Intent(this, Adv1SelectFood.class);
        startActivity(intent);
    }

    /** Called when the user clicks the Login button */
    public void goToAdv3Activity(View view) {
        String exampleOne = "zeot";
        String exampleTwo= "blub";

        Bundle b = getIntent().getExtras();

        if(b != null) {
            exampleOne = b.getString("productName");
            exampleTwo = b.getString("productCategory");
            System.out.println(exampleOne);
            System.out.println(exampleTwo);
        }

        Intent intent = new Intent(this, Adv3TimeDateSelect.class);
        startActivity(intent);
    }
    /**
     * Function to load the spinner data from SQLite database
     * */

}
