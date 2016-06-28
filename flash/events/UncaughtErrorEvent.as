package flash.events
{

    public class UncaughtErrorEvent extends ErrorEvent
    {
        private var _error:Object;
        public static const UNCAUGHT_ERROR:String = "uncaughtError";

        public function UncaughtErrorEvent(param1:String = "uncaughtError", param2:Boolean = true, param3:Boolean = true, param4 = null)
        {
            super(param1, param2, param3);
            this._error = param4;
            return;
        }// end function

        override public function clone() : Event
        {
            return new UncaughtErrorEvent(type, bubbles, cancelable, this._error);
        }// end function

        public function get error()
        {
            return this._error;
        }// end function

        override public function toString() : String
        {
            return formatToString("UncaughtErrorEvent", "type", "bubbles", "cancelable", "eventPhase");
        }// end function

    }
}
