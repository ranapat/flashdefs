package flash.system
{
    import flash.events.*;
    import flash.utils.*;

    final public class ApplicationInstaller extends EventDispatcher
    {
        private var _strings:XML;
        private var _icon:ByteArray;

        public function ApplicationInstaller()
        {
            return;
        }// end function

        public function install(param1:String = "install_with_shortcuts") : void;

        public function get isInstalled() : Boolean;

        public static function stringsDigest(param1:XML) : String;

        public static function iconDigest(param1:ByteArray) : String;

    }
}
