package flash.globalization
{
    import __AS3__.vec.*;

    final public class DateTimeFormatter extends Object
    {

        public function DateTimeFormatter(param1:String, param2:String = "long", param3:String = "long")
        {
            this.ctor(param1, param2, param3);
            return;
        }// end function

        private function ctor(param1:String, param2:String, param3:String) : void;

        public function setDateTimeStyles(param1:String, param2:String) : void;

        public function getTimeStyle() : String;

        public function getDateStyle() : String;

        public function get lastOperationStatus() : String;

        public function get requestedLocaleIDName() : String;

        public function get actualLocaleIDName() : String;

        public function format(param1:Date) : String
        {
            return this.formatImplementation(param1, false);
        }// end function

        private function formatImplementation(param1:Date, param2:Boolean) : String;

        public function formatUTC(param1:Date) : String
        {
            return this.formatImplementation(param1, true);
        }// end function

        public function getMonthNames(param1:String = "full", param2:String = "standalone") : Vector.<String>;

        public function getWeekdayNames(param1:String = "full", param2:String = "standalone") : Vector.<String>;

        public function getFirstWeekday() : int;

        public function getDateTimePattern() : String;

        public function setDateTimePattern(param1:String) : void;

        public static function getAvailableLocaleIDNames() : Vector.<String>;

    }
}
