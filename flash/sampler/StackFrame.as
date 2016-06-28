package flash.sampler
{

    final public class StackFrame extends Object
    {
        public const name:String;
        public const file:String;
        public const line:uint;
        public const scriptID:Number;

        public function StackFrame()
        {
            return;
        }// end function

        public function toString() : String
        {
            return this.name + "()" + (this.file ? ("[" + this.file + ":" + this.line + "]") : (""));
        }// end function

    }
}
