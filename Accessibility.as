//****************************************************************************
// ActionScript Standard Library
// Accessibility object
//****************************************************************************
package {

public class Accessibility {
	static function isActive():Boolean;
	static function sendEvent(mc:MovieClip, childID:Object, event:Object, isNonHtml:Boolean):Void;
	static function updateProperties():Void;
}
}