package flash.text
{

    public class TextSnapshot extends Object
    {

        public function TextSnapshot()
        {
            return;
        }// end function

        public function findText(param1:int, param2:String, param3:Boolean) : int;

        public function get charCount() : int;

        public function getSelected(param1:int, param2:int) : Boolean;

        public function getSelectedText(param1:Boolean = false) : String;

        public function getText(param1:int, param2:int, param3:Boolean = false) : String;

        public function getTextRunInfo(param1:int, param2:int) : Array;

        public function hitTestTextNearPos(param1:Number, param2:Number, param3:Number = 0) : Number;

        public function setSelectColor(param1:uint = 16776960) : void;

        public function setSelected(param1:int, param2:int, param3:Boolean) : void;

    }
}
