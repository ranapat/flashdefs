package flash.events
{

    public class StageVideoAvailabilityEvent extends Event
    {
        private var m_availability:String;
        public const reason:String;
        public const driver:String;
        public static const STAGE_VIDEO_AVAILABILITY:String = "stageVideoAvailability";

        public function StageVideoAvailabilityEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null)
        {
            super(param1, param2, param3);
            this.m_availability = param4;
            return;
        }// end function

        public function get availability() : String
        {
            return this.m_availability;
        }// end function

    }
}
