package flash.events
{
    import flash.utils.*;

    public class AVLoadInfoEvent extends Event
    {
        private var m_loadInfo:Dictionary;
        public static const AV_LOAD_INFO:Object = "avLoadInfo";

        public function AVLoadInfoEvent(param1:String = "avLoadInfo", param2:Boolean = false, param3:Boolean = false, param4:Dictionary = null)
        {
            super(param1, param2, param3);
            this.m_loadInfo = param4;
            return;
        }// end function

        public function get loadInfo() : Dictionary
        {
            return this.m_loadInfo;
        }// end function

    }
}
