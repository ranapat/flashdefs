package flash.globalization
{
    import __AS3__.vec.*;

    final public class LocaleID extends Object
    {
        public static const DEFAULT:String = "i-default";

        public function LocaleID(param1:String)
        {
            this.ctor(param1);
            return;
        }// end function

        private function ctor(param1:String) : void;

        public function getLanguage() : String;

        public function getRegion() : String;

        public function getScript() : String;

        public function getVariant() : String;

        public function get name() : String;

        public function getKeysAndValues() : Object;

        public function get lastOperationStatus() : String;

        public function isRightToLeft() : Boolean;

        public static function determinePreferredLocales(param1:Vector.<String>, param2:Vector.<String>, param3:String = "userinterface") : Vector.<String>;

    }
}
