package com.example.chewbacca.food4all;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.media.Image;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.WindowManager;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TimePicker;

import java.sql.Time;
import java.util.Calendar;
import java.util.StringTokenizer;

public class Adv3Activity extends AppCompatActivity {
    EditText datePicker;
    EditText timePicker;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv3);

        datePicker = (EditText) findViewById(R.id.editText2);
        datePicker.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                //To show current date in the datepicker
                Calendar mcurrentDate=Calendar.getInstance();
                int mYear = mcurrentDate.get(Calendar.YEAR);
                int mMonth = mcurrentDate.get(Calendar.MONTH);
                int mDay = mcurrentDate.get(Calendar.DAY_OF_MONTH);

                DatePickerDialog mDatePicker=new DatePickerDialog(Adv3Activity.this, new DatePickerDialog.OnDateSetListener() {
                    public void onDateSet(DatePicker datepicker, int selectedyear, int selectedmonth, int selectedday) {
                    // TODO Auto-generated method stub
                    datePicker.setText("" + selectedday + "/" + (selectedmonth+1) + "/" + selectedyear);
                    }
                },mYear, mMonth, mDay);
                mDatePicker.setTitle("Select date");
                mDatePicker.show();
            }
        });

        timePicker = (EditText) findViewById(R.id.editText4);
        timePicker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Get Current time
                final Calendar c = Calendar.getInstance();
                final int hour = c.get(Calendar.HOUR_OF_DAY);
                int minute = c.get(Calendar.MINUTE);
                final String blubber = "lol";


                TimePickerDialog timePickerDialog = new TimePickerDialog(Adv3Activity.this,
                        new TimePickerDialog.OnTimeSetListener() {

                            @Override
                            public void onTimeSet(TimePicker view, int hour, int minute) {
                                String hourText=String.valueOf(hour), minuteText=String.valueOf(minute);
                                if(hour<10) {
                                    hourText = "0"+hour;

                                } if(minute<10) {
                                    minuteText = "0"+minute;

                                }
                                timePicker.setText(hourText + ":" + minuteText);
                            }
                        }, hour, minute, false);
                timePickerDialog.show();
            }

        });

        final ImageButton nextPage = (ImageButton)findViewById(R.id.imageButton);
        final EditText editText2 = (EditText) findViewById(R.id.editText2);
        final EditText editText4 = (EditText) findViewById(R.id.editText4);
        nextPage.setEnabled(false);
//        nextPage.setOnClickListener();

        ((EditText)findViewById(R.id.editText2)).addTextChangedListener(new TextWatcher() {
            boolean fieldsOK=validate(new EditText[]{editText2, editText4});

            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                if(fieldsOK == true) {
                    nextPage.setEnabled(true);
                } else {
                    nextPage.setEnabled(false);
                }
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if(fieldsOK == true) {
                    nextPage.setEnabled(true);
                } else {
                    nextPage.setEnabled(false);
                }
            }

            @Override
            public void afterTextChanged(Editable s) {
                if(fieldsOK == true) {
                    nextPage.setEnabled(true);
                } else {
                    nextPage.setEnabled(false);
                }
            }
        });

    }

    /** Called when the user clicks the Login button */
    public void goToAdv2Activity(View view) {
        Intent intent = new Intent(this, Adv2Activity.class);
        startActivity(intent);
    }

    /** Called when the user clicks the Login button */
    public void goToAdv4Activity(View view) {
        Intent intent = new Intent(this, Adv6Activity.class);
        startActivity(intent);
    }

    private boolean validate(EditText[] fields){
        for(int i=0; i<fields.length; i++){
            EditText currentField=fields[i];
            if(currentField.getText().toString().length()<=0){
                return false;
            }
        }
        return true;
    }

    public void getUserLocation() {


    }
}