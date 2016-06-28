package flash.media
{

    public class AVTimeline extends Object
    {
        private var m_type:String;
        private var m_virtualStartTime:Number;
        private var m_virtualDuration:Number;
        private var m_firstPeriodIndex:int;
        private var m_lastPeriodIndex:int;
        private var m_complete:Boolean;

        public function AVTimeline(param1:String, param2:Number, param3:Number, param4:int, param5:int, param6:Boolean)
        {
            this.m_type = param1;
            this.m_virtualStartTime = param2;
            this.m_virtualDuration = param3;
            this.m_firstPeriodIndex = param4;
            this.m_lastPeriodIndex = param5;
            this.m_complete = param6;
            return;
        }// end function

        public function get type() : String
        {
            return this.m_type;
        }// end function

        public function get virtualStartTime() : Number
        {
            return this.m_virtualStartTime;
        }// end function

        public function get virtualDuration() : Number
        {
            return this.m_virtualDuration;
        }// end function

        public function get firstPeriodIndex() : int
        {
            return this.m_firstPeriodIndex;
        }// end function

        public function get lastPeriodIndex() : int
        {
            return this.m_lastPeriodIndex;
        }// end function

        public function get complete() : Boolean
        {
            return this.m_complete;
        }// end function

    }
}
