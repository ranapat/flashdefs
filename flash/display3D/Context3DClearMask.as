﻿package flash.display3D
{

    final public class Context3DClearMask extends Object
    {
        public static const COLOR:int = 1 << 0;
        public static const DEPTH:int = 1 << 1;
        public static const STENCIL:int = 1 << 2;
        public static const ALL:int = COLOR | DEPTH | STENCIL;

        public function Context3DClearMask()
        {
            return;
        }// end function

    }
}
