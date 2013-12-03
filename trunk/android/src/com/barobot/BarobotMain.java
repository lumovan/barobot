package com.barobot;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import com.barobot.gui.BarobotActivity;
import com.barobot.hardware.DeviceSet;
import com.barobot.hardware.virtualComponents;
import com.barobot.utils.CameraManager;
import com.barobot.utils.Constant;
import com.barobot.utils.interval;
import com.barobot.utils.Arduino;

import android.app.Activity;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.TextView;
import android.widget.Toast;

public class BarobotMain extends BarobotActivity {
    // Layout Views
	private static BarobotMain instance;
	public CameraManager cm;
    public ArrayList<interval> inters = new ArrayList<interval>();    

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		instance = this;	        // Set up the window layout
        setContentView(R.layout.main);
        virtualComponents.init( this );
        // Initialize the compose field with a listener for the return key
        /*
        mOutEditText = (EditText) findViewById(R.id.edit_text_out);
        mOutEditText.setOnEditorActionListener( new TextView.OnEditorActionListener() {
	        public boolean onEditorAction(TextView view, int actionId, KeyEvent event) {
	            // If the action is a key-up event on the return key, send the message
		            if (actionId == EditorInfo.IME_NULL && event.getAction() == KeyEvent.ACTION_UP) {
		            	Constant.log(Constant.TAG, "END onEditorAction+++");
		                String message = view.getText().toString();
		                Arduino.getInstance().send(message);
		            }
		            Constant.log(Constant.TAG, "END onEditorAction");
	            return true;
	        }
	    });
	    */

		cm = new CameraManager( this );
		cm.findCameras();

	    DeviceSet.loadXML(this, R.raw.devices);

	    File sdDir = Environment.getExternalStorageDirectory();
	    Constant.log("DIR1", sdDir.getAbsolutePath() );
	    try {
			Constant.log("DIR2", sdDir.getCanonicalPath() );
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    Constant.log("DIR3", File.pathSeparator);
	    Constant.log("DIR4", ""+sdDir.getFreeSpace() );
    }

	
    @Override
    public void onStart() {
        super.onStart();
        Arduino.getInstance().onStart( this );
    }

	@Override
	protected void onPause() {
		Constant.log("MAINWINDOW", "onPause");
		cm.onPause();
		super.onPause();
	}
    @Override
    public synchronized void onResume() {
    	Constant.log("MAINWINDOW", "onResume");
        super.onResume();
		if(cm!=null){
			cm.onResume();
		}
        Arduino.getInstance().resume();
    }
    
    @Override
    public void onDestroy() {
    	Constant.log("MAINWINDOW", "onDestroy");
        Arduino.getInstance().destroy();
    	DeviceSet.clear();
    	Iterator<interval> it = this.inters.iterator();
    	while(it.hasNext()){
    		it.next().cancel();
    	}
        cm.onDestroy();
        super.onDestroy();
    }
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        Constant.log(Constant.TAG, "onActivityResult " + resultCode);
        switch (requestCode){
        case UpdateActivity.INTENT_NAME:
        	Constant.log(Constant.TAG, "END OF UpdateActivity");
            break;
        case AboutActivity.INTENT_NAME:
        	Constant.log(Constant.TAG, "END OF AboutActivity");
            break;
  
        case MainSettingsActivity.INTENT_NAME:
        	Constant.log(Constant.TAG, "END OF SETTINGS");
            break;
        case DebugActivity.INTENT_NAME:
        	Constant.log(Constant.TAG, "END OF DebugActivity");
            break;
        case BTListActivity.INTENT_NAME:
        	Constant.log(Constant.TAG, "REQUEST_CONNECT_DEVICE_SECURE");
            // When BTListActivity returns with a device to connect
            if (resultCode == Activity.RESULT_OK) {
                String address = data.getExtras().getString(Constant.EXTRA_DEVICE_ADDRESS);           // Get the device MAC address
                Arduino.getInstance().connectId(address);
            }
            break;

        case Constant.REQUEST_ENABLE_BT:
        	Constant.log(Constant.TAG, "REQUEST_ENABLE_BT " + resultCode);
            // When the request to enable Bluetooth returns
            if (resultCode == Activity.RESULT_OK) {
                // Bluetooth is now enabled, so set up session
                Arduino.getInstance().setupBT( this );
            } else {
                // User did not enable Bluetooth or an error occurred
                Constant.log(Constant.TAG, "BT not enabled");
                Toast.makeText(this, R.string.bt_not_enabled_leaving, Toast.LENGTH_SHORT).show();
                finish();
            }
        }
    }

	//Any update to UI can not be carried out in a non UI thread like the one used
	//for Server. Hence runOnUIThread is used.
	public void setText(final int target, final String result) {
		if(result!=null){
			runOnUiThread(new Runnable() {
				@Override
				public void run() {
					TextView bt = (TextView) findViewById(target);	    	
					bt.setText(result);
				}
			});
		}
	}
	public static BarobotMain getInstance(){
		return instance;
	}

	@Override
	public void onBackPressed() {
	    new AlertDialog.Builder(this)
	        .setIcon(android.R.drawable.ic_dialog_alert)
	        .setTitle("Koniec?")
	        .setMessage("Czy na pewno zamknąć aplikację przerwać pracę robota?")
	        .setPositiveButton("Yes", new DialogInterface.OnClickListener(){
	        @Override
	        public void onClick(DialogInterface dialog, int which) {
	            finish();
	        }
	    })
	    .setNegativeButton("No", null).show();
	}
}

/*
new AlertDialog.Builder(this)
.setTitle("Delete entry")
.setMessage("Are you sure you want to delete this entry?")
.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
    public void onClick(DialogInterface dialog, int which) { 
        // continue with delete
    }
 })
.setNegativeButton("No", new DialogInterface.OnClickListener() {
    public void onClick(DialogInterface dialog, int which) { 
        // do nothing
    }
 })
 .show();
*/