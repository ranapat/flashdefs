//****************************************************************************
// ActionScript Standard Library
// flash.geom.Transform object
//****************************************************************************
package flash.geom {

import flash.geom.Matrix;
import flash.geom.Rectangle;
import flash.geom.ColorTransform;

public class Transform
{
	var matrix:Matrix;
	var colorTransform:ColorTransform;
	var concatenatedMatrix:Matrix;
	var concatenatedColorTransform:ColorTransform;
	var pixelBounds:Rectangle;

	function Transform(mc:MovieClip);
}
}