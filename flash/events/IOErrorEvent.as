package flash.events
{

    public class IOErrorEvent extends ErrorEvent
    {
        public static const IO_ERROR:String = "ioError";
        public static const NETWORK_ERROR:String = "networkError";
        public static const DISK_ERROR:String = "diskError";
        public static const VERIFY_ERROR:String = "verifyError";

        public function IOErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0)
        {
            super(param1, param2, param3, param4, param5);
            return;
        }// end function

        override public function clone() : Event
        {
            return new IOErrorEvent(type, bubbles, cancelable, text, errorID);
        }// end function

        override public function toString() : String
        {
            return formatToString("IOErrorEvent", "type", "bubbles", "cancelable", "eventPhase", "text");
        }// end function

    }
}
