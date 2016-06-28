package flash.utils
{
    import flash.events.*;

    public class Timer extends EventDispatcher
    {
        private var m_delay:Number;
        private var m_repeatCount:int;
        private var m_iteration:int;

        public function Timer(param1:Number, param2:int = 0)
        {
            if (param1 >= 0)
            {
            }
            if (!isFinite(param1))
            {
                Error.throwError(RangeError, 2066);
            }
            this.m_delay = param1;
            this.m_repeatCount = param2;
            return;
        }// end function

        public function get delay() : Number
        {
            return this.m_delay;
        }// end function

        public function get repeatCount() : int
        {
            return this.m_repeatCount;
        }// end function

        public function set repeatCount(param1:int) : void
        {
            this.m_repeatCount = param1;
            if (this.running)
            {
            }
            if (this.m_repeatCount != 0)
            {
            }
            if (this.m_iteration >= this.m_repeatCount)
            {
                this.stop();
            }
            return;
        }// end function

        public function get currentCount() : int
        {
            return this.m_iteration;
        }// end function

        public function get running() : Boolean;

        public function set delay(param1:Number) : void
        {
            if (param1 >= 0)
            {
            }
            if (!isFinite(param1))
            {
                Error.throwError(RangeError, 2066);
            }
            this.m_delay = param1;
            if (this.running)
            {
                this.stop();
                this.start();
            }
            return;
        }// end function

        private function tick() : void
        {
            var _loc_1:* = this;
            var _loc_2:* = this.m_iteration + 1;
            _loc_1.m_iteration = _loc_2;
            this._timerDispatch();
            if (this.m_repeatCount != 0)
            {
            }
            if (this.m_iteration >= this.m_repeatCount)
            {
                this.stop();
                dispatchEvent(new TimerEvent(TimerEvent.TIMER_COMPLETE, false, false));
            }
            return;
        }// end function

        public function start() : void
        {
            if (!this.running)
            {
                this._start(this.m_delay, this.tick);
            }
            return;
        }// end function

        public function reset() : void
        {
            if (this.running)
            {
                this.stop();
            }
            this.m_iteration = 0;
            return;
        }// end function

        private function _start(param1:Number, param2:Function) : void;

        private function _timerDispatch() : void;

        public function stop() : void;

    }
}
