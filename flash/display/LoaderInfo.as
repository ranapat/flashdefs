package flash.display
{
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;

    public class LoaderInfo extends EventDispatcher
    {

        public function LoaderInfo()
        {
            return;
        }// end function

        public function get loaderURL() : String;

        public function get url() : String;

        public function get isURLInaccessible() : Boolean;

        public function get bytesLoaded() : uint;

        public function get bytesTotal() : uint;

        public function get applicationDomain() : ApplicationDomain;

        public function get swfVersion() : uint;

        public function get actionScriptVersion() : uint;

        public function get frameRate() : Number;

        public function get parameters() : Object
        {
            var _loc_3:* = null;
            var _loc_1:* = this._getArgs();
            var _loc_2:* = {};
            for (_loc_3 in _loc_1)
            {
                
                _loc_2[_loc_3] = _loc_1[_loc_3];
            }
            return _loc_2;
        }// end function

        public function get width() : int;

        public function get height() : int;

        public function get contentType() : String;

        public function get sharedEvents() : EventDispatcher;

        public function get parentSandboxBridge() : Object;

        public function set parentSandboxBridge(param1:Object) : void;

        public function get childSandboxBridge() : Object;

        public function set childSandboxBridge(param1:Object) : void;

        override public function dispatchEvent(event:Event) : Boolean
        {
            Error.throwError(IllegalOperationError, 2118);
            return false;
        }// end function

        public function get sameDomain() : Boolean;

        public function get childAllowsParent() : Boolean;

        public function get parentAllowsChild() : Boolean;

        public function get loader() : Loader;

        public function get content() : DisplayObject;

        public function get bytes() : ByteArray;

        private function _getArgs() : Object;

        public function get uncaughtErrorEvents() : UncaughtErrorEvents
        {
            var _loc_1:* = this._getUncaughtErrorEvents();
            if (!_loc_1)
            {
                _loc_1 = new UncaughtErrorEvents();
                this._setUncaughtErrorEvents(_loc_1);
            }
            return _loc_1;
        }// end function

        private function _getUncaughtErrorEvents() : UncaughtErrorEvents;

        private function _setUncaughtErrorEvents(param1:UncaughtErrorEvents) : void;

        public static function getLoaderInfoByDefinition(param1:Object) : LoaderInfo;

    }
}
