package flash.events
{
    import flash.display.*;

    public class TouchEvent extends Event
    {
        private var m_touchPointID:int;
        private var m_isPrimaryTouchPoint:Boolean;
        private var m_sizeY:Number;
        private var m_sizeX:Number;
        private var m_pressure:Number;
        private var m_relatedObject:InteractiveObject;
        private var m_isRelatedObjectInaccessible:Boolean;
        private var m_ctrlKey:Boolean;
        private var m_altKey:Boolean;
        private var m_shiftKey:Boolean;
        public static const TOUCH_BEGIN:String = "touchBegin";
        public static const TOUCH_END:String = "touchEnd";
        public static const TOUCH_MOVE:String = "touchMove";
        public static const TOUCH_OVER:String = "touchOver";
        public static const TOUCH_OUT:String = "touchOut";
        public static const TOUCH_ROLL_OVER:String = "touchRollOver";
        public static const TOUCH_ROLL_OUT:String = "touchRollOut";
        public static const TOUCH_TAP:String = "touchTap";
        public static const PROXIMITY_BEGIN:String = "proximityBegin";
        public static const PROXIMITY_END:String = "proximityEnd";
        public static const PROXIMITY_MOVE:String = "proximityMove";
        public static const PROXIMITY_OUT:String = "proximityOut";
        public static const PROXIMITY_OVER:String = "proximityOver";
        public static const PROXIMITY_ROLL_OUT:String = "proximityRollOut";
        public static const PROXIMITY_ROLL_OVER:String = "proximityRollOver";

        public function TouchEvent(param1:String, param2:Boolean = true, param3:Boolean = false, param4:int = 0, param5:Boolean = false, param6:Number = NaN, param7:Number = NaN, param8:Number = NaN, param9:Number = NaN, param10:Number = NaN, param11:InteractiveObject = null, param12:Boolean = false, param13:Boolean = false, param14:Boolean = false)
        {
            super(param1, param2, param3);
            this.m_touchPointID = param4;
            this.m_isPrimaryTouchPoint = param5;
            this.localX = param6;
            this.localY = param7;
            this.m_sizeX = param8;
            this.m_sizeY = param9;
            this.m_pressure = param10;
            this.m_relatedObject = param11;
            this.m_ctrlKey = param12;
            this.m_altKey = param13;
            this.m_shiftKey = param14;
            return;
        }// end function

        override public function clone() : Event
        {
            return new TouchEvent(type, bubbles, cancelable, this.m_touchPointID, this.m_isPrimaryTouchPoint, this.localX, this.localY, this.m_sizeX, this.m_sizeY, this.m_pressure, this.m_relatedObject, this.m_ctrlKey, this.m_altKey, this.m_shiftKey);
        }// end function

        override public function toString() : String
        {
            return formatToString("TouchEvent", "type", "bubbles", "cancelable", "eventPhase", "touchPointID", "isPrimaryTouchPoint", "localX", "localY", "stageX", "stageY", "sizeX", "sizeY", "pressure", "relatedObject", "ctrlKey", "altKey", "shiftKey");
        }// end function

        public function get localX() : Number;

        public function set localX(param1:Number) : void;

        public function get localY() : Number;

        public function set localY(param1:Number) : void;

        public function get touchPointID() : int
        {
            return this.m_touchPointID;
        }// end function

        public function set touchPointID(param1:int) : void
        {
            this.m_touchPointID = param1;
            return;
        }// end function

        public function get isPrimaryTouchPoint() : Boolean
        {
            return this.m_isPrimaryTouchPoint;
        }// end function

        public function set isPrimaryTouchPoint(param1:Boolean) : void
        {
            this.m_isPrimaryTouchPoint = param1;
            return;
        }// end function

        public function get sizeX() : Number
        {
            return this.m_sizeX;
        }// end function

        public function set sizeX(param1:Number) : void
        {
            this.m_sizeX = param1;
            return;
        }// end function

        public function get sizeY() : Number
        {
            return this.m_sizeY;
        }// end function

        public function set sizeY(param1:Number) : void
        {
            this.m_sizeY = param1;
            return;
        }// end function

        public function get pressure() : Number
        {
            return this.m_pressure;
        }// end function

        public function set pressure(param1:Number) : void
        {
            this.m_pressure = param1;
            return;
        }// end function

        public function get relatedObject() : InteractiveObject
        {
            return this.m_relatedObject;
        }// end function

        public function set relatedObject(param1:InteractiveObject) : void
        {
            this.m_relatedObject = param1;
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

        public function get isRelatedObjectInaccessible() : Boolean
        {
            return this.m_isRelatedObjectInaccessible;
        }// end function

        public function set isRelatedObjectInaccessible(param1:Boolean) : void
        {
            this.m_isRelatedObjectInaccessible = param1;
            return;
        }// end function

    }
}
