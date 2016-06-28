package flash.net
{
    import flash.events.*;

    dynamic public class NetStreamPlayOptions extends EventDispatcher
    {
        public var streamName:String;
        public var oldStreamName:String;
        public var start:Number;
        public var len:Number;
        public var offset:Number;
        public var transition:String;

        public function NetStreamPlayOptions()
        {
            this.start = -2;
            this.len = -1;
            this.offset = -1;
            return;
        }// end function

    }
}
