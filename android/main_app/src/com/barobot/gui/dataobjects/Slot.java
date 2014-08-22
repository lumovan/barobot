package com.barobot.gui.dataobjects;

import org.orman.mapper.Model;
import org.orman.mapper.annotation.Entity;
import org.orman.mapper.annotation.ManyToOne;
import org.orman.mapper.annotation.PrimaryKey;

@Entity
public class Slot extends Model<Slot>{
	public static String STATUS_EMPTY = "Empty"; 

	@PrimaryKey(autoIncrement=true)
	public long id;
	public int position;
	public String status;
	public int currentVolume;
	public int dispenser_type;

	public int row_id;
	public int num_in_row;
	public int margin;
	public int led_address;
	public int position_id;
	public int counter;

	@ManyToOne
	public Product product;

	@ManyToOne
	public Robot robot_id;

	public String getName(){
		if (product != null && product.liquid != null ){
			return product.liquid.getName();
		}else{
			return "";
		}
	}
	@Override
	public String toString() {
		return getName();
	}
	public int getCapacity() {
		return this.dispenser_type;
	}
	public int getSequence(int quantity) {
		int count = (int) Math.round( quantity / this.dispenser_type );
		if( count == 0 ){
			count = 1;
		}
		return count;
	}
}