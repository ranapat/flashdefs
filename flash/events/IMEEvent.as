package flash.events
{
    import flash.text.ime.*;

    public class IMEEvent extends TextEvent
    {
        private var m_imeClient:IIMEClient;
        public static const IME_COMPOSITION:String = "imeComposition";
        public static const IME_START_COMPOSITION:String = "imeStartComposition";

        public function IMEEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:IIMEClient = null)
        {
            super(param1, param2, param3, param4);
            this.m_imeClient = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new IMEEvent(type, bubbles, cancelable, text, this.imeClient);
        }// end function

        public function get imeClient() : IIMEClient
        {
            return this.m_imeClient;
        }// end function

        public function set imeClient(param1:IIMEClient) : void
        {
            this.m_imeClient = param1;
            return;
        }// end function

        override public function toString() : String
        {
            return formatToString("IMEEvent", "type", "bubbles", "cancelable", "eventPhase", "text", "imeClient");
        }// end function

    }
}
