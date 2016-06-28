package 
{

    dynamic public class SyntaxError extends Error
    {
        public static const length:int = 1;

        public function SyntaxError(param1 = "", param2 = 0)
        {
            super(param1, param2);
            this.name = prototype.name;
            return;
        }// end function

        prototype.name = "SyntaxError";
    }
}
