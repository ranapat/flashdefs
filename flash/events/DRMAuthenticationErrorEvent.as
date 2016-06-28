package flash.events
{

    public class DRMAuthenticationErrorEvent extends ErrorEvent
    {
        private var m_subErrorID:int;
        private var m_serverURL:String;
        private var m_domain:String;
        public static const AUTHENTICATION_ERROR:String = "authenticationError";

        public function DRMAuthenticationErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0, param6:int = 0, param7:String = null, param8:String = null)
        {
            super(param1, param2, param3, param4, param5);
            this.m_subErrorID = param6;
            this.m_serverURL = param7;
            this.m_domain = param8;
            return;
        }// end function

        override public function clone() : Event
        {
            return new DRMAuthenticationErrorEvent(type, bubbles, cancelable, text, errorID, this.subErrorID, this.serverURL, this.domain);
        }// end function

        public function get subErrorID() : int
        {
            return this.m_subErrorID;
        }// end function

        public function set subErrorID(param1:int) : void
        {
            this.m_subErrorID = param1;
            return;
        }// end function

        public function get serverURL() : String
        {
            return this.m_serverURL;
        }// end function

        public function set serverURL(param1:String) : void
        {
            this.m_serverURL = param1;
            return;
        }// end function

        public function get domain() : String
        {
            return this.m_domain;
        }// end function

        public function set domain(param1:String) : void
        {
            this.m_domain = param1;
            return;
        }// end function

    }
}
