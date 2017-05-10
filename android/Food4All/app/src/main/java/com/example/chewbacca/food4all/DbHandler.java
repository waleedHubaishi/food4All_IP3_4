package com.example.chewbacca.food4all;

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
public class DbHandler {
    private static final String TAG = LoginActivity.class.getSimpleName(); // used for debugging messages
    private static final String url = "jdbc:mysql://86.119.36.198:3306/food4all";
    private static final String user = "food4all";
    private static final String pass = "";

    private static Connection con = null;
    private static Statement statement = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    boolean connect() throws Exception {
        try {
            // This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            con = DriverManager.getConnection(url, user, pass);

            if (con.isClosed()==false) {
                Log.d(TAG, "MySQL connection established!");
            }
        } catch (Exception e) {
            Log.e(TAG, "ERROR: MySQL connection failed!", e);
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
            Log.e(TAG, "ERROR: Connection could not be closed!", e);
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
            Log.d(TAG, "User successfully added!");
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: User could not be added!", e);
            return false;
        }
        return true;
    }

    /* TODO: This fct should only delete the current user! */
    boolean delUser() {
        return true;
    }

    // TODO:
    /*boolean addAdv(Advertisement adver) {
        try {
            String insertTableSQL = "INSERT INTO advertisement "
                    + "(Name, Description, ExpTimestamp, PickupTimestamp, IDAdv, IDUser, IDAddr, IDResv, IDCity) values"
                    + "(?,?,?,?,?,?,?,?,?)";
            preparedStatement = con.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, adver.getFoodName());
            preparedStatement.setString(2, adver.getDescription());
            preparedStatement.setDate(3, adver.getExpTimestamp());
            preparedStatement.setDate(4, adver.getPickupTimestamp());
            preparedStatement.setInt(5, getCatIdByName(adver.getFoodCategory()));
            preparedStatement.setInt(6, getCatIdByName(adver));
            preparedStatement.setInt(7, getCatIdByName(adver.()));
            preparedStatement.setInt(8, getCatIdByName(adver.()));
            preparedStatement.setInt(9, getCatIdByName(adver.()));


            preparedStatement.executeUpdate();
            Log.d(TAG, "User successfully added!");
        } catch (SQLException e) {
            Log.e(TAG, "ERROR: User could not be added!", e);
            return false;
        }
        return true;
    }*/

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

    // TODO:
    /*boolean checkEmail(String email) {

    }*/

    /* This fct creates a list of all Advertisement items in the DB */
    /*TODO: public List<Advertisement> getAllAdv() {

    } */
}
