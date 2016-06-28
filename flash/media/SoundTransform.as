package flash.media
{

    final public class SoundTransform extends Object
    {

        public function SoundTransform(param1:Number = 1, param2:Number = 0)
        {
            this.volume = param1;
            this.pan = param2;
            return;
        }// end function

        public function get volume() : Number;

        public function set volume(param1:Number) : void;

        public function get leftToLeft() : Number;

        public function set leftToLeft(param1:Number) : void;

        public function get leftToRight() : Number;

        public function set leftToRight(param1:Number) : void;

        public function get rightToRight() : Number;

        public function set rightToRight(param1:Number) : void;

        public function get rightToLeft() : Number;

        public function set rightToLeft(param1:Number) : void;

        public function get pan() : Number
        {
            if (this.leftToRight == 0)
            {
            }
            if (this.rightToLeft == 0)
            {
                return 1 - this.leftToLeft * this.leftToLeft;
            }
            return 0;
        }// end function

        public function set pan(param1:Number) : void
        {
            this.leftToLeft = Math.sqrt(1 - param1);
            this.leftToRight = 0;
            this.rightToRight = Math.sqrt(1 + param1);
            this.rightToLeft = 0;
            return;
        }// end function

    }
}
