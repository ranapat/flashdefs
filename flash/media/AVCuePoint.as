package flash.media
{
    import flash.utils.*;

    public class AVCuePoint extends Object
    {
        private var m_dictionary:Dictionary;
        private var m_localTime:Number;

        public function AVCuePoint(param1:Dictionary, param2:Number)
        {
            this.m_dictionary = param1;
            this.m_localTime = param2;
            return;
        }// end function

        public function get dictionary() : Dictionary
        {
            return this.m_dictionary;
        }// end function

        public function get localTime() : Number
        {
            return this.m_localTime;
        }// end function

    }
}
