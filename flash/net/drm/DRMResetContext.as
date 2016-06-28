package flash.net.drm
{

    class DRMResetContext extends DRMManagerSession
    {
        public var m_isAutoReset:Boolean;

        function DRMResetContext(param1:Boolean)
        {
            this.m_isAutoReset = param1;
            return;
        }// end function

        override public function onSessionComplete() : void
        {
            issueDRMStatusEvent(metadata, null);
            return;
        }// end function

        override public function onSessionError() : void
        {
            issueDRMErrorEvent(metadata, getLastError(), getLastSubErrorID(), getLastServerErrorString());
            return;
        }// end function

        public function doReset() : void
        {
            var _loc_1:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                _loc_1 = this.resetInner(this.m_isAutoReset);
                if (_loc_1 != 0)
                {
                    m_isInSession = false;
                    errorCodeToThrow(_loc_1);
                }
                else
                {
                    setTimerUp();
                }
            }
            return;
        }// end function

        private function resetInner(param1:Boolean) : uint;

    }
}
