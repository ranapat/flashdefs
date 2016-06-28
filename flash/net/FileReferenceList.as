//****************************************************************************
// ActionScript Standard Library
// FileReference object
//****************************************************************************
package flash.net {

public class FileReferenceList
{
	var fileList:Array;

	public function FileReferenceList();
	public function browse(typelist:Array):Boolean;
	function addListener(listener:Object):Void;
	function removeListener(listener:Object):Boolean;	
}
}