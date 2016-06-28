package flash.events
{

    public class TransformGestureEvent extends GestureEvent
    {
        private var m_scaleX:Number;
        private var m_scaleY:Number;
        private var m_rotation:Number;
        private var m_offsetX:Number;
        private var m_offsetY:Number;
        public static const GESTURE_ZOOM:String = "gestureZoom";
        public static const GESTURE_PAN:String = "gesturePan";
        public static const GESTURE_ROTATE:String = "gestureRotate";
        public static const GESTURE_SWIPE:String = "gestureSwipe";

        public function TransformGestureEvent(param1:String, param2:Boolean = true, param3:Boolean = false, param4:String = null, param5:Number = 0, param6:Number = 0, param7:Number = 1, param8:Number = 1, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Boolean = false, param13:Boolean = false, param14:Boolean = false)
        {
            super(param1, param2, param3, param4, param5, param6, param12, param13, param14);
            this.m_scaleX = param7;
            this.m_scaleY = param8;
            this.m_rotation = param9;
            this.m_offsetX = param10;
            this.m_offsetY = param11;
            return;
        }// end function

        override public function clone() : Event
        {
            return new TransformGestureEvent(type, bubbles, cancelable, phase, localX, localY, this.m_scaleX, this.m_scaleY, this.m_rotation, this.m_offsetX, this.m_offsetY, ctrlKey, altKey, shiftKey);
        }// end function

        override public function toString() : String
        {
            return formatToString("TransformGestureEvent", "type", "bubbles", "cancelable", "phase", "args", "localX", "localY", "stageX", "stageY", "scaleX", "scaleY", "rotation", "offsetX", "offsetY", "ctrlKey", "altKey", "shiftKey");
        }// end function

        public function get scaleX() : Number
        {
            return this.m_scaleX;
        }// end function

        public function set scaleX(param1:Number) : void
        {
            this.m_scaleX = param1;
            return;
        }// end function

        public function get scaleY() : Number
        {
            return this.m_scaleY;
        }// end function

        public function set scaleY(param1:Number) : void
        {
            this.m_scaleY = param1;
            return;
        }// end function

        public function get rotation() : Number
        {
            return this.m_rotation;
        }// end function

        public function set rotation(param1:Number) : void
        {
            this.m_rotation = param1;
            return;
        }// end function

        public function get offsetX() : Number
        {
            return this.m_offsetX;
        }// end function

        public function set offsetX(param1:Number) : void
        {
            this.m_offsetX = param1;
            return;
        }// end function

        public function get offsetY() : Number
        {
            return this.m_offsetY;
        }// end function

        public function set offsetY(param1:Number) : void
        {
            this.m_offsetY = param1;
            return;
        }// end function

    }
}
