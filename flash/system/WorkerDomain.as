package flash.system
{
    import __AS3__.vec.*;
    import flash.utils.*;

    final public class WorkerDomain extends Object
    {
        private static var _current:WorkerDomain;

        public function WorkerDomain()
        {
            return;
        }// end function

        public function createWorker(param1:ByteArray, param2:Boolean = false) : Worker;

        public function listWorkers() : Vector.<Worker>;

        public static function get isSupported() : Boolean;

        public static function get current() : WorkerDomain
        {
            return _current;
        }// end function

    }
}
