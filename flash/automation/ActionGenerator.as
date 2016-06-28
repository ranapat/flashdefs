package flash.automation
{

    public class ActionGenerator extends Object
    {

        public function ActionGenerator()
        {
            return;
        }// end function

        public function generateActions(param1:Array) : void;

        public function generateAction(param1:AutomationAction) : void
        {
            var _loc_2:* = new Array(param1);
            this.generateActions(_loc_2);
            return;
        }// end function

    }
}
