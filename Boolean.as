package 
{

    final public class Boolean extends Object
    {
        public static const length:int = 1;

        public function Boolean(param1 = undefined)
        {
            return;
        }// end function

        function toString() : String
        {
            return this ? ("true") : ("false");
        }// end function

        function valueOf() : Boolean
        {
            return this;
        }// end function

        prototype.toString = function () : String
        {
            if (prototype === this)
            {
                return "false";
            }
            if (!(this is Boolean))
            {
                Error.throwError(TypeError, 1004, "Boolean.prototype.toString");
            }
            return this ? ("true") : ("false");
        }// end function
        ;
        prototype.valueOf = function ()
        {
            if (prototype === this)
            {
                return false;
            }
            if (!(this is Boolean))
            {
                Error.throwError(TypeError, 1004, "Boolean.prototype.valueOf");
            }
            return this;
        }// end function
        ;
        _dontEnumPrototype(prototype);
    }
}
