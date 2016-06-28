package flash.text.engine
{
    import __AS3__.vec.*;

    final public class TextBlock extends Object
    {
        public var userData:Object;

        public function TextBlock(param1:ContentElement = null, param2:Vector.<TabStop> = null, param3:TextJustifier = null, param4:String = "rotate0", param5:String = "roman", param6:int = 0, param7:Boolean = true, param8:FontDescription = null, param9:Number = 12)
        {
            if (param1)
            {
                this.content = param1;
            }
            if (param2)
            {
                this.tabStops = param2;
            }
            this.textJustifier = param3 ? (param3) : (TextJustifier.getJustifierForLocale("en"));
            this.lineRotation = param4;
            if (param5)
            {
                this.baselineZero = param5;
            }
            this.bidiLevel = param6;
            this.applyNonLinearFontScaling = param7;
            if (param8)
            {
                this.baselineFontDescription = param8;
                this.baselineFontSize = param9;
            }
            return;
        }// end function

        public function get applyNonLinearFontScaling() : Boolean;

        public function set applyNonLinearFontScaling(param1:Boolean) : void;

        public function get baselineFontDescription() : FontDescription;

        public function set baselineFontDescription(param1:FontDescription) : void;

        public function get baselineFontSize() : Number;

        public function set baselineFontSize(param1:Number) : void;

        public function get baselineZero() : String;

        public function set baselineZero(param1:String) : void;

        public function get content() : ContentElement;

        public function set content(param1:ContentElement) : void;

        public function get bidiLevel() : int;

        public function set bidiLevel(param1:int) : void;

        public function get firstInvalidLine() : TextLine;

        public function get firstLine() : TextLine;

        public function get lastLine() : TextLine;

        public function get textJustifier() : TextJustifier
        {
            return this.getTextJustifier().clone();
        }// end function

        public function set textJustifier(param1:TextJustifier) : void
        {
            var _loc_2:* = param1 ? (param1.clone()) : (null);
            this.setTextJustifier(_loc_2);
            return;
        }// end function

        private function getTextJustifier() : TextJustifier;

        private function setTextJustifier(param1:TextJustifier) : void;

        public function get textLineCreationResult() : String;

        public function get lineRotation() : String;

        public function set lineRotation(param1:String) : void;

        public function get tabStops() : Vector.<TabStop>
        {
            var _loc_3:* = 0;
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_1:* = this.getTabStops();
            var _loc_2:* = null;
            if (_loc_1)
            {
                _loc_2 = new Vector.<TabStop>;
                _loc_3 = 0;
                while (_loc_3 < _loc_1.length)
                {
                    
                    _loc_4 = _loc_1[_loc_3];
                    _loc_5 = new TabStop(_loc_4.alignment, _loc_4.position, _loc_4.decimalAlignmentToken);
                    _loc_2.push(_loc_4);
                    _loc_3 = _loc_3 + 1;
                }
            }
            return _loc_2;
        }// end function

        public function set tabStops(param1:Vector.<TabStop>) : void
        {
            var _loc_3:* = 0;
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_2:* = null;
            if (param1)
            {
                _loc_2 = new Vector.<TabStop>;
                _loc_3 = 0;
                while (_loc_3 < param1.length)
                {
                    
                    _loc_4 = param1[_loc_3];
                    _loc_5 = new TabStop(_loc_4.alignment, _loc_4.position, _loc_4.decimalAlignmentToken);
                    _loc_2.push(_loc_4);
                    _loc_3 = _loc_3 + 1;
                }
            }
            this.setTabStops(_loc_2);
            return;
        }// end function

        private function getTabStops() : Vector.<TabStop>;

        private function setTabStops(param1:Vector.<TabStop>) : void;

        public function findNextAtomBoundary(param1:int) : int;

        public function findPreviousAtomBoundary(param1:int) : int;

        public function findNextWordBoundary(param1:int) : int;

        public function findPreviousWordBoundary(param1:int) : int;

        public function getTextLineAtCharIndex(param1:int) : TextLine;

        public function createTextLine(param1:TextLine = null, param2:Number = 1000000, param3:Number = 0, param4:Boolean = false) : TextLine
        {
            if (this.content == null)
            {
                return null;
            }
            if (param1 != null)
            {
            }
            if (param1.validity != TextLineValidity.VALID)
            {
                Error.throwError(ArgumentError, 2004, "previousLine");
            }
            if (param1 != null)
            {
            }
            if (param1.textBlock != this)
            {
                Error.throwError(ArgumentError, 2004, "previousLine");
            }
            if (param2 < 0)
            {
            }
            if (param4 != false)
            {
            }
            if (param2 > TextLine.MAX_LINE_WIDTH)
            {
                Error.throwError(ArgumentError, 2004, "width");
            }
            if (param2 == 0)
            {
            }
            if (param4 == false)
            {
                return null;
            }
            return this.DoCreateTextLine(param1, param2, param3, param4, null);
        }// end function

        public function recreateTextLine(param1:TextLine, param2:TextLine = null, param3:Number = 1000000, param4:Number = 0, param5:Boolean = false) : TextLine
        {
            if (param1 == null)
            {
                Error.throwError(ArgumentError, 2004, "textLine");
            }
            if (param2 != null)
            {
            }
            if (param2.validity != TextLineValidity.VALID)
            {
                Error.throwError(ArgumentError, 2004, "previousLine");
            }
            if (param2 != null)
            {
            }
            if (param2.textBlock != this)
            {
                Error.throwError(ArgumentError, 2004, "previousLine");
            }
            if (param2 != null)
            {
            }
            if (param2 == param1)
            {
                Error.throwError(ArgumentError, 2004, "previousLine");
            }
            if (param3 < 0)
            {
            }
            if (param5 != false)
            {
            }
            if (param3 > TextLine.MAX_LINE_WIDTH)
            {
                Error.throwError(ArgumentError, 2004, "width");
            }
            param1.userData = null;
            return this.DoCreateTextLine(param2, param3, param4, param5, param1);
        }// end function

        private function DoCreateTextLine(param1:TextLine, param2:Number, param3:Number = 0, param4:Boolean = false, param5:TextLine = null) : TextLine;

        public function releaseLineCreationData() : void;

        public function releaseLines(param1:TextLine, param2:TextLine) : void;

        public function dump() : String;

    }
}
