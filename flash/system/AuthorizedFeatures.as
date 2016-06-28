package flash.system
{
    import flash.media.*;
    import flash.net.*;
    import flash.utils.*;

    final public class AuthorizedFeatures extends Object
    {

        public function AuthorizedFeatures()
        {
            return;
        }// end function

        public function createApplicationInstaller(param1:XML, param2:ByteArray) : ApplicationInstaller;

        public function enableDiskCache(param1:URLStream) : Boolean;

        function isFeatureEnabled(param1:String, param2:String = null) : Boolean;

        function isNegativeToken() : Boolean;

        public function enableHLSPlayback(param1:AVStream) : Boolean;

        public function enableAVURLLoader(param1:AVURLLoader) : Boolean;

        public function enableAVURLStream(param1:AVURLStream) : Boolean;

    }
}
