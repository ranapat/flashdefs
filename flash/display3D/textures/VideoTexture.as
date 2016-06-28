package flash.display3D.textures
{
    import flash.media.*;
    import flash.net.*;

    final public class VideoTexture extends TextureBase
    {

        public function VideoTexture()
        {
            return;
        }// end function

        public function attachNetStream(param1:NetStream) : void;

        public function attachCamera(param1:Camera) : void;

        public function get videoWidth() : int;

        public function get videoHeight() : int;

    }
}
