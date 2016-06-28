package flash.net.drm
{
    import flash.events.*;
    import flash.utils.*;

    public class DRMManager extends EventDispatcher
    {
        private static var theManager:DRMManager = null;
        private static var mNetworkIdleTimeoutInMS:Number = 120000;

        public function DRMManager()
        {
            return;
        }// end function

        public function authenticate(param1:String, param2:String, param3:String, param4:String) : void
        {
            var _loc_5:* = new DRMAuthenticationContext();
            _loc_5.addEventListener(DRMAuthenticationCompleteEvent.AUTHENTICATION_COMPLETE, this.onAuthenticationComplete);
            _loc_5.addEventListener(DRMAuthenticationErrorEvent.AUTHENTICATION_ERROR, this.onAuthenticationError);
            _loc_5.authenticate(param1, param2, param3, param4);
            return;
        }// end function

        public function setAuthenticationToken(param1:String, param2:String, param3:ByteArray) : void
        {
            var _loc_4:* = this.setSAMLTokenInner(param1, param2, param3);
            if (_loc_4 != 0)
            {
                this.errorCodeToThrow(_loc_4);
            }
            return;
        }// end function

        public function loadVoucher(param1:DRMContentData, param2:String) : void
        {
            var _loc_3:* = null;
            if (param1 == null)
            {
                throw new ArgumentError();
            }
            if (param2 == LoadVoucherSetting.FORCE_REFRESH)
            {
                this.downloadVoucher(param1, false);
            }
            else if (param2 == LoadVoucherSetting.LOCAL_ONLY)
            {
                _loc_3 = new DRMVoucherStoreContext();
                _loc_3.addEventListener(DRMStatusEvent.DRM_STATUS, this.onGetVoucherFromStoreComplete);
                _loc_3.addEventListener(DRMErrorEvent.DRM_ERROR, this.onGetVoucherFromStoreError);
                _loc_3.getVoucherFromStore(param1);
            }
            else if (param2 == LoadVoucherSetting.ALLOW_SERVER)
            {
                _loc_3 = new DRMVoucherStoreContext();
                _loc_3.addEventListener(DRMStatusEvent.DRM_STATUS, this.onGetVoucherFromStoreWithAllowServerComplete);
                _loc_3.addEventListener(DRMErrorEvent.DRM_ERROR, this.onGetVoucherFromStoreWithAllowServerError);
                _loc_3.getVoucherFromStore(param1);
            }
            else
            {
                throw new ArgumentError();
            }
            return;
        }// end function

        public function loadPreviewVoucher(param1:DRMContentData) : void
        {
            if (param1 == null)
            {
                throw new ArgumentError();
            }
            this.downloadVoucher(param1, true);
            return;
        }// end function

        private function downloadVoucher(param1:DRMContentData, param2:Boolean = false) : void
        {
            var _loc_3:* = new DRMVoucherDownloadContext();
            _loc_3.addEventListener(DRMStatusEvent.DRM_STATUS, this.onDownloadVoucherComplete);
            _loc_3.addEventListener(DRMErrorEvent.DRM_ERROR, this.onDownloadVoucherError);
            _loc_3.download(param1, param2);
            return;
        }// end function

        private function resetDRMVouchersAllowed(param1:Boolean) : Boolean;

        function resetDRMVouchersInternal(param1:Boolean) : void
        {
            if (!this.resetDRMVouchersAllowed(param1))
            {
                return;
            }
            var _loc_2:* = new DRMResetContext(param1);
            _loc_2.addEventListener(DRMStatusEvent.DRM_STATUS, this.onResetComplete);
            _loc_2.addEventListener(DRMErrorEvent.DRM_ERROR, this.onResetError);
            _loc_2.doReset();
            return;
        }// end function

        public function resetDRMVouchers() : void
        {
            this.resetDRMVouchersInternal(false);
            return;
        }// end function

        public function addToDeviceGroup(param1:DRMDeviceGroup, param2:Boolean = false) : void
        {
            var _loc_3:* = new DRMAddToDeviceGroupContext();
            _loc_3.addEventListener(DRMDeviceGroupEvent.ADD_TO_DEVICE_GROUP_COMPLETE, this.onDeviceGroupOperationComplete);
            _loc_3.addEventListener(DRMDeviceGroupErrorEvent.ADD_TO_DEVICE_GROUP_ERROR, this.onDeviceGroupOperationError);
            _loc_3.addToDeviceGroup(param1, param2);
            return;
        }// end function

        public function removeFromDeviceGroup(param1:DRMDeviceGroup) : void
        {
            var _loc_2:* = new DRMRemoveFromDeviceGroupContext();
            _loc_2.addEventListener(DRMDeviceGroupEvent.REMOVE_FROM_DEVICE_GROUP_COMPLETE, this.onDeviceGroupOperationComplete);
            _loc_2.addEventListener(DRMDeviceGroupErrorEvent.REMOVE_FROM_DEVICE_GROUP_ERROR, this.onDeviceGroupOperationError);
            _loc_2.removeFromDeviceGroup(param1);
            return;
        }// end function

        private function onDeviceGroupOperationComplete(event:DRMDeviceGroupEvent) : void
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_2:* = event.clone();
            dispatchEvent(_loc_2);
            if (_loc_2.type == DRMDeviceGroupEvent.REMOVE_FROM_DEVICE_GROUP_COMPLETE)
            {
                _loc_3 = event.target as DRMRemoveFromDeviceGroupContext;
                _loc_3.removeEventListener(DRMDeviceGroupEvent.REMOVE_FROM_DEVICE_GROUP_COMPLETE, this.onDeviceGroupOperationComplete);
                _loc_3.removeEventListener(DRMDeviceGroupErrorEvent.REMOVE_FROM_DEVICE_GROUP_ERROR, this.onDeviceGroupOperationError);
            }
            else
            {
                _loc_4 = event.target as DRMAddToDeviceGroupContext;
                _loc_4.removeEventListener(DRMDeviceGroupEvent.ADD_TO_DEVICE_GROUP_COMPLETE, this.onDeviceGroupOperationComplete);
                _loc_4.removeEventListener(DRMDeviceGroupErrorEvent.ADD_TO_DEVICE_GROUP_ERROR, this.onDeviceGroupOperationError);
            }
            return;
        }// end function

        private function onDeviceGroupOperationError(event:DRMDeviceGroupErrorEvent) : void
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_2:* = event.clone();
            dispatchEvent(_loc_2);
            if (_loc_2.type == DRMDeviceGroupErrorEvent.REMOVE_FROM_DEVICE_GROUP_ERROR)
            {
                _loc_3 = event.target as DRMRemoveFromDeviceGroupContext;
                _loc_3.removeEventListener(DRMDeviceGroupEvent.REMOVE_FROM_DEVICE_GROUP_COMPLETE, this.onDeviceGroupOperationComplete);
                _loc_3.removeEventListener(DRMDeviceGroupErrorEvent.REMOVE_FROM_DEVICE_GROUP_ERROR, this.onDeviceGroupOperationError);
            }
            else
            {
                _loc_4 = event.target as DRMAddToDeviceGroupContext;
                _loc_4.removeEventListener(DRMDeviceGroupEvent.ADD_TO_DEVICE_GROUP_COMPLETE, this.onDeviceGroupOperationComplete);
                _loc_4.removeEventListener(DRMDeviceGroupErrorEvent.ADD_TO_DEVICE_GROUP_ERROR, this.onDeviceGroupOperationError);
            }
            return;
        }// end function

        public function storeVoucher(param1:ByteArray) : void
        {
            var _loc_2:* = this.storeVoucherInner(param1);
            if (_loc_2 != 0)
            {
                this.errorCodeToThrow(_loc_2);
            }
            return;
        }// end function

        public function returnVoucher(param1:String, param2:Boolean, param3:String, param4:String) : void
        {
            if (param1 != null)
            {
                if (param3 == null)
                {
                }
            }
            if (param4 == null)
            {
                throw new ArgumentError();
            }
            var _loc_5:* = new DRMReturnVoucherContext();
            _loc_5.addEventListener(DRMReturnVoucherCompleteEvent.RETURN_VOUCHER_COMPLETE, this.onReturnVoucherComplete);
            _loc_5.addEventListener(DRMReturnVoucherErrorEvent.RETURN_VOUCHER_ERROR, this.onReturnVoucherError);
            _loc_5.returnVoucher(param1, param2, param3, param4);
            return;
        }// end function

        private function setSAMLTokenInner(param1:String, param2:String, param3:ByteArray) : uint;

        private function onAuthenticationComplete(event:DRMAuthenticationCompleteEvent) : void
        {
            var _loc_2:* = event.clone();
            dispatchEvent(_loc_2);
            var _loc_3:* = event.target as DRMAuthenticationContext;
            _loc_3.removeEventListener(DRMAuthenticationCompleteEvent.AUTHENTICATION_COMPLETE, this.onAuthenticationComplete);
            _loc_3.removeEventListener(DRMAuthenticationErrorEvent.AUTHENTICATION_ERROR, this.onAuthenticationError);
            return;
        }// end function

        private function onAuthenticationError(event:DRMAuthenticationErrorEvent) : void
        {
            var _loc_2:* = event.clone();
            dispatchEvent(_loc_2);
            var _loc_3:* = event.target as DRMAuthenticationContext;
            _loc_3.removeEventListener(DRMAuthenticationCompleteEvent.AUTHENTICATION_COMPLETE, this.onAuthenticationComplete);
            _loc_3.removeEventListener(DRMAuthenticationErrorEvent.AUTHENTICATION_ERROR, this.onAuthenticationError);
            return;
        }// end function

        private function onGetVoucherFromStoreComplete(event:DRMStatusEvent) : void
        {
            this.issueDRMStatusEvent(event.type, event.contentData, event.voucher, true);
            var _loc_2:* = event.target as DRMVoucherStoreContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onGetVoucherFromStoreComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onDownloadVoucherError);
            return;
        }// end function

        private function onGetVoucherFromStoreError(event:DRMErrorEvent) : void
        {
            this.issueDRMErrorEvent(event.contentData, event.errorID, event.subErrorID, event.text);
            var _loc_2:* = event.target as DRMVoucherStoreContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onGetVoucherFromStoreComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onDownloadVoucherError);
            return;
        }// end function

        private function onDownloadVoucherComplete(event:DRMStatusEvent) : void
        {
            this.issueDRMStatusEvent(event.type, event.contentData, event.voucher, false);
            var _loc_2:* = event.target as DRMVoucherDownloadContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onDownloadVoucherComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onDownloadVoucherError);
            return;
        }// end function

        private function onGetVoucherFromStoreWithAllowServerComplete(event:DRMStatusEvent) : void
        {
            if (event.voucher != null)
            {
                this.issueDRMStatusEvent(event.type, event.contentData, event.voucher, true);
            }
            else
            {
                this.downloadVoucher(event.contentData);
            }
            var _loc_2:* = event.target as DRMVoucherStoreContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onGetVoucherFromStoreWithAllowServerComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onGetVoucherFromStoreWithAllowServerError);
            return;
        }// end function

        private function onDownloadVoucherError(event:DRMErrorEvent) : void
        {
            this.issueDRMErrorEvent(event.contentData, event.errorID, event.subErrorID, event.text);
            var _loc_2:* = event.target as DRMVoucherDownloadContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onDownloadVoucherComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onDownloadVoucherError);
            return;
        }// end function

        private function onGetVoucherFromStoreWithAllowServerError(event:DRMErrorEvent) : void
        {
            this.downloadVoucher(event.contentData);
            var _loc_2:* = event.target as DRMVoucherStoreContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onGetVoucherFromStoreWithAllowServerComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onGetVoucherFromStoreWithAllowServerError);
            return;
        }// end function

        private function onResetComplete(event:DRMStatusEvent) : void
        {
            var _loc_2:* = event.target as DRMResetContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onResetComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onResetError);
            return;
        }// end function

        private function onResetError(event:DRMErrorEvent) : void
        {
            var _loc_2:* = event.target as DRMResetContext;
            _loc_2.removeEventListener(DRMStatusEvent.DRM_STATUS, this.onResetComplete);
            _loc_2.removeEventListener(DRMErrorEvent.DRM_ERROR, this.onResetError);
            return;
        }// end function

        private function onReturnVoucherComplete(event:DRMReturnVoucherCompleteEvent) : void
        {
            var _loc_2:* = event.clone();
            dispatchEvent(_loc_2);
            var _loc_3:* = event.target as DRMReturnVoucherContext;
            _loc_3.removeEventListener(DRMReturnVoucherCompleteEvent.RETURN_VOUCHER_COMPLETE, this.onReturnVoucherComplete);
            _loc_3.removeEventListener(DRMReturnVoucherErrorEvent.RETURN_VOUCHER_ERROR, this.onReturnVoucherError);
            return;
        }// end function

        private function onReturnVoucherError(event:DRMReturnVoucherErrorEvent) : void
        {
            var _loc_2:* = event.clone();
            dispatchEvent(_loc_2);
            var _loc_3:* = event.target as DRMReturnVoucherContext;
            _loc_3.removeEventListener(DRMReturnVoucherCompleteEvent.RETURN_VOUCHER_COMPLETE, this.onReturnVoucherComplete);
            _loc_3.removeEventListener(DRMReturnVoucherErrorEvent.RETURN_VOUCHER_ERROR, this.onReturnVoucherError);
            return;
        }// end function

        private function errorCodeToThrow(param1:uint) : void;

        private function issueDRMStatusEvent(param1:String, param2:DRMContentData, param3:DRMVoucher, param4:Boolean) : void;

        private function issueDRMErrorEvent(param1:DRMContentData, param2:int, param3:int, param4:String) : void;

        private function storeVoucherInner(param1:ByteArray) : uint;

        static function getDRMManagerInternal() : DRMManager
        {
            if (theManager == null)
            {
                theManager = createDRMManager();
            }
            return theManager;
        }// end function

        public static function getDRMManager() : DRMManager
        {
            checkRemoteSWFInvocation();
            return getDRMManagerInternal();
        }// end function

        private static function createDRMManager() : DRMManager;

        public static function set networkIdleTimeout(param1:Number) : void
        {
            mNetworkIdleTimeoutInMS = param1;
            return;
        }// end function

        public static function get networkIdleTimeout() : Number
        {
            return mNetworkIdleTimeoutInMS;
        }// end function

        public static function get isSupported() : Boolean
        {
            return _checkSupported();
        }// end function

        private static function _checkSupported() : Boolean;

        private static function checkRemoteSWFInvocation() : void
        {
            if (isCalledFromRemoteSWF() == true)
            {
                throw new SecurityError();
            }
            return;
        }// end function

        private static function isCalledFromRemoteSWF() : Boolean;

    }
}
