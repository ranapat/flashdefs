package 
{

    final public class uint extends Object
    {
        public static const MIN_VALUE:uint = 0;
        public static const MAX_VALUE:uint = 4.29497e+009;
        public static const length:int = 1;

        public function uint(param1 = 0)
        {
            return;
        }// end function

        function toString(param1 = 10) : String
        {
            return Number(this).toString(param1);
        }// end function

        function valueOf() : uint
        {
            return this;
        }// end function

        function toExponential(param1 = 0) : String
        {
            return Number(this).toExponential(param1);
        }// end function

        function toPrecision(param1 = 0) : String
        {
            return Number(this).toPrecision(param1);
        }// end function

        function toFixed(param1 = 0) : String
        {
            return Number(this).toFixed(param1);
        }// end function

        with ({})
        {
            {}.toString = function (param1 = 10) : String
        {
            if (prototype === this)
            {
                return "0";
            }
            if (!(this is Number))
            {
                Error.throwError(TypeError, 1004, "uint.prototype.toString");
            }
            return Number(this).toString(param1);
        }// end function
        ;
        }
        var _loc_1:* = function (param1 = 10) : String
        {
            if (prototype === this)
            {
                return "0";
            }
            if (!(this is Number))
            {
                Error.throwError(TypeError, 1004, "uint.prototype.toString");
            }
            return Number(this).toString(param1);
        }// end function
        ;
        prototype.toString = function (param1 = 10) : String
        {
            if (prototype === this)
            {
                return "0";
            }
            if (!(this is Number))
            {
                Error.throwError(TypeError, 1004, "uint.prototype.toString");
            }
            return Number(this).toString(param1);
        }// end function
        ;
        prototype.toLocaleString = _loc_1;
        prototype.valueOf = function ()
        {
            if (prototype === this)
            {
                return 0;
            }
            if (!(this is uint))
            {
                Error.throwError(TypeError, 1004, "uint.prototype.valueOf");
            }
            return this;
        }// end function
        ;
        prototype.toExponential = function (param1 = 0) : String
        {
            return Number(this).toExponential(param1);
        }// end function
        ;
        prototype.toPrecision = function (param1 = 0) : String
        {
            return Number(this).toPrecision(param1);
        }// end function
        ;
        prototype.toFixed = function (param1 = 0) : String
        {
            return Number(this).toFixed(param1);
        }// end function
        ;
        _dontEnumPrototype(prototype);
    }
}
