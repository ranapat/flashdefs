package flash.globalization
{
    import __AS3__.vec.*;

    final public class CurrencyFormatter extends Object
    {

        public function CurrencyFormatter(param1:String)
        {
            this.ctor(param1);
            return;
        }// end function

        private function ctor(param1:String) : void;

        public function get currencyISOCode() : String;

        public function get currencySymbol() : String;

        public function setCurrency(param1:String, param2:String) : void;

        public function format(param1:Number, param2:Boolean = false) : String
        {
            return this.formatImplementation(param1, param2);
        }// end function

        private function formatImplementation(param1:Number, param2:Boolean) : String;

        public function formattingWithCurrencySymbolIsSafe(param1:String) : Boolean;

        public function parse(param1:String) : CurrencyParseResult;

        public function get lastOperationStatus() : String;

        public function get requestedLocaleIDName() : String;

        public function get actualLocaleIDName() : String;

        public function get fractionalDigits() : int;

        public function set fractionalDigits(param1:int) : void;

        public function get useGrouping() : Boolean;

        public function set useGrouping(param1:Boolean) : void;

        public function get groupingPattern() : String;

        public function set groupingPattern(param1:String) : void;

        public function get digitsType() : uint;

        public function set digitsType(param1:uint) : void;

        public function get decimalSeparator() : String;

        public function set decimalSeparator(param1:String) : void;

        public function get groupingSeparator() : String;

        public function set groupingSeparator(param1:String) : void;

        public function get negativeSymbol() : String;

        public function set negativeSymbol(param1:String) : void;

        public function get negativeCurrencyFormat() : uint;

        public function set negativeCurrencyFormat(param1:uint) : void;

        public function get positiveCurrencyFormat() : uint;

        public function set positiveCurrencyFormat(param1:uint) : void;

        public function get leadingZero() : Boolean;

        public function set leadingZero(param1:Boolean) : void;

        public function get trailingZeros() : Boolean;

        public function set trailingZeros(param1:Boolean) : void;

        public static function getAvailableLocaleIDNames() : Vector.<String>;

    }
}
