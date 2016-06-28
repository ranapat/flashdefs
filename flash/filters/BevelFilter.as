package flash.filters
{

    final public class BevelFilter extends BitmapFilter
    {

        public function BevelFilter(param1:Number = 4, param2:Number = 45, param3:uint = 16777215, param4:Number = 1, param5:uint = 0, param6:Number = 1, param7:Number = 4, param8:Number = 4, param9:Number = 1, param10:int = 1, param11:String = "inner", param12:Boolean = false)
        {
            this.distance = param1;
            this.angle = param2;
            this.highlightColor = param3;
            this.highlightAlpha = param4;
            this.shadowColor = param5;
            this.shadowAlpha = param6;
            this.blurX = param7;
            this.blurY = param8;
            this.quality = param10;
            this.strength = param9;
            this.type = param11;
            this.knockout = param12;
            return;
        }// end function

        public function get distance() : Number;

        public function set distance(param1:Number) : void;

        public function get angle() : Number;

        public function set angle(param1:Number) : void;

        public function get highlightColor() : uint;

        public function set highlightColor(param1:uint) : void;

        public function get highlightAlpha() : Number;

        public function set highlightAlpha(param1:Number) : void;

        public function get shadowColor() : uint;

        public function set shadowColor(param1:uint) : void;

        public function get shadowAlpha() : Number;

        public function set shadowAlpha(param1:Number) : void;

        public function get blurX() : Number;

        public function set blurX(param1:Number) : void;

        public function get blurY() : Number;

        public function set blurY(param1:Number) : void;

        public function get knockout() : Boolean;

        public function set knockout(param1:Boolean) : void;

        public function get quality() : int;

        public function set quality(param1:int) : void;

        public function get strength() : Number;

        public function set strength(param1:Number) : void;

        public function get type() : String;

        public function set type(param1:String) : void;

        override public function clone() : BitmapFilter
        {
            return new BevelFilter(this.distance, this.angle, this.highlightColor, this.highlightAlpha, this.shadowColor, this.shadowAlpha, this.blurX, this.blurY, this.strength, this.quality, this.type, this.knockout);
        }// end function

    }
}
