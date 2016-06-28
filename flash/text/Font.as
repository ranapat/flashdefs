package flash.text
{

    public class Font extends Object
    {

        public function Font()
        {
            return;
        }// end function

        public function get fontName() : String;

        public function get fontStyle() : String;

        public function get fontType() : String;

        public function hasGlyphs(param1:String) : Boolean;

        public static function enumerateFonts(param1:Boolean = false) : Array;

        public static function registerFont(param1:Class) : void;

    }
}
