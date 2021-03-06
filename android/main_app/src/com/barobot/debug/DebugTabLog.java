package com.barobot.debug;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ToggleButton;

import com.barobot.R;
import com.barobot.activity.DebugActivity;
import com.barobot.parser.message.History_item;

public class DebugTabLog extends Fragment {
	public int tab_id	= -1 ;
	private Activity cc;
    private ListView mConversationView;
    private ArrayAdapter<History_item> mConversation;

    public DebugTabLog(Activity debugActivity, int tabCommandsId) {
   // 	Initiator.logger.i("DebugTabLog", "init");
    	this.tab_id = tabCommandsId;
    	this.cc		= debugActivity;
    	mConversation = new ArrayAdapter<History_item>(cc, R.layout.message);
    	//Arduino.getInstance().getHistory( mConversation );
	}
	@Override
    public void onActivityCreated(Bundle savedInstanceState) {
		//Integer.toString(getArguments().getInt(DebugActivity.ARG_SECTION_NUMBER))
    //	Initiator.logger.i("DebugTabLog", "onActivityCreated");
        super.onActivityCreated(savedInstanceState);
    }
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
	//	Initiator.logger.i("DebugTabLog", "onCreateView");

		int lay = DebugActivity.layouts[tab_id];
		//View rootView = inflater.inflate( R.layout.fragment_device_list_dummy, container, false);
		View rootView = inflater.inflate( lay, container, false);
		Button xb1 = (Button) rootView.findViewById(R.id.clear_history);
		xb1.setOnClickListener( new OnClickListener(){
			@Override
			public void onClick(View v) {
				//Arduino.getInstance().clearHistory();
			};			
		});
		
		
		ToggleButton xb2 = (ToggleButton) rootView.findViewById(R.id.logs_enable);
		xb2.setOnClickListener( new OnClickListener(){
			@Override
			public void onClick(View v) {
				ToggleButton tb			= (ToggleButton) v;
		  	  	boolean isChecked		= tb.isChecked();
		  	  	enableLogs( isChecked );

			};			
		});	

		Button xb3 = (Button) rootView.findViewById(R.id.unlock_log);
		xb3.setOnClickListener( new OnClickListener(){
			@Override
			public void onClick(View v) {
		//		Arduino.getMainQ().unlock();
			};
		});

	    mConversationView = (ListView) rootView.findViewById(R.id.led_list);
	    mConversationView.setAdapter(mConversation);

		ToggleButton xb7 = (ToggleButton) rootView.findViewById(R.id.logs_enable);
		xb7.setChecked(true);
		return rootView;
	}
	protected void enableLogs(boolean isChecked) {
  	  	if(isChecked){
  	//  		Initiator.logger.i("DebugTabLog", "enable");		  	  		
  	  	}
  	  	//Arduino.getInstance().log_active = isChecked;
	}
}