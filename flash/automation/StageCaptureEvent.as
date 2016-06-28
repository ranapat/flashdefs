package flash.automation
{
    import flash.events.*;

    public class StageCaptureEvent extends Event
    {
        private var m_url:String;
        private var m_checksum:uint;
        public static const CAPTURE:String = "capture";

        public function StageCaptureEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:uint = 0)
        {
            super(param1, param2, param3);
            this.m_url = param4;
            this.m_checksum = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new StageCaptureEvent(type, bubbles, cancelable, this.url, this.checksum);
        }// end function

        override public function toString() : String
        {
            return formatToString("StageCaptureEvent", "type", "bubbles", "cancelable", "eventPhase", "url", "checksum");
        }// end function

        public function get url() : String
        {
            return this.m_url;
        }// end function

        public function get checksum() : uint
        {
            return this.m_checksum;
        }// end function

    }
}
