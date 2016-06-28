package flash.media
{
    import flash.display.*;
    import flash.net.*;

    public class Video extends DisplayObject
    {

        public function Video(param1:int = 320, param2:int = 240)
        {
            this.ctor(param1, param2);
            return;
        }// end function

        private function ctor(param1:int, param2:int) : void;

        public function get deblocking() : int;

        public function set deblocking(param1:int) : void;

        public function get smoothing() : Boolean;

        public function set smoothing(param1:Boolean) : void;

        public function get videoWidth() : int;

        public function get videoHeight() : int;

        public function clear() : void;

        public function attachNetStream(param1:NetStream) : void;

        public function attachCamera(param1:Camera) : void;

    }
}
