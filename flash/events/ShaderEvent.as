package flash.events
{
    import __AS3__.vec.*;
    import flash.display.*;
    import flash.utils.*;

    public class ShaderEvent extends Event
    {
        private var m_bitmapData:BitmapData;
        private var m_byteArray:ByteArray;
        private var m_vector:Vector.<Number>;
        public static const COMPLETE:String = "complete";

        public function ShaderEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:BitmapData = null, param5:ByteArray = null, param6:Vector.<Number> = null)
        {
            super(param1, param2, param3);
            this.m_bitmapData = param4;
            this.m_byteArray = param5;
            this.m_vector = param6;
            return;
        }// end function

        override public function clone() : Event
        {
            return new ShaderEvent(type, bubbles, cancelable, this.bitmapData, this.byteArray, this.vector);
        }// end function

        override public function toString() : String
        {
            return formatToString("ShaderEvent", "type", "bubbles", "cancelable", "eventPhase", "bitmapData", "byteArray", "vector");
        }// end function

        public function get bitmapData() : BitmapData
        {
            return this.m_bitmapData;
        }// end function

        public function set bitmapData(param1:BitmapData)
        {
            this.m_bitmapData = param1;
            return;
        }// end function

        public function get byteArray() : ByteArray
        {
            return this.m_byteArray;
        }// end function

        public function set byteArray(param1:ByteArray)
        {
            this.m_byteArray = param1;
            return;
        }// end function

        public function get vector() : Vector.<Number>
        {
            return this.m_vector;
        }// end function

        public function set vector(param1:Vector.<Number>)
        {
            this.m_vector = param1;
            return;
        }// end function

    }
}
