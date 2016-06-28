package flash.display
{
    import flash.events.*;

    public class ShaderJob extends EventDispatcher
    {

        public function ShaderJob(param1:Shader = null, param2:Object = null, param3:int = 0, param4:int = 0)
        {
            if (param1)
            {
                this.shader = param1;
            }
            if (param2)
            {
                this.target = param2;
            }
            this.width = param3;
            this.height = param4;
            return;
        }// end function

        public function start(param1:Boolean = false) : void;

        public function cancel() : void;

        public function get shader() : Shader;

        public function set shader(param1:Shader) : void;

        public function get target() : Object;

        public function set target(param1:Object) : void;

        public function get width() : int;

        public function set width(param1:int) : void;

        public function get height() : int;

        public function set height(param1:int) : void;

        public function get progress() : Number;

    }
}
