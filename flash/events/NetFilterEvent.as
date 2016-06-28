package flash.events
{
    import flash.utils.*;

    public class NetFilterEvent extends Event
    {
        public var header:ByteArray;
        public var data:ByteArray;

        public function NetFilterEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:ByteArray = null, param5:ByteArray = null)
        {
            super(param1, param2, param3);
            this.data = param5;
            this.header = param4;
            return;
        }// end function

        override public function clone() : Event
        {
            return new NetFilterEvent(type, bubbles, cancelable, this.header, this.data);
        }// end function

        override public function toString() : String
        {
            return formatToString("NetTransformEvent", "type", "bubbles", "cancelable", "eventPhase", "header", "data");
        }// end function

    }
}
