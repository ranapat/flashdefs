﻿package flash.net
{

    final public class ObjectEncoding extends Object
    {
        public static const AMF0:uint = 0;
        public static const AMF3:uint = 3;
        public static const DEFAULT:uint = 3;

        public function ObjectEncoding()
        {
            return;
        }// end function

        public static function get dynamicPropertyWriter() : IDynamicPropertyWriter;

        public static function set dynamicPropertyWriter(param1:IDynamicPropertyWriter) : void;

    }
}
