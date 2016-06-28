package flash.ui
{
    import flash.display.*;
    import flash.net.*;

    final public class ContextMenu extends NativeMenu
    {

        public function ContextMenu()
        {
            this.builtInItems = new ContextMenuBuiltInItems();
            this.customItems = new Array();
            return;
        }// end function

        public function hideBuiltInItems() : void
        {
            var _loc_1:* = this.builtInItems;
            if (_loc_1 != null)
            {
                _loc_1.save = false;
                _loc_1.zoom = false;
                _loc_1.quality = false;
                _loc_1.play = false;
                _loc_1.loop = false;
                _loc_1.rewind = false;
                _loc_1.forwardAndBack = false;
                _loc_1.print = false;
            }
            return;
        }// end function

        public function get builtInItems() : ContextMenuBuiltInItems;

        public function set builtInItems(param1:ContextMenuBuiltInItems) : void;

        public function get customItems() : Array;

        public function set customItems(param1:Array) : void;

        public function get link() : URLRequest;

        public function set link(param1:URLRequest) : void;

        public function get clipboardMenu() : Boolean;

        public function set clipboardMenu(param1:Boolean) : void;

        public function get clipboardItems() : ContextMenuClipboardItems;

        public function set clipboardItems(param1:ContextMenuClipboardItems) : void;

        private function cloneLinkAndClipboardProperties(param1:ContextMenu) : void;

        public function clone() : ContextMenu
        {
            var _loc_1:* = new ContextMenu();
            _loc_1.builtInItems = this.builtInItems.clone();
            this.cloneLinkAndClipboardProperties(_loc_1);
            var _loc_2:* = 0;
            while (_loc_2 < this.customItems.length)
            {
                
                _loc_1.customItems.push(this.customItems[_loc_2].clone());
                _loc_2 = _loc_2 + 1;
            }
            return _loc_1;
        }// end function

        public static function get isSupported() : Boolean
        {
            return _checkSupported();
        }// end function

        private static function _checkSupported() : Boolean;

    }
}
