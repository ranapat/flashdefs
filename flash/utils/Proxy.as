package flash.utils
{

    public class Proxy extends Object
    {

        public function Proxy()
        {
            return;
        }// end function

        function getProperty(param1)
        {
            Error.throwError(IllegalOperationError, 2088);
            return null;
        }// end function

        function setProperty(param1, param2) : void
        {
            Error.throwError(IllegalOperationError, 2089);
            return;
        }// end function

        function callProperty(param1, ... args)
        {
            Error.throwError(IllegalOperationError, 2090);
            return null;
        }// end function

        function hasProperty(param1) : Boolean
        {
            Error.throwError(IllegalOperationError, 2091);
            return null;
        }// end function

        function deleteProperty(param1) : Boolean
        {
            Error.throwError(IllegalOperationError, 2092);
            return null;
        }// end function

        function getDescendants(param1)
        {
            Error.throwError(IllegalOperationError, 2093);
            return null;
        }// end function

        function nextNameIndex(param1:int) : int
        {
            Error.throwError(IllegalOperationError, 2105);
            return null;
        }// end function

        function nextName(param1:int) : String
        {
            Error.throwError(IllegalOperationError, 2106);
            return null;
        }// end function

        function nextValue(param1:int)
        {
            Error.throwError(IllegalOperationError, 2107);
            return null;
        }// end function

        function isAttribute(param1) : Boolean;

    }
}
