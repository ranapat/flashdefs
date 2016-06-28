package flash.events
{
    import flash.media.*;

    public class AVStatusEvent extends Event
    {
        private var m_result:AVResult;
        private var m_notificationType:String;
        private var m_description:String;
        public static const AV_STATUS:String = "avStatus";
        public static const LOAD_COMPLETE:String = "LoadComplete";
        public static const MANIFEST_UPDATE:String = "ManifestUpdate";
        public static const INSERTION_COMPLETE:String = "InsertionComplete";
        public static const ERROR:String = "Error";
        public static const WARNING:String = "Warning";
        public static const DIMENSION_CHANGE:String = "DimensionChange";
        public static const DECODER_TYPE:String = "DecoderType";
        public static const RENDER_TYPE:String = "RenderType";
        public static const SEEK_COMPLETE:String = "SeekComplete";
        public static const STEP_COMPLETE:String = "StepComplete";
        public static const STREAM_SWITCH:String = "StreamSwitch";
        public static const PLAY_STATE:String = "PlayState";
        public static const BUFFER_STATE:String = "BufferState";
        public static const TRICKPLAY_ENDED:String = "TrickPlayEnded";
        public static const BACKGROUND_MANIFEST_ERROR:String = "BackgroundManifestError";
        public static const BACKGROUND_MANIFEST_WARNING:String = "BackgroundManifestWarning";

        public function AVStatusEvent(param1:String = "avStatus", param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0, param6:String = "")
        {
            super(param1, param2, param3);
            this.m_notificationType = param4;
            this.m_result = new AVResult(param5);
            this.m_description = param6;
            return;
        }// end function

        public function get result() : AVResult
        {
            return this.m_result;
        }// end function

        public function get notificationType() : String
        {
            return this.m_notificationType;
        }// end function

        public function get description() : String
        {
            return this.m_description;
        }// end function

    }
}
