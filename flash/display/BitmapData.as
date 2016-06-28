package flash.display
{
    import __AS3__.vec.*;
    import flash.display.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.utils.*;

    public class BitmapData extends Object implements IBitmapDrawable
    {

        public function BitmapData(param1:int, param2:int, param3:Boolean = true, param4:uint = 4.29497e+009)
        {
            this.ctor(param1, param2, param3, param4);
            return;
        }// end function

        private function ctor(param1:int, param2:int, param3:Boolean, param4:uint) : void;

        public function clone() : BitmapData;

        public function get width() : int;

        public function get height() : int;

        public function get transparent() : Boolean;

        public function get rect() : Rectangle
        {
            return new Rectangle(0, 0, this.width, this.height);
        }// end function

        public function getPixel(param1:int, param2:int) : uint;

        public function getPixel32(param1:int, param2:int) : uint;

        public function setPixel(param1:int, param2:int, param3:uint) : void;

        public function setPixel32(param1:int, param2:int, param3:uint) : void;

        public function applyFilter(param1:BitmapData, param2:Rectangle, param3:Point, param4:BitmapFilter) : void;

        public function colorTransform(param1:Rectangle, param2:ColorTransform) : void;

        public function compare(param1:BitmapData) : Object;

        public function copyChannel(param1:BitmapData, param2:Rectangle, param3:Point, param4:uint, param5:uint) : void;

        public function copyPixels(param1:BitmapData, param2:Rectangle, param3:Point, param4:BitmapData = null, param5:Point = null, param6:Boolean = false) : void;

        public function dispose() : void;

        public function draw(param1:IBitmapDrawable, param2:Matrix = null, param3:ColorTransform = null, param4:String = null, param5:Rectangle = null, param6:Boolean = false) : void;

        public function drawWithQuality(param1:IBitmapDrawable, param2:Matrix = null, param3:ColorTransform = null, param4:String = null, param5:Rectangle = null, param6:Boolean = false, param7:String = null) : void;

        public function fillRect(param1:Rectangle, param2:uint) : void;

        public function floodFill(param1:int, param2:int, param3:uint) : void;

        public function generateFilterRect(param1:Rectangle, param2:BitmapFilter) : Rectangle;

        public function getColorBoundsRect(param1:uint, param2:uint, param3:Boolean = true) : Rectangle;

        public function getPixels(param1:Rectangle) : ByteArray;

        public function copyPixelsToByteArray(param1:Rectangle, param2:ByteArray) : void;

        public function getVector(param1:Rectangle) : Vector.<uint>;

        public function hitTest(param1:Point, param2:uint, param3:Object, param4:Point = null, param5:uint = 1) : Boolean;

        public function merge(param1:BitmapData, param2:Rectangle, param3:Point, param4:uint, param5:uint, param6:uint, param7:uint) : void;

        public function noise(param1:int, param2:uint = 0, param3:uint = 255, param4:uint = 7, param5:Boolean = false) : void;

        public function paletteMap(param1:BitmapData, param2:Rectangle, param3:Point, param4:Array = null, param5:Array = null, param6:Array = null, param7:Array = null) : void;

        public function perlinNoise(param1:Number, param2:Number, param3:uint, param4:int, param5:Boolean, param6:Boolean, param7:uint = 7, param8:Boolean = false, param9:Array = null) : void;

        public function pixelDissolve(param1:BitmapData, param2:Rectangle, param3:Point, param4:int = 0, param5:int = 0, param6:uint = 0) : int;

        public function scroll(param1:int, param2:int) : void;

        public function setPixels(param1:Rectangle, param2:ByteArray) : void;

        public function setVector(param1:Rectangle, param2:Vector.<uint>) : void;

        public function threshold(param1:BitmapData, param2:Rectangle, param3:Point, param4:String, param5:uint, param6:uint = 0, param7:uint = 4.29497e+009, param8:Boolean = false) : uint;

        public function lock() : void;

        public function unlock(param1:Rectangle = null) : void;

        public function histogram(param1:Rectangle = null) : Vector.<Vector.<Number>>;

        public function encode(param1:Rectangle, param2:Object, param3:ByteArray = null) : ByteArray;

    }
}
