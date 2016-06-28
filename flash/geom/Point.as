package flash.geom
{

    public class Point extends Object
    {
        public var x:Number;
        public var y:Number;

        public function Point(param1:Number = 0, param2:Number = 0)
        {
            this.x = param1;
            this.y = param2;
            return;
        }// end function

        public function get length() : Number
        {
            return Math.sqrt(this.x * this.x + this.y * this.y);
        }// end function

        public function clone() : Point
        {
            return new Point(this.x, this.y);
        }// end function

        public function offset(param1:Number, param2:Number) : void
        {
            this.x = this.x + param1;
            this.y = this.y + param2;
            return;
        }// end function

        public function equals(param1:Point) : Boolean
        {
            if (param1.x == this.x)
            {
            }
            return param1.y == this.y;
        }// end function

        public function subtract(param1:Point) : Point
        {
            return new Point(this.x - param1.x, this.y - param1.y);
        }// end function

        public function add(param1:Point) : Point
        {
            return new Point(this.x + param1.x, this.y + param1.y);
        }// end function

        public function normalize(param1:Number) : void
        {
            var _loc_2:* = this.length;
            if (_loc_2 > 0)
            {
                _loc_2 = param1 / _loc_2;
                this.x = this.x * _loc_2;
                this.y = this.y * _loc_2;
            }
            return;
        }// end function

        public function toString() : String
        {
            return "(x=" + this.x + ", y=" + this.y + ")";
        }// end function

        public function copyFrom(param1:Point) : void
        {
            this.x = param1.x;
            this.y = param1.y;
            return;
        }// end function

        public function setTo(param1:Number, param2:Number) : void
        {
            this.x = param1;
            this.y = param2;
            return;
        }// end function

        public static function interpolate(param1:Point, param2:Point, param3:Number) : Point
        {
            return new Point(param2.x + param3 * (param1.x - param2.x), param2.y + param3 * (param1.y - param2.y));
        }// end function

        public static function distance(param1:Point, param2:Point) : Number
        {
            return param1.subtract(param2).length;
        }// end function

        public static function polar(param1:Number, param2:Number) : Point
        {
            return new Point(param1 * Math.cos(param2), param1 * Math.sin(param2));
        }// end function

    }
}
