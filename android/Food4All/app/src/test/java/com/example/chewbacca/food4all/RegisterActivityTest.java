package com.example.chewbacca.food4all;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by one on 10/05/2017.
 */
public class RegisterActivityTest {

    RegisterActivity registerActivityTest = new RegisterActivity();

    @Test
    public void isEmailValid() throws Exception {
        assertFalse(registerActivityTest.isEmailValid("asd"));
        assertFalse(registerActivityTest.isEmailValid("asd@fhnwch"));
        assertTrue(registerActivityTest.isEmailValid("asd@fhnw.ch"));
    }

    @Test
    public void isUsernameValid() throws Exception {
        assertFalse(registerActivityTest.isUsernameValid("vie4"));
        assertTrue(registerActivityTest.isUsernameValid("Funf5"));
        assertTrue(registerActivityTest.isUsernameValid("Zzwanzig20Zzwanzig20"));
        assertFalse(registerActivityTest.isUsernameValid("abc45abc45abc45abc451"));
    }


}