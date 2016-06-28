package flash.events
{
    import flash.media.*;

    public class AVManifestLoadEvent extends Event
    {
        private var m_result:AVResult;
        private var m_userData:int;
        private var m_handle:int;
        private var m_duration:Number;
        public static const AV_MANIFEST_LOAD:String = "avManifestLoad";

        public function AVManifestLoadEvent(param1:String = "avManifestLoad", param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0, param6:int = 0, param7:Number = 0)
        {
            super(param1, param2, param3);
            this.m_result = new AVResult(param4);
            this.m_userData = param5;
            this.m_handle = param6;
            this.m_duration = param7;
            return;
        }// end function

        public function get result() : AVResult
        {
            return this.m_result;
        }// end function

        public function get userData() : int
        {
            return this.m_userData;
        }// end function

        public function get handle() : int
        {
            return this.m_handle;
        }// end function

        public function get duration() : Number
        {
            return this.m_duration;
        }// end function

    }
}
