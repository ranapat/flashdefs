package flash.text
{
    import flash.display.*;
    import flash.geom.*;

    public class TextField extends InteractiveObject
    {
        private static var richTextFields:Array = ["font", "size", "color", "bold", "italic", "underline", "url", "target", "align", "leftMargin", "rightMargin", "indent", "leading", "blockIndent", "kerning", "letterSpacing", "display"];

        public function TextField()
        {
            return;
        }// end function

        public function get alwaysShowSelection() : Boolean;

        public function set alwaysShowSelection(param1:Boolean) : void;

        public function get antiAliasType() : String;

        public function set antiAliasType(param1:String) : void;

        public function get autoSize() : String;

        public function set autoSize(param1:String) : void;

        public function get background() : Boolean;

        public function set background(param1:Boolean) : void;

        public function get backgroundColor() : uint;

        public function set backgroundColor(param1:uint) : void;

        public function get border() : Boolean;

        public function set border(param1:Boolean) : void;

        public function get borderColor() : uint;

        public function set borderColor(param1:uint) : void;

        public function get bottomScrollV() : int;

        public function get caretIndex() : int;

        public function get condenseWhite() : Boolean;

        public function set condenseWhite(param1:Boolean) : void;

        public function get defaultTextFormat() : TextFormat;

        public function set defaultTextFormat(param1:TextFormat) : void;

        public function get embedFonts() : Boolean;

        public function set embedFonts(param1:Boolean) : void;

        public function get gridFitType() : String;

        public function set gridFitType(param1:String) : void;

        public function get htmlText() : String;

        public function set htmlText(param1:String) : void;

        public function get length() : int;

        public function get textInteractionMode() : String;

        public function get maxChars() : int;

        public function set maxChars(param1:int) : void;

        public function get maxScrollH() : int;

        public function get maxScrollV() : int;

        public function get mouseWheelEnabled() : Boolean;

        public function set mouseWheelEnabled(param1:Boolean) : void;

        public function get multiline() : Boolean;

        public function set multiline(param1:Boolean) : void;

        public function get numLines() : int;

        public function get displayAsPassword() : Boolean;

        public function set displayAsPassword(param1:Boolean) : void;

        public function get restrict() : String;

        public function set restrict(param1:String) : void;

        public function get scrollH() : int;

        public function set scrollH(param1:int) : void;

        public function get scrollV() : int;

        public function set scrollV(param1:int) : void;

        public function get selectable() : Boolean;

        public function set selectable(param1:Boolean) : void;

        public function get selectedText() : String
        {
            return this.text.substring(this.selectionBeginIndex, this.selectionEndIndex);
        }// end function

        public function get selectionBeginIndex() : int;

        public function get selectionEndIndex() : int;

        public function get sharpness() : Number;

        public function set sharpness(param1:Number) : void;

        public function get styleSheet() : StyleSheet;

        public function set styleSheet(param1:StyleSheet) : void;

        public function get text() : String;

        public function set text(param1:String) : void;

        public function get textColor() : uint;

        public function set textColor(param1:uint) : void;

        public function get textHeight() : Number;

        public function get textWidth() : Number;

        public function get thickness() : Number;

        public function set thickness(param1:Number) : void;

        public function get type() : String;

        public function set type(param1:String) : void;

        public function get wordWrap() : Boolean;

        public function set wordWrap(param1:Boolean) : void;

        public function appendText(param1:String) : void
        {
            this.replaceText(this.text.length, this.text.length, param1);
            return;
        }// end function

        function copyRichText() : String
        {
            return this.getXMLText(this.selectionBeginIndex, this.selectionEndIndex);
        }// end function

        public function getCharBoundaries(param1:int) : Rectangle;

        public function getCharIndexAtPoint(param1:Number, param2:Number) : int;

        private function getCharIndexNearestPoint(param1:Number, param2:Number) : int;

        public function getFirstCharInParagraph(param1:int) : int;

        public function getLineIndexAtPoint(param1:Number, param2:Number) : int;

        public function getLineIndexOfChar(param1:int) : int;

        public function getLineLength(param1:int) : int;

        public function getLineMetrics(param1:int) : TextLineMetrics;

        public function getLineOffset(param1:int) : int;

        public function getLineText(param1:int) : String;

        public function getParagraphLength(param1:int) : int;

        public function getTextFormat(param1:int = -1, param2:int = -1) : TextFormat;

        public function getTextRuns(param1:int = 0, param2:int = 2147483647) : Array;

        public function getRawText() : String;

        public function getXMLText(param1:int = 0, param2:int = 2147483647) : String
        {
            var _loc_7:* = null;
            var _loc_8:* = null;
            var _loc_9:* = null;
            var _loc_10:* = null;
            var _loc_11:* = 0;
            var _loc_12:* = null;
            var _loc_13:* = undefined;
            var _loc_3:* = this.getTextRuns(param1, param2);
            var _loc_4:* = this.getRawText();
            var _loc_5:* = <flashrichtext version="1"/>;
            var _loc_6:* = 0;
            while (_loc_6 < _loc_3.length)
            {
                
                _loc_7 = _loc_3[_loc_6];
                _loc_8 = _loc_7.textFormat;
                _loc_9 = _loc_4.substring(_loc_7.beginIndex, _loc_7.endIndex);
                _loc_9 = "(" + _loc_9 + ")";
                _loc_10 = new XML("<textformat>" + _loc_9 + "</textformat>");
                _loc_11 = 0;
                while (_loc_11 < richTextFields.length)
                {
                    
                    _loc_12 = richTextFields[_loc_11];
                    _loc_13 = _loc_8[_loc_12];
                    if (_loc_13 != null)
                    {
                        _loc_10["@" + _loc_12] = _loc_13;
                    }
                    _loc_11 = _loc_11 + 1;
                }
                _loc_5.flashrichtext = _loc_5.flashrichtext + _loc_10;
                _loc_6 = _loc_6 + 1;
            }
            return _loc_5.toXMLString();
        }// end function

        public function insertXMLText(param1:int, param2:int, param3:String, param4:Boolean = false) : void
        {
            var _loc_7:* = null;
            var _loc_8:* = 0;
            var _loc_9:* = null;
            var _loc_10:* = null;
            var _loc_11:* = null;
            var _loc_12:* = null;
            var _loc_13:* = null;
            var _loc_14:* = null;
            var _loc_15:* = 0;
            var _loc_5:* = XML(param3);
            if (_loc_5.@version != "1")
            {
                Error.throwError(Error, 2138);
            }
            if (param1 > param2)
            {
                _loc_8 = param1;
                param1 = param2;
                param2 = _loc_8;
            }
            var _loc_6:* = true;
            for each (_loc_7 in _loc_5..textformat)
            {
                
                _loc_9 = _loc_7.attributes();
                _loc_10 = new TextFormat();
                for each (_loc_11 in _loc_9)
                {
                    
                    _loc_13 = _loc_11.name().localName;
                    _loc_14 = String(_loc_11);
                    if (_loc_13 != "bold")
                    {
                    }
                    if (_loc_13 != "italic")
                    {
                    }
                    if (_loc_13 == "underline")
                    {
                        _loc_10[_loc_13] = _loc_14 == "true";
                        continue;
                    }
                    _loc_10[_loc_13] = _loc_14;
                }
                _loc_12 = String(_loc_7.children());
                _loc_12 = _loc_12.substring(1, (_loc_12.length - 1));
                if (this.maxChars > 0)
                {
                }
                if (param4 == true)
                {
                    _loc_15 = this.maxChars - this.length + (param2 - param1);
                    if (_loc_15 < _loc_12.length)
                    {
                        if (_loc_15 <= 0)
                        {
                            return;
                        }
                        _loc_12 = _loc_12.substring(0, _loc_15);
                    }
                }
                this.replaceText(param1, param2, _loc_12);
                this.setTextFormat(_loc_10, param1, param1 + _loc_12.length);
                param1 = param1 + _loc_12.length;
                param2 = param1;
                if (param4)
                {
                    this.setSelection(param1, param2);
                }
                _loc_6 = false;
            }
            if (_loc_6)
            {
                this.replaceText(param1, param2, "");
            }
            return;
        }// end function

        function pasteRichText(param1:String) : Boolean
        {
            var richText:* = param1;
            if (richText == null)
            {
                Error.throwError(TypeError, 2007, "richText");
            }
            try
            {
                this.insertXMLText(this.selectionBeginIndex, this.selectionEndIndex, richText, true);
            }
            catch (e:Error)
            {
                return false;
            }
            return true;
        }// end function

        public function replaceSelectedText(param1:String) : void;

        public function replaceText(param1:int, param2:int, param3:String) : void;

        public function setSelection(param1:int, param2:int) : void;

        public function setTextFormat(param1:TextFormat, param2:int = -1, param3:int = -1) : void;

        public function getImageReference(param1:String) : DisplayObject;

        public function get useRichTextClipboard() : Boolean;

        public function set useRichTextClipboard(param1:Boolean) : void;

        public static function isFontCompatible(param1:String, param2:String) : Boolean;

    }
}
