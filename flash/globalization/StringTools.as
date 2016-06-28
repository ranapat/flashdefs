package flash.globalization
{
    import __AS3__.vec.*;

    final public class StringTools extends Object
    {

        public function StringTools(param1:String)
        {
            this.ctor(param1);
            return;
        }// end function

        private function ctor(param1:String) : void;

        public function get lastOperationStatus() : String;

        public function get requestedLocaleIDName() : String;

        public function get actualLocaleIDName() : String;

        public function toLowerCase(param1:String) : String;

        public function toUpperCase(param1:String) : String;

        public static function getAvailableLocaleIDNames() : Vector.<String>;

    }
}
