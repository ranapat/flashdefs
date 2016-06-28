package flash.events
{

    public class VideoTextureEvent extends Event
    {
        private var m_status:String;
        private var m_colorSpace:String;
        public const codecInfo:String;
        public static const RENDER_STATE:String = "renderState";

        public function VideoTextureEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:String = null)
        {
            super(param1, param2, param3);
            this.m_status = param4;
            this.m_colorSpace = param5;
            return;
        }// end function

        public function get status() : String
        {
            return this.m_status;
        }// end function

        public function get colorSpace() : String
        {
            return this.m_colorSpace;
        }// end function

    }
}
