package flash.net.drm
{

    class DRMVoucherStoreContext extends DRMManagerSession
    {

        function DRMVoucherStoreContext()
        {
            return;
        }// end function

        public function getVoucherFromStore(param1:DRMContentData) : void
        {
            var _loc_2:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                metadata = param1;
                _loc_2 = this.getVoucherFromStoreInner(metadata);
                if (_loc_2 != 0)
                {
                    m_isInSession = false;
                    errorCodeToThrow(_loc_2);
                }
                else
                {
                    setTimerUp();
                }
            }
            return;
        }// end function

        public function get voucher() : DRMVoucher
        {
            return this.getVoucherInner();
        }// end function

        override public function onSessionComplete() : void
        {
            issueDRMStatusEvent(metadata, this.getVoucherInner());
            return;
        }// end function

        override public function onSessionError() : void
        {
            issueDRMErrorEvent(metadata, getLastError(), getLastSubErrorID(), getLastServerErrorString());
            return;
        }// end function

        private function getVoucherFromStoreInner(param1:DRMContentData) : uint;

        private function getVoucherInner() : DRMVoucher;

    }
}
