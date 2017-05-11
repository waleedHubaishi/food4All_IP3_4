package com.example.chewbacca.food4all;

import com.mysql.jdbc.AssertionFailedException;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by xao on 10.05.2017.
 */
public class DbHandlerTest {

    @Test
    public void connect() throws Exception {
    }

    @Test
    public void closeCon() throws Exception {
        boolean ans = true;
        boolean val;


    }

    @Test
    public void regUser() throws Exception {
        String uname = "Walter";
        String email = "egon@heissmehl.com";
        String pass = "E3opppf";

        assertFalse(uname, false);
        assertTrue(email, true);

    }

    // leer
    @Test
    public void delUser() throws Exception {

    }

    // leer
    @Test
    public void delAdv() throws Exception {

    }

    @Test
    public void checkUname() throws Exception {
        String SelectUserSQL = null;
    }

}