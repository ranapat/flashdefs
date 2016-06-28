package flash.ui
{
    import __AS3__.vec.*;
    import flash.utils.*;

    final public class GameInputDevice extends Object
    {
        public static const MAX_BUFFER_SIZE:int = 32000;

        public function GameInputDevice()
        {
            return;
        }// end function

        public function getControlAt(param1:int) : GameInputControl;

        public function get numControls() : int;

        public function startCachingSamples(param1:int, param2:Vector.<String>) : void;

        public function get sampleInterval() : int;

        public function set sampleInterval(param1:int) : void;

        public function stopCachingSamples() : void;

        public function getCachedSamples(param1:ByteArray, param2:Boolean = false) : int;

        public function get enabled() : Boolean;

        public function set enabled(param1:Boolean) : void;

        public function get id() : String;

        public function get name() : String;

    }
}
