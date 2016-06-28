package flash.media
{

    public class AVInsertionResult extends AVResult
    {
        private var m_periodIndex:int;
        private var m_insertedBeforeReadHead:Boolean;

        public function AVInsertionResult(param1:int, param2:int, param3:Boolean)
        {
            super(param1);
            this.m_insertedBeforeReadHead = param3;
            this.m_periodIndex = param2;
            return;
        }// end function

        public function get periodIndex() : int
        {
            return this.m_periodIndex;
        }// end function

        public function get insertedBeforeReadHead() : Boolean
        {
            return this.m_insertedBeforeReadHead;
        }// end function

    }
}
