package flash.events
{
    import flash.display.*;

    public class ContextMenuEvent extends Event
    {
        private var m_mouseTarget:InteractiveObject;
        private var m_contextMenuOwner:InteractiveObject;
        private var m_isMouseTargetInaccessible:Boolean;
        public static const MENU_ITEM_SELECT:String = "menuItemSelect";
        public static const MENU_SELECT:String = "menuSelect";

        public function ContextMenuEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:InteractiveObject = null, param5:InteractiveObject = null)
        {
            super(param1, param2, param3);
            this.m_mouseTarget = param4;
            this.m_contextMenuOwner = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new ContextMenuEvent(type, bubbles, cancelable, this.m_mouseTarget, this.m_contextMenuOwner);
        }// end function

        override public function toString() : String
        {
            return formatToString("ContextMenuEvent", "type", "bubbles", "cancelable", "eventPhase", "mouseTarget", "contextMenuOwner");
        }// end function

        public function get mouseTarget() : InteractiveObject
        {
            return this.m_mouseTarget;
        }// end function

        public function set mouseTarget(param1:InteractiveObject) : void
        {
            this.m_mouseTarget = param1;
            return;
        }// end function

        public function get contextMenuOwner() : InteractiveObject
        {
            return this.m_contextMenuOwner;
        }// end function

        public function set contextMenuOwner(param1:InteractiveObject) : void
        {
            this.m_contextMenuOwner = param1;
            return;
        }// end function

        public function get isMouseTargetInaccessible() : Boolean
        {
            return this.m_isMouseTargetInaccessible;
        }// end function

        public function set isMouseTargetInaccessible(param1:Boolean) : void
        {
            this.m_isMouseTargetInaccessible = param1;
            return;
        }// end function

    }
}
