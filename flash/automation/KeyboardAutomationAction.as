package flash.automation
{

    public class KeyboardAutomationAction extends AutomationAction
    {
        private var _keyCode:uint = 0;
        public static const KEY_DOWN:String = "keyDown";
        public static const KEY_UP:String = "keyUp";

        public function KeyboardAutomationAction(param1:String, param2:uint = 0)
        {
            super.type = param1;
            this._keyCode = param2;
            return;
        }// end function

        public function get keyCode() : uint
        {
            return this._keyCode;
        }// end function

        public function set keyCode(param1:uint) : void
        {
            this._keyCode = param1;
            return;
        }// end function

    }
}
