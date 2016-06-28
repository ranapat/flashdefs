package flash.events
{
    import flash.events.*;

    public class EventDispatcher extends Object implements IEventDispatcher
    {

        public function EventDispatcher(param1:IEventDispatcher = null)
        {
            this.ctor(param1);
            return;
        }// end function

        private function ctor(param1:IEventDispatcher) : void;

        public function toString() : String
        {
            return Object.prototype.toString.call(this);
        }// end function

        public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void;

        public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void;

        public function dispatchEvent(event:Event) : Boolean
        {
            if (event.target)
            {
                return this.dispatchEventFunction(event.clone());
            }
            return this.dispatchEventFunction(event);
        }// end function

        public function hasEventListener(param1:String) : Boolean;

        public function willTrigger(param1:String) : Boolean;

        private function dispatchEventFunction(event:Event) : Boolean;

        private function dispatchHttpStatusEvent(param1:uint, param2:Boolean, param3:String, param4:String) : void
        {
            var httpStatusEvent:HTTPStatusEvent;
            var status:* = param1;
            var redirected:* = param2;
            var responseLocation:* = param3;
            var headers:* = param4;
            httpStatusEvent = new HTTPStatusEvent(HTTPStatusEvent.HTTP_RESPONSE_STATUS, false, false, status, redirected);
            httpStatusEvent.responseURL = responseLocation;
            var headerArray:* = headers.split("\r\n");
            try
            {
                var parseResponseHeader:* = function (param1, param2:int, param3:Array) : void
            {
                var _loc_5:* = undefined;
                var _loc_6:* = undefined;
                var _loc_4:* = param1.indexOf(":", 0);
                if (_loc_4 != -1)
                {
                    _loc_5 = param1.slice(0, _loc_4);
                    _loc_6 = trimHeaderValue(param1.slice((_loc_4 + 1)));
                    httpStatusEvent.responseHeaders.push(new URLRequestHeader(_loc_5, _loc_6));
                }
                return;
            }// end function
            ;
                headerArray.forEach(parseResponseHeader);
                this.dispatchEvent(httpStatusEvent);
            }
            catch (error)
            {
            }
            return;
        }// end function

        private static function trimHeaderValue(param1:String) : String
        {
            var _loc_5:* = null;
            var _loc_2:* = 0;
            var _loc_3:* = param1.length;
            var _loc_4:* = false;
            do
            {
                
                _loc_5 = param1.charAt(_loc_2);
                if (_loc_5 != " ")
                {
                }
                _loc_4 = _loc_5 != "\t";
                if (!_loc_4)
                {
                    _loc_2 = _loc_2 + 1;
                }
                if (_loc_2 < _loc_3)
                {
                }
            }while (!_loc_4)
            var _loc_6:* = _loc_3;
            _loc_4 = false;
            do
            {
                
                _loc_5 = param1.charAt((_loc_6 - 1));
                if (_loc_5 != " ")
                {
                }
                _loc_4 = _loc_5 != "\t";
                if (!_loc_4)
                {
                    _loc_6 = _loc_6 - 1;
                }
                if (_loc_6 > _loc_2)
                {
                }
            }while (!_loc_4)
            return param1.substring(_loc_2, _loc_6);
        }// end function

    }
}
