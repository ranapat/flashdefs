package flash.display
{
    import flash.accessibility.*;
    import flash.geom.*;
    import flash.ui.*;

    public class InteractiveObject extends DisplayObject
    {

        public function InteractiveObject()
        {
            return;
        }// end function

        public function get tabEnabled() : Boolean;

        public function set tabEnabled(param1:Boolean) : void;

        public function get tabIndex() : int;

        public function set tabIndex(param1:int) : void;

        public function get focusRect() : Object;

        public function set focusRect(param1:Object) : void;

        public function get mouseEnabled() : Boolean;

        public function set mouseEnabled(param1:Boolean) : void;

        public function get doubleClickEnabled() : Boolean;

        public function set doubleClickEnabled(param1:Boolean) : void;

        public function get accessibilityImplementation() : AccessibilityImplementation;

        public function set accessibilityImplementation(param1:AccessibilityImplementation) : void;

        public function get softKeyboardInputAreaOfInterest() : Rectangle;

        public function set softKeyboardInputAreaOfInterest(param1:Rectangle) : void;

        public function get needsSoftKeyboard() : Boolean;

        public function set needsSoftKeyboard(param1:Boolean) : void;

        public function requestSoftKeyboard() : Boolean;

        public function get contextMenu() : ContextMenu;

        public function set contextMenu(param1:ContextMenu) : void;

    }
}
