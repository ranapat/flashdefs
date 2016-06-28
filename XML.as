package 
{
    import XML.*;

    final dynamic public class XML extends Object
    {
        public static const length:Object = 1;

        public function XML(param1 = undefined)
        {
            return;
        }// end function

        function toString() : String;

        public function hasOwnProperty(param1 = undefined) : Boolean;

        public function propertyIsEnumerable(param1 = undefined) : Boolean;

        function addNamespace(param1) : XML;

        function appendChild(param1) : XML;

        function attribute(param1) : XMLList;

        function attributes() : XMLList;

        function child(param1) : XMLList;

        function childIndex() : int;

        function children() : XMLList;

        function comments() : XMLList;

        function contains(param1) : Boolean;

        function copy() : XML;

        function descendants(param1 = "*") : XMLList;

        function elements(param1 = "*") : XMLList;

        function hasComplexContent() : Boolean;

        function hasSimpleContent() : Boolean;

        function inScopeNamespaces() : Array;

        function insertChildAfter(param1, param2);

        function insertChildBefore(param1, param2);

        function length() : int
        {
            return 1;
        }// end function

        function localName() : Object;

        function name() : Object;

        private function _namespace(param1, param2:int);

        function namespace(param1 = null)
        {
            return arguments.length ? (this._namespace(param1, 1)) : (this._namespace(null, 0));
        }// end function

        function namespaceDeclarations() : Array;

        function nodeKind() : String;

        function normalize() : XML;

        function parent();

        function processingInstructions(param1 = "*") : XMLList;

        function prependChild(param1) : XML;

        function removeNamespace(param1) : XML;

        function replace(param1, param2) : XML;

        function setChildren(param1) : XML;

        function setLocalName(param1) : void;

        function setName(param1) : void;

        function setNamespace(param1) : void;

        function text() : XMLList;

        function toXMLString() : String;

        function notification() : Function;

        function setNotification(param1:Function);

        function toJSON(param1:String)
        {
            return this.toJSON(param1);
        }// end function

        function valueOf() : XML
        {
            return this;
        }// end function

        public static function get ignoreComments() : Boolean;

        public static function set ignoreComments(param1:Boolean);

        public static function get ignoreProcessingInstructions() : Boolean;

        public static function set ignoreProcessingInstructions(param1:Boolean);

        public static function get ignoreWhitespace() : Boolean;

        public static function set ignoreWhitespace(param1:Boolean);

        public static function get prettyPrinting() : Boolean;

        public static function set prettyPrinting(param1:Boolean);

        public static function get prettyIndent() : int;

        public static function set prettyIndent(param1:int);

        static function settings() : Object
        {
            return {ignoreComments:XML.ignoreComments, ignoreProcessingInstructions:XML.ignoreProcessingInstructions, ignoreWhitespace:XML.ignoreWhitespace, prettyPrinting:XML.prettyPrinting, prettyIndent:XML.prettyIndent};
        }// end function

        static function setSettings(param1:Object = null) : void
        {
            if (param1 == null)
            {
                XML.ignoreComments = true;
                XML.ignoreProcessingInstructions = true;
                XML.ignoreWhitespace = true;
                XML.prettyPrinting = true;
                XML.prettyIndent = 2;
                return;
            }
            if ("ignoreComments" in param1)
            {
            }
            if (param1.ignoreComments is Boolean)
            {
                XML.ignoreComments = param1.ignoreComments;
            }
            if ("ignoreProcessingInstructions" in param1)
            {
            }
            if (param1.ignoreProcessingInstructions is Boolean)
            {
                XML.ignoreProcessingInstructions = param1.ignoreProcessingInstructions;
            }
            if ("ignoreWhitespace" in param1)
            {
            }
            if (param1.ignoreWhitespace is Boolean)
            {
                XML.ignoreWhitespace = param1.ignoreWhitespace;
            }
            if ("prettyPrinting" in param1)
            {
            }
            if (param1.prettyPrinting is Boolean)
            {
                XML.prettyPrinting = param1.prettyPrinting;
            }
            if ("prettyIndent" in param1)
            {
            }
            if (param1.prettyIndent is Number)
            {
                XML.prettyIndent = param1.prettyIndent;
            }
            return;
        }// end function

        static function defaultSettings() : Object
        {
            return {ignoreComments:true, ignoreProcessingInstructions:true, ignoreWhitespace:true, prettyPrinting:true, prettyIndent:2};
        }// end function

        XML.settings = function () : Object
        {
            return settings();
        }// end function
        ;
        XML.setSettings = function (param1 = undefined) : void
        {
            setSettings(param1);
            return;
        }// end function
        ;
        XML.defaultSettings = function () : Object
        {
            return defaultSettings();
        }// end function
        ;
        prototype.valueOf = Object.prototype.valueOf;
        prototype.hasOwnProperty = function (param1 = undefined) : Boolean
        {
            if (prototype === this)
            {
                return this.hasOwnProperty(param1);
            }
            var _loc_2:* = this;
            return _loc_2.hasOwnProperty(param1);
        }// end function
        ;
        prototype.propertyIsEnumerable = function (param1 = undefined) : Boolean
        {
            if (prototype === this)
            {
                return this.propertyIsEnumerable(param1);
            }
            var _loc_2:* = this;
            return _loc_2.propertyIsEnumerable(param1);
        }// end function
        ;
        prototype.toString = function () : String
        {
            if (prototype === this)
            {
                return "";
            }
            var _loc_1:* = this;
            return _loc_1.toString();
        }// end function
        ;
        prototype.addNamespace = function (param1) : XML
        {
            var _loc_2:* = this;
            return _loc_2.addNamespace(param1);
        }// end function
        ;
        prototype.appendChild = function (param1) : XML
        {
            var _loc_2:* = this;
            return _loc_2.appendChild(param1);
        }// end function
        ;
        prototype.attribute = function (param1) : XMLList
        {
            var _loc_2:* = this;
            return _loc_2.attribute(param1);
        }// end function
        ;
        prototype.attributes = function () : XMLList
        {
            var _loc_1:* = this;
            return _loc_1.attributes();
        }// end function
        ;
        prototype.child = function (param1) : XMLList
        {
            var _loc_2:* = this;
            return _loc_2.child(param1);
        }// end function
        ;
        prototype.childIndex = function () : int
        {
            var _loc_1:* = this;
            return _loc_1.childIndex();
        }// end function
        ;
        prototype.children = function () : XMLList
        {
            var _loc_1:* = this;
            return _loc_1.children();
        }// end function
        ;
        prototype.comments = function () : XMLList
        {
            var _loc_1:* = this;
            return _loc_1.comments();
        }// end function
        ;
        prototype.contains = function (param1) : Boolean
        {
            var _loc_2:* = this;
            return _loc_2.contains(param1);
        }// end function
        ;
        prototype.copy = function () : XML
        {
            var _loc_1:* = this;
            return _loc_1.copy();
        }// end function
        ;
        prototype.descendants = function (param1 = "*") : XMLList
        {
            var _loc_2:* = this;
            return _loc_2.descendants(param1);
        }// end function
        ;
        prototype.elements = function (param1 = "*") : XMLList
        {
            var _loc_2:* = this;
            return _loc_2.elements(param1);
        }// end function
        ;
        prototype.hasComplexContent = function () : Boolean
        {
            var _loc_1:* = this;
            return _loc_1.hasComplexContent();
        }// end function
        ;
        prototype.hasSimpleContent = function () : Boolean
        {
            var _loc_1:* = this;
            return _loc_1.hasSimpleContent();
        }// end function
        ;
        prototype.inScopeNamespaces = function () : Array
        {
            var _loc_1:* = this;
            return _loc_1.inScopeNamespaces();
        }// end function
        ;
        prototype.insertChildAfter = function (param1, param2)
        {
            var _loc_3:* = this;
            return _loc_3.insertChildAfter(param1, param2);
        }// end function
        ;
        prototype.insertChildBefore = function (param1, param2)
        {
            var _loc_3:* = this;
            return _loc_3.insertChildBefore(param1, param2);
        }// end function
        ;
        prototype.length = function () : int
        {
            var _loc_1:* = this;
            return _loc_1.length();
        }// end function
        ;
        prototype.localName = function () : Object
        {
            var _loc_1:* = this;
            return _loc_1.localName();
        }// end function
        ;
        prototype.name = function () : Object
        {
            var _loc_1:* = this;
            return _loc_1.name();
        }// end function
        ;
        prototype.namespace = function (param1 = null)
        {
            arguments = this;
            return arguments.namespace.apply(arguments, arguments);
        }// end function
        ;
        prototype.namespaceDeclarations = function () : Array
        {
            var _loc_1:* = this;
            return _loc_1.namespaceDeclarations();
        }// end function
        ;
        prototype.nodeKind = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.nodeKind();
        }// end function
        ;
        prototype.normalize = function () : XML
        {
            var _loc_1:* = this;
            return _loc_1.normalize();
        }// end function
        ;
        prototype.parent = function ()
        {
            var _loc_1:* = this;
            return _loc_1.parent();
        }// end function
        ;
        prototype.processingInstructions = function (param1 = "*") : XMLList
        {
            var _loc_2:* = this;
            return _loc_2.processingInstructions(param1);
        }// end function
        ;
        prototype.prependChild = function (param1) : XML
        {
            var _loc_2:* = this;
            return _loc_2.prependChild(param1);
        }// end function
        ;
        prototype.removeNamespace = function (param1) : XML
        {
            var _loc_2:* = this;
            return _loc_2.removeNamespace(param1);
        }// end function
        ;
        prototype.replace = function (param1, param2) : XML
        {
            var _loc_3:* = this;
            return _loc_3.replace(param1, param2);
        }// end function
        ;
        prototype.setChildren = function (param1) : XML
        {
            var _loc_2:* = this;
            return _loc_2.setChildren(param1);
        }// end function
        ;
        prototype.setLocalName = function (param1) : void
        {
            var _loc_2:* = this;
            _loc_2.setLocalName(param1);
            return;
        }// end function
        ;
        prototype.setName = function (param1) : void
        {
            var _loc_2:* = this;
            _loc_2.setName(param1);
            return;
        }// end function
        ;
        prototype.setNamespace = function (param1) : void
        {
            var _loc_2:* = this;
            _loc_2.setNamespace(param1);
            return;
        }// end function
        ;
        prototype.text = function () : XMLList
        {
            var _loc_1:* = this;
            return _loc_1.text();
        }// end function
        ;
        prototype.toXMLString = function () : String
        {
            var _loc_1:* = this;
            return _loc_1.toXMLString();
        }// end function
        ;
        prototype.toJSON = function (param1:String)
        {
            return "XML";
        }// end function
        ;
        _dontEnumPrototype(prototype);
    }
}
