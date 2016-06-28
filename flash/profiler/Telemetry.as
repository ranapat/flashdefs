package flash.profiler
{

    final public class Telemetry extends Object
    {

        public function Telemetry()
        {
            return;
        }// end function

        public static function get spanMarker() : Number;

        public static function get connected() : Boolean;

        public static function sendMetric(param1:String, param2) : void;

        public static function sendSpanMetric(param1:String, param2:Number, param3 = null) : void;

        public static function registerCommandHandler(param1:String, param2:Function) : Boolean;

        public static function unregisterCommandHandler(param1:String) : Boolean;

    }
}
