package flash.events
{

    public class ErrorEvent extends TextEvent
    {
        private var m_errorID:int;
        public static const ERROR:String = "error";

        public function ErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0)
        {
            super(param1, param2, param3, param4);
            this.m_errorID = param5;
            return;
        }// end function

        public function get errorID() : int
        {
            return this.m_errorID;
        }// end function

        override public function clone() : Event
        {
            return new ErrorEvent(type, bubbles, cancelable, text, this.m_errorID);
        }// end function

        override public function toString() : String
        {
            return formatToString("ErrorEvent", "type", "bubbles", "cancelable", "eventPhase", "text");
        }// end function

    }
}
