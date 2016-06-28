package flash.media
{
    import flash.events.*;

    public class AVStream extends EventDispatcher
    {
        public static const UNDEFINED:String = "undefined";
        public static const HARDWARE:String = "hardware";
        public static const SOFTWARE:String = "sofware";

        public function AVStream(param1:AVSource)
        {
            this.ctor(param1);
            return;
        }// end function

        private function ctor(param1:AVSource) : void;

        public function dispose() : void;

        public function set bufferTime(param1:Number) : void;

        public function set initialBufferTime(param1:Number) : void;

        public function set backBufferTime(param1:Number) : void;

        public function get backBufferLength() : Number;

        public function get droppedFrames() : int;

        public function step(param1:int) : AVResult;

        public function pause() : AVResult;

        public function resume() : Boolean;

        public function seek(param1:Number, param2:Boolean = true) : AVResult;

        public function seekToLocalTime(param1:int, param2:Number) : AVResult;

        public function seekToLivePoint() : AVResult;

        public function play() : AVResult;

        public function setPlaySpeed(param1:Number, param2:Number) : void;

        public function fastForward(param1:Number) : AVResult;

        public function rewind(param1:Number) : AVResult;

        public function get playState() : AVPlayState;

        public function get time() : Number;

        public function get frameTime() : Number;

        public function get currentFPS() : Number;

        public function get bufferLength() : Number;

        public function get volume() : Number;

        public function set volume(param1:Number) : void;

        public function get decoderType() : String;

        public function get renderType() : String;

        public function get useHardwareDecoder() : Boolean;

        public function set useHardwareDecoder(param1:Boolean) : void;

        public function set captionsEnabled(param1:Boolean) : void;

        public function get captionsEnabled() : Boolean;

        public function set captionStyle(param1:AVCaptionStyle) : void;

        public function get clientLivePoint() : Number;

        public function seekToKeyFrame(param1:Number, param2:Boolean = true) : AVResult;

    }
}
