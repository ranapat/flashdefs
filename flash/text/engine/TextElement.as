package flash.text.engine
{
    import flash.events.*;

    final public class TextElement extends ContentElement
    {

        public function TextElement(param1:String = null, param2:ElementFormat = null, param3:EventDispatcher = null, param4:String = "rotate0")
        {
            super(param2, param3, param4);
            this.text = param1;
            return;
        }// end function

        public function set text(param1:String) : void;

        public function replaceText(param1:int, param2:int, param3:String) : void;

    }
}
