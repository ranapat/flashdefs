package flash.events
{

    public class GeolocationEvent extends Event
    {
        private var m_latitude:Number;
        private var m_longitude:Number;
        private var m_altitude:Number;
        private var m_horizontalAccuracy:Number;
        private var m_verticalAccuracy:Number;
        private var m_speed:Number;
        private var m_heading:Number;
        private var m_timestamp:Number;
        public static const UPDATE:String = "update";

        public function GeolocationEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:Number = 0, param7:Number = 0, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 0)
        {
            super(param1, param2, param3);
            this.m_latitude = param4;
            this.m_longitude = param5;
            this.m_altitude = param6;
            this.m_horizontalAccuracy = param7;
            this.m_verticalAccuracy = param8;
            this.m_speed = param9;
            this.m_heading = param10;
            this.m_timestamp = param11;
            return;
        }// end function

        override public function clone() : Event
        {
            return new GeolocationEvent(type, bubbles, cancelable, this.m_latitude, this.m_longitude, this.m_altitude, this.m_horizontalAccuracy, this.m_verticalAccuracy, this.m_speed, this.m_heading, this.m_timestamp);
        }// end function

        override public function toString() : String
        {
            return formatToString("GeolocationEvent", "type", "bubbles", "cancelable", "latitude", "longitude", "altitude", "horizontalAccuracy", "verticalAccuracy", "speed", "heading", "timestamp");
        }// end function

        public function get latitude() : Number
        {
            return this.m_latitude;
        }// end function

        public function set latitude(param1:Number) : void
        {
            this.m_latitude = param1;
            return;
        }// end function

        public function get longitude() : Number
        {
            return this.m_longitude;
        }// end function

        public function set longitude(param1:Number) : void
        {
            this.m_longitude = param1;
            return;
        }// end function

        public function get altitude() : Number
        {
            return this.m_altitude;
        }// end function

        public function set altitude(param1:Number) : void
        {
            this.m_altitude = param1;
            return;
        }// end function

        public function get horizontalAccuracy() : Number
        {
            return this.m_horizontalAccuracy;
        }// end function

        public function set horizontalAccuracy(param1:Number) : void
        {
            this.m_horizontalAccuracy = param1;
            return;
        }// end function

        public function get verticalAccuracy() : Number
        {
            return this.m_verticalAccuracy;
        }// end function

        public function set verticalAccuracy(param1:Number) : void
        {
            this.m_verticalAccuracy = param1;
            return;
        }// end function

        public function get speed() : Number
        {
            return this.m_speed;
        }// end function

        public function set speed(param1:Number) : void
        {
            this.m_speed = param1;
            return;
        }// end function

        public function get heading() : Number
        {
            return this.m_heading;
        }// end function

        public function set heading(param1:Number) : void
        {
            this.m_heading = param1;
            return;
        }// end function

        public function get timestamp() : Number
        {
            return this.m_timestamp;
        }// end function

        public function set timestamp(param1:Number) : void
        {
            this.m_timestamp = param1;
            return;
        }// end function

    }
}
