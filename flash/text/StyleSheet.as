package flash.text
{
    import flash.events.*;

    dynamic public class StyleSheet extends EventDispatcher
    {
        private var _css:Object;

        public function StyleSheet()
        {
            this._css = {};
            this._styles = {};
            return;
        }// end function

        public function getStyle(param1:String) : Object
        {
            return this._copy(this._css[param1.toLowerCase()]);
        }// end function

        public function setStyle(param1:String, param2:Object) : void
        {
            var _loc_3:* = param1.toLowerCase();
            this._css[_loc_3] = this._copy(param2);
            this.doTransform(_loc_3);
            this._update();
            return;
        }// end function

        public function clear() : void
        {
            this._css = {};
            this._styles = {};
            this._update();
            return;
        }// end function

        public function get styleNames() : Array
        {
            var _loc_2:* = null;
            var _loc_1:* = [];
            for (_loc_2 in this._css)
            {
                
                _loc_1.push(_loc_2);
            }
            return _loc_1;
        }// end function

        public function transform(param1:Object) : TextFormat
        {
            if (param1 == null)
            {
                return null;
            }
            var _loc_2:* = new TextFormat();
            var _loc_3:* = param1.textAlign;
            if (_loc_3)
            {
                _loc_2.align = _loc_3;
            }
            _loc_3 = param1.fontSize;
            if (_loc_3)
            {
                _loc_3 = parseInt(_loc_3);
                if (_loc_3 > 0)
                {
                    _loc_2.size = _loc_3;
                }
            }
            _loc_3 = param1.textDecoration;
            if (_loc_3 == "none")
            {
                _loc_2.underline = false;
            }
            else if (_loc_3 == "underline")
            {
                _loc_2.underline = true;
            }
            _loc_3 = param1.marginLeft;
            if (_loc_3)
            {
                _loc_2.leftMargin = parseInt(_loc_3);
            }
            _loc_3 = param1.marginRight;
            if (_loc_3)
            {
                _loc_2.rightMargin = parseInt(_loc_3);
            }
            _loc_3 = param1.leading;
            if (_loc_3)
            {
                _loc_2.leading = parseInt(_loc_3);
            }
            _loc_3 = param1.kerning;
            if (_loc_3 == "true")
            {
                _loc_2.kerning = 1;
            }
            else if (_loc_3 == "false")
            {
                _loc_2.kerning = 0;
            }
            else
            {
                _loc_2.kerning = parseInt(_loc_3);
            }
            _loc_3 = param1.letterSpacing;
            if (_loc_3)
            {
                _loc_2.letterSpacing = parseFloat(_loc_3);
            }
            _loc_3 = param1.fontFamily;
            if (_loc_3)
            {
                _loc_2.font = this._parseCSSFontFamily(_loc_3);
            }
            _loc_3 = param1.display;
            if (_loc_3)
            {
                _loc_2.display = _loc_3;
            }
            _loc_3 = param1.fontWeight;
            if (_loc_3 == "bold")
            {
                _loc_2.bold = true;
            }
            else if (_loc_3 == "normal")
            {
                _loc_2.bold = false;
            }
            _loc_3 = param1.fontStyle;
            if (_loc_3 == "italic")
            {
                _loc_2.italic = true;
            }
            else if (_loc_3 == "normal")
            {
                _loc_2.italic = false;
            }
            _loc_3 = param1.textIndent;
            if (_loc_3)
            {
                _loc_2.indent = parseInt(_loc_3);
            }
            _loc_3 = param1.color;
            if (_loc_3)
            {
                _loc_3 = this._parseColor(_loc_3);
                if (_loc_3 != null)
                {
                    _loc_2.color = _loc_3;
                }
            }
            return _loc_2;
        }// end function

        public function parseCSS(param1:String) : void
        {
            var _loc_3:* = null;
            var _loc_2:* = this._parseCSSInternal(param1);
            if (typeof(_loc_2) == "null")
            {
                return;
            }
            for (_loc_3 in _loc_2)
            {
                
                this._css[_loc_3] = this._copy(_loc_2[_loc_3]);
                this.doTransform(_loc_3);
            }
            this._update();
            return;
        }// end function

        private function get _styles() : Object;

        private function set _styles(param1:Object) : void;

        private function doTransform(param1:String) : void
        {
            var _loc_2:* = this.transform(this._css[param1]);
            this._styles[param1] = _loc_2;
            return;
        }// end function

        private function _copy(param1:Object) : Object
        {
            var _loc_3:* = null;
            if (typeof(param1) != "object")
            {
                return null;
            }
            var _loc_2:* = {};
            for (_loc_3 in param1)
            {
                
                _loc_2[_loc_3] = _loc_5[_loc_3];
            }
            return _loc_2;
        }// end function

        private function _update() : void;

        private function _parseCSSInternal(param1:String) : Object;

        private function _parseCSSFontFamily(param1:String) : String;

        private function _parseColor(param1:String) : uint;

    }
}
