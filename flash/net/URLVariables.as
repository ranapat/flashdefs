package flash.net
{

    dynamic public class URLVariables extends Object
    {

        public function URLVariables(param1:String = null)
        {
            if (param1 != null)
            {
                this.decode(param1);
            }
            return;
        }// end function

        public function decode(param1:String) : void
        {
            var _loc_4:* = null;
            var _loc_5:* = 0;
            var _loc_6:* = null;
            var _loc_7:* = null;
            var _loc_8:* = undefined;
            var _loc_2:* = param1.split("&");
            var _loc_3:* = 0;
            while (_loc_3 < _loc_2.length)
            {
                
                _loc_4 = _loc_2[_loc_3];
                _loc_5 = _loc_4.indexOf("=");
                if (_loc_5 == -1)
                {
                    Error.throwError(Error, 2101);
                }
                else
                {
                    _loc_6 = this._unescape(_loc_4.substr(0, _loc_5));
                    _loc_7 = this._unescape(_loc_4.substr((_loc_5 + 1)));
                    _loc_8 = this[_loc_6];
                    if (_loc_8 != undefined)
                    {
                        if (!(_loc_8 is Array))
                        {
                            var _loc_9:* = [_loc_8];
                            _loc_8 = [_loc_8];
                            this[_loc_6] = _loc_9;
                        }
                        _loc_8.push(_loc_7);
                    }
                    else
                    {
                        this[_loc_6] = _loc_7;
                    }
                }
                _loc_3 = _loc_3 + 1;
            }
            return;
        }// end function

        public function toString() : String
        {
            var _loc_2:* = null;
            var _loc_4:* = null;
            var _loc_5:* = undefined;
            var _loc_6:* = 0;
            var _loc_1:* = "";
            var _loc_3:* = true;
            for (_loc_2 in this)
            {
                
                _loc_4 = escapeMultiByte(_loc_2);
                _loc_5 = this[_loc_2];
                if (_loc_5 is Array)
                {
                    _loc_6 = 0;
                    while (_loc_6 < _loc_5.length)
                    {
                        
                        if (!_loc_3)
                        {
                            _loc_1 = _loc_1 + "&";
                        }
                        _loc_1 = _loc_1 + _loc_4;
                        _loc_1 = _loc_1 + "=";
                        _loc_1 = _loc_1 + escapeMultiByte(String(_loc_5[_loc_6]));
                        _loc_3 = false;
                        _loc_6 = _loc_6 + 1;
                    }
                    continue;
                }
                if (!_loc_3)
                {
                    _loc_1 = _loc_1 + "&";
                }
                _loc_1 = _loc_1 + _loc_4;
                _loc_1 = _loc_1 + "=";
                _loc_1 = _loc_1 + escapeMultiByte(String(_loc_5));
                _loc_3 = false;
            }
            return _loc_1;
        }// end function

        private function _unescape(param1:String) : String
        {
            return unescapeMultiByte(param1.replace(/\+/g, " "));
        }// end function

    }
}
