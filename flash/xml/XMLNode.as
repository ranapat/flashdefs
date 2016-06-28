package flash.xml
{

    public class XMLNode extends Object
    {
        public var nodeType:uint;
        public var previousSibling:XMLNode;
        public var nextSibling:XMLNode;
        public var parentNode:XMLNode;
        public var firstChild:XMLNode;
        public var lastChild:XMLNode;
        private var _childNodes:Array;
        private var _attributes:Object;
        public var nodeName:String;
        public var nodeValue:String;

        public function XMLNode(param1:uint, param2:String)
        {
            this.init(param1, param2);
            return;
        }// end function

        public function get childNodes() : Array
        {
            var _loc_1:* = null;
            if (this._childNodes == null)
            {
                this._childNodes = new Array();
                _loc_1 = this.firstChild;
                while (_loc_1 != null)
                {
                    
                    this._childNodes.push(_loc_1);
                    _loc_1 = _loc_1.nextSibling;
                }
            }
            return this._childNodes;
        }// end function

        public function get attributes() : Object
        {
            if (this._attributes == null)
            {
                this._attributes = {};
            }
            return this._attributes;
        }// end function

        public function set attributes(param1:Object) : void
        {
            this._attributes = param1;
            return;
        }// end function

        private function init(param1:uint, param2:String) : void
        {
            this.nodeType = param1;
            if (param1 == 1)
            {
                this.nodeName = param2;
            }
            else
            {
                this.nodeValue = param2;
            }
            return;
        }// end function

        public function hasChildNodes() : Boolean
        {
            return this.firstChild != null;
        }// end function

        public function cloneNode(param1:Boolean) : XMLNode
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_2:* = new XMLNode(this.nodeType, this.nodeType == XMLNodeType.ELEMENT_NODE ? (this.nodeName) : (this.nodeValue));
            if (this._attributes !== null)
            {
                _loc_2.attributes = {};
                for (_loc_3 in this._attributes)
                {
                    
                    _loc_2.attributes[_loc_3] = _loc_6[_loc_3];
                }
            }
            if (param1)
            {
                _loc_4 = this.firstChild;
                while (_loc_4 != null)
                {
                    
                    _loc_2.appendChild(_loc_4.cloneNode(true));
                    _loc_4 = _loc_4.nextSibling;
                }
            }
            return _loc_2;
        }// end function

        public function removeNode() : void
        {
            var _loc_1:* = 0;
            if (this.parentNode === null)
            {
                return;
            }
            if (this.previousSibling === null)
            {
                this.parentNode.firstChild = this.nextSibling;
            }
            else
            {
                this.previousSibling.nextSibling = this.nextSibling;
            }
            if (this.nextSibling === null)
            {
                this.parentNode.lastChild = this.previousSibling;
            }
            else
            {
                this.nextSibling.previousSibling = this.previousSibling;
            }
            if (this.parentNode._childNodes !== null)
            {
                _loc_1 = 0;
                while (_loc_1 < this.parentNode._childNodes.length)
                {
                    
                    if (this.parentNode._childNodes[_loc_1] == this)
                    {
                        this.parentNode._childNodes.splice(_loc_1, 1);
                        break;
                    }
                    _loc_1 = _loc_1 + 1;
                }
            }
            this.parentNode = null;
            this.previousSibling = null;
            this.nextSibling = null;
            return;
        }// end function

        public function insertBefore(param1:XMLNode, param2:XMLNode) : void
        {
            var _loc_3:* = 0;
            if (param2 === null)
            {
                return this.appendChild(param1);
            }
            if (param2.parentNode === this)
            {
            }
            if (param1.parentNode === this)
            {
                Error.throwError(Error, 2102);
            }
            param1.removeNode();
            if (param2.previousSibling === null)
            {
                this.firstChild = param1;
            }
            else
            {
                param2.previousSibling.nextSibling = param1;
            }
            param1.previousSibling = param2.previousSibling;
            param1.nextSibling = param2;
            param2.previousSibling = param1;
            param1.parentNode = this;
            if (this._childNodes !== null)
            {
                _loc_3 = 0;
                while (_loc_3 < this._childNodes.length)
                {
                    
                    if (this._childNodes[_loc_3] == param2)
                    {
                        this._childNodes.splice(_loc_3, 0, param1);
                        return;
                    }
                    _loc_3 = _loc_3 + 1;
                }
            }
            else
            {
                return;
            }
            Error.throwError(Error, 2102);
            return;
        }// end function

        public function appendChild(param1:XMLNode) : void
        {
            var _loc_2:* = this;
            while (_loc_2)
            {
                
                if (_loc_2 === param1)
                {
                    Error.throwError(Error, 2103);
                }
                _loc_2 = _loc_2.parentNode;
            }
            if (param1.parentNode === this)
            {
                return;
            }
            param1.removeNode();
            if (this.lastChild === null)
            {
                this.firstChild = param1;
            }
            else
            {
                this.lastChild.nextSibling = param1;
            }
            param1.previousSibling = this.lastChild;
            param1.nextSibling = null;
            param1.parentNode = this;
            this.lastChild = param1;
            if (this._childNodes !== null)
            {
                this._childNodes.push(param1);
            }
            return;
        }// end function

        public function toString() : String
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            var _loc_1:* = "";
            if (this.nodeType == XMLNodeType.ELEMENT_NODE)
            {
                if (this.nodeName != null)
                {
                    _loc_1 = _loc_1 + ("<" + this.nodeName);
                }
                for (_loc_2 in this._attributes)
                {
                    
                    _loc_1 = _loc_1 + (" " + _loc_2 + "=\"" + escapeXML(String(_loc_5[_loc_2])) + "\"");
                }
                if (this.nodeName != null)
                {
                    if (this.hasChildNodes())
                    {
                        _loc_1 = _loc_1 + ">";
                    }
                    else
                    {
                        _loc_1 = _loc_1 + " />";
                    }
                }
                if (this.hasChildNodes())
                {
                    _loc_3 = this.firstChild;
                    while (_loc_3 != null)
                    {
                        
                        _loc_1 = _loc_1 + _loc_3.toString();
                        _loc_3 = _loc_3.nextSibling;
                    }
                    if (this.nodeName != null)
                    {
                        _loc_1 = _loc_1 + ("</" + this.nodeName + ">");
                    }
                }
            }
            else
            {
                _loc_1 = _loc_1 + escapeXML(this.nodeValue);
            }
            return _loc_1;
        }// end function

        public function getNamespaceForPrefix(param1:String) : String
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            for (_loc_2 in this._attributes)
            {
                
                if (_loc_2.indexOf("xmlns") == 0)
                {
                    if (_loc_2.charCodeAt(5) == 58)
                    {
                        _loc_3 = _loc_2.substring(6);
                        if (_loc_3 == param1)
                        {
                            return _loc_5[_loc_2];
                        }
                        continue;
                    }
                    if (param1.length == 0)
                    {
                        return _loc_5[_loc_2];
                    }
                }
            }
            if (this.parentNode !== null)
            {
                return this.parentNode.getNamespaceForPrefix(param1);
            }
            return null;
        }// end function

        public function getPrefixForNamespace(param1:String) : String
        {
            var _loc_2:* = null;
            for (_loc_2 in this._attributes)
            {
                
                if (_loc_2.indexOf("xmlns") == 0)
                {
                    if (_loc_4[_loc_2] == param1)
                    {
                        if (_loc_2.charCodeAt(5) == 58)
                        {
                            return _loc_2.substring(6);
                        }
                        return "";
                    }
                }
            }
            if (this.parentNode !== null)
            {
                return this.parentNode.getPrefixForNamespace(param1);
            }
            return null;
        }// end function

        public function get localName() : String
        {
            if (this.nodeName == null)
            {
                return null;
            }
            var _loc_1:* = this.nodeName.indexOf(":");
            if (_loc_1 != -1)
            {
                return this.nodeName.substring((_loc_1 + 1));
            }
            return this.nodeName;
        }// end function

        public function get prefix() : String
        {
            if (this.nodeName == null)
            {
                return null;
            }
            var _loc_1:* = this.nodeName.indexOf(":");
            if (_loc_1 != -1)
            {
                return this.nodeName.substring(0, _loc_1);
            }
            return "";
        }// end function

        public function get namespaceURI() : String
        {
            if (this.nodeName == null)
            {
                return null;
            }
            var _loc_1:* = String(this.prefix);
            return this.getNamespaceForPrefix(_loc_1);
        }// end function

        private static function escapeXML(param1:String) : String;

    }
}
