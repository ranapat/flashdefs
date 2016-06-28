package 
{
    import Error.*;

    dynamic public class Error extends Object
    {
        public var message:Object;
        public var name:Object;
        private var _errorID:int;
        public static const length:int = 1;

        public function Error(param1 = "", param2 = 0)
        {
            this.message = param1;
            this._errorID = param2;
            this.name = prototype.name;
            return;
        }// end function

        public function getStackTrace() : String;

        public function get errorID() : int
        {
            return this._errorID;
        }// end function

        public static function getErrorMessage(param1:int) : String;

        public static function throwError(param1:Class, param2:uint, ... args)
        {
            args = new activation;
            var type:* = param1;
            var index:* = param2;
            var rest:* = args;
            var i:*;
            var f:* = function (param1, param2, param3)
            {
                var _loc_4:* = -1;
                switch(param1.charAt(1))
                {
                    case "1":
                    {
                        _loc_4 = 0;
                        break;
                    }
                    case "2":
                    {
                        _loc_4 = 1;
                        break;
                    }
                    case "3":
                    {
                        _loc_4 = 2;
                        break;
                    }
                    case "4":
                    {
                        _loc_4 = 3;
                        break;
                    }
                    case "5":
                    {
                        _loc_4 = 4;
                        break;
                    }
                    case "6":
                    {
                        _loc_4 = 5;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                if (_loc_4 > -1)
                {
                }
                if (rest.length > _loc_4)
                {
                    return rest[_loc_4];
                }
                return "";
            }// end function
            ;
            throw new (Error.getErrorMessage().replace(/%[0-9]/g, ), );
        }// end function

        prototype.name = "Error";
        prototype.message = "Error";
        prototype.toString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.message !== "" ? (_loc_1.name + ": " + _loc_1.message) : (_loc_1.name);
        }// end function
        ;
        _setPropertyIsEnumerable(prototype, "toString", false);
    }
}
