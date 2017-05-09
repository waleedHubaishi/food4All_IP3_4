package com.example.chewbacca.food4all;

import android.content.Intent;
import android.media.Image;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class Adv1Activity extends AppCompatActivity implements AdapterView.OnItemSelectedListener {
    // Spinner element
    Spinner spinner;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv1);

        // Spinner element
        spinner = (Spinner) findViewById(R.id.spinner2);

        // Loading spinner data from database
        loadSpinnerData();

        // Spinner click listener
        spinner.setOnItemSelectedListener(this);




        //Validation of the Edittext
//         EditText firstText = (EditText)findViewById(R.id.editText);
         final ImageButton nextPage = (ImageButton)findViewById(R.id.imageButton2);
        nextPage.setEnabled(false);

        ((EditText)findViewById(R.id.editText)).addTextChangedListener(new TextWatcher() {
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
//        firstText.setOnClickListener(new EditText().OnClickListener(){
//        nextPage.setOnClickListener(new EditText.OnKeyListener(){

//            @Override
//            public boolean onKey(View view, int i, KeyEvent keyEvent) {
//                if(editText.getText().toString().length() == 0){
//                    editText.setError("Feld muss gefüllt sein!");
//                nextPage.setClickable(false);
//                } else{
//                    nextPage.setClickable(true);
//
//                }
//                return false;
//            }
//            });
}

    /** Called when the user clicks the Login button */
    public void goToAdv2Activity(View view) {
        //TODO: Create ArrayList from type Food and pass to the next side
        // Currently its passing just from type string

        EditText editTextValue = (EditText)findViewById(R.id.editText);
        String value = editTextValue.getText().toString();
        System.out.println(value);

        Spinner mySpinner=(Spinner) findViewById(R.id.spinner2);
        String spinnerText = mySpinner.getSelectedItem().toString();

        Intent intent = new Intent(this, Adv2Activity.class);
        Bundle newActivityBundle = new Bundle();
        newActivityBundle.putString("productName", value);
        newActivityBundle.putString("productCategory", spinnerText);
        intent.putExtras(newActivityBundle); //Put your id to your next Intent
        startActivity(intent);
    }

    public void gotoav10 (View view){
        Intent intent = new Intent(this, adv10Activity.class);
        startActivity(intent);
    }

    private void loadSpinnerData() {
        //load Spinner elements
        List<String> spinnerelements = new ArrayList<String>();

        spinnerelements.add("Früchte");
        spinnerelements.add("Gemüse");
        spinnerelements.add("Tiefgekühltes");
        spinnerelements.add("Torten");
        spinnerelements.add("Fertiggerichte");
        spinnerelements.add("FastFood");
        spinnerelements.add("Food2Go");

        // Creating adapter for spinner
        ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this,
                android.R.layout.simple_spinner_item, spinnerelements);
        // Drop down layout style - list view with radio button
        dataAdapter
                .setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

        // attaching data adapter to spinner
        spinner.setAdapter(dataAdapter);
        /*
        // database handler
        DatabaseHandler db = new DatabaseHandler(getApplicationContext());

        // Spinner Drop down elements
        List<String> lables = db.getAllLabels();
    */
    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {

        // On selecting a spinner item
        String label = parent.getItemAtPosition(position).toString();

        // Showing selected spinner item
//        Toast.makeText(parent.getContext(), "You selected: " + label,
//                Toast.LENGTH_LONG).show();

    }

    @Override
    public void onNothingSelected(AdapterView<?> arg0) {
        // TODO Auto-generated method stub

    }
}
