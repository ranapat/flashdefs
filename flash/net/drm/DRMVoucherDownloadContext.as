package flash.net.drm
{

    class DRMVoucherDownloadContext extends DRMManagerSession
    {

        function DRMVoucherDownloadContext()
        {
            return;
        }// end function

        public function download(param1:DRMContentData, param2:Boolean = false) : void
        {
            var _loc_3:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                metadata = param1;
                _loc_3 = this.downloadInner(metadata, param2);
                if (_loc_3 != 0)
                {
                    m_isInSession = false;
                    errorCodeToThrow(_loc_3);
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
            issueDRMStatusEvent(metadata, this.getVoucherInner());
            return;
        }// end function

        override public function onSessionError() : void
        {
            issueDRMErrorEvent(metadata, getLastError(), getLastSubErrorID(), getLastServerErrorString());
            return;
        }// end function

        public function get voucher() : DRMVoucher
        {
            return this.getVoucherInner();
        }// end function

        private function downloadInner(param1:DRMContentData, param2:Boolean) : uint;

        private function getVoucherInner() : DRMVoucher;

    }
}
