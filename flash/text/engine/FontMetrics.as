package flash.text.engine
{
    import flash.geom.*;

    final public class FontMetrics extends Object
    {
        public var emBox:Rectangle;
        public var strikethroughOffset:Number;
        public var strikethroughThickness:Number;
        public var underlineOffset:Number;
        public var underlineThickness:Number;
        public var subscriptOffset:Number;
        public var subscriptScale:Number;
        public var superscriptOffset:Number;
        public var superscriptScale:Number;
        public var lineGap:Number;

        public function FontMetrics(param1:Rectangle, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number = 0)
        {
            this.emBox = param1;
            this.strikethroughOffset = param2;
            this.strikethroughThickness = param3;
            this.underlineOffset = param4;
            this.underlineThickness = param5;
            this.subscriptOffset = param6;
            this.subscriptScale = param7;
            this.superscriptOffset = param8;
            this.superscriptScale = param9;
            this.lineGap = param10;
            return;
        }// end function

    }
}
