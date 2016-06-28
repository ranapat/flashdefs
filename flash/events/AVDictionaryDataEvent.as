package flash.events
{
    import flash.utils.*;

    public class AVDictionaryDataEvent extends Event
    {
        private var m_dictionary:Dictionary;
        private var m_dataTime:Number;
        public static const AV_DICTIONARY_DATA:String = "avDictionaryData";

        public function AVDictionaryDataEvent(param1:String = "avDictionaryData", param2:Boolean = false, param3:Boolean = false, param4:Dictionary = null, param5:Number = 0)
        {
            super(param1, param2, param3);
            this.m_dictionary = param4;
            this.m_dataTime = param5;
            return;
        }// end function

        public function get dictionary() : Dictionary
        {
            return this.m_dictionary;
        }// end function

        public function get time() : Number
        {
            return this.m_dataTime;
        }// end function

    }
}
