package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Register2Activity extends AppCompatActivity {

    private ImageButton imgButton;
    private PopupWindow popupWindow;
    private LayoutInflater layoutInflater;
    private LinearLayout linearLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register2);

        /** Called when user clicks on the Info-button*/
        imgButton = (ImageButton) findViewById(R.id.ibInfo2);
        linearLayout = (LinearLayout) findViewById(R.id.linear);

        imgButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                layoutInflater = (LayoutInflater) getApplicationContext().getSystemService(LAYOUT_INFLATER_SERVICE);
                ViewGroup container = (ViewGroup) layoutInflater.inflate(R.layout.popup2,null);

                popupWindow = new PopupWindow(container,800,800, true);
                popupWindow.showAtLocation(linearLayout, Gravity.NO_GRAVITY,250,500);

                container.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public boolean onTouch(View view, MotionEvent motionevent) {
                        popupWindow.dismiss();
                        return true;
                    }
                });
            }
        });

    }

    private boolean isPasswordValid(String password) {
        Pattern p = Pattern.compile(".+@.+\\.[a-z]+");
        Matcher m = p.matcher(password);
        return m.matches();
    }

    /** Called when the user clicks the Weiter-button */
    public void goToRegister3(View view) {
        Intent intent = new Intent(this, Register3Activity.class);
        startActivity(intent);
    }
}
