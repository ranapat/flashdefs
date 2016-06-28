package flash.display
{
    import flash.geom.*;
    import flash.media.*;

    public class Sprite extends DisplayObjectContainer
    {

        public function Sprite()
        {
            this.constructChildren();
            return;
        }// end function

        public function get graphics() : Graphics;

        public function get buttonMode() : Boolean;

        public function set buttonMode(param1:Boolean) : void;

        public function startDrag(param1:Boolean = false, param2:Rectangle = null) : void;

        public function stopDrag() : void;

        public function startTouchDrag(param1:int, param2:Boolean = false, param3:Rectangle = null) : void;

        public function stopTouchDrag(param1:int) : void;

        public function get dropTarget() : DisplayObject;

        private function constructChildren() : void;

        public function get hitArea() : Sprite;

        public function set hitArea(param1:Sprite) : void;

        public function get useHandCursor() : Boolean;

        public function set useHandCursor(param1:Boolean) : void;

        public function get soundTransform() : SoundTransform;

        public function set soundTransform(param1:SoundTransform) : void;

    }
}
