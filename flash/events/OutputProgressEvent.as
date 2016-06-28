package flash.events
{

    public class OutputProgressEvent extends Event
    {
        private var m_bytesPending:Number;
        private var m_bytesTotal:Number;
        public static const OUTPUT_PROGRESS:String = "outputProgress";

        public function OutputProgressEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Number = 0, param5:Number = 0)
        {
            super(param1, param2, param3);
            this.m_bytesPending = param4;
            this.m_bytesTotal = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new OutputProgressEvent(type, bubbles, cancelable, this.m_bytesPending, this.m_bytesTotal);
        }// end function

        override public function toString() : String
        {
            return formatToString("OutputProgressEvent", "type", "bubbles", "cancelable", "eventPhase", "bytesPending", "bytesTotal");
        }// end function

        public function get bytesPending() : Number
        {
            return this.m_bytesPending;
        }// end function

        public function set bytesPending(param1:Number) : void
        {
            this.m_bytesPending = param1;
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
