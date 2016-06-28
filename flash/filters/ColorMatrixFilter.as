package flash.filters
{

    final public class ColorMatrixFilter extends BitmapFilter
    {

        public function ColorMatrixFilter(param1:Array = null)
        {
            if (param1 != null)
            {
                this.matrix = param1;
            }
            return;
        }// end function

        public function get matrix() : Array;

        public function set matrix(param1:Array) : void;

        override public function clone() : BitmapFilter
        {
            return new ColorMatrixFilter(this.matrix);
        }// end function

    }
}
