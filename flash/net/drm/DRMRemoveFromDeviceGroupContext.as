package flash.net.drm
{
    import flash.events.*;

    class DRMRemoveFromDeviceGroupContext extends DRMManagerSession
    {
        private var m_deviceGroup:DRMDeviceGroup;

        function DRMRemoveFromDeviceGroupContext()
        {
            return;
        }// end function

        public function removeFromDeviceGroup(param1:DRMDeviceGroup) : void
        {
            var _loc_2:* = 0;
            if (!m_isInSession)
            {
                m_isInSession = true;
                this.m_deviceGroup = param1;
                _loc_2 = this.removeFromDeviceGroupInner(param1);
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

        override public function onSessionComplete() : void
        {
            var _loc_1:* = new DRMDeviceGroupEvent(DRMDeviceGroupEvent.REMOVE_FROM_DEVICE_GROUP_COMPLETE);
            _loc_1.deviceGroup = this.m_deviceGroup;
            dispatchEvent(_loc_1);
            return;
        }// end function

        override public function onSessionError() : void
        {
            var _loc_1:* = new DRMDeviceGroupErrorEvent(DRMDeviceGroupErrorEvent.REMOVE_FROM_DEVICE_GROUP_ERROR, false, false, getLastServerErrorString(), getLastError());
            _loc_1.deviceGroup = this.m_deviceGroup;
            _loc_1.subErrorID = getLastSubErrorID();
            dispatchEvent(_loc_1);
            return;
        }// end function

        private function removeFromDeviceGroupInner(param1:DRMDeviceGroup) : uint;

    }
}
