package flash.media
{

    public class H264VideoStreamSettings extends VideoStreamSettings
    {
        private var m_profile:String;
        private var m_level:String;

        public function H264VideoStreamSettings()
        {
            this.m_profile = H264Profile.BASELINE;
            this.m_level = H264Level.LEVEL_2_1;
            return;
        }// end function

        override public function get codec() : String
        {
            return VideoCodec.H264AVC;
        }// end function

        public function setProfileLevel(param1:String, param2:String) : void
        {
            if (param1.toLowerCase() != H264Profile.BASELINE)
            {
            }
            if (param1.toLowerCase() != H264Profile.MAIN)
            {
                Error.throwError(ArgumentError, 2008, "profile");
            }
            if (param2 != H264Level.LEVEL_1)
            {
            }
            if (param2.toLowerCase() != H264Level.LEVEL_1B)
            {
            }
            if (param2 != H264Level.LEVEL_1_1)
            {
            }
            if (param2 != H264Level.LEVEL_1_2)
            {
            }
            if (param2 != H264Level.LEVEL_1_3)
            {
            }
            if (param2 != H264Level.LEVEL_2)
            {
            }
            if (param2 != H264Level.LEVEL_2_1)
            {
            }
            if (param2 != H264Level.LEVEL_2_2)
            {
            }
            if (param2 != H264Level.LEVEL_3)
            {
            }
            if (param2 != H264Level.LEVEL_3_1)
            {
            }
            if (param2 != H264Level.LEVEL_3_2)
            {
            }
            if (param2 != H264Level.LEVEL_4)
            {
            }
            if (param2 != H264Level.LEVEL_4_1)
            {
            }
            if (param2 != H264Level.LEVEL_4_2)
            {
            }
            if (param2 != H264Level.LEVEL_5)
            {
            }
            if (param2 != H264Level.LEVEL_5_1)
            {
                Error.throwError(ArgumentError, 2008, "level");
            }
            this.m_profile = param1;
            this.m_level = param2;
            return;
        }// end function

        public function get profile() : String
        {
            return this.m_profile;
        }// end function

        public function get level() : String
        {
            return this.m_level;
        }// end function

    }
}
