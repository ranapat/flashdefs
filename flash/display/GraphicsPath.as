package flash.display
{
    import __AS3__.vec.*;

    final public class GraphicsPath extends Object implements IGraphicsPath, IGraphicsData
    {
        public var commands:Vector.<int>;
        public var data:Vector.<Number>;
        private var _winding:String;

        public function GraphicsPath(param1:Vector.<int> = null, param2:Vector.<Number> = null, param3:String = "evenOdd")
        {
            this.commands = param1;
            this.data = param2;
            if (param3 != GraphicsPathWinding.EVEN_ODD)
            {
            }
            if (param3 != GraphicsPathWinding.NON_ZERO)
            {
                Error.throwError(ArgumentError, 2008, "winding");
            }
            this._winding = param3;
            return;
        }// end function

        public function get winding() : String
        {
            return this._winding;
        }// end function

        public function set winding(param1:String)
        {
            if (param1 != GraphicsPathWinding.EVEN_ODD)
            {
            }
            if (param1 != GraphicsPathWinding.NON_ZERO)
            {
                Error.throwError(ArgumentError, 2008, "winding");
            }
            this._winding = param1;
            return;
        }// end function

        public function moveTo(param1:Number, param2:Number) : void
        {
            if (this.commands == null)
            {
                this.commands = new Vector.<int>;
            }
            if (this.data == null)
            {
                this.data = new Vector.<Number>;
            }
            this.commands.push(GraphicsPathCommand.MOVE_TO);
            this.data.push(param1, param2);
            return;
        }// end function

        public function lineTo(param1:Number, param2:Number) : void
        {
            if (this.commands == null)
            {
                this.commands = new Vector.<int>;
            }
            if (this.data == null)
            {
                this.data = new Vector.<Number>;
            }
            this.commands.push(GraphicsPathCommand.LINE_TO);
            this.data.push(param1, param2);
            return;
        }// end function

        public function curveTo(param1:Number, param2:Number, param3:Number, param4:Number) : void
        {
            if (this.commands == null)
            {
                this.commands = new Vector.<int>;
            }
            if (this.data == null)
            {
                this.data = new Vector.<Number>;
            }
            this.commands.push(GraphicsPathCommand.CURVE_TO);
            this.data.push(param1, param2, param3, param4);
            return;
        }// end function

        public function cubicCurveTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
        {
            if (this.commands == null)
            {
                this.commands = new Vector.<int>;
            }
            if (this.data == null)
            {
                this.data = new Vector.<Number>;
            }
            this.commands.push(GraphicsPathCommand.CUBIC_CURVE_TO);
            this.data.push(param1, param2, param3, param4, param5, param6);
            return;
        }// end function

        public function wideLineTo(param1:Number, param2:Number) : void
        {
            if (this.commands == null)
            {
                this.commands = new Vector.<int>;
            }
            if (this.data == null)
            {
                this.data = new Vector.<Number>;
            }
            this.commands.push(GraphicsPathCommand.WIDE_LINE_TO);
            this.data.push(0, 0, param1, param2);
            return;
        }// end function

        public function wideMoveTo(param1:Number, param2:Number) : void
        {
            if (this.commands == null)
            {
                this.commands = new Vector.<int>;
            }
            if (this.data == null)
            {
                this.data = new Vector.<Number>;
            }
            this.commands.push(GraphicsPathCommand.WIDE_MOVE_TO);
            this.data.push(0, 0, param1, param2);
            return;
        }// end function

    }
}
