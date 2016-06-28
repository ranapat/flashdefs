package flash.events
{
    import flash.net.drm.*;

    public class DRMDeviceGroupErrorEvent extends ErrorEvent
    {
        private var m_deviceGroup:DRMDeviceGroup;
        private var m_subErrorID:int;
        private var m_systemUpdateNeeded:Boolean;
        private var m_drmUpdateNeeded:Boolean;
        public static const ADD_TO_DEVICE_GROUP_ERROR:String = "addToDeviceGroupError";
        public static const REMOVE_FROM_DEVICE_GROUP_ERROR:String = "removeFromDeviceGroupError";

        public function DRMDeviceGroupErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0, param6:int = 0, param7:DRMDeviceGroup = null, param8:Boolean = false, param9:Boolean = false)
        {
            super(param1, param2, param3, param4, param5);
            this.m_subErrorID = param6;
            this.m_deviceGroup = param7;
            this.m_systemUpdateNeeded = param8;
            this.m_drmUpdateNeeded = param9;
            return;
        }// end function

        override public function toString() : String
        {
            return formatToString("DRMDeviceGroupErrorEvent", "type", "bubbles", "cancelable", "eventPhase", "errorID", "subErrorID", "text", "systemUpdateNeeded", "drmUpdateNeeded");
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

        public function set deviceGroup(param1:DRMDeviceGroup)
        {
            this.m_deviceGroup = param1;
            return;
        }// end function

        public function get deviceGroup() : DRMDeviceGroup
        {
            return this.m_deviceGroup;
        }// end function

        override public function clone() : Event
        {
            return new DRMDeviceGroupErrorEvent(type, bubbles, cancelable, text, errorID, this.subErrorID, this.m_deviceGroup, this.m_systemUpdateNeeded, this.m_drmUpdateNeeded);
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
