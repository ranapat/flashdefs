package flash.system
{
    import flash.events.*;
    import flash.net.*;

    final class ConnexionsClient extends Object
    {
        private const _host:String = "localhost";
        private var _auto_socket:Socket;
        private var _manual_socket:Socket;
        private var _topLocation:String = null;
        private var _documentReferrer:String = null;
        private var _windowLocation:String = null;
        private var _movie:String = null;
        private var _userAgent:String = null;
        private var _timeout:uint = 5000;
        private var _auto_socket_connecting:Object = false;
        private var _manual_socket_connecting:Object = false;

        function ConnexionsClient()
        {
            this._auto_socket = new Socket();
            this._manual_socket = new Socket();
            return;
        }// end function

        public function Connexions()
        {
            return;
        }// end function

        private function autoSocketEventHandler(event:Event) : void
        {
            if (this._auto_socket_connecting)
            {
                this.connectionFailure("auto-add");
                this._auto_socket_connecting = false;
            }
            return;
        }// end function

        private function manualSocketEventHandler(event:Event) : void
        {
            if (this._manual_socket_connecting)
            {
                this.connectionFailure("manual-add");
                this._manual_socket_connecting = false;
            }
            return;
        }// end function

        private function autoSocketConnectHandler(event:Event) : void
        {
            this._auto_socket_connecting = false;
            this.write(this._auto_socket, "auto-add");
            return;
        }// end function

        private function manualSocketConnectHandler(event:Event) : void
        {
            this._manual_socket_connecting = false;
            this.write(this._manual_socket, "manual-add");
            return;
        }// end function

        private function write(param1:Socket, param2:String) : void
        {
            var str:String;
            var len:String;
            var socket:* = param1;
            var msg:* = param2;
            if (socket.connected)
            {
                try
                {
                    str = "{ " + "\"type\":\"" + msg + "\", \"secret\":\"" + this.secret.substr(0, 1024) + "\", \"version\":\"" + Capabilities.version + "\", \"topLocation\":\"" + this._topLocation + "\", \"documentReferrer\":\"" + this._documentReferrer + "\", \"windowLocation\":\"" + this._windowLocation + "\", \"movie\":\"" + this._movie + "\", \"userAgent\":\"" + this._userAgent + "\" }";
                    len = str.length.toString();
                    str = String("00000").substr(0, 5 - len.length) + len + str;
                    trace("ConnexionsClient.write() : " + str);
                    socket.writeUTFBytes(str);
                    socket.flush();
                }
                catch (e:Error)
                {
                    trace("ConnexionsClient.write caught " + e);
                }
            }
            return;
        }// end function

        private function connectionFailure(param1:String) : void;

        private function get secret() : String;

        public function _init(param1:String, param2:String, param3:String, param4:String, param5:String, param6:uint) : void
        {
            this._topLocation = param1.substr(0, 2048);
            this._documentReferrer = param2.substr(0, 2048);
            this._windowLocation = param3.substr(0, 2048);
            this._movie = param4.substr(0, 2048);
            this._userAgent = param5.substr(0, 1024);
            this._timeout = param6;
            this._auto_socket.addEventListener(Event.CONNECT, this.autoSocketConnectHandler);
            this._auto_socket.addEventListener(Event.CLOSE, this.autoSocketEventHandler);
            this._auto_socket.addEventListener(IOErrorEvent.IO_ERROR, this.autoSocketEventHandler);
            this._auto_socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.autoSocketEventHandler);
            this._auto_socket.timeout = this._timeout;
            this._manual_socket.addEventListener(Event.CONNECT, this.manualSocketConnectHandler);
            this._manual_socket.addEventListener(Event.CLOSE, this.manualSocketEventHandler);
            this._manual_socket.addEventListener(IOErrorEvent.IO_ERROR, this.manualSocketEventHandler);
            this._manual_socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.manualSocketEventHandler);
            this._manual_socket.timeout = this._timeout;
            return;
        }// end function

        public function autoAdd(param1:int)
        {
            if (!this._auto_socket_connecting)
            {
            }
            if (!this._auto_socket.connected)
            {
                this._auto_socket.connect(this._host, param1);
                this._auto_socket_connecting = true;
            }
            return;
        }// end function

        public function manualAdd(param1:int)
        {
            if (!this._manual_socket_connecting)
            {
            }
            if (!this._manual_socket.connected)
            {
                this._manual_socket.connect(this._host, param1);
                this._manual_socket_connecting = true;
            }
            return;
        }// end function

    }
}
