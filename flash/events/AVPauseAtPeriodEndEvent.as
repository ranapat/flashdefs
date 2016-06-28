package flash.events
{

    public class AVPauseAtPeriodEndEvent extends Event
    {
        private var m_userData:int;
        public static const AV_PAUSE_AT_PERIOD_END:String = "avPauseAtPeriodEnd";

        public function AVPauseAtPeriodEndEvent(param1:String = "avPauseAtPeriodEnd", param2:Boolean = false, param3:Boolean = false, param4:int = 0)
        {
            super(param1, param2, param3);
            this.m_userData = param4;
            return;
        }// end function

        public function get userData() : int
        {
            return this.m_userData;
        }// end function

    }
}
