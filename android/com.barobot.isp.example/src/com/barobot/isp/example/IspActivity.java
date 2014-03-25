package com.barobot.isp.example;

import java.io.IOException;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.barobot.common.EmptyBarobotState;
import com.barobot.common.IspOverSerial;
import com.barobot.common.interfaces.HardwareState;
import com.barobot.common.interfaces.serial.SerialInputListener;
import com.barobot.common.interfaces.serial.Wire;
import com.barobot.hardware.devices.BarobotConnector;
import com.barobot.hardware.serial.AndroidLogger;
import com.barobot.hardware.serial.Serial_wire;
import com.barobot.isp.Uploader;
import com.barobot.isp.enums.Board;
import com.barobot.isp.enums.UploadErrors;
import com.barobot.isp.interfaces.UploadCallBack;
import com.barobot.parser.Queue;

public class IspActivity extends Activity {
	private static final String TAG = IspActivity.class.getSimpleName();
	private static final String ASSET_FILE_NAME_UNO         = "Blink.uno.hex";
	private static final String ASSET_FILE_NAME_MEGA        = "Blink.mega.hex";
	private static final String ASSET_FILE_NAME_PRO        	= "Blink.cpp.hex";
    private Wire connection		= null;
	private Queue q				= new Queue();
	private BarobotConnector barobot	= null;
	public static HardwareState state	= null;

	private Uploader mPhysicaloid;
    private Board mSelectedBoard;
    private IspOverSerial mSerial;
	TextView tstart;
	ProgressBar pb;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_isp);
		pb         		= (ProgressBar) findViewById(R.id.progressBar1);
		pb.setMax(100);
		tstart          = (TextView) findViewById(R.id.start);
		AndroidLogger al = new AndroidLogger();
		com.barobot.common.Initiator.setLogger( al );

		state			= new EmptyBarobotState();
		barobot			= new BarobotConnector(state);
        mPhysicaloid	= new Uploader();

        // Shows last selected board
        mSelectedBoard = Board.ARDUINO_PRO_5V_328;
     	if(connection !=null){
     		connection.destroy();
     	}
    	connection = new Serial_wire( this );
    	connection.setBaud( mSelectedBoard.uploadBaudrate );
   	 	connection.init();

		SerialInputListener listener = barobot.willReadFrom( connection );
		barobot.willWriteThrough( connection );

   	 	mSerial			= new IspOverSerial(connection);
 		mPhysicaloid.setSerial(mSerial);
        mPhysicaloid.setBoard( mSelectedBoard );
        mPhysicaloid.setCallBack( mUploadCallback );

		tstart.setOnClickListener( new OnClickListener(){
			@Override
			public void onClick(View v) {
				String assetFileName = ASSET_FILE_NAME_PRO;
			//	 assetFileName = ASSET_FILE_NAME_UNO;
		        try {
					mPhysicaloid.setHex( getResources().getAssets().open(assetFileName) );
				} catch (IOException e1) {
					e1.printStackTrace();
					
				}
		        try {
		            mPhysicaloid.upload();
		        } catch (RuntimeException e) {
		            Log.e(TAG, e.toString());
		        }
			}});
	}

	UploadCallBack mUploadCallback = new UploadCallBack() {
	        @Override
	        public void onUploading(int value) {
	            pb.setProgress(value);
	        }
	        @Override
	        public void onPreUpload() {
	            tvAppend(tstart, "Upload : Start\n");
	        }
	        @Override
	        public void onPostUpload(boolean success) {
	            if(success) {
	                tvAppend(tstart, "Upload : Successful\n");
	            } else {
	                tvAppend(tstart, "Upload fail\n");
	            }
	        }
	        @Override
	        public void onCancel() {
	            tvAppend(tstart, "Cancel uploading\n");
	        }
	        @Override
	        public void onError(UploadErrors err) {
	            tvAppend(tstart, "Error  : "+err.toString()+"\n");
	        }
	        @Override
	        public void resetDevice(boolean reset ){
	    	}
	    };

    @Override
    protected void onDestroy() {
    	q.destroy();
    	q= null;
    	if(connection !=null){
    		connection.destroy();
    		connection = null;
    	}
    	if(mSerial !=null){
    		mSerial.destroy();
    		mSerial = null;
    	}
    	if(mPhysicaloid !=null){
    		mPhysicaloid = null;
    	}
    	super.onDestroy();
    }
    
    Handler mHandler = new Handler();
    private void tvAppend(TextView tv, CharSequence text) {
    	final TextView ftv = tv;
        final CharSequence ftext = text;
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                ftv.append(ftext);
            }
        });
    }
}
