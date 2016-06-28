package flash.net
{

    final public class NetStreamInfo extends Object
    {
        private var m_currentBytesPerSecond:Number;
        private var m_byteCount:Number;
        private var m_maxBytesPerSecond:Number;
        private var m_audioBytesPerSecond:Number;
        private var m_audioByteCount:Number;
        private var m_videoBytesPerSecond:Number;
        private var m_videoByteCount:Number;
        private var m_dataBytesPerSecond:Number;
        private var m_dataByteCount:Number;
        private var m_playbackBytesPerSecond:Number;
        private var m_droppedFrames:Number;
        private var m_audioBufferByteLength:Number;
        private var m_videoBufferByteLength:Number;
        private var m_dataBufferByteLength:Number;
        private var m_audioBufferLength:Number;
        private var m_videoBufferLength:Number;
        private var m_dataBufferLength:Number;
        private var m_srtt:Number;
        private var m_audioLossRate:Number;
        private var m_videoLossRate:Number;
        private var m_metaData:Object;
        private var m_xmpData:Object;
        private var m_resourceName:String;
        private var m_uri:String;
        private var m_isLive:Boolean;

        public function NetStreamInfo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number, param15:Number, param16:Number, param17:Number, param18:Number, param19:Number, param20:Number, param21:Object = null, param22:Object = null, param23:String = null, param24:String = null, param25:Boolean = true)
        {
            this.m_currentBytesPerSecond = param1;
            this.m_byteCount = param2;
            this.m_maxBytesPerSecond = param3;
            this.m_audioBytesPerSecond = param4;
            this.m_audioByteCount = param5;
            this.m_videoBytesPerSecond = param6;
            this.m_videoByteCount = param7;
            this.m_dataBytesPerSecond = param8;
            this.m_dataByteCount = param9;
            this.m_playbackBytesPerSecond = param10;
            this.m_droppedFrames = param11;
            this.m_audioBufferByteLength = param12;
            this.m_videoBufferByteLength = param13;
            this.m_dataBufferByteLength = param14;
            this.m_audioBufferLength = param15;
            this.m_videoBufferLength = param16;
            this.m_dataBufferLength = param17;
            this.m_srtt = param18;
            this.m_audioLossRate = param19;
            this.m_videoLossRate = param20;
            this.m_metaData = param21;
            this.m_xmpData = param22;
            this.m_uri = param23;
            this.m_resourceName = param24;
            this.m_isLive = param25;
            return;
        }// end function

        public function get currentBytesPerSecond() : Number
        {
            return this.m_currentBytesPerSecond;
        }// end function

        public function get byteCount() : Number
        {
            return this.m_byteCount;
        }// end function

        public function get maxBytesPerSecond() : Number
        {
            return this.m_maxBytesPerSecond;
        }// end function

        public function get audioBytesPerSecond() : Number
        {
            return this.m_audioBytesPerSecond;
        }// end function

        public function get audioByteCount() : Number
        {
            return this.m_audioByteCount;
        }// end function

        public function get videoBytesPerSecond() : Number
        {
            return this.m_videoBytesPerSecond;
        }// end function

        public function get videoByteCount() : Number
        {
            return this.m_videoByteCount;
        }// end function

        public function get dataBytesPerSecond() : Number
        {
            return this.m_dataBytesPerSecond;
        }// end function

        public function get dataByteCount() : Number
        {
            return this.m_dataByteCount;
        }// end function

        public function get playbackBytesPerSecond() : Number
        {
            return this.m_playbackBytesPerSecond;
        }// end function

        public function get droppedFrames() : Number
        {
            return this.m_droppedFrames;
        }// end function

        public function get audioBufferByteLength() : Number
        {
            return this.m_audioBufferByteLength;
        }// end function

        public function get videoBufferByteLength() : Number
        {
            return this.m_videoBufferByteLength;
        }// end function

        public function get dataBufferByteLength() : Number
        {
            return this.m_dataBufferByteLength;
        }// end function

        public function get audioBufferLength() : Number
        {
            return this.m_audioBufferLength;
        }// end function

        public function get videoBufferLength() : Number
        {
            return this.m_videoBufferLength;
        }// end function

        public function get dataBufferLength() : Number
        {
            return this.m_dataBufferLength;
        }// end function

        public function get SRTT() : Number
        {
            return this.m_srtt;
        }// end function

        public function get audioLossRate() : Number
        {
            return this.m_audioLossRate;
        }// end function

        public function get videoLossRate() : Number
        {
            return this.m_videoLossRate;
        }// end function

        public function get metaData() : Object
        {
            return this.m_metaData;
        }// end function

        public function get xmpData() : Object
        {
            return this.m_xmpData;
        }// end function

        public function get uri() : String
        {
            return this.m_uri;
        }// end function

        public function get resourceName() : String
        {
            return this.m_resourceName;
        }// end function

        public function get isLive() : Boolean
        {
            return this.m_isLive;
        }// end function

        public function toString() : String
        {
            return "currentBytesPerSecond=" + this.m_currentBytesPerSecond + " byteCount=" + this.m_byteCount + " maxBytesPerSecond=" + this.m_maxBytesPerSecond + " audioBytesPerSecond=" + this.m_audioBytesPerSecond + " audioByteCount=" + this.m_audioByteCount + " videoBytesPerSecond=" + this.m_videoBytesPerSecond + " videoByteCount=" + this.m_videoByteCount + " dataBytesPerSecond=" + this.m_dataBytesPerSecond + " dataByteCount=" + this.m_dataByteCount + " playbackBytesPerSecond=" + this.m_playbackBytesPerSecond + " droppedFrames=" + this.m_droppedFrames + " audioBufferLength=" + this.m_audioBufferLength + " videoBufferLength=" + this.m_videoBufferLength + " dataBufferLength=" + this.m_dataBufferLength + " audioBufferByteLength=" + this.m_audioBufferByteLength + " videoBufferByteLength=" + this.m_videoBufferByteLength + " dataBufferByteLength=" + this.m_dataBufferByteLength + " srtt=" + this.m_srtt + " audioLossRate=" + this.m_audioLossRate + " videoLossRate=" + this.m_videoLossRate + " metaData=" + this.m_metaData + " xmpData=" + this.m_xmpData + " uri=" + this.m_uri + " resourceName=" + this.m_resourceName + " isLive=" + this.m_isLive;
        }// end function

    }
}
