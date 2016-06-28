package flash.events
{

    public class AVHTTPStatusEvent extends Event
    {
        private var m_status:int;
        private var m_responseHeaders:Array;
        private var m_responseUrl:String;
        public static const AV_HTTP_RESPONSE_STATUS:String = "avHttpResponseStatus";

        public function AVHTTPStatusEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:String = null, param6:Array = null)
        {
            super(param1, param2, param3);
            this.m_status = param4;
            this.m_responseUrl = param5;
            this.m_responseHeaders = param6;
            return;
        }// end function

        override public function clone() : Event
        {
            var _loc_1:* = new AVHTTPStatusEvent(type, bubbles, cancelable, this.status);
            _loc_1.responseURL = this.responseURL;
            _loc_1.responseHeaders = this.responseHeaders;
            return _loc_1;
        }// end function

        override public function toString() : String
        {
            return formatToString("AVHTTPStatusEvent", "type", "bubbles", "cancelable", "eventPhase", "status", "responseURL", "responseHeaders");
        }// end function

        public function get status() : int
        {
            return this.m_status;
        }// end function

        public function get responseURL() : String
        {
            return this.m_responseUrl;
        }// end function

        public function set responseURL(param1:String) : void
        {
            this.m_responseUrl = param1;
            return;
        }// end function

        public function get responseHeaders() : Array
        {
            return this.m_responseHeaders;
        }// end function

        public function set responseHeaders(param1:Array) : void
        {
            this.m_responseHeaders = param1;
            return;
        }// end function

    }
}
