package flash.accessibility
{
    import flash.geom.*;

    public class AccessibilityImplementation extends Object
    {
        public var stub:Boolean;
        public var errno:uint;

        public function AccessibilityImplementation()
        {
            this.stub = false;
            this.errno = 0;
            return;
        }// end function

        public function get_accRole(param1:uint) : uint
        {
            Error.throwError(Error, 2143);
            return null;
        }// end function

        public function get_accName(param1:uint) : String
        {
            return null;
        }// end function

        public function get_accValue(param1:uint) : String
        {
            return null;
        }// end function

        public function get_accState(param1:uint) : uint
        {
            Error.throwError(Error, 2144);
            return null;
        }// end function

        public function get_accDefaultAction(param1:uint) : String
        {
            return null;
        }// end function

        public function accDoDefaultAction(param1:uint) : void
        {
            return;
        }// end function

        public function isLabeledBy(param1:Rectangle) : Boolean
        {
            return false;
        }// end function

        public function getChildIDArray() : Array
        {
            return null;
        }// end function

        public function accLocation(param1:uint)
        {
            return null;
        }// end function

        public function get_accSelection() : Array
        {
            return null;
        }// end function

        public function get_accFocus() : uint
        {
            return 0;
        }// end function

        public function accSelect(param1:uint, param2:uint) : void
        {
            return;
        }// end function

        public function get_selectionAnchorIndex()
        {
            return this["selectionAnchorIndex"];
        }// end function

        public function get_selectionActiveIndex()
        {
            return this["selectionActiveIndex"];
        }// end function

    }
}
