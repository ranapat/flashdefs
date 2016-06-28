package flash.events
{

    public class NetDataEvent extends Event
    {
        private var m_info:Object;
        private var m_timestamp:Number;
        public static const MEDIA_TYPE_DATA:String = "mediaTypeData";

        public function NetDataEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Number = 0, param5:Object = null)
        {
            super(param1, param2, param3);
            this.m_timestamp = param4;
            this.m_info = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new NetDataEvent(type, bubbles, cancelable, this.timestamp, this.info);
        }// end function

        override public function toString() : String
        {
            return formatToString("NetDataEvent", "type", "bubbles", "cancelable", "eventPhase", "timestamp");
        }// end function

        public function get timestamp() : Number
        {
            return this.m_timestamp;
        }// end function

        public function get info() : Object
        {
            return this.m_info;
        }// end function

    }
}
