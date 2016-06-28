package flash.media
{
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;

    public class AVURLLoader extends URLLoader
    {
        public var stream:AVURLStream;

        public function AVURLLoader(param1:URLRequest = null)
        {
            this.stream = new AVURLStream();
            this.stream.addEventListener(Event.OPEN, this.redirectEvent);
            this.stream.addEventListener(IOErrorEvent.IO_ERROR, this.onComplete);
            this.stream.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.redirectEvent);
            this.stream.addEventListener(HTTPStatusEvent.HTTP_STATUS, this.redirectEvent);
            this.stream.addEventListener(ProgressEvent.PROGRESS, this.onProgress);
            this.stream.addEventListener(Event.COMPLETE, this.onComplete);
            if (param1 != null)
            {
                this.load(param1);
            }
            return;
        }// end function

        override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            super.addEventListener(param1, param2, param3, param4, param5);
            if (param1 == HTTPStatusEvent.HTTP_RESPONSE_STATUS)
            {
                this.stream.addEventListener(HTTPStatusEvent.HTTP_RESPONSE_STATUS, this.redirectEvent);
            }
            else if (param1 == AVHTTPStatusEvent.AV_HTTP_RESPONSE_STATUS)
            {
                this.stream.addEventListener(AVHTTPStatusEvent.AV_HTTP_RESPONSE_STATUS, this.redirectEvent);
            }
            return;
        }// end function

        override public function load(param1:URLRequest) : void
        {
            this.stream.load(param1);
            return;
        }// end function

        override public function close() : void
        {
            this.stream.close();
            return;
        }// end function

        public function set cookieHeader(param1:String) : void
        {
            this.stream.cookieHeader = param1;
            return;
        }// end function

        private function redirectEvent(event:Event) : void
        {
            dispatchEvent(event);
            return;
        }// end function

        private function onComplete(event:Event) : void
        {
            var _loc_2:* = new ByteArray();
            this.stream.readBytes(_loc_2);
            switch(dataFormat)
            {
                case "binary":
                {
                    data = _loc_2;
                    break;
                }
                case "variables":
                {
                    if (_loc_2.length > 0)
                    {
                        data = new URLVariables(_loc_2.toString());
                        break;
                    }
                }
                case "text":
                {
                }
                default:
                {
                    data = _loc_2.toString();
                    break;
                    break;
                }
            }
            dispatchEvent(event);
            return;
        }// end function

        private function onProgress(event:ProgressEvent) : void
        {
            bytesLoaded = event.bytesLoaded;
            bytesTotal = event.bytesTotal;
            dispatchEvent(event);
            return;
        }// end function

    }
}
