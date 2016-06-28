package flash.net.drm
{
    import flash.events.*;

    class DRMReturnVoucherContext extends DRMManagerSession
    {
        private var m_serverURL:String;
        private var m_licenseID:String;
        private var m_policyID:String;
        private var m_immediateCommit:Boolean;

        function DRMReturnVoucherContext()
        {
            return;
        }// end function

        public function returnVoucher(param1:String, param2:Boolean, param3:String, param4:String) : void
        {
            var _loc_5:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                this.m_serverURL = param1;
                this.m_licenseID = param3;
                this.m_policyID = param4;
                this.m_immediateCommit = param2;
                _loc_5 = this.returnVoucherInner(param1, param2, param3, param4);
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
            var _loc_1:* = new DRMReturnVoucherCompleteEvent(DRMReturnVoucherCompleteEvent.RETURN_VOUCHER_COMPLETE);
            _loc_1.serverURL = this.m_serverURL;
            _loc_1.licenseID = this.m_licenseID;
            _loc_1.policyID = this.m_policyID;
            _loc_1.numberOfVouchersReturned = this.getResultInner();
            dispatchEvent(_loc_1);
            return;
        }// end function

        override public function onSessionError() : void
        {
            var _loc_1:* = new DRMReturnVoucherErrorEvent(DRMReturnVoucherErrorEvent.RETURN_VOUCHER_ERROR, false, false, getLastServerErrorString(), getLastError());
            _loc_1.serverURL = this.m_serverURL;
            _loc_1.licenseID = this.m_licenseID;
            _loc_1.policyID = this.m_policyID;
            _loc_1.subErrorID = getLastSubErrorID();
            dispatchEvent(_loc_1);
            return;
        }// end function

        private function returnVoucherInner(param1:String, param2:Boolean, param3:String, param4:String) : uint;

        private function getResultInner() : int;

    }
}
