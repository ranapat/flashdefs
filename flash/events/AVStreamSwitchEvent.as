package flash.events
{

    public class AVStreamSwitchEvent extends Event
    {
        private var m_time:Number;
        private var m_switchType:int;
        private var m_bitrate:int;
        private var m_description:String;
        private var m_userData:int;
        public static const AV_STREAM_SWITCH:String = "avStreamSwitch";
        public static const ABR_SWITCH:int = 0;
        public static const PERIOD_SWITCH:int = 1;

        public function AVStreamSwitchEvent(param1:String = "avStreamSwitch", param2:Boolean = false, param3:Boolean = false, param4:Number = 0, param5:int = 0, param6:int = 0, param7:String = "", param8:int = 0)
        {
            super(param1, param2, param3);
            this.m_time = param4;
            this.m_switchType = param5;
            this.m_bitrate = param6;
            this.m_description = param7;
            this.m_userData = param8;
            return;
        }// end function

        public function get time() : Number
        {
            return this.m_time;
        }// end function

        public function get switchType() : int
        {
            return this.m_switchType;
        }// end function

        public function get bitrate() : int
        {
            return this.m_bitrate;
        }// end function

        public function get description() : String
        {
            return this.m_description;
        }// end function

        public function get userData() : int
        {
            return this.m_userData;
        }// end function

    }
}
