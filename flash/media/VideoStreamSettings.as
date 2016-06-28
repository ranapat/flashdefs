package flash.media
{

    public class VideoStreamSettings extends Object
    {
        private var m_height:int;
        private var m_width:int;
        private var m_fps:Number;
        private var m_bandwidth:int;
        private var m_quality:int;
        private var m_keyFrameInterval:int;

        public function VideoStreamSettings()
        {
            this.m_height = -1;
            this.m_width = -1;
            this.m_fps = -1;
            this.m_bandwidth = -1;
            this.m_quality = -1;
            this.m_keyFrameInterval = -1;
            return;
        }// end function

        public function setMode(param1:int, param2:int, param3:Number) : void
        {
            if (param1 < 1)
            {
            }
            if (param1 != -1)
            {
                param1 = 1;
            }
            if (param2 < 1)
            {
            }
            if (param2 != -1)
            {
                param2 = 1;
            }
            if (isNaN(param3))
            {
                param3 = 0;
            }
            if (param3 < 0)
            {
            }
            if (param3 != -1)
            {
                param3 = 0;
            }
            if (param1 > 1920)
            {
                param1 = 1920;
            }
            if (param2 > 1920)
            {
                param2 = 1920;
            }
            if (param3 > 60)
            {
                param3 = 60;
            }
            this.m_width = param1;
            this.m_height = param2;
            this.m_fps = param3;
            return;
        }// end function

        public function get width() : int
        {
            return this.m_width;
        }// end function

        public function get height() : int
        {
            return this.m_height;
        }// end function

        public function get fps() : Number
        {
            return this.m_fps;
        }// end function

        public function setQuality(param1:int, param2:int) : void
        {
            if (param1 < 0)
            {
            }
            if (param1 != -1)
            {
                param1 = 0;
            }
            if (param2 < 0)
            {
            }
            if (param2 != -1)
            {
                param2 = 0;
            }
            if (param2 > 100)
            {
                param2 = 100;
            }
            this.m_bandwidth = param1;
            this.m_quality = param2;
            return;
        }// end function

        public function get quality() : int
        {
            return this.m_quality;
        }// end function

        public function get bandwidth() : int
        {
            return this.m_bandwidth;
        }// end function

        public function setKeyFrameInterval(param1:int) : void
        {
            if (param1 < 1)
            {
            }
            if (param1 != -1)
            {
                param1 = 1;
            }
            if (param1 > 300)
            {
                param1 = 300;
            }
            this.m_keyFrameInterval = param1;
            return;
        }// end function

        public function get keyFrameInterval() : int
        {
            return this.m_keyFrameInterval;
        }// end function

        public function get codec() : String
        {
            return VideoCodec.SORENSON;
        }// end function

    }
}
