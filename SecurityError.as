﻿package 
{

    dynamic public class SecurityError extends Error
    {
        public static const length:int = 1;

        public function SecurityError(param1 = "", param2 = 0)
        {
            super(param1, param2);
            this.name = prototype.name;
            return;
        }// end function

        prototype.name = "SecurityError";
    }
}
