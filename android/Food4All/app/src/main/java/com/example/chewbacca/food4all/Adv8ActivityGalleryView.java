package com.example.chewbacca.food4all;

import android.content.Context;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class Adv8ActivityGalleryView extends AppCompatActivity {
    TextView textTargetUri;
    ImageView targetImage;
    Bitmap bitmap;
    Context context;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adv9);
        Button buttonLoadImage = (Button)findViewById(R.id.loadimage);
        Button butttonSaveImage = (Button)findViewById(R.id.saveButton);
        textTargetUri = (TextView)findViewById(R.id.targeturi);
        targetImage = (ImageView)findViewById(R.id.targetimage);

        buttonLoadImage.setOnClickListener(new Button.OnClickListener(){

            @Override
            public void onClick(View arg0) {
                // TODO Auto-generated method stub
                Intent intent = new Intent(Intent.ACTION_PICK,
                        android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                startActivityForResult(intent, 0);
            }});
//
        butttonSaveImage.setOnClickListener(new Button.OnClickListener(){
//
            @Override
            public void onClick(View arg0) {
//                // TODO Auto-generated method stub
                //Get Image URL

                // Call Image

                // create  a copy instance of

                //Write in

////                Intent intent = new Intent(Intent.ACTION_PICK,
////                        android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
////                startActivityForResult(intent, 0);
//
//                Intent intent = new Intent(this, .class);
//                startActivity(intent);
//
            }});

    }

    private void createDirectoryAndSaveFile(Bitmap imageToSave, String fileName) {

        File direct = new File(Environment.getExternalStorageDirectory() + "/DirName");

        if (!direct.exists()) {
            File wallpaperDirectory = new File("/sdcard/DirName/");
            wallpaperDirectory.mkdirs();
        }

        File file = new File(new File("/sdcard/DirName/"), fileName);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream out = new FileOutputStream(file);
            imageToSave.compress(Bitmap.CompressFormat.JPEG, 100, out);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        // TODO Auto-generated method stub
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == RESULT_OK){
            Uri targetUri = data.getData();
            textTargetUri.setText(targetUri.toString());
            try {
                bitmap = BitmapFactory.decodeStream(getContentResolver().openInputStream(targetUri));
                targetImage.setImageBitmap(bitmap);
            } catch (FileNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
    public void saveImage() {
//        try {
//            FileOutputStream out = new FileOutputStream(context.getFilesDir().getAbsolutePath()+"/imagename.png");
//            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }
}
