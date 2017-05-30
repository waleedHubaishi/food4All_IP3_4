package com.example.chewbacca.food4all;

import android.os.AsyncTask;
import android.util.Log;

import java.util.Date;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

/**
 * This class is for handling everything db related
 */

// TODO: write all the functions for this class
public class DbHandler extends AsyncTask<String, String, String> {
    private static final String TAG = LoginActivity.class.getSimpleName(); // used for debugging messages
    private static final String url = "jdbc:mysql://86.119.36.198:3306/food4all";
    private static final String user = "food4all";
    private static final String pass = "";

    private static Connection con = null;
    private static Statement statement = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    // Singleton instance --> more info here: http://www.javaworld.com/article/2073352/core-java/simply-singleton.html
    private static DbHandler instance = null;
    protected DbHandler() {
        // Exists only to defeat instantiation.
    }

    public static DbHandler getInstance() {
        if(instance == null) {
            instance = new DbHandler();
        }
        return instance;
    }

    @Override
    protected String doInBackground(String... params) {
        return null;
    }

    boolean connect() throws Exception {
        try {
            // This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            con = DriverManager.getConnection(url, user, pass);

            if (con.isClosed()==false) {
                Log.d(TAG, "Function connect succeeded!");
            }
        } catch (Exception e) {
            Log.e(TAG, "ERROR: Function connect failed!", e);
            throw e;
        }
        return true;
    }

    boolean closeCon() {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (con != null) {
                con.close();
            }
            return true;
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: Function closeCon failed!", e);
            return false;
        }
    }

    boolean regUser(String uname, String email, String pass) {
        try {
            String insertTableSQL = "INSERT INTO user "
                    + "(Name, Email, Password) values"
                    + "(?,?,?)";
            preparedStatement = con.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, uname);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, pass);

            preparedStatement.executeUpdate();
            Log.d(TAG, "Function regUser succeeded!");
            return true;
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: Function regUser failed!", e);
            return false;
        }
    }

    // This method is for the login check
    boolean signIn(String email, String pass) {
        try {
            String signInSQL = "SELECT * FROM user "
            + "WHERE Email=? AND Password=?";
            preparedStatement = con.prepareStatement(signInSQL);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                Log.d(TAG, "Function signIN has a result!");
                return true;
            } else {
                Log.d(TAG, "Function signIn has found no result!");
                return false;
            }
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: Function signIn failed!", e);
            return false;
        }
    }

    /* TODO: This fct should only delete the current user! */
    boolean delUser() {
        return true;
    }

    // This method adds an advertisement to the db
    boolean addAdv(Advertisement adver) {
        int idAdv = adver.getAdvID();
        int idUser = adver.getDonor().getPersonID();
        String category = adver.getAdvCategory();
        String name = adver.getAdvName();
        String description = adver.getDescription();
        java.sql.Date timeExpiry = adver.getExpTimestamp();
        java.sql.Date timePickup = adver.getPickupTimestamp();
        String imgUrl = adver.getImageUrl();

        // TODO: get the IDAddr and IDCity from the DB from the address String
        String addr = adver.getDonor().getAddress();
        
        try {
            String insertTableSQL = "INSERT INTO advertisement "
                		+ "(IDAdvr, IDUser, IDAddr, IDCity, NameCat, NameFood, Description, TimeExpiry, TimePickup, StatusResv, StatusPickup, ImageUrl) values"
                		+ "(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            preparedStatement = con.prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, idAdv);
            preparedStatement.setInt(2, idUser);
            preparedStatement.setInt(3, 1);
            preparedStatement.setInt(4, 1);
            preparedStatement.setString(5, category);
            preparedStatement.setString(6, name);
            preparedStatement.setString(7, description);
            preparedStatement.setDate(8, timeExpiry);
            preparedStatement.setDate(9, timePickup);
            preparedStatement.setBoolean(10, false);
            preparedStatement.setBoolean(11, false);
            preparedStatement.setString(12, imgUrl);

            preparedStatement.executeUpdate();
            Log.d(TAG, "User successfully added!");
            return true;
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: User could not be added!", e);
            return false;
        }
    }

    // TODO:
    boolean delAdv(Advertisement adver) {
        return true;
    }

    boolean checkUname(String uname) {
        try {
            String SelectUserSQL = "select * from user where Name=?";
            preparedStatement = con.prepareStatement(SelectUserSQL);
            preparedStatement.setString(1, uname);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                Log.d(TAG, "Username exists!");
                return true;
            } else {
                Log.d(TAG, "Username does not exist!");
                return false;
            }
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: Something went wrong while checking for the username!", e);
            return false;
        }
    }

    boolean checkEmail(String email) {
        try {
            String SelectUserSQL = "select * from user where Name=?";
            preparedStatement = con.prepareStatement(SelectUserSQL);
            preparedStatement.setString(1, email);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                Log.d(TAG, "Email exists!");
                return true;
            } else {
                Log.d(TAG, "Email does not exist!");
                return false;
            }
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: Something went wrong while checking for the email!", e);
            return false;
        }
    }

    /* This fct creates a list of all Advertisement items in the DB */
    /*TODO: public List<Advertisement> getAllAdv() {

    } */
}
