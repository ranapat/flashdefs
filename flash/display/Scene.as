package flash.display
{

    final public class Scene extends Object
    {
        private var _name:String;
        private var _labels:Array;
        private var _numFrames:int;

        public function Scene(param1:String, param2:Array, param3:int)
        {
            this._name = param1;
            this._labels = param2;
            this._numFrames = param3;
            return;
        }// end function

        public function get name() : String
        {
            return this._name;
        }// end function

        public function get labels() : Array
        {
            return this._labels;
        }// end function

        public function get numFrames() : int
        {
            return this._numFrames;
        }// end function

    }
}
