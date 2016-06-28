//****************************************************************************
// ActionScript Standard Library
// flash.filters.BlurFilter object
//****************************************************************************
package flash.filters {

public class BlurFilter extends BitmapFilter
{
	var blurX:Number;
	var blurY:Number;
	var quality:Number;

	public function BlurFilter(blurX:Number, blurY:Number, quality:Number);
	public function clone():BlurFilter;
}
}