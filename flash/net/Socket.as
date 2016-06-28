package flash.net
{
    import flash.events.*;
    import flash.utils.*;

    public class Socket extends EventDispatcher implements IDataInput, IDataOutput
    {
        private var _timeout:uint;
        private var _timeoutTimer:Timer;
        private var _timeoutEvent:SecurityErrorEvent;
        private static const MIN_TIMEOUT:Object = 250;

        public function Socket(param1:String = null, param2:int = 0)
        {
            this._init();
            if (param1 != null)
            {
                this.connect(param1, param2);
            }
            return;
        }// end function

        private function _init() : void
        {
            if (this._timeoutTimer)
            {
                return;
            }
            this._timeout = 20000;
            this._timeoutTimer = new Timer(this._timeout);
            this._timeoutTimer.addEventListener(TimerEvent.TIMER, this.onTimeout);
            return;
        }// end function

        public function connect(param1:String, param2:int) : void
        {
            this._init();
            this._timeoutEvent = new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR, false, false, this.internalGetSecurityErrorMessage(param1, param2));
            this._timeoutTimer.reset();
            this._timeoutTimer.delay = this._timeout;
            this._timeoutTimer.start();
            this.internalConnect(param1, param2);
            return;
        }// end function

        private function internalGetSecurityErrorMessage(param1:String, param2:int) : String;

        public function get timeout() : uint
        {
            return this._timeout;
        }// end function

        public function set timeout(param1:uint) : void
        {
            if (param1 < MIN_TIMEOUT)
            {
                this._timeout = MIN_TIMEOUT;
            }
            else
            {
                this._timeout = param1;
            }
            return;
        }// end function

        private function onTimeout(event:TimerEvent) : void
        {
            this._timeoutTimer.stop();
            if (this.didFailureOccur())
            {
                dispatchEvent(this._timeoutEvent);
            }
            else if (!this.connected)
            {
                dispatchEvent(this._timeoutEvent);
            }
            return;
        }// end function

        private function internalConnect(param1:String, param2:int) : void;

        private function didFailureOccur() : Boolean;

        public function readBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void;

        public function writeBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void;

        public function writeBoolean(param1:Boolean) : void;

        public function writeByte(param1:int) : void;

        public function writeShort(param1:int) : void;

        public function writeInt(param1:int) : void;

        public function writeUnsignedInt(param1:uint) : void;

        public function writeFloat(param1:Number) : void;

        public function writeDouble(param1:Number) : void;

        public function writeMultiByte(param1:String, param2:String) : void;

        public function writeUTF(param1:String) : void;

        public function writeUTFBytes(param1:String) : void;

        public function readBoolean() : Boolean;

        public function readByte() : int;

        public function readUnsignedByte() : uint;

        public function readShort() : int;

        public function readUnsignedShort() : uint;

        public function readInt() : int;

        public function readUnsignedInt() : uint;

        public function readFloat() : Number;

        public function readDouble() : Number;

        public function readMultiByte(param1:uint, param2:String) : String;

        public function readUTF() : String;

        public function readUTFBytes(param1:uint) : String;

        public function get bytesAvailable() : uint;

        public function get connected() : Boolean;

        public function close() : void
        {
            this._init();
            this._timeoutTimer.stop();
            this._timeoutTimer.reset();
            this.internalClose();
            return;
        }// end function

        private function internalClose() : void;

        public function flush() : void;

        public function writeObject(param1) : void;

        public function readObject();

        public function get objectEncoding() : uint;

        public function set objectEncoding(param1:uint) : void;

        public function get endian() : String;

        public function set endian(param1:String) : void;

        public function get bytesPending() : uint;

    }
}
