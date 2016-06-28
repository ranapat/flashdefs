package flash.display
{
    import flash.media.*;

    public class SimpleButton extends InteractiveObject
    {

        public function SimpleButton(param1:DisplayObject = null, param2:DisplayObject = null, param3:DisplayObject = null, param4:DisplayObject = null)
        {
            if (param1)
            {
                this.upState = param1;
            }
            if (param2)
            {
                this.overState = param2;
            }
            if (param3)
            {
                this.downState = param3;
            }
            if (param4)
            {
                this.hitTestState = param4;
            }
            this._updateButton();
            return;
        }// end function

        private function _updateButton() : void;

        public function get useHandCursor() : Boolean;

        public function set useHandCursor(param1:Boolean) : void;

        public function get enabled() : Boolean;

        public function set enabled(param1:Boolean) : void;

        public function get trackAsMenu() : Boolean;

        public function set trackAsMenu(param1:Boolean) : void;

        public function get upState() : DisplayObject;

        public function set upState(param1:DisplayObject) : void;

        public function get overState() : DisplayObject;

        public function set overState(param1:DisplayObject) : void;

        public function get downState() : DisplayObject;

        public function set downState(param1:DisplayObject) : void;

        public function get hitTestState() : DisplayObject;

        public function set hitTestState(param1:DisplayObject) : void;

        public function get soundTransform() : SoundTransform;

        public function set soundTransform(param1:SoundTransform) : void;

    }
}
