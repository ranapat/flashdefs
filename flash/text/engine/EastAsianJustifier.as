package flash.text.engine
{

    final public class EastAsianJustifier extends TextJustifier
    {

        public function EastAsianJustifier(param1:String = "ja", param2:String = "allButLast", param3:String = "pushInKinsoku")
        {
            super(param1, param2);
            this.justificationStyle = param3;
            return;
        }// end function

        public function get justificationStyle() : String;

        public function set justificationStyle(param1:String) : void;

        public function get composeTrailingIdeographicSpaces() : Boolean;

        public function set composeTrailingIdeographicSpaces(param1:Boolean) : void;

        override public function clone() : TextJustifier
        {
            var _loc_1:* = new EastAsianJustifier(this.locale, this.lineJustification, this.justificationStyle);
            _loc_1.composeTrailingIdeographicSpaces = this.composeTrailingIdeographicSpaces;
            return _loc_1;
        }// end function

    }
}
