package flash.events
{
    import flash.net.drm.*;

    public class DRMErrorEvent extends ErrorEvent
    {
        private var m_metadata:DRMContentData;
        private var m_subErrorID:int;
        private var m_systemUpdateNeeded:Boolean;
        private var m_drmUpdateNeeded:Boolean;
        public static const DRM_ERROR:String = "drmError";
        public static const DRM_LOAD_DEVICEID_ERROR:String = "drmLoadDeviceIdError";

        public function DRMErrorEvent(param1:String = "drmError", param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0, param6:int = 0, param7:DRMContentData = null, param8:Boolean = false, param9:Boolean = false)
        {
            super(param1, param2, param3, param4, param5);
            this.m_subErrorID = param6;
            this.m_metadata = param7;
            this.m_systemUpdateNeeded = param8;
            this.m_drmUpdateNeeded = param9;
            return;
        }// end function

        override public function clone() : Event
        {
            return new DRMErrorEvent(type, bubbles, cancelable, text, errorID, this.subErrorID, this.m_metadata, this.m_systemUpdateNeeded, this.m_drmUpdateNeeded);
        }// end function

        override public function toString() : String
        {
            return formatToString("DRMErrorEvent", "type", "bubbles", "cancelable", "eventPhase", "errorID", "subErrorID", "text", "systemUpdateNeeded", "drmUpdateNeeded");
        }// end function

        public function get subErrorID() : int
        {
            return this.m_subErrorID;
        }// end function

        public function get contentData() : DRMContentData
        {
            return this.m_metadata;
        }// end function

        public function set contentData(param1:DRMContentData) : void
        {
            this.m_metadata = param1;
            return;
        }// end function

        public function get systemUpdateNeeded() : Boolean
        {
            return this.m_systemUpdateNeeded;
        }// end function

        public function get drmUpdateNeeded() : Boolean
        {
            return this.m_drmUpdateNeeded;
        }// end function

    }
}
