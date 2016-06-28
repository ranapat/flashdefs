package flash.ui
{
    import __AS3__.vec.*;

    final public class Multitouch extends Object
    {

        public function Multitouch()
        {
            return;
        }// end function

        public static function get inputMode() : String;

        public static function set inputMode(param1:String) : void;

        public static function get supportsTouchEvents() : Boolean;

        public static function get supportsGestureEvents() : Boolean;

        public static function get supportedGestures() : Vector.<String>;

        public static function get maxTouchPoints() : int;

        public static function get mapTouchToMouse() : Boolean;

        public static function set mapTouchToMouse(param1:Boolean) : void;

    }
}
