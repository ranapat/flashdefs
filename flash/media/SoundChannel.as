package flash.media
{
    import flash.events.*;

    final public class SoundChannel extends EventDispatcher
    {

        public function SoundChannel()
        {
            return;
        }// end function

        public function get position() : Number;

        public function get soundTransform() : SoundTransform;

        public function set soundTransform(param1:SoundTransform) : void;

        public function stop() : void;

        public function get leftPeak() : Number;

        public function get rightPeak() : Number;

    }
}
