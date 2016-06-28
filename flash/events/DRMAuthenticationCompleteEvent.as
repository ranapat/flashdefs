package flash.events
{
    import flash.utils.*;

    public class DRMAuthenticationCompleteEvent extends Event
    {
        private var m_serverURL:String;
        private var m_domain:String;
        private var m_token:ByteArray;
        public static const AUTHENTICATION_COMPLETE:String = "authenticationComplete";

        public function DRMAuthenticationCompleteEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:String = null, param6:ByteArray = null)
        {
            super(param1, param2, param3);
            this.m_serverURL = param4;
            this.m_domain = param5;
            this.m_token = param6;
            return;
        }// end function

        override public function clone() : Event
        {
            return new DRMAuthenticationCompleteEvent(type, bubbles, cancelable, this.serverURL, this.domain, this.token);
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

        public function get token() : ByteArray
        {
            return this.m_token;
        }// end function

        public function set token(param1:ByteArray) : void
        {
            this.m_token = param1;
            return;
        }// end function

    }
}
