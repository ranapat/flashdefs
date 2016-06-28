package flash.utils
{
    import flash.events.*;

    final class SetIntervalTimer extends Timer
    {
        var id:uint;
        private var closure:Function;
        private var rest:Array;
        private static var intervals:Array = [];

        function SetIntervalTimer(param1:Function, param2:Number, param3:Boolean, param4:Array)
        {
            super(param2, param3 ? (0) : (1));
            this.closure = param1;
            this.rest = param4;
            addEventListener(TimerEvent.TIMER, this.onTimer);
            start();
            this.id = intervals.length + 1;
            intervals.push(this);
            return;
        }// end function

        private function onTimer(event:Event) : void
        {
            this.closure.apply(null, this.rest);
            if (repeatCount == 1)
            {
                if (intervals[(this.id - 1)] == this)
                {
                    delete intervals[(this.id - 1)];
                }
            }
            return;
        }// end function

        static function clearInterval(param1:uint) : void
        {
            param1 = param1 - 1;
            if (intervals[param1] is )
            {
                intervals[param1].stop();
                delete intervals[param1];
            }
            return;
        }// end function

    }
}
