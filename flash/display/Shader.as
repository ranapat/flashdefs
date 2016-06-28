package flash.display
{
    import flash.utils.*;

    public class Shader extends Object
    {

        public function Shader(param1:ByteArray = null)
        {
            if (param1)
            {
                this.byteCode = param1;
            }
            return;
        }// end function

        public function set byteCode(param1:ByteArray) : void
        {
            this.data = new ShaderData(param1);
            return;
        }// end function

        public function get data() : ShaderData;

        public function set data(param1:ShaderData) : void;

        public function get precisionHint() : String;

        public function set precisionHint(param1:String) : void;

    }
}
