package flash.net
{
    import flash.events.*;

    public class FileReferenceList extends EventDispatcher
    {

        public function FileReferenceList()
        {
            return;
        }// end function

        public function get fileList() : Array;

        public function browse(param1:Array = null) : Boolean;

    }
}
