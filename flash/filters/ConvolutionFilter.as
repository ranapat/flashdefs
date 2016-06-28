//****************************************************************************
// ActionScript Standard Library
// flash.filters.ConvolutionFilter object
//****************************************************************************
package flash.filters {

public class ConvolutionFilter extends BitmapFilter
{
	var matrix:Array;
	var matrixX:Number;
	var matrixY:Number;
	var divisor:Number;
	var bias:Number;
	var preserveAlpha:Boolean;
	var clamp:Boolean;
	var color:Number;
	var alpha:Number;

	public function ConvolutionFilter(matrixX:Number,
									  matrixY:Number,
									  matrix:Array,
									  divisor:Number,
									  bias:Number,
									  preserveAlpha:Boolean,
									  clamp:Boolean,
									  color:Number,
									  alpha:Number);
	public function clone():ConvolutionFilter;
}
}