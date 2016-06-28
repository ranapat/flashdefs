package flash.system
{
    import flash.display.*;

    public class LoaderContext extends Object
    {
        public var checkPolicyFile:Boolean = false;
        public var applicationDomain:ApplicationDomain = null;
        public var securityDomain:SecurityDomain = null;
        public var allowCodeImport:Boolean;
        public var requestedContentParent:DisplayObjectContainer;
        public var parameters:Object;
        public var imageDecodingPolicy:String;

        public function LoaderContext(param1:Boolean = false, param2:ApplicationDomain = null, param3:SecurityDomain = null)
        {
            this.checkPolicyFile = param1;
            this.applicationDomain = param2;
            this.securityDomain = param3;
            this.requestedContentParent = null;
            this.parameters = null;
            this.imageDecodingPolicy = ImageDecodingPolicy.ON_DEMAND;
            if (Security.sandboxType == Security.APPLICATION)
            {
                this.allowCodeImport = false;
            }
            else
            {
                this.allowCodeImport = true;
            }
            return;
        }// end function

        public function get allowLoadBytesCodeExecution() : Boolean
        {
            return this.allowCodeImport;
        }// end function

        public function set allowLoadBytesCodeExecution(param1:Boolean) : void
        {
            this.allowCodeImport = param1;
            return;
        }// end function

    }
}
