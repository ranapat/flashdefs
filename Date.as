package 
{
    import Date.*;

    dynamic public class Date extends Object
    {
        public static const length:int = 7;

        public function Date(param1 = undefined, param2 = undefined, param3 = undefined, param4 = undefined, param5 = undefined, param6 = undefined, param7 = undefined)
        {
            return;
        }// end function

        function valueOf() : Number;

        private function _toString(param1:int) : String;

        private function _setTime(param1:Number) : Number;

        private function _get(param1:int) : Number;

        function setTime(param1 = undefined) : Number
        {
            return this._setTime(param1);
        }// end function

        function toString() : String
        {
            return this._toString(0);
        }// end function

        function toDateString() : String
        {
            return this._toString(1);
        }// end function

        function toTimeString() : String
        {
            return this._toString(2);
        }// end function

        function toLocaleString() : String
        {
            return this._toString(3);
        }// end function

        function toLocaleDateString() : String
        {
            return this._toString(4);
        }// end function

        function toLocaleTimeString() : String
        {
            return this._toString(5);
        }// end function

        function toUTCString() : String
        {
            return this._toString(6);
        }// end function

        function getUTCFullYear() : Number;

        function getUTCMonth() : Number;

        function getUTCDate() : Number;

        function getUTCDay() : Number;

        function getUTCHours() : Number;

        function getUTCMinutes() : Number;

        function getUTCSeconds() : Number;

        function getUTCMilliseconds() : Number;

        function getFullYear() : Number;

        function getMonth() : Number;

        function getDate() : Number;

        function getDay() : Number;

        function getHours() : Number;

        function getMinutes() : Number;

        function getSeconds() : Number;

        function getMilliseconds() : Number;

        function getTimezoneOffset() : Number;

        function getTime() : Number;

        private function _setFullYear(... args) : Number;

        private function _setMonth(... args) : Number;

        private function _setDate(... args) : Number;

        private function _setHours(... args) : Number;

        private function _setMinutes(... args) : Number;

        private function _setSeconds(... args) : Number;

        private function _setMilliseconds(... args) : Number;

        private function _setUTCFullYear(... args) : Number;

        private function _setUTCMonth(... args) : Number;

        private function _setUTCDate(... args) : Number;

        private function _setUTCHours(... args) : Number;

        private function _setUTCMinutes(... args) : Number;

        private function _setUTCSeconds(... args) : Number;

        private function _setUTCMilliseconds(... args) : Number;

        function setFullYear(param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            return this._setFullYear.apply(this, arguments);
        }// end function

        function setMonth(param1 = undefined, param2 = undefined) : Number
        {
            return this._setMonth.apply(this, arguments);
        }// end function

        function setDate(param1 = undefined) : Number
        {
            return this._setDate.apply(this, arguments);
        }// end function

        function setHours(param1 = undefined, param2 = undefined, param3 = undefined, param4 = undefined) : Number
        {
            return this._setHours.apply(this, arguments);
        }// end function

        function setMinutes(param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            return this._setMinutes.apply(this, arguments);
        }// end function

        function setSeconds(param1 = undefined, param2 = undefined) : Number
        {
            return this._setSeconds.apply(this, arguments);
        }// end function

        function setMilliseconds(param1 = undefined) : Number
        {
            return this._setMilliseconds.apply(this, arguments);
        }// end function

        function setUTCFullYear(param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            return this._setUTCFullYear.apply(this, arguments);
        }// end function

        function setUTCMonth(param1 = undefined, param2 = undefined) : Number
        {
            return this._setUTCMonth.apply(this, arguments);
        }// end function

        function setUTCDate(param1 = undefined) : Number
        {
            return this._setUTCDate.apply(this, arguments);
        }// end function

        function setUTCHours(param1 = undefined, param2 = undefined, param3 = undefined, param4 = undefined) : Number
        {
            return this._setUTCHours.apply(this, arguments);
        }// end function

        function setUTCMinutes(param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            return this._setUTCMinutes.apply(this, arguments);
        }// end function

        function setUTCSeconds(param1 = undefined, param2 = undefined) : Number
        {
            return this._setUTCSeconds.apply(this, arguments);
        }// end function

        function setUTCMilliseconds(param1 = undefined) : Number
        {
            return this._setUTCMilliseconds.apply(this, arguments);
        }// end function

        public function get fullYear() : Number
        {
            return this.getFullYear();
        }// end function

        public function set fullYear(param1:Number)
        {
            this.setFullYear(param1);
            return;
        }// end function

        public function get month() : Number
        {
            return this.getMonth();
        }// end function

        public function set month(param1:Number)
        {
            this.setMonth(param1);
            return;
        }// end function

        public function get date() : Number
        {
            return this.getDate();
        }// end function

        public function set date(param1:Number)
        {
            this.setDate(param1);
            return;
        }// end function

        public function get hours() : Number
        {
            return this.getHours();
        }// end function

        public function set hours(param1:Number)
        {
            this.setHours(param1);
            return;
        }// end function

        public function get minutes() : Number
        {
            return this.getMinutes();
        }// end function

        public function set minutes(param1:Number)
        {
            this.setMinutes(param1);
            return;
        }// end function

        public function get seconds() : Number
        {
            return this.getSeconds();
        }// end function

        public function set seconds(param1:Number)
        {
            this.setSeconds(param1);
            return;
        }// end function

        public function get milliseconds() : Number
        {
            return this.getMilliseconds();
        }// end function

        public function set milliseconds(param1:Number)
        {
            this.setMilliseconds(param1);
            return;
        }// end function

        public function get fullYearUTC() : Number
        {
            return this.getUTCFullYear();
        }// end function

        public function set fullYearUTC(param1:Number)
        {
            this.setUTCFullYear(param1);
            return;
        }// end function

        public function get monthUTC() : Number
        {
            return this.getUTCMonth();
        }// end function

        public function set monthUTC(param1:Number)
        {
            this.setUTCMonth(param1);
            return;
        }// end function

        public function get dateUTC() : Number
        {
            return this.getUTCDate();
        }// end function

        public function set dateUTC(param1:Number)
        {
            this.setUTCDate(param1);
            return;
        }// end function

        public function get hoursUTC() : Number
        {
            return this.getUTCHours();
        }// end function

        public function set hoursUTC(param1:Number)
        {
            this.setUTCHours(param1);
            return;
        }// end function

        public function get minutesUTC() : Number
        {
            return this.getUTCMinutes();
        }// end function

        public function set minutesUTC(param1:Number)
        {
            this.setUTCMinutes(param1);
            return;
        }// end function

        public function get secondsUTC() : Number
        {
            return this.getUTCSeconds();
        }// end function

        public function set secondsUTC(param1:Number)
        {
            this.setUTCSeconds(param1);
            return;
        }// end function

        public function get millisecondsUTC() : Number
        {
            return this.getUTCMilliseconds();
        }// end function

        public function set millisecondsUTC(param1:Number)
        {
            this.setUTCMilliseconds(param1);
            return;
        }// end function

        public function get time() : Number
        {
            return this.getTime();
        }// end function

        public function set time(param1:Number)
        {
            this.setTime(param1);
            return;
        }// end function

        public function get timezoneOffset() : Number
        {
            return this.getTimezoneOffset();
        }// end function

        public function get day() : Number
        {
            return this.getDay();
        }// end function

        public function get dayUTC() : Number
        {
            return this.getUTCDay();
        }// end function

        public static function parse(param1) : Number;

        public static function UTC(param1, param2, param3 = 1, param4 = 0, param5 = 0, param6 = 0, param7 = 0, ... args) : Number;

        prototype.setTime = function (param1 = undefined) : Number
        {
            var _loc_2:* = this;
            return _loc_2._setTime(param1);
        }// end function
        ;
        prototype.valueOf = function ()
        {
            var _loc_1:* = this;
            return _loc_1.valueOf();
        }// end function
        ;
        prototype.toString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1._toString(0);
        }// end function
        ;
        prototype.toDateString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toDateString();
        }// end function
        ;
        prototype.toTimeString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toTimeString();
        }// end function
        ;
        prototype.toLocaleString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toLocaleString();
        }// end function
        ;
        prototype.toLocaleDateString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toLocaleDateString();
        }// end function
        ;
        prototype.toLocaleTimeString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toLocaleTimeString();
        }// end function
        ;
        prototype.toUTCString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toUTCString();
        }// end function
        ;
        prototype.toJSON = function (param1:String)
        {
            var _loc_2:* = this;
            return _loc_2.toString();
        }// end function
        ;
        prototype.getUTCFullYear = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCFullYear();
        }// end function
        ;
        prototype.getUTCMonth = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCMonth();
        }// end function
        ;
        prototype.getUTCDate = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCDate();
        }// end function
        ;
        prototype.getUTCDay = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCDay();
        }// end function
        ;
        prototype.getUTCHours = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCHours();
        }// end function
        ;
        prototype.getUTCMinutes = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCMinutes();
        }// end function
        ;
        prototype.getUTCSeconds = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCSeconds();
        }// end function
        ;
        prototype.getUTCMilliseconds = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getUTCMilliseconds();
        }// end function
        ;
        prototype.getFullYear = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getFullYear();
        }// end function
        ;
        prototype.getMonth = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getMonth();
        }// end function
        ;
        prototype.getDate = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getDate();
        }// end function
        ;
        prototype.getDay = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getDay();
        }// end function
        ;
        prototype.getHours = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getHours();
        }// end function
        ;
        prototype.getMinutes = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getMinutes();
        }// end function
        ;
        prototype.getSeconds = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getSeconds();
        }// end function
        ;
        prototype.getMilliseconds = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getMilliseconds();
        }// end function
        ;
        prototype.getTimezoneOffset = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getTimezoneOffset();
        }// end function
        ;
        prototype.getTime = function () : Number
        {
            var _loc_1:* = this;
            return _loc_1.getTime();
        }// end function
        ;
        prototype.setFullYear = function (param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            arguments = this;
            return arguments.setFullYear.apply(arguments, arguments);
        }// end function
        ;
        prototype.setMonth = function (param1 = undefined, param2 = undefined) : Number
        {
            arguments = this;
            return arguments.setMonth.apply(arguments, arguments);
        }// end function
        ;
        prototype.setDate = function (param1 = undefined) : Number
        {
            arguments = this;
            return arguments.setDate.apply(arguments, arguments);
        }// end function
        ;
        prototype.setHours = function (param1 = undefined, param2 = undefined, param3 = undefined, param4 = undefined) : Number
        {
            arguments = this;
            return arguments.setHours.apply(arguments, arguments);
        }// end function
        ;
        prototype.setMinutes = function (param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            arguments = this;
            return arguments.setMinutes.apply(arguments, arguments);
        }// end function
        ;
        prototype.setSeconds = function (param1 = undefined, param2 = undefined) : Number
        {
            arguments = this;
            return arguments.setSeconds.apply(arguments, arguments);
        }// end function
        ;
        prototype.setMilliseconds = function (param1 = undefined) : Number
        {
            arguments = this;
            return arguments.setMilliseconds.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCFullYear = function (param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCFullYear.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCMonth = function (param1 = undefined, param2 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCMonth.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCDate = function (param1 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCDate.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCHours = function (param1 = undefined, param2 = undefined, param3 = undefined, param4 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCHours.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCMinutes = function (param1 = undefined, param2 = undefined, param3 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCMinutes.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCSeconds = function (param1 = undefined, param2 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCSeconds.apply(arguments, arguments);
        }// end function
        ;
        prototype.setUTCMilliseconds = function (param1 = undefined) : Number
        {
            arguments = this;
            return arguments.setUTCMilliseconds.apply(arguments, arguments);
        }// end function
        ;
        _dontEnumPrototype(prototype);
    }
}
