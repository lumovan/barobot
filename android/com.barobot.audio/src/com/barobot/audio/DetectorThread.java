package com.barobot.audio;

import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.barobot.audio.utils.OnSignalsDetectedListener;
import com.barobot.audio.utils.SampleRecorder;
//import com.musicg.wave.WaveHeader;

public class DetectorThread extends Thread{
	private SampleRecorder recorder;
	//private WaveHeader waveHeader;
	private volatile Thread _thread;
	public BpmProcessor processor;
	private Logger log = Logger.getLogger(DetectorThread.class.getName());
	private Queue<Short> instantBuffer = new LinkedList<Short>();
	private OnSignalsDetectedListener onSignalsDetectedListener;

	private int frameByteSize = -1;
	private int averageLength = -1;
	int channel = 0;

	public DetectorThread(Map<String, Integer> config, SampleRecorder recorder){
		processor = new BpmProcessor( config );
        this.frameByteSize = config.get("frameByteSize");
        this.averageLength = config.get("averageLength");
		this.recorder = recorder;
	}

	public void setOnSignalsDetectedListener(OnSignalsDetectedListener listener) {
		onSignalsDetectedListener = listener;
		this.processor.setOnSignalsDetectedListener(onSignalsDetectedListener);
	}

	public void start() {
		System.out.println("startstart" );
		_thread = new Thread(this);
        _thread.start();
    }
	public void stopDetection(){
		_thread = null;
	}
	public void run() {
		System.out.println("runrun" );
		try {
			short[] buffer;			
			Thread thisThread = Thread.currentThread();
			while (_thread == thisThread) {
				buffer = recorder.getFrameBytes();
				
				System.out.println("getFrameBytes: " +buffer.length );
				
				
				this.detect( buffer );
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void detect(short[] buffer) {
		   //	log.log(Level.INFO, "outputImpl: " +offs);
	    //	   System.out.println("size99: " +len );
		int totalAbsValue = 0;
        short sample = 0; 
        float averageAbsValue = 0.0f;
        for (int i = 0; i < buffer.length; i += 2) {
            sample = (short)((buffer[i]) | buffer[i + 1] << 8);
            totalAbsValue += Math.abs(sample);
        }
        
        averageAbsValue = totalAbsValue /  frameByteSize / 2;
 //       System.out.println("size99: " +buffer.length );
        onSignalsDetectedListener.peek(averageAbsValue);
		int len = buffer.length;
        for(int i=0; i<len; i++){
            instantBuffer.offer(buffer[i]);
        }
        while(instantBuffer.size()>averageLength*channel){
            long energy = 0;
            for(int i=0; i<averageLength*channel; i++){
                energy += Math.pow(instantBuffer.poll(), 2);
            }
        //    System.out.println("process now " );
            processor.process( energy );
        }
	    onSignalsDetectedListener.notify("bpm",processor.getBPM());
	//    log.log(Level.INFO, "calculated BPM: " + processor.getBPM());  
	
	}
}


/*
		waveHeader = new WaveHeader();
		waveHeader.setChannels(channel);
		waveHeader.setBitsPerSample(bitsPerSample);
		waveHeader.setSampleRate(audioRecord.getSampleRate());
*/