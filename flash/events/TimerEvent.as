package flash.events
{

    public class TimerEvent extends Event
    {
        public static const TIMER:String = "timer";
        public static const TIMER_COMPLETE:String = "timerComplete";

        public function TimerEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
        {
            super(param1, param2, param3);
            return;
        }// end function

        override public function clone() : Event
        {
            return new TimerEvent(type, bubbles, cancelable);
        }// end function

        override public function toString() : String
        {
            return formatToString("TimerEvent", "type", "bubbles", "cancelable", "eventPhase");
        }// end function

        public function updateAfterEvent() : void;

    }
}
