package flash.display
{
    import __AS3__.vec.*;
    import flash.display3D.*;
    import flash.events.*;

    public class Stage3D extends EventDispatcher
    {

        public function Stage3D()
        {
            return;
        }// end function

        public function get context3D() : Context3D;

        public function requestContext3D(param1:String = "auto", param2:String = "baseline") : void;

        public function requestContext3DMatchingProfiles(param1:Vector.<String>) : void;

        public function get x() : Number;

        public function set x(param1:Number) : void;

        public function get y() : Number;

        public function set y(param1:Number) : void;

        public function get visible() : Boolean;

        public function set visible(param1:Boolean) : void;

    }
}
