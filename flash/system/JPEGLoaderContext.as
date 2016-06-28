package flash.system
{

    public class JPEGLoaderContext extends LoaderContext
    {
        public var deblockingFilter:Number = 0;

        public function JPEGLoaderContext(param1:Number = 0, param2:Boolean = false, param3:ApplicationDomain = null, param4:SecurityDomain = null)
        {
            super(param2, param3, param4);
            this.deblockingFilter = param1;
            return;
        }// end function

    }
}
