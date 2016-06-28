package flash.text.engine
{
    import __AS3__.vec.*;
    import flash.events.*;

    final public class GroupElement extends ContentElement
    {

        public function GroupElement(param1:Vector.<ContentElement> = null, param2:ElementFormat = null, param3:EventDispatcher = null, param4:String = "rotate0")
        {
            super(param2, param3, param4);
            this.setElements(param1);
            return;
        }// end function

        public function get elementCount() : int;

        public function getElementAt(param1:int) : ContentElement;

        public function setElements(param1:Vector.<ContentElement>) : void;

        public function groupElements(param1:int, param2:int) : GroupElement;

        public function ungroupElements(param1:int) : void;

        public function mergeTextElements(param1:int, param2:int) : TextElement;

        public function splitTextElement(param1:int, param2:int) : TextElement;

        public function replaceElements(param1:int, param2:int, param3:Vector.<ContentElement>) : Vector.<ContentElement>;

        public function getElementAtCharIndex(param1:int) : ContentElement;

        public function getElementIndex(param1:ContentElement) : int
        {
            var _loc_2:* = 0;
            while (_loc_2 < this.elementCount)
            {
                
                if (param1 == this.getElementAt(_loc_2))
                {
                    return _loc_2;
                }
                _loc_2 = _loc_2 + 1;
            }
            return -1;
        }// end function

    }
}
