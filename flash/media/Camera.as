package flash.media
{
    import __AS3__.vec.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;

    final public class Camera extends EventDispatcher
    {

        public function Camera()
        {
            return;
        }// end function

        public function get activityLevel() : Number;

        public function get bandwidth() : int;

        public function get currentFPS() : Number;

        public function get fps() : Number;

        public function get height() : int;

        public function get index() : int;

        public function get keyFrameInterval() : int;

        public function get loopback() : Boolean;

        public function get motionLevel() : int;

        public function get motionTimeout() : int;

        public function get muted() : Boolean;

        public function get name() : String;

        public function get position() : String;

        public function get quality() : int;

        public function get width() : int;

        public function setCursor(param1:Boolean) : void;

        public function setKeyFrameInterval(param1:int) : void;

        public function setLoopback(param1:Boolean = false) : void;

        public function setMode(param1:int, param2:int, param3:Number, param4:Boolean = true) : void;

        public function setMotionLevel(param1:int, param2:int = 2000) : void;

        public function setQuality(param1:int, param2:int) : void;

        public function drawToBitmapData(param1:BitmapData) : void;

        public function copyToByteArray(param1:Rectangle, param2:ByteArray) : void;

        public function copyToVector(param1:Rectangle, param2:Vector.<uint>) : void;

        static function _scanHardware() : void;

        public static function get names() : Array;

        public static function get isSupported() : Boolean;

        public static function getCamera(param1:String = null) : Camera;

    }
}
