package flash.display
{

    dynamic public class MovieClip extends Sprite
    {

        public function MovieClip()
        {
            return;
        }// end function

        public function get currentFrame() : int;

        public function get framesLoaded() : int;

        public function get totalFrames() : int;

        public function get trackAsMenu() : Boolean;

        public function set trackAsMenu(param1:Boolean) : void;

        public function play() : void;

        public function stop() : void;

        public function nextFrame() : void;

        public function prevFrame() : void;

        public function gotoAndPlay(param1:Object, param2:String = null) : void;

        public function gotoAndStop(param1:Object, param2:String = null) : void;

        public function addFrameScript(... args) : void;

        public function get scenes() : Array;

        public function get currentScene() : Scene;

        public function get currentLabel() : String;

        public function get currentFrameLabel() : String;

        public function get currentLabels() : Array
        {
            return this.currentScene.labels;
        }// end function

        public function prevScene() : void;

        public function nextScene() : void;

        public function get enabled() : Boolean;

        public function set enabled(param1:Boolean) : void;

        public function get isPlaying() : Boolean;

    }
}
