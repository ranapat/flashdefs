package flash.events
{

    public class ThrottleEvent extends Event
    {
        private var m_targetFrameRate:Number;
        private var m_state:String;
        public static const THROTTLE:String = "throttle";

        public function ThrottleEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:Number = 0)
        {
            super(param1, param2, param3);
            this.m_state = param4;
            this.m_targetFrameRate = param5;
            return;
        }// end function

        public function get targetFrameRate() : Number
        {
            return this.m_targetFrameRate;
        }// end function

        public function get state() : String
        {
            return this.m_state;
        }// end function

        override public function clone() : Event
        {
            return new ThrottleEvent(type, bubbles, cancelable, this.m_state, this.m_targetFrameRate);
        }// end function

        override public function toString() : String
        {
            return formatToString("ThrottleEvent", "type", "bubbles", "cancelable", "eventPhase", "state", "targetFrameRate");
        }// end function

    }
}
