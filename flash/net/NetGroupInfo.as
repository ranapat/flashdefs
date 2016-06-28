package flash.net
{

    final public class NetGroupInfo extends Object
    {
        private var m_postingSendDataBytesPerSecond:Number;
        private var m_postingSendControlBytesPerSecond:Number;
        private var m_postingReceiveDataBytesPerSecond:Number;
        private var m_postingReceiveControlBytesPerSecond:Number;
        private var m_routingSendBytesPerSecond:Number;
        private var m_routingReceiveBytesPerSecond:Number;
        private var m_objectReplicationSendBytesPerSecond:Number;
        private var m_objectReplicationReceiveBytesPerSecond:Number;

        public function NetGroupInfo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
        {
            this.m_postingSendDataBytesPerSecond = param1;
            this.m_postingSendControlBytesPerSecond = param2;
            this.m_postingReceiveDataBytesPerSecond = param3;
            this.m_postingReceiveControlBytesPerSecond = param4;
            this.m_routingSendBytesPerSecond = param5;
            this.m_routingReceiveBytesPerSecond = param6;
            this.m_objectReplicationSendBytesPerSecond = param7;
            this.m_objectReplicationReceiveBytesPerSecond = param8;
            return;
        }// end function

        public function get postingSendDataBytesPerSecond() : Number
        {
            return this.m_postingSendDataBytesPerSecond;
        }// end function

        public function get postingSendControlBytesPerSecond() : Number
        {
            return this.m_postingSendControlBytesPerSecond;
        }// end function

        public function get postingReceiveDataBytesPerSecond() : Number
        {
            return this.m_postingReceiveDataBytesPerSecond;
        }// end function

        public function get postingReceiveControlBytesPerSecond() : Number
        {
            return this.m_postingReceiveControlBytesPerSecond;
        }// end function

        public function get routingSendBytesPerSecond() : Number
        {
            return this.m_routingSendBytesPerSecond;
        }// end function

        public function get routingReceiveBytesPerSecond() : Number
        {
            return this.m_routingReceiveBytesPerSecond;
        }// end function

        public function get objectReplicationSendBytesPerSecond() : Number
        {
            return this.m_objectReplicationSendBytesPerSecond;
        }// end function

        public function get objectReplicationReceiveBytesPerSecond() : Number
        {
            return this.m_objectReplicationReceiveBytesPerSecond;
        }// end function

        public function toString() : String
        {
            return "postingSendDataBytesPerSecond=" + this.m_postingSendDataBytesPerSecond + " postingSendControlBytesPerSecond=" + this.m_postingSendControlBytesPerSecond + " postingReceiveDataBytesPerSecond=" + this.m_postingReceiveDataBytesPerSecond + " postingReceiveControlBytesPerSecond=" + this.m_postingReceiveControlBytesPerSecond + " routingSendBytesPerSecond=" + this.m_routingSendBytesPerSecond + " routingReceiveBytesPerSecond=" + this.m_routingReceiveBytesPerSecond + " objectReplicationSendBytesPerSecond=" + this.m_objectReplicationSendBytesPerSecond + " objectReplicationReceiveBytesPerSecond=" + this.m_objectReplicationReceiveBytesPerSecond;
        }// end function

    }
}
