package flash.filters
{
    import flash.display.*;
    import flash.geom.*;

    final public class DisplacementMapFilter extends BitmapFilter
    {

        public function DisplacementMapFilter(param1:BitmapData = null, param2:Point = null, param3:uint = 0, param4:uint = 0, param5:Number = 0, param6:Number = 0, param7:String = "wrap", param8:uint = 0, param9:Number = 0)
        {
            if (param1 != null)
            {
                this.mapBitmap = param1;
            }
            if (param2 != null)
            {
                this.mapPoint = param2;
            }
            this.componentX = param3;
            this.componentY = param4;
            this.scaleX = param5;
            this.scaleY = param6;
            this.mode = param7;
            this.color = param8;
            this.alpha = param9;
            return;
        }// end function

        public function get mapBitmap() : BitmapData;

        public function set mapBitmap(param1:BitmapData) : void;

        public function get mapPoint() : Point;

        public function set mapPoint(param1:Point) : void;

        public function get componentX() : uint;

        public function set componentX(param1:uint) : void;

        public function get componentY() : uint;

        public function set componentY(param1:uint) : void;

        public function get scaleX() : Number;

        public function set scaleX(param1:Number) : void;

        public function get scaleY() : Number;

        public function set scaleY(param1:Number) : void;

        public function get mode() : String;

        public function set mode(param1:String) : void;

        public function get color() : uint;

        public function set color(param1:uint) : void;

        public function get alpha() : Number;

        public function set alpha(param1:Number) : void;

        override public function clone() : BitmapFilter
        {
            return new DisplacementMapFilter(this.mapBitmap, this.mapPoint, this.componentX, this.componentY, this.scaleX, this.scaleY, this.mode, this.color, this.alpha);
        }// end function

    }
}
