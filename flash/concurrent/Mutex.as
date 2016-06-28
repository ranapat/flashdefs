package flash.concurrent
{

    final public class Mutex extends Object
    {

        public function Mutex()
        {
            this.ctor();
            return;
        }// end function

        public function lock() : void;

        public function tryLock() : Boolean;

        public function unlock() : void;

        private function ctor() : void;

        public static function get isSupported() : Boolean;

    }
}
