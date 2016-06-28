package flash.display
{
    import flash.utils.*;

    public class AVM1Movie extends DisplayObject
    {
        private var callbackTable:Object;

        public function AVM1Movie()
        {
            this.callbackTable = {};
            this._setCallAS3(this._callAS3);
            return;
        }// end function

        public function call(param1:String, ... args)
        {
            if (!this._interopAvailable)
            {
                Error.throwError(IllegalOperationError, 2014);
            }
            args = new ByteArray();
            args.objectEncoding = ObjectEncoding.AMF0;
            args.writeObject(args);
            this._callAS2(param1, args);
            return args.length ? (args.readObject()) : (null);
        }// end function

        private function get _interopAvailable() : Boolean;

        private function _callAS2(param1:String, param2:ByteArray) : void;

        private function _setCallAS3(param1:Function) : void;

        private function _callAS3(param1:String, param2:ByteArray) : void
        {
            var _loc_3:* = this.callbackTable[param1];
            if (_loc_3 == null)
            {
                Error.throwError(Error, 2133, param1);
            }
            var _loc_4:* = param2.readObject();
            var _loc_5:* = _loc_3.apply(null, _loc_4);
            param2.position = 0;
            param2.length = 0;
            param2.writeObject(_loc_5);
            return;
        }// end function

        public function addCallback(param1:String, param2:Function) : void
        {
            if (!this._interopAvailable)
            {
                Error.throwError(IllegalOperationError, 2014);
            }
            this.callbackTable[param1] = param2;
            return;
        }// end function

    }
}
