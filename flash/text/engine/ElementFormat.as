package flash.text.engine
{

    final public class ElementFormat extends Object
    {

        public function ElementFormat(param1:FontDescription = null, param2:Number = 12, param3:uint = 0, param4:Number = 1, param5:String = "auto", param6:String = "roman", param7:String = "useDominantBaseline", param8:Number = 0, param9:String = "on", param10:Number = 0, param11:Number = 0, param12:String = "en", param13:String = "auto", param14:String = "default", param15:String = "default", param16:String = "common", param17:String = "default")
        {
            this.fontDescription = param1 ? (param1) : (new FontDescription());
            this.fontSize = param2;
            this.color = param3;
            this.alpha = param4;
            this.textRotation = param5;
            this.dominantBaseline = param6;
            this.alignmentBaseline = param7;
            this.baselineShift = param8;
            this.kerning = param9;
            this.trackingRight = param10;
            this.trackingLeft = param11;
            this.locale = param12;
            this.breakOpportunity = param13;
            this.digitCase = param14;
            this.digitWidth = param15;
            this.ligatureLevel = param16;
            this.typographicCase = param17;
            return;
        }// end function

        public function get alignmentBaseline() : String;

        public function set alignmentBaseline(param1:String) : void;

        public function get alpha() : Number;

        public function set alpha(param1:Number) : void;

        public function get baselineShift() : Number;

        public function set baselineShift(param1:Number) : void;

        public function get breakOpportunity() : String;

        public function set breakOpportunity(param1:String) : void;

        public function get color() : uint;

        public function set color(param1:uint) : void;

        public function get dominantBaseline() : String;

        public function set dominantBaseline(param1:String) : void;

        public function get fontDescription() : FontDescription;

        public function set fontDescription(param1:FontDescription) : void;

        public function get digitCase() : String;

        public function set digitCase(param1:String) : void;

        public function get digitWidth() : String;

        public function set digitWidth(param1:String) : void;

        public function get ligatureLevel() : String;

        public function set ligatureLevel(param1:String) : void;

        public function get fontSize() : Number;

        public function set fontSize(param1:Number) : void;

        public function get kerning() : String;

        public function set kerning(param1:String) : void;

        public function get locale() : String;

        public function set locale(param1:String) : void;

        public function get textRotation() : String;

        public function set textRotation(param1:String) : void;

        public function get trackingRight() : Number;

        public function set trackingRight(param1:Number) : void;

        public function get trackingLeft() : Number;

        public function set trackingLeft(param1:Number) : void;

        public function get typographicCase() : String;

        public function set typographicCase(param1:String) : void;

        public function get locked() : Boolean;

        public function set locked(param1:Boolean) : void;

        public function getFontMetrics() : FontMetrics;

        public function clone() : ElementFormat
        {
            return new ElementFormat(this.fontDescription ? (this.fontDescription.clone()) : (null), this.fontSize, this.color, this.alpha, this.textRotation, this.dominantBaseline, this.alignmentBaseline, this.baselineShift, this.kerning, this.trackingRight, this.trackingLeft, this.locale, this.breakOpportunity, this.digitCase, this.digitWidth, this.ligatureLevel, this.typographicCase);
        }// end function

    }
}
