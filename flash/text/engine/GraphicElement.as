package flash.text.engine
{
    import flash.display.*;
    import flash.events.*;

    final public class GraphicElement extends ContentElement
    {

        public function GraphicElement(param1:DisplayObject = null, param2:Number = 15, param3:Number = 15, param4:ElementFormat = null, param5:EventDispatcher = null, param6:String = "rotate0")
        {
            super(param4, param5, param6);
            this.elementWidth = param2;
            this.elementHeight = param3;
            this.graphic = param1;
            return;
        }// end function

        public function get graphic() : DisplayObject;

        public function set graphic(param1:DisplayObject) : void;

        public function get elementHeight() : Number;

        public function set elementHeight(param1:Number) : void;

        public function get elementWidth() : Number;

        public function set elementWidth(param1:Number) : void;

    }
}
