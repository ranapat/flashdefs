package flash.events
{

    public class TextEvent extends Event
    {
        private var m_text:String;
        public static const LINK:String = "link";
        public static const TEXT_INPUT:String = "textInput";

        public function TextEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "")
        {
            super(param1, param2, param3);
            this.m_text = param4;
            return;
        }// end function

        public function get text() : String
        {
            return this.m_text;
        }// end function

        public function set text(param1:String) : void
        {
            this.m_text = param1;
            return;
        }// end function

        override public function clone() : Event
        {
            var _loc_1:* = new TextEvent(type, bubbles, cancelable, this.m_text);
            _loc_1.copyNativeData(this);
            return _loc_1;
        }// end function

        override public function toString() : String
        {
            return formatToString("TextEvent", "type", "bubbles", "cancelable", "eventPhase", "text");
        }// end function

        private function copyNativeData(event:TextEvent) : void;

    }
}
