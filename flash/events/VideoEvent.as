package flash.events
{

    public class VideoEvent extends Event
    {
        private var m_status:String;
        public const codecInfo:String;
        public static const RENDER_STATE:String = "renderState";
        public static const RENDER_STATUS_UNAVAILABLE:String = "unavailable";
        public static const RENDER_STATUS_SOFTWARE:String = "software";
        public static const RENDER_STATUS_ACCELERATED:String = "accelerated";

        public function VideoEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null)
        {
            super(param1, param2, param3);
            this.m_status = param4;
            return;
        }// end function

        public function get status() : String
        {
            return this.m_status;
        }// end function

    }
}
