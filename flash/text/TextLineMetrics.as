package flash.text
{

    public class TextLineMetrics extends Object
    {
        public var x:Number;
        public var width:Number;
        public var height:Number;
        public var ascent:Number;
        public var descent:Number;
        public var leading:Number;

        public function TextLineMetrics(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number)
        {
            this.x = param1;
            this.width = param2;
            this.height = param3;
            this.ascent = param4;
            this.descent = param5;
            this.leading = param6;
            return;
        }// end function

    }
}
