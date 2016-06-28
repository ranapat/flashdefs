package flash.events
{

    public class DRMReturnVoucherErrorEvent extends ErrorEvent
    {
        private var m_subErrorID:int;
        private var m_serverURL:String;
        private var m_licenseID:String;
        private var m_policyID:String;
        public static const RETURN_VOUCHER_ERROR:String = "returnVoucherError";

        public function DRMReturnVoucherErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0, param6:int = 0, param7:String = null, param8:String = null, param9:String = null)
        {
            super(param1, param2, param3, param4, param5);
            this.m_subErrorID = param6;
            this.m_serverURL = param7;
            this.m_licenseID = param8;
            this.m_policyID = param9;
            return;
        }// end function

        override public function clone() : Event
        {
            return new DRMReturnVoucherErrorEvent(type, bubbles, cancelable, text, errorID, this.subErrorID, this.serverURL, this.licenseID, this.policyID);
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

        public function get licenseID() : String
        {
            return this.m_licenseID;
        }// end function

        public function set licenseID(param1:String) : void
        {
            this.m_licenseID = param1;
            return;
        }// end function

        public function get policyID() : String
        {
            return this.m_policyID;
        }// end function

        public function set policyID(param1:String) : void
        {
            this.m_policyID = param1;
            return;
        }// end function

    }
}
