package flash.geom
{

    public class Matrix extends Object
    {
        public var a:Number;
        public var b:Number;
        public var c:Number;
        public var d:Number;
        public var tx:Number;
        public var ty:Number;

        public function Matrix(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 0, param6:Number = 0)
        {
            this.a = param1;
            this.b = param2;
            this.c = param3;
            this.d = param4;
            this.tx = param5;
            this.ty = param6;
            return;
        }// end function

        public function clone() : Matrix
        {
            return new Matrix(this.a, this.b, this.c, this.d, this.tx, this.ty);
        }// end function

        public function concat(param1:Matrix) : void
        {
            var _loc_2:* = this.a * param1.a;
            var _loc_3:* = 0;
            var _loc_4:* = 0;
            var _loc_5:* = this.d * param1.d;
            var _loc_6:* = this.tx * param1.a + param1.tx;
            var _loc_7:* = this.ty * param1.d + param1.ty;
            if (this.b == 0)
            {
            }
            if (this.c == 0)
            {
            }
            if (param1.b == 0)
            {
            }
            if (param1.c != 0)
            {
                _loc_2 = _loc_2 + this.b * param1.c;
                _loc_5 = _loc_5 + this.c * param1.b;
                _loc_3 = _loc_3 + (this.a * param1.b + this.b * param1.d);
                _loc_4 = _loc_4 + (this.c * param1.a + this.d * param1.c);
                _loc_6 = _loc_6 + this.ty * param1.c;
                _loc_7 = _loc_7 + this.tx * param1.b;
            }
            this.a = _loc_2;
            this.b = _loc_3;
            this.c = _loc_4;
            this.d = _loc_5;
            this.tx = _loc_6;
            this.ty = _loc_7;
            return;
        }// end function

        public function invert() : void
        {
            var _loc_1:* = NaN;
            var _loc_2:* = NaN;
            var _loc_3:* = NaN;
            var _loc_4:* = NaN;
            var _loc_5:* = NaN;
            var _loc_6:* = NaN;
            if (this.b == 0)
            {
            }
            if (this.c == 0)
            {
                this.a = 1 / this.a;
                this.d = 1 / this.d;
                var _loc_7:* = 0;
                this.c = 0;
                this.b = _loc_7;
                this.tx = (-this.a) * this.tx;
                this.ty = (-this.d) * this.ty;
            }
            else
            {
                _loc_1 = this.a;
                _loc_2 = this.b;
                _loc_3 = this.c;
                _loc_4 = this.d;
                _loc_5 = _loc_1 * _loc_4 - _loc_2 * _loc_3;
                if (_loc_5 == 0)
                {
                    this.identity();
                    return;
                }
                _loc_5 = 1 / _loc_5;
                this.a = _loc_4 * _loc_5;
                this.b = (-_loc_2) * _loc_5;
                this.c = (-_loc_3) * _loc_5;
                this.d = _loc_1 * _loc_5;
                _loc_6 = -(this.b * this.tx + this.d * this.ty);
                this.tx = -(this.a * this.tx + this.c * this.ty);
                this.ty = _loc_6;
            }
            return;
        }// end function

        public function identity() : void
        {
            var _loc_1:* = 1;
            this.d = 1;
            this.a = _loc_1;
            var _loc_1:* = 0;
            this.c = 0;
            this.b = _loc_1;
            var _loc_1:* = 0;
            this.ty = 0;
            this.tx = _loc_1;
            return;
        }// end function

        public function createBox(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0, param5:Number = 0) : void
        {
            var _loc_6:* = Math.cos(param3);
            var _loc_7:* = Math.sin(param3);
            this.a = _loc_6 * param1;
            this.b = _loc_7 * param2;
            this.c = (-_loc_7) * param1;
            this.d = _loc_6 * param2;
            this.tx = param4;
            this.ty = param5;
            return;
        }// end function

        public function createGradientBox(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0, param5:Number = 0) : void
        {
            this.createBox(param1 / 1638.4, param2 / 1638.4, param3, param4 + param1 / 2, param5 + param2 / 2);
            return;
        }// end function

        public function rotate(param1:Number) : void
        {
            var _loc_2:* = Math.cos(param1);
            var _loc_3:* = Math.sin(param1);
            var _loc_4:* = _loc_2 * this.a - _loc_3 * this.b;
            var _loc_5:* = _loc_3 * this.a + _loc_2 * this.b;
            var _loc_6:* = _loc_2 * this.c - _loc_3 * this.d;
            var _loc_7:* = _loc_3 * this.c + _loc_2 * this.d;
            var _loc_8:* = _loc_2 * this.tx - _loc_3 * this.ty;
            var _loc_9:* = _loc_3 * this.tx + _loc_2 * this.ty;
            this.a = _loc_4;
            this.b = _loc_5;
            this.c = _loc_6;
            this.d = _loc_7;
            this.tx = _loc_8;
            this.ty = _loc_9;
            return;
        }// end function

        public function translate(param1:Number, param2:Number) : void
        {
            this.tx = this.tx + param1;
            this.ty = this.ty + param2;
            return;
        }// end function

        public function scale(param1:Number, param2:Number) : void
        {
            this.a = this.a * param1;
            this.b = this.b * param2;
            this.c = this.c * param1;
            this.d = this.d * param2;
            this.tx = this.tx * param1;
            this.ty = this.ty * param2;
            return;
        }// end function

        public function deltaTransformPoint(param1:Point) : Point
        {
            return new Point(this.a * param1.x + this.c * param1.y, this.d * param1.y + this.b * param1.x);
        }// end function

        public function transformPoint(param1:Point) : Point
        {
            return new Point(this.a * param1.x + this.c * param1.y + this.tx, this.d * param1.y + this.b * param1.x + this.ty);
        }// end function

        public function toString() : String
        {
            return "(a=" + this.a + ", b=" + this.b + ", c=" + this.c + ", d=" + this.d + ", tx=" + this.tx + ", ty=" + this.ty + ")";
        }// end function

        public function copyFrom(param1:Matrix) : void
        {
            this.a = param1.a;
            this.b = param1.b;
            this.c = param1.c;
            this.d = param1.d;
            this.tx = param1.tx;
            this.ty = param1.ty;
            return;
        }// end function

        public function setTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
        {
            this.a = param1;
            this.b = param2;
            this.c = param3;
            this.d = param4;
            this.tx = param5;
            this.ty = param6;
            return;
        }// end function

        public function copyRowTo(param1:uint, param2:Vector3D) : void
        {
            switch(param1)
            {
                case 0:
                {
                    param2.x = this.a;
                    param2.y = this.c;
                    param2.z = this.tx;
                    break;
                }
                case 1:
                {
                    param2.x = this.b;
                    param2.y = this.d;
                    param2.z = this.ty;
                    break;
                }
                case 2:
                {
                    param2.x = 0;
                    param2.y = 0;
                    param2.z = 1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function copyColumnTo(param1:uint, param2:Vector3D) : void
        {
            switch(param1)
            {
                case 0:
                {
                    param2.x = this.a;
                    param2.y = this.b;
                    param2.z = 0;
                    break;
                }
                case 1:
                {
                    param2.x = this.c;
                    param2.y = this.d;
                    param2.z = 0;
                    break;
                }
                case 2:
                {
                    param2.x = this.tx;
                    param2.y = this.ty;
                    param2.z = 1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function copyRowFrom(param1:uint, param2:Vector3D) : void
        {
            switch(param1)
            {
                case 0:
                {
                    this.a = param2.x;
                    this.c = param2.y;
                    this.tx = param2.z;
                    break;
                }
                case 1:
                {
                    this.b = param2.x;
                    this.d = param2.y;
                    this.ty = param2.z;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function copyColumnFrom(param1:uint, param2:Vector3D) : void
        {
            switch(param1)
            {
                case 0:
                {
                    this.a = param2.x;
                    this.c = param2.y;
                    this.tx = param2.z;
                    break;
                }
                case 1:
                {
                    this.b = param2.x;
                    this.d = param2.y;
                    this.ty = param2.z;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}
