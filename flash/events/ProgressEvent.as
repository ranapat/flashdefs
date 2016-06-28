package flash.events
{

    public class ProgressEvent extends Event
    {
        private var m_bytesLoaded:Number;
        private var m_bytesTotal:Number;
        public static const PROGRESS:String = "progress";
        public static const SOCKET_DATA:String = "socketData";

        public function ProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Number = 0, param5:Number = 0)
        {
            super(param1, param2, param3);
            this.m_bytesLoaded = param4;
            this.m_bytesTotal = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new ProgressEvent(type, bubbles, cancelable, this.m_bytesLoaded, this.m_bytesTotal);
        }// end function

        override public function toString() : String
        {
            return formatToString("ProgressEvent", "type", "bubbles", "cancelable", "eventPhase", "bytesLoaded", "bytesTotal");
        }// end function

        public function get bytesLoaded() : Number
        {
            return this.m_bytesLoaded;
        }// end function

        public function set bytesLoaded(param1:Number) : void
        {
            this.m_bytesLoaded = param1;
            return;
        }// end function

        public function get bytesTotal() : Number
        {
            return this.m_bytesTotal;
        }// end function

        public function set bytesTotal(param1:Number) : void
        {
            this.m_bytesTotal = param1;
            return;
        }// end function

    }
}
