package flash.media
{
    import flash.utils.*;

    final public class SoundMixer extends Object
    {

        public function SoundMixer()
        {
            return;
        }// end function

        public static function stopAll() : void;

        public static function computeSpectrum(param1:ByteArray, param2:Boolean = false, param3:int = 0) : void;

        public static function get bufferTime() : int;

        public static function set bufferTime(param1:int) : void;

        public static function get soundTransform() : SoundTransform;

        public static function set soundTransform(param1:SoundTransform) : void;

        public static function areSoundsInaccessible() : Boolean;

        public static function get audioPlaybackMode() : String;

        public static function set audioPlaybackMode(param1:String) : void;

        public static function get useSpeakerphoneForVoice() : Boolean;

        public static function set useSpeakerphoneForVoice(param1:Boolean) : void;

    }
}
