package flash.media
{

    public class AVABRParameters extends Object
    {
        private var m_policy:String;
        private var m_startBitsPerSecond:int;
        private var m_minBitsPerSecond:int;
        private var m_maxBitsPerSecond:int;
        public static const AGGRESSIVE:String = "aggressive";
        public static const MODERATE:String = "moderate";
        public static const CONSERVATIVE:String = "conservative";

        public function AVABRParameters(param1:String, param2:uint, param3:uint, param4:uint)
        {
            this.m_policy = param1;
            this.m_startBitsPerSecond = param2;
            this.m_minBitsPerSecond = param3;
            this.m_maxBitsPerSecond = param4;
            return;
        }// end function

        public function get policy() : String
        {
            return this.m_policy;
        }// end function

        public function set policy(param1:String) : void
        {
            this.m_policy = param1;
            return;
        }// end function

        public function get startBitsPerSecond() : int
        {
            return this.m_startBitsPerSecond;
        }// end function

        public function set startBitsPerSecond(param1:int)
        {
            this.m_startBitsPerSecond = param1;
            return;
        }// end function

        public function get minBitsPerSecond() : int
        {
            return this.m_minBitsPerSecond;
        }// end function

        public function set minBitsPerSecond(param1:int)
        {
            this.m_minBitsPerSecond = param1;
            return;
        }// end function

        public function get maxBitsPerSecond() : int
        {
            return this.m_maxBitsPerSecond;
        }// end function

        public function set maxBitsPerSecond(param1:int)
        {
            this.m_maxBitsPerSecond = param1;
            return;
        }// end function

    }
}
