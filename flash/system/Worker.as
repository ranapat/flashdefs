package flash.system
{
    import flash.events.*;
    import flash.utils.*;

    final public class Worker extends EventDispatcher
    {
        private var _byteCode:ByteArray;
        private static var _current:Worker;

        public function Worker()
        {
            return;
        }// end function

        public function createMessageChannel(param1:Worker) : MessageChannel;

        public function start() : void;

        public function setSharedProperty(param1:String, param2) : void
        {
            this.internalSetSharedProperty(param1, param2);
            return;
        }// end function

        private function internalSetSharedProperty(param1:String, param2) : void;

        public function getSharedProperty(param1:String)
        {
            return this.internalGetSharedProperty(param1);
        }// end function

        private function internalGetSharedProperty(param1:String);

        public function get isPrimordial() : Boolean;

        public function get state() : String
        {
            return this.internalGetState();
        }// end function

        private function internalGetState() : String;

        override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            this.internalAddEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        private function internalAddEventListener(param1:String, param2:Function, param3:Boolean, param4:int, param5:Boolean) : void;

        override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
        {
            this.internalRemoveEventListener(param1, param2, param3);
            return;
        }// end function

        private function internalRemoveEventListener(param1:String, param2:Function, param3:Boolean) : void;

        public function terminate() : Boolean;

        public static function get isSupported() : Boolean;

        public static function get current() : Worker
        {
            return _current;
        }// end function

    }
}
