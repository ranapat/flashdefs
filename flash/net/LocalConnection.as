package flash.net
{
    import flash.events.*;

    public class LocalConnection extends EventDispatcher
    {

        public function LocalConnection()
        {
            return;
        }// end function

        public function close() : void;

        public function connect(param1:String) : void;

        public function get domain() : String;

        public function send(param1:String, param2:String, ... args) : void;

        public function get client() : Object;

        public function set client(param1:Object) : void;

        public function get isPerUser() : Boolean;

        public function set isPerUser(param1:Boolean) : void;

        public function allowDomain(... args) : void;

        public function allowInsecureDomain(... args) : void;

        public static function get isSupported() : Boolean
        {
            return true;
        }// end function

    }
}
