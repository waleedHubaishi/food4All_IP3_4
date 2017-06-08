package com.example.chewbacca.food4all;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

public class Reserve2Activity extends AppCompatActivity {

    /**
     * Here comes the function to get the Food from database
     */
    ListView list;
    String[] web = {
            "Google Plus",
            "Twitter",
            "Windows",
            "Bing",
            "Itunes",
            "Wordpress",
            "Drupal"
    };

    /**
     * Here comes the function to take the images according to the food registries
     */
    Integer[] imageId = {
            R.drawable.ic_avatar,
            R.drawable.ic_avatar_1,
            R.drawable.ic_book,
            R.drawable.ic_cancel,
            R.drawable.ic_close_dark,
            R.drawable.ic_collapse_00000,
            R.drawable.ic_audiotrack
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reserve2);

        CustomList adapter = new
                CustomList(Reserve2Activity.this, web, imageId);
        list=(ListView)findViewById(R.id.list);
        list.setAdapter(adapter);
        list.setOnItemClickListener(new AdapterView.OnItemClickListener() {

            @Override
            public void onItemClick(AdapterView<?> parent, View view,
                                    int position, long id) {
                Toast.makeText(Reserve2Activity.this, "You Clicked at " +web[+ position], Toast.LENGTH_SHORT).show();

            }
        });
    }
}
