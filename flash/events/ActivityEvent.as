package flash.events
{

    public class ActivityEvent extends Event
    {
        private var m_activating:Boolean;
        public static const ACTIVITY:String = "activity";

        public function ActivityEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
        {
            super(param1, param2, param3);
            this.m_activating = param4;
            return;
        }// end function

        override public function clone() : Event
        {
            return new ActivityEvent(type, bubbles, cancelable, this.activating);
        }// end function

        override public function toString() : String
        {
            return formatToString("ActivityEvent", "type", "bubbles", "cancelable", "eventPhase", "activating");
        }// end function

        public function get activating() : Boolean
        {
            return this.m_activating;
        }// end function

        public function set activating(param1:Boolean) : void
        {
            this.m_activating = param1;
            return;
        }// end function

    }
}
