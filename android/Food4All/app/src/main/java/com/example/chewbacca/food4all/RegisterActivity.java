package com.example.chewbacca.food4all;

import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegisterActivity extends AppCompatActivity {

    // UI References
    private ImageButton imgButton;
    private PopupWindow popupWindow;
    private LayoutInflater layoutInflater;
    private LinearLayout linearLayout;
    private AutoCompleteTextView mUsernameView;
    private AutoCompleteTextView mEmailView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        // set up the register form
        mUsernameView = (AutoCompleteTextView) findViewById(R.id.username);
        mEmailView = (AutoCompleteTextView) findViewById(R.id.email);

        /** popups when user clicks on image-button */
        imgButton = (ImageButton) findViewById(R.id.ibInfo1);
        linearLayout = (LinearLayout) findViewById(R.id.linear);

        imgButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                layoutInflater = (LayoutInflater) getApplicationContext().getSystemService(LAYOUT_INFLATER_SERVICE);
                ViewGroup container = (ViewGroup) layoutInflater.inflate(R.layout.popup,null);

                popupWindow = new PopupWindow(container,400,400, true);
                popupWindow.showAtLocation(linearLayout, Gravity.NO_GRAVITY,500,500);

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

    private boolean isEmailValid(String email) {
        Pattern p = Pattern.compile(".+@.+\\.[a-z]+");
        Matcher m = p.matcher(email);
        return m.matches();
    }

    private boolean isUsernameValid(String uname) {
        // Ensure that it starts with a letter or underscore, 3 to 12 chars long
        Pattern p = Pattern.compile("^[A-Za-z_][A-Za-z0-9_]{4,19}$");
        Matcher m = p.matcher(uname);
        return m.matches();
    }

    /** Called when the user clicks the Weiter-button */
    public void goToRegister2(View view) {
        // Reset errors.
        mUsernameView.setError(null);
        mEmailView.setError(null);

        // Store values for String checks
        String username = mUsernameView.getText().toString();
        String email = mEmailView.getText().toString();

        boolean cancel = false;
        View focusView = null;

        // Check for valid username
        if (TextUtils.isEmpty(username)) {
            mUsernameView.setError(getString(R.string.error_field_required));
            focusView = mUsernameView;
            cancel = true;
        } else if (!isUsernameValid(username)) {
            mUsernameView.setError(getString(R.string.error_invalid_uname));
            focusView = mUsernameView;
            cancel = true;
        }

        // Check for a valid email address.
        if (TextUtils.isEmpty(email)) {
            mEmailView.setError(getString(R.string.error_field_required));
            focusView = mEmailView;
            cancel = true;
        } else if (!isEmailValid(email)) {
            mEmailView.setError(getString(R.string.error_invalid_email));
            focusView = mEmailView;
            cancel = true;
        }

        if (cancel) {
            // There was an error; don't attempt login and focus the first
            // form field with an error.
            focusView.requestFocus();
        } else {
            Intent intent = new Intent(this, Register2Activity.class);
            startActivity(intent);
        }
    }
}