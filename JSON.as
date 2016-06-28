package 
{
    import JSON.*;

    final public class JSON extends Object
    {
        private static const as3ns:Namespace = http://adobe.com/AS3/2006/builtin;

        public function JSON()
        {
            return;
        }// end function

        private static function parseCore(param1:String) : Object;

        private static function stringifySpecializedToString(param1:Object, param2:Array, param3:Function, param4:String) : String;

        public static function parse(param1:String, param2:Function = null) : Object
        {
            if (param1 !== null)
            {
            }
            if (param1 === undefined)
            {
                Error.throwError(SyntaxError, 1132);
            }
            var _loc_3:* = parseCore(param1);
            if (param2 === null)
            {
                return _loc_3;
            }
            return new Walker(param2).walk({"":_loc_3}, "");
        }// end function

        public static function stringify(param1:Object, param2 = null, param3 = null) : String
        {
            if (param2 !== null)
            {
            }
            if (!(param2 is Function))
            {
            }
            if (!(param2 is Array))
            {
                Error.throwError(TypeError, 1131);
            }
            var _loc_4:* = false;
            if (param3 !== null)
            {
            }
            if (!(param3 is String))
            {
            }
            if (!(param3 is Number))
            {
            }
            if (!_loc_4)
            {
                param3 = null;
            }
            var _loc_5:* = "";
            if (param3 is String)
            {
                _loc_5 = param3.length > 10 ? (param3.substring(0, 10)) : (param3);
            }
            else
            {
                if (!(param3 is Number))
                {
                }
                if (_loc_4)
                {
                    _loc_5 = "          ".substring(0, Math.min(10, Math.floor(param3)));
                }
            }
            if (param2 === null)
            {
                return stringifySpecializedToString(param1, null, null, _loc_5);
            }
            if (param2 is Array)
            {
                return stringifySpecializedToString(param1, computePropertyList(param2), null, _loc_5);
            }
            return stringifySpecializedToString(param1, null, param2, _loc_5);
        }// end function

        private static function computePropertyList(param1:Array) : Array
        {
            var _loc_6:* = undefined;
            var _loc_7:* = null;
            var _loc_8:* = false;
            var _loc_2:* = [];
            var _loc_3:* = {};
            var _loc_4:* = 0;
            var _loc_5:* = param1.length;
            while (_loc_4 < _loc_5)
            {
                
                if (!param1.hasOwnProperty(_loc_4))
                {
                }
                else
                {
                    _loc_6 = param1[_loc_4];
                    _loc_7 = null;
                    _loc_8 = false;
                    if (_loc_6 is String)
                    {
                        _loc_7 = _loc_6;
                    }
                    else
                    {
                        if (!(_loc_6 is Number))
                        {
                        }
                        if (_loc_8)
                        {
                            _loc_7 = String(_loc_6);
                        }
                    }
                    if (_loc_7 !== null)
                    {
                    }
                    if (!_loc_3[_loc_7])
                    {
                        _loc_3[_loc_7] = true;
                        _loc_2[_loc_2.length] = _loc_7;
                    }
                }
                _loc_4 = _loc_4 + 1;
            }
            return _loc_2;
        }// end function

    }
}
