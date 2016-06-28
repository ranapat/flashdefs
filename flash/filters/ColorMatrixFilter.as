//****************************************************************************
// ActionScript Standard Library
// flash.filters.ColorMatrixFilter object
//****************************************************************************
package flash.filters {

public class ColorMatrixFilter extends BitmapFilter
{
	var matrix:Array;

	public function ColorMatrixFilter(matrix:Array);
	public function clone():ColorMatrixFilter;
}
}