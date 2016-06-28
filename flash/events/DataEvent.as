package flash.events
{

    public class DataEvent extends TextEvent
    {
        public static const DATA:String = "data";
        public static const UPLOAD_COMPLETE_DATA:String = "uploadCompleteData";

        public function DataEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "")
        {
            super(param1, param2, param3, param4);
            return;
        }// end function

        override public function clone() : Event
        {
            return new DataEvent(type, bubbles, cancelable, this.data);
        }// end function

        override public function toString() : String
        {
            return formatToString("DataEvent", "type", "bubbles", "cancelable", "eventPhase", "data");
        }// end function

        public function get data() : String
        {
            return super.text;
        }// end function

        public function set data(param1:String) : void
        {
            super.text = param1;
            return;
        }// end function

    }
}
