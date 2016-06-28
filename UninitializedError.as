package 
{

    dynamic public class UninitializedError extends Error
    {
        public static const length:int = 1;

        public function UninitializedError(param1 = "", param2 = 0)
        {
            super(param1, param2);
            this.name = prototype.name;
            return;
        }// end function

        prototype.name = "UninitializedError";
    }
}
