package flash.events
{
    import flash.media.*;

    public class AVPlayStateEvent extends Event
    {
        private var m_playState:AVPlayState;
        public static const AV_PLAY_STATE:String = "avPlayState";

        public function AVPlayStateEvent(param1:String = "avPlayState", param2:Boolean = false, param3:Boolean = false, param4:int = 0)
        {
            super(param1, param2, param3);
            this.m_playState = new AVPlayState(param4);
            return;
        }// end function

        public function get playState() : AVPlayState
        {
            return this.m_playState;
        }// end function

    }
}
