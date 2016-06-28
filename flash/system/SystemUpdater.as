package flash.system
{
    import adobe.utils.*;
    import flash.events.*;

    public class SystemUpdater extends EventDispatcher
    {
        private var _pm:ProductManager;

        public function SystemUpdater()
        {
            this._pm = new ProductManager();
            this._pm.addEventListener("cancel", this.onProductManagerEvent);
            this._pm.addEventListener("complete", this.onProductManagerEvent);
            this._pm.addEventListener("networkError", this.onProductManagerEvent);
            this._pm.addEventListener("diskError", this.onProductManagerEvent);
            this._pm.addEventListener("verifyError", this.onProductManagerEvent);
            this._pm.addEventListener("error", this.onProductManagerEvent);
            return;
        }// end function

        public function update(param1:String) : void
        {
            var type:* = param1;
            if (this._update(type, this._pm))
            {
                try
                {
                    this._pm.doSelfUpgrade(Capabilities.os);
                }
                catch (err:Error)
                {
                    _cancel(false, _pm);
                    throw err;
                }
            }
            return;
        }// end function

        public function cancel() : void
        {
            this._cancel(true, this._pm);
            return;
        }// end function

        private function onProductManagerEvent(event:Event) : void
        {
            switch(event.type)
            {
                case "networkError":
                case "diskError":
                case "verifyError":
                case "error":
                {
                    this._cancel(false, this._pm);
                    dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR, false, false, null, null));
                    break;
                }
                case "cancel":
                case "complete":
                {
                    this._cancel(false, this._pm);
                }
                default:
                {
                    dispatchEvent(event.clone());
                    break;
                    break;
                }
            }
            return;
        }// end function

        private function _update(param1:String, param2:ProductManager) : Boolean;

        private function _cancel(param1:Boolean, param2:ProductManager) : void;

    }
}
