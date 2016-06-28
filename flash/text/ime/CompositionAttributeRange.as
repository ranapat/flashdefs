package flash.text.ime
{

    final public class CompositionAttributeRange extends Object
    {
        public var relativeStart:int;
        public var relativeEnd:int;
        public var selected:Boolean;
        public var converted:Boolean;

        public function CompositionAttributeRange(param1:int, param2:int, param3:Boolean, param4:Boolean) : void
        {
            this.relativeStart = param1;
            this.relativeEnd = param2;
            this.selected = param3;
            this.converted = param4;
            return;
        }// end function

    }
}
