package flash.media
{
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;

    public class Sound extends EventDispatcher
    {

        public function Sound(param1:URLRequest = null, param2:SoundLoaderContext = null)
        {
            this.load(param1, param2);
            return;
        }// end function

        public function load(param1:URLRequest, param2:SoundLoaderContext = null) : void
        {
            var _loc_3:* = this._buildLoaderContext(param2);
            this._load(param1, _loc_3.checkPolicyFile, _loc_3.bufferTime);
            return;
        }// end function

        public function loadCompressedDataFromByteArray(param1:ByteArray, param2:uint) : void;

        public function loadPCMFromByteArray(param1:ByteArray, param2:uint, param3:String = "float", param4:Boolean = true, param5:Number = 44100) : void;

        private function _buildLoaderContext(param1:SoundLoaderContext) : SoundLoaderContext
        {
            if (param1 == null)
            {
                param1 = new SoundLoaderContext();
            }
            return param1;
        }// end function

        private function _load(param1:URLRequest, param2:Boolean, param3:Number) : void;

        public function get url() : String;

        public function get isURLInaccessible() : Boolean;

        public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel;

        public function get length() : Number;

        public function get isBuffering() : Boolean;

        public function get bytesLoaded() : uint;

        public function get bytesTotal() : int;

        public function get id3() : ID3Info;

        public function close() : void;

        public function extract(param1:ByteArray, param2:Number, param3:Number = -1) : Number;

    }
}
