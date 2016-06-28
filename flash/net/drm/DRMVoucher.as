package flash.net.drm
{
    import flash.utils.*;

    public class DRMVoucher extends Object
    {
        private var m_licenseID:String;
        private var m_policyID:String;
        private var m_endDate:Date;
        private var m_startDate:Date;
        private var m_offlineLeaseStartDate:Date;
        private var m_offlineLeaseExpirationDate:Date;
        private var m_customPolicies:Object;
        private var m_playbackTimeWindow:DRMPlaybackTimeWindow;

        public function DRMVoucher()
        {
            return;
        }// end function

        public function get serverURL() : String
        {
            return this.FMRMSURL;
        }// end function

        private function get FMRMSURL() : String;

        public function get voucherStartDate() : Date
        {
            var _loc_1:* = NaN;
            if (this.m_startDate == null)
            {
                _loc_1 = this.getStartDateInner();
                if (_loc_1 > 0)
                {
                    this.m_startDate = new Date(1000 * _loc_1);
                }
            }
            return this.m_startDate;
        }// end function

        public function get voucherEndDate() : Date
        {
            var _loc_1:* = NaN;
            if (this.m_endDate == null)
            {
                _loc_1 = this.getEndDateInner();
                if (_loc_1 > 0)
                {
                    this.m_endDate = new Date(1000 * _loc_1);
                }
            }
            return this.m_endDate;
        }// end function

        public function get offlineLeaseStartDate() : Date
        {
            var _loc_1:* = NaN;
            if (this.m_offlineLeaseStartDate == null)
            {
                _loc_1 = this.getOfflineLeaseStartDateInner();
                if (_loc_1 > 0)
                {
                    this.m_offlineLeaseStartDate = new Date(1000 * _loc_1);
                }
            }
            return this.m_offlineLeaseStartDate;
        }// end function

        public function get offlineLeaseEndDate() : Date
        {
            var _loc_1:* = NaN;
            if (this.m_offlineLeaseExpirationDate == null)
            {
                _loc_1 = this.getOfflineLeaseExpirationDateInner();
                if (_loc_1 > 0)
                {
                    this.m_offlineLeaseExpirationDate = new Date(1000 * _loc_1);
                }
            }
            return this.m_offlineLeaseExpirationDate;
        }// end function

        private function getEndDateInner() : Number;

        private function getStartDateInner() : Number;

        private function getOfflineLeaseStartDateInner() : Number;

        private function getOfflineLeaseExpirationDateInner() : Number;

        public function get policies() : Object
        {
            if (this.m_customPolicies == null)
            {
                this.createCustomPolicyObject();
            }
            return this.m_customPolicies;
        }// end function

        public function get licenseID() : String
        {
            if (this.m_licenseID == null)
            {
                this.m_licenseID = this.getLicenseIDInner();
            }
            return this.m_licenseID;
        }// end function

        private function getLicenseIDInner() : String;

        public function get policyID() : String
        {
            if (this.m_policyID == null)
            {
                this.m_policyID = this.getPolicyIDInner();
            }
            return this.m_policyID;
        }// end function

        private function getPolicyIDInner() : String;

        private function createCustomPolicyObject() : void;

        private function setCustomPolicyObject(param1:Object) : void
        {
            this.m_customPolicies = param1;
            return;
        }// end function

        private function get playStartTime() : Number;

        private function get playbackEndTime() : Number;

        private function get playbackWindow() : Number;

        public function get playbackTimeWindow() : DRMPlaybackTimeWindow
        {
            var _loc_1:* = 0;
            if (this.m_playbackTimeWindow != null)
            {
                if (this.m_playbackTimeWindow.startDate == null)
                {
                }
            }
            if (this.playStartTime > 0)
            {
                _loc_1 = this.playbackWindow;
                if (this.playbackWindow > 0)
                {
                    this.m_playbackTimeWindow = this.createDRMPlaybackTimeWindow(_loc_1, this.playStartTime, this.playbackEndTime);
                }
            }
            return this.m_playbackTimeWindow;
        }// end function

        public function toByteArray() : ByteArray
        {
            return this.toByteArrayInner();
        }// end function

        private function createDRMPlaybackTimeWindow(param1:Number, param2:Number, param3:Number) : DRMPlaybackTimeWindow;

        private function toByteArrayInner() : ByteArray;

    }
}
