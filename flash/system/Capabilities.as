﻿package flash.system
{

    final public class Capabilities extends Object
    {

        public function Capabilities()
        {
            return;
        }// end function

        public static function get isEmbeddedInAcrobat() : Boolean;

        public static function get hasEmbeddedVideo() : Boolean;

        public static function get hasAudio() : Boolean;

        public static function get avHardwareDisable() : Boolean;

        public static function get hasAccessibility() : Boolean;

        public static function get hasAudioEncoder() : Boolean;

        public static function get hasMP3() : Boolean;

        public static function get hasPrinting() : Boolean;

        public static function get hasScreenBroadcast() : Boolean;

        public static function get hasScreenPlayback() : Boolean;

        public static function get hasStreamingAudio() : Boolean;

        public static function get hasStreamingVideo() : Boolean;

        public static function get hasVideoEncoder() : Boolean;

        public static function get isDebugger() : Boolean;

        public static function get localFileReadDisable() : Boolean;

        public static function get language() : String;

        public static function get manufacturer() : String;

        public static function get os() : String;

        public static function get cpuArchitecture() : String;

        public static function get playerType() : String;

        public static function get serverString() : String;

        public static function get version() : String;

        public static function get screenColor() : String;

        public static function get pixelAspectRatio() : Number;

        public static function get screenDPI() : Number;

        public static function get screenResolutionX() : Number;

        public static function get screenResolutionY() : Number;

        public static function get touchscreenType() : String;

        public static function get hasIME() : Boolean;

        public static function get hasTLS() : Boolean;

        public static function get maxLevelIDC() : String;

        public static function get supports32BitProcesses() : Boolean;

        public static function get supports64BitProcesses() : Boolean;

        public static function get _internal() : uint;

        public static function hasMultiChannelAudio(param1:String) : Boolean;

    }
}
