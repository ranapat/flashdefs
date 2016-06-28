package flash.geom
{

    public class PerspectiveProjection extends Object
    {

        public function PerspectiveProjection()
        {
            this.ctor();
            return;
        }// end function

        private function ctor() : void;

        public function get fieldOfView() : Number;

        public function set fieldOfView(param1:Number) : void;

        public function get projectionCenter() : Point;

        public function set projectionCenter(param1:Point);

        public function get focalLength() : Number;

        public function set focalLength(param1:Number) : void;

        public function toMatrix3D() : Matrix3D;

    }
}
