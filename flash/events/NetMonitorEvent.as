package flash.events
{
    import flash.net.*;

    public class NetMonitorEvent extends Event
    {
        private var m_netStream:NetStream;
        public static const NET_STREAM_CREATE:String = "netStreamCreate";

        public function NetMonitorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:NetStream = null)
        {
            super(param1, param2, param3);
            this.m_netStream = param4;
            return;
        }// end function

        override public function clone() : Event
        {
            return new NetMonitorEvent(type, bubbles, cancelable, this.netStream);
        }// end function

        override public function toString() : String
        {
            return formatToString("NetMonitorEvent", "type", "bubbles", "cancelable", "eventPhase", "netStream");
        }// end function

        public function get netStream() : NetStream
        {
            return this.m_netStream;
        }// end function

    }
}
