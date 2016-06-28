package flash.media
{

    final public class MicrophoneEnhancedOptions extends Object
    {
        private var m_mode:String;
        private var m_echoPath:int;
        private var m_nlp:Boolean;
        private var m_isVoiceDetected:int;

        public function MicrophoneEnhancedOptions()
        {
            this.m_mode = MicrophoneEnhancedMode.FULL_DUPLEX;
            this.m_echoPath = 128;
            this.m_nlp = true;
            this.m_isVoiceDetected = -1;
            return;
        }// end function

        public function get mode() : String
        {
            return this.m_mode;
        }// end function

        public function set mode(param1:String) : void
        {
            if (MicrophoneEnhancedMode.FULL_DUPLEX != param1)
            {
            }
            if (MicrophoneEnhancedMode.HALF_DUPLEX != param1)
            {
            }
            if (MicrophoneEnhancedMode.HEADSET != param1)
            {
            }
            if (MicrophoneEnhancedMode.SPEAKER_MUTE != param1)
            {
            }
            if (MicrophoneEnhancedMode.OFF == param1)
            {
                this.m_mode = param1;
            }
            return;
        }// end function

        public function get echoPath() : int
        {
            return this.m_echoPath;
        }// end function

        public function set echoPath(param1:int) : void
        {
            if (param1 != 128)
            {
            }
            if (param1 == 256)
            {
                this.m_echoPath = param1;
            }
            return;
        }// end function

        public function get nonLinearProcessing() : Boolean
        {
            return this.m_nlp;
        }// end function

        public function set nonLinearProcessing(param1:Boolean) : void
        {
            this.m_nlp = param1;
            return;
        }// end function

        public function get autoGain() : Boolean
        {
            return false;
        }// end function

        public function set autoGain(param1:Boolean) : void
        {
            return;
        }// end function

        public function get isVoiceDetected() : int
        {
            return this.m_isVoiceDetected;
        }// end function

        public function set isVoiceDetected(param1:int)
        {
            this.m_isVoiceDetected = param1;
            return;
        }// end function

    }
}
