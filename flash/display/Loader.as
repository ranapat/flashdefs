package flash.display
{
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class Loader extends DisplayObjectContainer
    {

        public function Loader()
        {
            return;
        }// end function

        public function load(param1:URLRequest, param2:LoaderContext = null) : void
        {
            var _loc_3:* = this._buildLoaderContext(param2);
            var _loc_4:* = 0;
            if (_loc_3.imageDecodingPolicy == null)
            {
                throw new ArgumentError();
            }
            _loc_4 = this._getJPEGLoaderContextdeblockingfilter(_loc_3);
            if (_loc_3.parameters != null)
            {
                cloneParams(_loc_3);
            }
            this._load(param1, _loc_3.checkPolicyFile, _loc_3.applicationDomain, _loc_3.securityDomain, _loc_3.requestedContentParent, _loc_3.parameters, _loc_4, _loc_3.allowCodeImport, _loc_3.imageDecodingPolicy);
            return;
        }// end function

        private function _getJPEGLoaderContextdeblockingfilter(param1:Object) : Number;

        private function _buildLoaderContext(param1:LoaderContext) : LoaderContext
        {
            if (param1 == null)
            {
                param1 = new LoaderContext();
            }
            if (param1.applicationDomain == null)
            {
                param1.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
            }
            return param1;
        }// end function

        public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void
        {
            var _loc_3:* = this._buildLoaderContext(param2);
            var _loc_4:* = 0;
            _loc_4 = this._getJPEGLoaderContextdeblockingfilter(_loc_3);
            if (_loc_3.parameters != null)
            {
                cloneParams(_loc_3);
            }
            this._loadBytes(param1, _loc_3.checkPolicyFile, _loc_3.applicationDomain, _loc_3.securityDomain, _loc_3.requestedContentParent, _loc_3.parameters, _loc_4, _loc_3.allowCodeImport, _loc_3.imageDecodingPolicy);
            return;
        }// end function

        private function _loadBytes(param1:ByteArray, param2:Boolean, param3:ApplicationDomain, param4:SecurityDomain, param5:DisplayObjectContainer, param6:Object, param7:Number, param8:Boolean, param9:String) : void;

        public function close() : void
        {
            this._close();
            return;
        }// end function

        public function unload() : void
        {
            this._unload(false, false);
            return;
        }// end function

        public function unloadAndStop(param1:Boolean = true) : void
        {
            this._unload(true, param1);
            return;
        }// end function

        private function _unload(param1:Boolean, param2:Boolean) : void;

        private function _close() : void;

        public function get content() : DisplayObject;

        public function get contentLoaderInfo() : LoaderInfo;

        override public function addChild(param1:DisplayObject) : DisplayObject
        {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }// end function

        override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
        {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }// end function

        override public function removeChild(param1:DisplayObject) : DisplayObject
        {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }// end function

        override public function removeChildAt(param1:int) : DisplayObject
        {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }// end function

        override public function setChildIndex(param1:DisplayObject, param2:int) : void
        {
            Error.throwError(IllegalOperationError, 2069);
            return;
        }// end function

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

        private function _load(param1:URLRequest, param2:Boolean, param3:ApplicationDomain, param4:SecurityDomain, param5:DisplayObjectContainer, param6:Object, param7:Number, param8:Boolean, param9:String) : void;

        private static function cloneParams(param1:LoaderContext) : void
        {
            var _loc_4:* = null;
            var _loc_2:* = param1.parameters;
            var _loc_3:* = {};
            for (_loc_4 in _loc_2)
            {
                
                _loc_3[_loc_4] = _loc_2[_loc_4];
            }
            param1.parameters = _loc_3;
            return;
        }// end function

    }
}
