package com.barobot.audio;

import java.util.Map;

import com.barobot.common.Initiator;
import com.barobot.common.interfaces.OnSignalsDetectedListener;
import com.barobot.common.interfaces.SampleAudioRecorder;

public class DetectorThread extends Thread{
	private SampleAudioRecorder recorder;
	//private WaveHeader waveHeader;
	private volatile Thread _thread;
	public BpmProcessor processor;
//	private Queue<Short> instantBuffer = new LinkedList<Short>();
	private OnSignalsDetectedListener onSignalsDetectedListener;
	private int frameByteSize = -1;
//	private int averageLength = -1;
	int channels = 0;
	public boolean isRunning= false;

	public DetectorThread(Map<String, Integer> config, SampleAudioRecorder recorder){
		processor			= new BpmProcessor( config );
        this.frameByteSize	= config.get("frameByteSize");
 //       this.averageLength	= config.get("averageLength");
        this.channels		= config.get("channels");
		this.recorder		= recorder;
	}

	public void setOnSignalsDetectedListener(OnSignalsDetectedListener listener) {
		onSignalsDetectedListener = listener;
		this.processor.setOnSignalsDetectedListener(onSignalsDetectedListener);
	}

	public void start() {
		this.isRunning = true;
		_thread = new Thread(this);
        _thread.start();
    }
	public void stopDetection(){
		this.isRunning = false;
		_thread = null;
		if( processor != null){
			processor.stop();
			processor = null;
		}
		this.recorder = null;
	//	this.onSignalsDetectedListener = null;
	}
	public void run() {
		try {
			short[] buffer;			
			Thread thisThread = Thread.currentThread();
			while ( this.isRunning && _thread == thisThread) {
				buffer = recorder.getFrameBytes();
				this.detect( buffer );
			}
		} catch (Exception e) {
			Initiator.logger.appendError(e);
		}
		Initiator.logger.i( this.getClass().getName()+".run.isRunning", "false");
		this.isRunning = false;
	}

	float lastbpm = 0;

	private void detect(short[] buffer) {
		if(!isRunning){
			return;
		}
//		log.log(Level.INFO, "outputImpl: " +offs);
//	    System.out.println("size99: " +buffer.length );
		int totalAbsValue = 0;
        short sample = 0; 
        float averageAbsValue = 0.0f;
        for (int i = 0; i < buffer.length; i += 2) {
            sample = (short)((buffer[i]) | buffer[i + 1] << 8);
            totalAbsValue += Math.abs(sample);
        }

        averageAbsValue = totalAbsValue / frameByteSize / 2;
 //       System.out.println("size99: " +buffer.length );
        onSignalsDetectedListener.peek(averageAbsValue);
        /*
		int len = buffer.length;
        for(int i=0; i<len; i++){
            instantBuffer.offer(buffer[i]);
        }
    //    System.out.println("process now "+energy );
        while(instantBuffer.size()>averageLength*channels){
            long energy = 0;
            for(int i=0; i<averageLength*channels; i++){
                energy += Math.pow(instantBuffer.poll(), 2);
            }
            processor.process( energy );
        }
        float newbpm = processor.getBPM(0);
        if(lastbpm!= newbpm){
        	onSignalsDetectedListener.notify("bpm", newbpm );	
        	onSignalsDetectedListener.changeBPM(newbpm);
        	lastbpm = newbpm;
        }*/
	//    log.log(Level.INFO, "calculated BPM: " + processor.getBPM());  
	}
}
