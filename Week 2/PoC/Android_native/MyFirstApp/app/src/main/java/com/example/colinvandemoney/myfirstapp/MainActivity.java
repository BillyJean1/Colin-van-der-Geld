package com.example.colinvandemoney.myfirstapp;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    TextView textView;

    TableLayout table;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        table = (TableLayout) findViewById(R.id.tableLayout);

        setSupportActionBar(toolbar);

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });

        Button btn = (Button) findViewById(R.id.myButton);
        textView = (TextView) findViewById(R.id.textView);


        Button andereButton = (Button) findViewById(R.id.button2);


        andereButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                getNewActivity();
            }
        });



        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.i("myApp", "Test");
                Snackbar.make(view, "In de snackbar!", Snackbar.LENGTH_LONG).show();
                Toast.makeText(getApplicationContext(), "It's magic!", Toast.LENGTH_SHORT).show();
                textView.setText("Nieuwe tekst");
                textView.setTextColor(Color.BLUE);
                addRow();

            }
        });
    }


    void getNewActivity(){
        startActivity(new Intent(MainActivity.this, NieuweActivity.class));
    }

    void addRow() {
        TableRow row= new TableRow(this);
        TextView textView = new TextView(this);
        textView.setText("hallo");

        row.addView(textView);
        table.addView(row);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
    public void doeIets(){

    }

    public void test() {
        System.out.println("hi");
    }
}
