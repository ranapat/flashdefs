package flash.text.engine
{

    final public class FontDescription extends Object
    {

        public function FontDescription(param1:String = "_serif", param2:String = "normal", param3:String = "normal", param4:String = "device", param5:String = "cff", param6:String = "horizontalStem")
        {
            this.fontName = param1;
            this.fontWeight = param2;
            this.fontPosture = param3;
            this.fontLookup = param4;
            this.renderingMode = param5;
            this.cffHinting = param6;
            return;
        }// end function

        public function get renderingMode() : String;

        public function set renderingMode(param1:String) : void;

        public function get fontLookup() : String;

        public function set fontLookup(param1:String) : void;

        public function get fontName() : String;

        public function set fontName(param1:String) : void;

        public function get fontPosture() : String;

        public function set fontPosture(param1:String) : void;

        public function get fontWeight() : String;

        public function set fontWeight(param1:String) : void;

        public function get cffHinting() : String;

        public function set cffHinting(param1:String) : void;

        public function get locked() : Boolean;

        public function set locked(param1:Boolean) : void;

        public function clone() : FontDescription
        {
            return new FontDescription(this.fontName, this.fontWeight, this.fontPosture, this.fontLookup, this.renderingMode, this.cffHinting);
        }// end function

        public static function isFontCompatible(param1:String, param2:String, param3:String) : Boolean;

        public static function isDeviceFontCompatible(param1:String, param2:String, param3:String) : Boolean;

    }
}
