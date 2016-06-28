package flash.filters
{

    public class ConvolutionFilter extends BitmapFilter
    {

        public function ConvolutionFilter(param1:Number = 0, param2:Number = 0, param3:Array = null, param4:Number = 1, param5:Number = 0, param6:Boolean = true, param7:Boolean = true, param8:uint = 0, param9:Number = 0)
        {
            this.matrixX = param1;
            this.matrixY = param2;
            if (param3 != null)
            {
                this.matrix = param3;
            }
            this.divisor = param4;
            this.bias = param5;
            this.preserveAlpha = param6;
            this.clamp = param7;
            this.color = param8;
            this.alpha = param9;
            return;
        }// end function

        public function get matrix() : Array;

        public function set matrix(param1:Array) : void;

        public function get matrixX() : Number;

        public function set matrixX(param1:Number) : void;

        public function get matrixY() : Number;

        public function set matrixY(param1:Number) : void;

        public function get divisor() : Number;

        public function set divisor(param1:Number) : void;

        public function get bias() : Number;

        public function set bias(param1:Number) : void;

        public function get preserveAlpha() : Boolean;

        public function set preserveAlpha(param1:Boolean) : void;

        public function get clamp() : Boolean;

        public function set clamp(param1:Boolean) : void;

        public function get color() : uint;

        public function set color(param1:uint) : void;

        public function get alpha() : Number;

        public function set alpha(param1:Number) : void;

        override public function clone() : BitmapFilter
        {
            return new ConvolutionFilter(this.matrixX, this.matrixY, this.matrix, this.divisor, this.bias, this.preserveAlpha, this.clamp, this.color, this.alpha);
        }// end function

    }
}
