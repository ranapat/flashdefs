package flash.net
{
    import flash.events.*;
    import flash.utils.*;

    public class FileReference extends EventDispatcher
    {
        private static const kInvalidParamError:uint = 2004;
        private static const kNullPointerError:uint = 2007;
        private static const kInvalidCallError:uint = 2037;
        private static const kLocalSecurityError:uint = 2028;

        public function FileReference()
        {
            return;
        }// end function

        public function get creationDate() : Date;

        public function get creator() : String;

        public function get modificationDate() : Date;

        public function get name() : String;

        public function get size() : Number;

        public function get type() : String;

        public function cancel() : void;

        public function download(param1:URLRequest, param2:String = null) : void;

        public function upload(param1:URLRequest, param2:String = "Filedata", param3:Boolean = false) : void;

        public function get data() : ByteArray;

        private function _load(param1:ByteArray) : void;

        private function _save(param1:ByteArray, param2:String) : void;

        public function load() : void
        {
            this._load(new ByteArray());
            return;
        }// end function

        public function save(param1, param2:String = null) : void
        {
            var x:XML;
            var data:* = param1;
            var defaultFileName:* = param2;
            _ensureIsRootPlayer();
            var d:* = new ByteArray();
            if (data == null)
            {
                throw new ArgumentError("data");
            }
            if (data is String)
            {
                d.writeUTFBytes(data as String);
            }
            else if (data is XML)
            {
                d.writeUTFBytes((data as XML).toXMLString());
            }
            else if (data is ByteArray)
            {
                d.writeBytes(data as ByteArray);
            }
            else
            {
                try
                {
                    d.writeUTFBytes(data);
                }
                catch (e:Error)
                {
                    throw new ArgumentError("data");
                }
            }
            d.position = 0;
            if (defaultFileName == null)
            {
                defaultFileName;
            }
            this._save(d, defaultFileName);
            return;
        }// end function

        public function browse(param1:Array = null) : Boolean;

        private static function _ensureIsRootPlayer() : void;

    }
}
