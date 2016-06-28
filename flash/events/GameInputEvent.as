package flash.events
{
    import flash.ui.*;

    final public class GameInputEvent extends Event
    {
        private var _device:GameInputDevice;
        public static const DEVICE_ADDED:String = "deviceAdded";
        public static const DEVICE_REMOVED:String = "deviceRemoved";
        public static const DEVICE_UNUSABLE:String = "deviceUnusable";

        public function GameInputEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:GameInputDevice = null)
        {
            super(param1, param2, param3);
            this._device = param4;
            return;
        }// end function

        public function get device() : GameInputDevice
        {
            return this._device;
        }// end function

    }
}
