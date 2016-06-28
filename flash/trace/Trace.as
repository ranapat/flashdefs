package flash.trace
{

    public class Trace extends Object
    {
        public static const OFF:int = 0;
        public static const METHODS:int = 1;
        public static const METHODS_WITH_ARGS:int = 2;
        public static const METHODS_AND_LINES:int = 3;
        public static const METHODS_AND_LINES_WITH_ARGS:int = 4;
        public static const FILE:Object = 1;
        public static const LISTENER:Object = 2;

        public function Trace()
        {
            return;
        }// end function

        public static function setLevel(param1:int, param2:int = 2);

        public static function getLevel(param1:int = 2) : int;

        public static function setListener(param1:Function);

        public static function getListener() : Function;

    }
}
