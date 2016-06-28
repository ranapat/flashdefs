package 
{
    import String.*;

    final public class String extends Object
    {
        public static const length:int = 1;

        public function String(param1 = "")
        {
            return;
        }// end function

        public function get length() : int;

        private function _indexOf(param1:String, param2:int = 0) : int;

        function indexOf(param1:String = "undefined", param2:Number = 0) : int;

        private function _lastIndexOf(param1:String, param2:int = 2147483647) : int;

        function lastIndexOf(param1:String = "undefined", param2:Number = 2147483647) : int;

        function charAt(param1:Number = 0) : String;

        function charCodeAt(param1:Number = 0) : Number;

        function concat(... args) : String
        {
            args = this;
            var _loc_3:* = 0;
            var _loc_4:* = args.length;
            while (_loc_3 < _loc_4)
            {
                
                args = args + String(args[_loc_3]);
                _loc_3 = _loc_3 + 1;
            }
            return args;
        }// end function

        function localeCompare(param1 = undefined) : int;

        function match(param1 = undefined) : Array
        {
            return _match(this, param1);
        }// end function

        function replace(param1 = undefined, param2 = undefined) : String
        {
            return _replace(this, param1, param2);
        }// end function

        function search(param1 = undefined) : int
        {
            return _search(this, param1);
        }// end function

        private function _slice(param1:int = 0, param2:int = 2147483647) : String;

        function slice(param1:Number = 0, param2:Number = 2147483647) : String;

        function split(param1 = undefined, param2 = 4.29497e+009) : Array
        {
            if (param2 == undefined)
            {
                param2 = 4294967295;
            }
            return _split(this, param1, param2);
        }// end function

        private function _substring(param1:int = 0, param2:int = 2147483647) : String;

        function substring(param1:Number = 0, param2:Number = 2147483647) : String;

        private function _substr(param1:int = 0, param2:int = 2147483647) : String;

        function substr(param1:Number = 0, param2:Number = 2147483647) : String;

        function toLowerCase() : String;

        function toLocaleLowerCase() : String
        {
            return this.toLowerCase();
        }// end function

        function toUpperCase() : String;

        function toLocaleUpperCase() : String
        {
            return this.toUpperCase();
        }// end function

        function toString() : String
        {
            return this;
        }// end function

        function valueOf() : String
        {
            return this;
        }// end function

        static function fromCharCode(... args) : String;

        private static function _match(param1:String, param2) : Array;

        private static function _replace(param1:String, param2, param3) : String;

        private static function _search(param1:String, param2) : int;

        private static function _split(param1:String, param2, param3:uint) : Array;

        String.fromCharCode = function (... args)
        {
            args = args.length;
            if (args == 1)
            {
                return fromCharCode(args[0]);
            }
            var _loc_3:* = "";
            var _loc_4:* = 0;
            while (_loc_4 < args)
            {
                
                _loc_3 = _loc_3 + fromCharCode(args[_loc_4]);
                _loc_4 = _loc_4 + 1;
            }
            return _loc_3;
        }// end function
        ;
        prototype.indexOf = function (param1:String = "undefined", param2:Number = 0) : int
        {
            return String(this).indexOf(param1, param2);
        }// end function
        ;
        prototype.lastIndexOf = function (param1:String = "undefined", param2:Number = 2147483647) : int
        {
            return String(this).lastIndexOf(param1, param2);
        }// end function
        ;
        prototype.charAt = function (param1:Number = 0) : String
        {
            return String(this).charAt(param1);
        }// end function
        ;
        prototype.charCodeAt = function (param1:Number = 0) : Number
        {
            return String(this).charCodeAt(param1);
        }// end function
        ;
        prototype.concat = function (... args) : String
        {
            args = String(this);
            var _loc_3:* = 0;
            var _loc_4:* = args.length;
            while (_loc_3 < _loc_4)
            {
                
                args = args + String(args[_loc_3]);
                _loc_3 = _loc_3 + 1;
            }
            return args;
        }// end function
        ;
        prototype.localeCompare = function (param1 = undefined) : int
        {
            return String(this).localeCompare(param1);
        }// end function
        ;
        prototype.match = function (param1 = undefined) : Array
        {
            return _match(String(this), param1);
        }// end function
        ;
        prototype.replace = function (param1 = undefined, param2 = undefined) : String
        {
            return _replace(String(this), param1, param2);
        }// end function
        ;
        prototype.search = function (param1 = undefined) : int
        {
            return _search(String(this), param1);
        }// end function
        ;
        prototype.slice = function (param1:Number = 0, param2:Number = 2147483647) : String
        {
            return String(this).slice(param1, param2);
        }// end function
        ;
        prototype.split = function (param1 = undefined, param2 = 4.29497e+009) : Array
        {
            if (param2 == undefined)
            {
                param2 = 4294967295;
            }
            return _split(String(this), param1, param2);
        }// end function
        ;
        prototype.substring = function (param1:Number = 0, param2:Number = 2147483647) : String
        {
            return String(this).substring(param1, param2);
        }// end function
        ;
        prototype.substr = function (param1:Number = 0, param2:Number = 2147483647) : String
        {
            return String(this).substr(param1, param2);
        }// end function
        ;
        var _loc_1:* = function () : String
        {
            return String(this).toLowerCase();
        }// end function
        ;
        prototype.toLocaleLowerCase = function () : String
        {
            return String(this).toLowerCase();
        }// end function
        ;
        prototype.toLowerCase = _loc_1;
        var _loc_1:* = function () : String
        {
            return String(this).toUpperCase();
        }// end function
        ;
        prototype.toLocaleUpperCase = function () : String
        {
            return String(this).toUpperCase();
        }// end function
        ;
        prototype.toUpperCase = _loc_1;
        prototype.toString = function () : String
        {
            if (prototype === this)
            {
                return "";
            }
            if (!(this is String))
            {
                Error.throwError(TypeError, 1004, "String.prototype.toString");
            }
            return this;
        }// end function
        ;
        prototype.valueOf = function ()
        {
            if (prototype === this)
            {
                return "";
            }
            if (!(this is String))
            {
                Error.throwError(TypeError, 1004, "String.prototype.valueOf");
            }
            return this;
        }// end function
        ;
        _dontEnumPrototype(prototype);
    }
}
