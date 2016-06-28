package flash.media
{

    public class AVPlayState extends Object
    {
        private var m_state:int;
        public static const UNINITIALIZED:int = 0;
        public static const READY:int = 1;
        public static const BUFFERING:int = 2;
        public static const PLAYING:int = 3;
        public static const PAUSED:int = 4;
        public static const EOF:int = 5;
        public static const SUSPENDED:int = 6;
        public static const TRICK_PLAY:int = 7;
        public static const UNRECOVERABLE_ERROR:int = 8;

        public function AVPlayState(param1:uint)
        {
            this.m_state = param1;
            return;
        }// end function

        public function get state() : int
        {
            return this.m_state;
        }// end function

    }
}
