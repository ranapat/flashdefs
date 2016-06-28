package flash.media
{

    public class AVTrackInfo extends Object
    {
        private var m_description:String;
        private var m_language:String;
        private var m_defaultTrack:Boolean;
        private var m_autoSelect:Boolean;
        private var m_forced:Boolean;
        private var m_activity:Boolean;
        private var m_dataTrackInfoServiceType:String;
        private var m_pid:int;
        public static const DTI_608_CAPTIONS:String = "DTI608Captions";
        public static const DTI_708_CAPTIONS:String = "DTI708Captions";
        public static const DTI_WEBVTT_CAPTIONS:String = "DTIWebVTTCaptions";

        public function AVTrackInfo(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:String, param8:int)
        {
            this.m_description = param1;
            this.m_language = param2;
            this.m_defaultTrack = param3;
            this.m_autoSelect = param4;
            this.m_forced = param5;
            this.m_activity = param6;
            this.m_dataTrackInfoServiceType = param7;
            this.m_pid = param8;
            return;
        }// end function

        public function get description() : String
        {
            return this.m_description;
        }// end function

        public function get language() : String
        {
            return this.m_language;
        }// end function

        public function get defaultTrack() : Boolean
        {
            return this.m_defaultTrack;
        }// end function

        public function get autoSelect() : Boolean
        {
            return this.m_autoSelect;
        }// end function

        public function get forced() : Boolean
        {
            return this.m_forced;
        }// end function

        public function get activity() : Boolean
        {
            return this.m_activity;
        }// end function

        public function get dataTrackInfoServiceType() : String
        {
            return this.m_dataTrackInfoServiceType;
        }// end function

        public function get pid() : int
        {
            return this.m_pid;
        }// end function

    }
}
