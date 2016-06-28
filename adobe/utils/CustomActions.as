package adobe.utils
{

    final public class CustomActions extends Object
    {

        public function CustomActions()
        {
            return;
        }// end function

        public static function installActions(param1:String, param2:String) : void;

        public static function uninstallActions(param1:String) : void;

        public static function get actionsList() : Array;

        public static function getActions(param1:String) : String;

    }
}
