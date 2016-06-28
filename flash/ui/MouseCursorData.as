package flash.ui
{
    import __AS3__.vec.*;
    import flash.geom.*;

    final public class MouseCursorData extends Object
    {

        public function MouseCursorData()
        {
            return;
        }// end function

        public function get data() : Vector.<BitmapData>;

        public function set data(param1:Vector.<BitmapData>) : void;

        public function get hotSpot() : Point;

        public function set hotSpot(param1:Point) : void;

        public function get frameRate() : Number;

        public function set frameRate(param1:Number) : void;

    }
}
