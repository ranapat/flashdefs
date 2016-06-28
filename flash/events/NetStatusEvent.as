﻿package flash.events
{

    public class NetStatusEvent extends Event
    {
        private var m_info:Object;
        public static const NET_STATUS:String = "netStatus";

        public function NetStatusEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Object = null)
        {
            super(param1, param2, param3);
            this.m_info = param4;
            return;
        }// end function

        override public function clone() : Event
        {
            return new NetStatusEvent(type, bubbles, cancelable, this.m_info);
        }// end function

        override public function toString() : String
        {
            return formatToString("NetStatusEvent", "type", "bubbles", "cancelable", "eventPhase", "info");
        }// end function

        public function get info() : Object
        {
            return this.m_info;
        }// end function

        public function set info(param1:Object) : void
        {
            this.m_info = param1;
            return;
        }// end function

    }
}
