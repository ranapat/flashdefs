package flash.media
{

    public class AVABRProfileInfo extends Object
    {
        private var m_bitsPerSecond:int;
        private var m_width:int;
        private var m_height:int;

        public function AVABRProfileInfo(param1:int, param2:int, param3:int)
        {
            this.m_bitsPerSecond = param1;
            this.m_width = param2;
            this.m_height = param3;
            return;
        }// end function

        public function get bitsPerSecond() : int
        {
            return this.m_bitsPerSecond;
        }// end function

        public function get width() : int
        {
            return this.m_width;
        }// end function

        public function get height() : int
        {
            return this.m_height;
        }// end function

    }
}
