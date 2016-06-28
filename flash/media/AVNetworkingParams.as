package flash.media
{

    public class AVNetworkingParams extends Object
    {
        private var m_forceNativeNetworking:Boolean;
        private var m_readSetCookieHeader:Boolean;
        private var m_useCookieHeaderForAllRequests:Boolean;

        public function AVNetworkingParams(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false)
        {
            this.m_forceNativeNetworking = param1;
            this.m_readSetCookieHeader = param2;
            this.m_useCookieHeaderForAllRequests = param3;
            return;
        }// end function

        public function get forceNativeNetworking() : Boolean
        {
            return this.m_forceNativeNetworking;
        }// end function

        public function set forceNativeNetworking(param1:Boolean) : void
        {
            this.m_forceNativeNetworking = param1;
            return;
        }// end function

        public function get readSetCookieHeader() : Boolean
        {
            return this.m_readSetCookieHeader;
        }// end function

        public function set readSetCookieHeader(param1:Boolean) : void
        {
            this.m_readSetCookieHeader = param1;
            return;
        }// end function

        public function get useCookieHeaderForAllRequests() : Boolean
        {
            return this.m_useCookieHeaderForAllRequests;
        }// end function

        public function set useCookieHeaderForAllRequests(param1:Boolean) : void
        {
            this.m_useCookieHeaderForAllRequests = param1;
            return;
        }// end function

    }
}
