package flash.media
{

    public class AVPeriodInfo extends Object
    {
        private var m_localStartTime:Number;
        private var m_virtualStartTime:Number;
        private var m_duration:Number;
        private var m_firstCuePointIndex:int;
        private var m_lastCuePointIndex:int;
        private var m_firstSubscribedTagIndex:int;
        private var m_lastSubscribedTagIndex:int;
        private var m_userData:int;
        private var m_supportsTrickPlay:Boolean;
        private var m_targetDuration:Number;

        public function AVPeriodInfo(param1:Number, param2:Number, param3:Number, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Boolean, param10:Number)
        {
            this.m_localStartTime = param1;
            this.m_virtualStartTime = param2;
            this.m_duration = param3;
            this.m_firstCuePointIndex = param4;
            this.m_lastCuePointIndex = param5;
            this.m_firstSubscribedTagIndex = param6;
            this.m_lastSubscribedTagIndex = param7;
            this.m_userData = param8;
            this.m_supportsTrickPlay = param9;
            this.m_targetDuration = param10;
            return;
        }// end function

        public function get localStartTime() : Number
        {
            return this.m_localStartTime;
        }// end function

        public function get virtualStartTime() : Number
        {
            return this.m_virtualStartTime;
        }// end function

        public function get duration() : Number
        {
            return this.m_duration;
        }// end function

        public function get firstCuePointIndex() : int
        {
            return this.m_firstCuePointIndex;
        }// end function

        public function get lastCuePointIndex() : int
        {
            return this.m_lastCuePointIndex;
        }// end function

        public function get firstSubscribedTagIndex() : int
        {
            return this.m_firstSubscribedTagIndex;
        }// end function

        public function get lastSubscribedTagIndex() : int
        {
            return this.m_lastSubscribedTagIndex;
        }// end function

        public function get userData() : int
        {
            return this.m_userData;
        }// end function

        public function get supportsTrickPlay() : Boolean
        {
            return this.m_supportsTrickPlay;
        }// end function

        public function get targetDuration() : Number
        {
            return this.m_targetDuration;
        }// end function

    }
}
