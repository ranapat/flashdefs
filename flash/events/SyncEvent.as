package flash.events
{

    public class SyncEvent extends Event
    {
        private var m_changeList:Array;
        public static const SYNC:String = "sync";

        public function SyncEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null)
        {
            super(param1, param2, param3);
            this.m_changeList = param4;
            return;
        }// end function

        override public function clone() : Event
        {
            return new SyncEvent(type, bubbles, cancelable, this.m_changeList);
        }// end function

        override public function toString() : String
        {
            return formatToString("SyncEvent", "type", "bubbles", "cancelable", "eventPhase", "changeList");
        }// end function

        public function get changeList() : Array
        {
            return this.m_changeList;
        }// end function

        public function set changeList(param1:Array) : void
        {
            this.m_changeList = param1;
            return;
        }// end function

    }
}
