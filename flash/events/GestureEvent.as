package flash.events
{

    public class GestureEvent extends Event
    {
        private var m_phase:String;
        private var m_ctrlKey:Boolean;
        private var m_altKey:Boolean;
        private var m_shiftKey:Boolean;
        public static const GESTURE_TWO_FINGER_TAP:String = "gestureTwoFingerTap";

        public function GestureEvent(param1:String, param2:Boolean = true, param3:Boolean = false, param4:String = null, param5:Number = 0, param6:Number = 0, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
        {
            super(param1, param2, param3);
            this.m_phase = param4;
            this.localX = param5;
            this.localY = param6;
            this.m_ctrlKey = param7;
            this.m_altKey = param8;
            this.m_shiftKey = param9;
            return;
        }// end function

        override public function clone() : Event
        {
            return new GestureEvent(type, bubbles, cancelable, this.m_phase, this.localX, this.localY, this.m_ctrlKey, this.m_altKey, this.m_shiftKey);
        }// end function

        override public function toString() : String
        {
            return formatToString("GestureEvent", "type", "bubbles", "cancelable", "phase", "localX", "localY", "stageX", "stageY", "ctrlKey", "altKey", "shiftKey");
        }// end function

        public function get localX() : Number;

        public function set localX(param1:Number) : void;

        public function get localY() : Number;

        public function set localY(param1:Number) : void;

        public function get phase() : String
        {
            return this.m_phase;
        }// end function

        public function set phase(param1:String) : void
        {
            this.m_phase = param1;
            return;
        }// end function

        public function get ctrlKey() : Boolean
        {
            return this.m_ctrlKey;
        }// end function

        public function set ctrlKey(param1:Boolean) : void
        {
            this.m_ctrlKey = param1;
            return;
        }// end function

        public function get altKey() : Boolean
        {
            return this.m_altKey;
        }// end function

        public function set altKey(param1:Boolean) : void
        {
            this.m_altKey = param1;
            return;
        }// end function

        public function get shiftKey() : Boolean
        {
            return this.m_shiftKey;
        }// end function

        public function set shiftKey(param1:Boolean) : void
        {
            this.m_shiftKey = param1;
            return;
        }// end function

        public function get stageX() : Number
        {
            if (!isNaN(this.localX))
            {
                isNaN(this.localX);
            }
            if (isNaN(this.localY))
            {
                return Number.NaN;
            }
            return this.getStageX();
        }// end function

        public function get stageY() : Number
        {
            if (!isNaN(this.localX))
            {
                isNaN(this.localX);
            }
            if (isNaN(this.localY))
            {
                return Number.NaN;
            }
            return this.getStageY();
        }// end function

        public function updateAfterEvent() : void;

        private function getStageX() : Number;

        private function getStageY() : Number;

    }
}
