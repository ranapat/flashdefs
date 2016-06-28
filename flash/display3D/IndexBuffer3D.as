package flash.display3D
{
    import __AS3__.vec.*;
    import flash.utils.*;

    final public class IndexBuffer3D extends Object
    {

        public function IndexBuffer3D()
        {
            return;
        }// end function

        public function uploadFromVector(param1:Vector.<uint>, param2:int, param3:int) : void;

        public function uploadFromByteArray(param1:ByteArray, param2:int, param3:int, param4:int) : void;

        public function dispose() : void;

    }
}
