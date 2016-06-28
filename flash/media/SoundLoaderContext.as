package flash.media
{

    public class SoundLoaderContext extends Object
    {
        public var bufferTime:Number = 1000;
        public var checkPolicyFile:Boolean = false;

        public function SoundLoaderContext(param1:Number = 1000, param2:Boolean = false)
        {
            this.checkPolicyFile = param2;
            this.bufferTime = param1;
            return;
        }// end function

    }
}
