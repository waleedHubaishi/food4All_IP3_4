package com.example.chewbacca.food4all;

import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.widget.TextView;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by xao on 01.05.2017.
 */
public class LoginActivityTest {
    @Test
    public void onCreateLoader() throws Exception {

    }

    // void onCreate
    private LoginActivity.UserLoginTask mAuthTask = null;

    private void attemptLogin() {
        if (mAuthTask != null) {
            return;
        }
    };

    public boolean onEditorAction(TextView textView, int id, KeyEvent keyEvent) {
        if (id == R.id.login || id == EditorInfo.IME_NULL) {
            attemptLogin();
            return true;
        }
        return false;
    };

}