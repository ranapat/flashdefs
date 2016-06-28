package flash.net.drm
{
    import flash.events.*;

    class DRMAddToDeviceGroupContext extends DRMManagerSession
    {
        private var m_deviceGroup:DRMDeviceGroup;

        function DRMAddToDeviceGroupContext()
        {
            return;
        }// end function

        public function addToDeviceGroup(param1:DRMDeviceGroup, param2:Boolean) : void
        {
            var _loc_3:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                this.m_deviceGroup = param1;
                _loc_3 = this.addToDeviceGroupInner(param1, param2);
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
            var _loc_1:* = new DRMDeviceGroupEvent(DRMDeviceGroupEvent.ADD_TO_DEVICE_GROUP_COMPLETE);
            _loc_1.deviceGroup = this.m_deviceGroup;
            _loc_1.deviceGroup.name = this.getResultInner();
            dispatchEvent(_loc_1);
            return;
        }// end function

        private function getResultInner() : String;

        override public function onSessionError() : void
        {
            var _loc_1:* = new DRMDeviceGroupErrorEvent(DRMDeviceGroupErrorEvent.ADD_TO_DEVICE_GROUP_ERROR, false, false, getLastServerErrorString(), getLastError());
            _loc_1.deviceGroup = this.m_deviceGroup;
            _loc_1.subErrorID = getLastSubErrorID();
            dispatchEvent(_loc_1);
            return;
        }// end function

        private function addToDeviceGroupInner(param1:DRMDeviceGroup, param2:Boolean) : uint;

    }
}
