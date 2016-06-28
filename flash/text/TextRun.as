package flash.text
{

    public class TextRun extends Object
    {
        public var beginIndex:int;
        public var endIndex:int;
        public var textFormat:TextFormat;

        public function TextRun(param1:int, param2:int, param3:TextFormat)
        {
            this.beginIndex = param1;
            this.endIndex = param2;
            this.textFormat = param3;
            return;
        }// end function

    }
}
