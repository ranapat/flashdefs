package flash.events
{

    public class SecurityErrorEvent extends ErrorEvent
    {
        public static const SECURITY_ERROR:String = "securityError";

        public function SecurityErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0)
        {
            super(param1, param2, param3, param4, param5);
            return;
        }// end function

        override public function clone() : Event
        {
            return new SecurityErrorEvent(type, bubbles, cancelable, text, errorID);
        }// end function

        override public function toString() : String
        {
            return formatToString("SecurityErrorEvent", "type", "bubbles", "cancelable", "eventPhase", "text");
        }// end function

    }
}
