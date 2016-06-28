package flash.system
{
    import flash.events.*;

    final public class IME extends EventDispatcher
    {

        public function IME()
        {
            return;
        }// end function

        public static function get enabled() : Boolean;

        public static function set enabled(param1:Boolean) : void;

        public static function get conversionMode() : String;

        public static function set conversionMode(param1:String) : void;

        public static function setCompositionString(param1:String) : void;

        public static function doConversion() : void;

        public static function compositionSelectionChanged(param1:int, param2:int) : void;

        public static function compositionAbandoned() : void;

        public static function get isSupported() : Boolean
        {
            return _checkSupported();
        }// end function

        private static function _checkSupported() : Boolean;

    }
}
