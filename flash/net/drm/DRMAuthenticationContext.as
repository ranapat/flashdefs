package flash.net.drm
{
    import flash.events.*;
    import flash.utils.*;

    class DRMAuthenticationContext extends DRMManagerSession
    {
        private var m_url:String;
        private var m_domain:String;

        function DRMAuthenticationContext()
        {
            return;
        }// end function

        public function authenticate(param1:String, param2:String, param3:String, param4:String) : void
        {
            var _loc_5:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                this.m_url = param1;
                this.m_domain = param2;
                _loc_5 = this.authenticateInner(param1, param2, param3, param4);
                if (_loc_5 != 0)
                {
                    m_isInSession = false;
                    errorCodeToThrow(_loc_5);
                }
                else
                {
                    setTimerUp();
                }
            }
            return;
        }// end function

        override public function onSessionComplete() : void
        {
            var _loc_1:* = new DRMAuthenticationCompleteEvent(DRMAuthenticationCompleteEvent.AUTHENTICATION_COMPLETE);
            _loc_1.serverURL = this.m_url;
            _loc_1.domain = this.m_domain;
            _loc_1.token = this.authenticationToken;
            dispatchEvent(_loc_1);
            return;
        }// end function

        override public function onSessionError() : void
        {
            var _loc_1:* = new DRMAuthenticationErrorEvent(DRMAuthenticationErrorEvent.AUTHENTICATION_ERROR, false, false, getLastServerErrorString(), getLastError());
            _loc_1.serverURL = this.m_url;
            _loc_1.domain = this.m_domain;
            _loc_1.subErrorID = getLastSubErrorID();
            dispatchEvent(_loc_1);
            return;
        }// end function

        public function get authenticationToken() : ByteArray
        {
            var _loc_1:* = new ByteArray();
            this.getTokenInner(_loc_1);
            return _loc_1;
        }// end function

        private function authenticateInner(param1:String, param2:String, param3:String, param4:String) : uint;

        private function getTokenInner(param1:ByteArray) : void;

    }
}
