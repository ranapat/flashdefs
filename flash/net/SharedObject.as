package flash.net
{
    import flash.events.*;

    public class SharedObject extends EventDispatcher
    {
        private static const kConnect:uint = 0;
        private static const kSend:uint = 1;
        private static const kFlush:uint = 2;
        private static const kClose:uint = 3;
        private static const kGetSize:uint = 4;
        private static const kSetFps:uint = 5;
        private static const kClear:uint = 6;

        public function SharedObject()
        {
            return;
        }// end function

        public function get data() : Object;

        public function connect(param1:NetConnection, param2:String = null) : void
        {
            if (!Boolean(this.invoke(kConnect, param1, param2)))
            {
                Error.throwError(Error, 2139);
            }
            return;
        }// end function

        public function close() : void
        {
            this.invoke(kClose);
            return;
        }// end function

        public function flush(param1:int = 0) : String
        {
            var _loc_4:* = false;
            var _loc_2:* = this.preventBackupImpl;
            var _loc_3:* = this.invoke(kFlush, param1);
            if (_loc_3 == true)
            {
                _loc_4 = this.preventBackupImpl;
                if (_loc_4 != _loc_2)
                {
                    this.preventBackupImpl = _loc_2;
                }
                return SharedObjectFlushStatus.FLUSHED;
            }
            else
            {
                if (_loc_3 == "pending")
                {
                    return SharedObjectFlushStatus.PENDING;
                }
                Error.throwError(Error, 2130);
            }
            return null;
        }// end function

        public function get size() : uint
        {
            return uint(this.invoke(kGetSize));
        }// end function

        public function set fps(param1:Number) : void
        {
            this.invoke(kSetFps, param1);
            return;
        }// end function

        public function send(... args) : void
        {
            this.invokeWithArgsArray(kSend, args);
            return;
        }// end function

        public function clear() : void
        {
            this.invoke(kClear);
            return;
        }// end function

        public function get objectEncoding() : uint;

        public function set objectEncoding(param1:uint) : void;

        public function get client() : Object;

        public function set client(param1:Object) : void;

        public function setDirty(param1:String) : void;

        public function setProperty(param1:String, param2:Object = null) : void
        {
            if (this.data[param1] != param2)
            {
                this.data[param1] = param2;
                this.setDirty(param1);
            }
            return;
        }// end function

        private function invoke(param1:uint, ... args);

        private function invokeWithArgsArray(param1:uint, param2:Array);

        public static function deleteAll(param1:String) : int;

        public static function getDiskUsage(param1:String) : int;

        public static function getLocal(param1:String, param2:String = null, param3:Boolean = false) : SharedObject;

        public static function getRemote(param1:String, param2:String = null, param3:Object = false, param4:Boolean = false) : SharedObject;

        public static function get defaultObjectEncoding() : uint;

        public static function set defaultObjectEncoding(param1:uint) : void;

        private static function get preventBackupImpl() : Boolean;

        private static function set preventBackupImpl(param1:Boolean) : void;

        public static function get preventBackup() : Boolean
        {
            return SharedObject.preventBackupImpl;
        }// end function

        public static function set preventBackup(param1:Boolean) : void
        {
            SharedObject.preventBackupImpl = param1;
            return;
        }// end function

    }
}
