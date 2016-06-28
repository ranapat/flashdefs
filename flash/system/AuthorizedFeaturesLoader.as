package flash.system
{
    import flash.events.*;
    import flash.utils.*;

    final public class AuthorizedFeaturesLoader extends EventDispatcher
    {

        public function AuthorizedFeaturesLoader()
        {
            return;
        }// end function

        public function get authorizedFeatures() : AuthorizedFeatures;

        public function loadAuthorizedFeatures() : void;

        public function loadAuthorizedFeaturesFromData(param1:ByteArray) : void;

        function makeGlobal() : void;

    }
}
