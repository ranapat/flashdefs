﻿//****************************************************************************
// ActionScript Standard Library
// flash.filters.DisplacementMapFilter object
//****************************************************************************
package flash.filters {

import flash.display.BitmapData;
import flash.geom.Point;

public class DisplacementMapFilter extends BitmapFilter
{
	var mapBitmap:BitmapData;
	var mapPoint:Point;
	var componentX:Number;
	var componentY:Number;
	var scaleX:Number;
	var scaleY:Number;
	var mode:String;
	var color:Number;
	var alpha:Number;

	public function DisplacementMapFilter(mapBitmap:BitmapData,
										  mapPoint:Point,
										  componentX:Number,
										  componentY:Number,
										  scaleX:Number,
										  scaleY:Number,
										  mode:String,
										  color:Number,
										  alpha:Number);
	public function clone():DisplacementMapFilter;
}