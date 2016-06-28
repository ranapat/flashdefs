package flash.geom
{

    public class Rectangle extends Object
    {
        public var x:Number;
        public var y:Number;
        public var width:Number;
        public var height:Number;

        public function Rectangle(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
        {
            this.x = param1;
            this.y = param2;
            this.width = param3;
            this.height = param4;
            return;
        }// end function

        public function get left() : Number
        {
            return this.x;
        }// end function

        public function set left(param1:Number) : void
        {
            this.width = this.width + (this.x - param1);
            this.x = param1;
            return;
        }// end function

        public function get right() : Number
        {
            return this.x + this.width;
        }// end function

        public function set right(param1:Number) : void
        {
            this.width = param1 - this.x;
            return;
        }// end function

        public function get top() : Number
        {
            return this.y;
        }// end function

        public function set top(param1:Number) : void
        {
            this.height = this.height + (this.y - param1);
            this.y = param1;
            return;
        }// end function

        public function get bottom() : Number
        {
            return this.y + this.height;
        }// end function

        public function set bottom(param1:Number) : void
        {
            this.height = param1 - this.y;
            return;
        }// end function

        public function get topLeft() : Point
        {
            return new Point(this.x, this.y);
        }// end function

        public function set topLeft(param1:Point) : void
        {
            this.width = this.width + (this.x - param1.x);
            this.height = this.height + (this.y - param1.y);
            this.x = param1.x;
            this.y = param1.y;
            return;
        }// end function

        public function get bottomRight() : Point
        {
            return new Point(this.right, this.bottom);
        }// end function

        public function set bottomRight(param1:Point) : void
        {
            this.width = param1.x - this.x;
            this.height = param1.y - this.y;
            return;
        }// end function

        public function get size() : Point
        {
            return new Point(this.width, this.height);
        }// end function

        public function set size(param1:Point) : void
        {
            this.width = param1.x;
            this.height = param1.y;
            return;
        }// end function

        public function clone() : Rectangle
        {
            return new Rectangle(this.x, this.y, this.width, this.height);
        }// end function

        public function isEmpty() : Boolean
        {
            if (this.width > 0)
            {
            }
            return this.height <= 0;
        }// end function

        public function setEmpty() : void
        {
            this.x = 0;
            this.y = 0;
            this.width = 0;
            this.height = 0;
            return;
        }// end function

        public function inflate(param1:Number, param2:Number) : void
        {
            this.x = this.x - param1;
            this.width = this.width + 2 * param1;
            this.y = this.y - param2;
            this.height = this.height + 2 * param2;
            return;
        }// end function

        public function inflatePoint(param1:Point) : void
        {
            this.x = this.x - param1.x;
            this.width = this.width + 2 * param1.x;
            this.y = this.y - param1.y;
            this.height = this.height + 2 * param1.y;
            return;
        }// end function

        public function offset(param1:Number, param2:Number) : void
        {
            this.x = this.x + param1;
            this.y = this.y + param2;
            return;
        }// end function

        public function offsetPoint(param1:Point) : void
        {
            this.x = this.x + param1.x;
            this.y = this.y + param1.y;
            return;
        }// end function

        public function contains(param1:Number, param2:Number) : Boolean
        {
            if (param1 >= this.x)
            {
            }
            if (param1 < this.x + this.width)
            {
            }
            if (param2 >= this.y)
            {
            }
            return param2 < this.y + this.height;
        }// end function

        public function containsPoint(param1:Point) : Boolean
        {
            if (param1.x >= this.x)
            {
            }
            if (param1.x < this.x + this.width)
            {
            }
            if (param1.y >= this.y)
            {
            }
            return param1.y < this.y + this.height;
        }// end function

        public function containsRect(param1:Rectangle) : Boolean
        {
            var _loc_2:* = param1.x + param1.width;
            var _loc_3:* = param1.y + param1.height;
            var _loc_4:* = this.x + this.width;
            var _loc_5:* = this.y + this.height;
            if (param1.x >= this.x)
            {
            }
            if (param1.x < _loc_4)
            {
            }
            if (param1.y >= this.y)
            {
            }
            if (param1.y < _loc_5)
            {
            }
            if (_loc_2 > this.x)
            {
            }
            if (_loc_2 <= _loc_4)
            {
            }
            if (_loc_3 > this.y)
            {
            }
            return _loc_3 <= _loc_5;
        }// end function

        public function intersection(param1:Rectangle) : Rectangle
        {
            var _loc_2:* = new Rectangle();
            if (!this.isEmpty())
            {
                this.isEmpty();
            }
            if (param1.isEmpty())
            {
                _loc_2.setEmpty();
                return _loc_2;
            }
            _loc_2.x = Math.max(this.x, param1.x);
            _loc_2.y = Math.max(this.y, param1.y);
            _loc_2.width = Math.min(this.x + this.width, param1.x + param1.width) - _loc_2.x;
            _loc_2.height = Math.min(this.y + this.height, param1.y + param1.height) - _loc_2.y;
            if (_loc_2.width > 0)
            {
            }
            if (_loc_2.height <= 0)
            {
                _loc_2.setEmpty();
            }
            return _loc_2;
        }// end function

        public function intersects(param1:Rectangle) : Boolean
        {
            if (!this.isEmpty())
            {
                this.isEmpty();
            }
            if (param1.isEmpty())
            {
                return false;
            }
            var _loc_2:* = Math.max(this.x, param1.x);
            var _loc_3:* = Math.max(this.y, param1.y);
            var _loc_4:* = Math.min(this.x + this.width, param1.x + param1.width) - _loc_2;
            var _loc_5:* = Math.min(this.y + this.height, param1.y + param1.height) - _loc_3;
            if (_loc_4 > 0)
            {
            }
            if (_loc_5 <= 0)
            {
                return false;
            }
            return true;
        }// end function

        public function union(param1:Rectangle) : Rectangle
        {
            var _loc_2:* = null;
            if (this.isEmpty())
            {
                return param1.clone();
            }
            if (param1.isEmpty())
            {
                return this.clone();
            }
            _loc_2 = new Rectangle();
            _loc_2.x = Math.min(this.x, param1.x);
            _loc_2.y = Math.min(this.y, param1.y);
            _loc_2.width = Math.max(this.x + this.width, param1.x + param1.width) - _loc_2.x;
            _loc_2.height = Math.max(this.y + this.height, param1.y + param1.height) - _loc_2.y;
            return _loc_2;
        }// end function

        public function equals(param1:Rectangle) : Boolean
        {
            if (param1.x == this.x)
            {
            }
            if (param1.y == this.y)
            {
            }
            if (param1.width == this.width)
            {
            }
            return param1.height == this.height;
        }// end function

        public function toString() : String
        {
            return "(x=" + this.x + ", y=" + this.y + ", w=" + this.width + ", h=" + this.height + ")";
        }// end function

        public function copyFrom(param1:Rectangle) : void
        {
            this.x = param1.x;
            this.y = param1.y;
            this.width = param1.width;
            this.height = param1.height;
            return;
        }// end function

        public function setTo(param1:Number, param2:Number, param3:Number, param4:Number) : void
        {
            this.x = param1;
            this.y = param2;
            this.width = param3;
            this.height = param4;
            return;
        }// end function

    }
}
