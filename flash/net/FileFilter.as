package flash.net
{

    final public class FileFilter extends Object
    {

        public function FileFilter(param1:String, param2:String, param3:String = null)
        {
            this.description = param1;
            this.extension = param2;
            this.macType = param3;
            return;
        }// end function

        public function get description() : String;

        public function set description(param1:String) : void;

        public function get extension() : String;

        public function set extension(param1:String) : void;

        public function get macType() : String;

        public function set macType(param1:String) : void;

    }
}
