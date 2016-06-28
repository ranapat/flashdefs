package flash.utils
{
    import flash.utils.*;

    public class ByteArray extends Object implements IDataInput2, IDataOutput2
    {
        private static var _defaultObjectEncoding:uint;

        public function ByteArray()
        {
            return;
        }// end function

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

        public function get length() : uint;

        public function set length(param1:uint) : void;

        public function writeObject(param1) : void;

        public function readObject();

        public function deflate() : void
        {
            this._compress("deflate");
            return;
        }// end function

        private function _compress(param1:String) : void;

        public function compress(param1:String = "zlib") : void
        {
            this._compress(param1);
            return;
        }// end function

        public function inflate() : void
        {
            this._uncompress("deflate");
            return;
        }// end function

        private function _uncompress(param1:String) : void;

        public function uncompress(param1:String = "zlib") : void
        {
            this._uncompress(param1);
            return;
        }// end function

        public function toString() : String
        {
            return this._toString();
        }// end function

        private function _toString() : String;

        public function get bytesAvailable() : uint;

        public function get position() : uint;

        public function set position(param1:uint) : void;

        public function get objectEncoding() : uint;

        public function set objectEncoding(param1:uint) : void;

        public function get endian() : String;

        public function set endian(param1:String) : void;

        public function clear() : void;

        public function atomicCompareAndSwapIntAt(param1:int, param2:int, param3:int) : int;

        public function atomicCompareAndSwapLength(param1:int, param2:int) : int;

        public function get shareable() : Boolean;

        public function set shareable(param1:Boolean) : void;

        public static function get defaultObjectEncoding() : uint;

        public static function set defaultObjectEncoding(param1:uint) : void;

        prototype.toJSON = function (param1:String)
        {
            return "ByteArray";
        }// end function
        ;
        _dontEnumPrototype(prototype);
    }
}
