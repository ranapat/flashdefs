//****************************************************************************
// ActionScript Standard Library
// ExternalInterface object
//****************************************************************************
package flash.external {

public class ExternalInterface
{
	static var available:Boolean; // read only

	static function addCallback(methodName:String, instance:Object, method:Function):Boolean;
	static function call(methodName:String, parameter1:Object):Object;
}