package com.barobot;

import java.util.ArrayList;
import java.util.Iterator;

import com.barobot.activity.BarobotMain;
import com.barobot.common.Initiator;
import com.barobot.hardware.Arduino;
import com.barobot.hardware.virtualComponents;
import com.barobot.hardware.serial.AndroidLogger;
import com.barobot.other.CameraManager;
import com.barobot.parser.utils.Interval;

public class AppInvoker {
    private static AppInvoker ins;
	private BarobotMain main;
	public CameraManager cm;
    public ArrayList<Interval> inters = new ArrayList<Interval>();
	private static Arduino arduino;

	public void onCreate() {
		/*
		SofaServer ss = SofaServer.getInstance();
		ss.setBaseContext(main.getBaseContext());
        try {
			ss.start();
		} catch (IOException e1) {
			e1.printStackTrace();
		}*/
	//	I2C.init();
	    AndroidLogger dl = new AndroidLogger();
		com.barobot.common.Initiator.setLogger( dl );
		cm = new CameraManager( main );
		cm.findCameras();
		virtualComponents.init( main );
		arduino			= new Arduino( virtualComponents.barobot, virtualComponents.barobot.state );
		arduino.onStart(main);
		
	}
	public static AppInvoker createInstance(BarobotMain barobotMain) {
		ins = new AppInvoker();
		ins.main = barobotMain;
		return ins;
	}
	public static AppInvoker getInstance() {
		return ins;
	}
	public void onPause() {
		Initiator.logger.i("MAINWINDOW", "onPause");
		cm.onPause();
	}
	public void onResume() {
		Initiator.logger.i("MAINWINDOW", "onResume");     
		if(cm!=null){
			cm.onResume();
		}
		arduino.resume();
	}
	public void onDestroy() {
		Initiator.logger.i("MAINWINDOW", "onDestroy");
    //	SofaServer.getInstance().stop();
		arduino.destroy();
    	Iterator<Interval> it = this.inters.iterator();
    	while(it.hasNext()){
    		it.next().cancel();
    	}
	//	I2C.destroy();
        cm.onDestroy();	
	}
}
