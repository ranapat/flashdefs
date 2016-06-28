package flash.automation
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    public class StageCapture extends EventDispatcher
    {
        public static const CURRENT:String = "current";
        public static const NEXT:String = "next";
        public static const MULTIPLE:String = "multiple";
        public static const RASTER:String = "raster";
        public static const STAGE:String = "stage";
        public static const SCREEN:String = "screen";

        public function StageCapture()
        {
            return;
        }// end function

        public function capture(param1:String) : void;

        public function cancel() : void;

        public function set fileNameBase(param1:String) : void;

        public function get fileNameBase() : String;

        public function set clipRect(param1:Rectangle) : void;

        public function get clipRect() : Rectangle;

        public function captureBitmapData() : BitmapData;

        public function set captureSource(param1:String) : void;

        public function get captureSource() : String;

    }
}
