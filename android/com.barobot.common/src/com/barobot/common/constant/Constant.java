package com.barobot.common.constant;

import java.util.UUID;

public class Constant {
 
    // Debugging
    public static final String TAG = "BarobotMainApp";
    public static final String SETTINGS_TAG = "BAROBOT";

    // Unique UUID for this application
    public static final UUID MY_UUID_SECURE =
    	UUID.fromString("00001101-0000-1000-8000-00805f9b34fb");

    // commands
	public static final byte TRIGGER = 'T';
	public static final byte RET = 'R';
	public static final byte ERROR = 'R';
	public static final byte ANALOG = 'A';
	public static final byte COMMENT = '-';
   
	public static final String GETXPOS = "x";
	public static final String GETYPOS = "y";
	public static final String GETZPOS = "z";
	public static final String REBOOT = "REBOOT";

	public static final String PING = "PING";
	public static final String PONG = "PONG";

 //   public static final int DRIVER_X 		= 4;
//	public static final int DRIVER_Y 		= 8;
//	public static final int DRIVER_Z 		= 16;

	public static final int MAINBOARD_DEVICE_TYPE 	= 0x10;
	public static final int IPANEL_DEVICE_TYPE 		= 0x11;
	public static final int UPANEL_DEVICE_TYPE 		= 0x13;
	public static int cdefault_address	= 10;		// 10
	public static int cdefault_index	= 2;
	public static int mdefault_address	= 0x01;
	public static int mdefault_index	= 1;

}
