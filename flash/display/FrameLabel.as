package flash.display
{
    import flash.events.*;

    final public class FrameLabel extends EventDispatcher
    {

        public function FrameLabel(param1:String, param2:int)
        {
            this.ctor(param1, param2);
            return;
        }// end function

        private function ctor(param1:String, param2:int) : void;

        public function get name() : String;

        public function get frame() : int;

    }
}
