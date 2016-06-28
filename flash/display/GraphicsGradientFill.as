package flash.display
{
    import flash.geom.*;

    final public class GraphicsGradientFill extends Object implements IGraphicsFill, IGraphicsData
    {
        private var _type:String;
        public var colors:Array;
        public var alphas:Array;
        public var ratios:Array;
        public var matrix:Matrix;
        private var _spreadMethod:String;
        private var _interpolationMethod:String;
        public var focalPointRatio:Number;

        public function GraphicsGradientFill(param1:String = "linear", param2:Array = null, param3:Array = null, param4:Array = null, param5 = null, param6 = "pad", param7:String = "rgb", param8:Number = 0)
        {
            this._type = param1;
            this.colors = param2;
            this.alphas = param3;
            this.ratios = param4;
            this.matrix = param5;
            this._spreadMethod = param6;
            this._interpolationMethod = param7;
            this.focalPointRatio = param8;
            if (this._type != GradientType.LINEAR)
            {
            }
            if (this._type != GradientType.RADIAL)
            {
                Error.throwError(ArgumentError, 2008, "type");
            }
            if (this._spreadMethod != "none")
            {
            }
            if (this._spreadMethod != SpreadMethod.PAD)
            {
            }
            if (this._spreadMethod != SpreadMethod.REFLECT)
            {
            }
            if (this._spreadMethod != SpreadMethod.REPEAT)
            {
                Error.throwError(ArgumentError, 2008, "spreadMethod");
            }
            if (this._interpolationMethod != InterpolationMethod.LINEAR_RGB)
            {
            }
            if (this._interpolationMethod != InterpolationMethod.RGB)
            {
                Error.throwError(ArgumentError, 2008, "interpolationMethod");
            }
            return;
        }// end function

        public function get type() : String
        {
            return this._type;
        }// end function

        public function set type(param1:String)
        {
            if (param1 != GradientType.LINEAR)
            {
            }
            if (param1 != GradientType.RADIAL)
            {
                Error.throwError(ArgumentError, 2008, "type");
            }
            this._type = param1;
            return;
        }// end function

        public function get spreadMethod() : String
        {
            return this._spreadMethod;
        }// end function

        public function set spreadMethod(param1:String)
        {
            if (param1 != "none")
            {
            }
            if (param1 != SpreadMethod.PAD)
            {
            }
            if (param1 != SpreadMethod.REFLECT)
            {
            }
            if (param1 != SpreadMethod.REPEAT)
            {
                Error.throwError(ArgumentError, 2008, "spreadMethod");
            }
            this._spreadMethod = param1;
            return;
        }// end function

        public function get interpolationMethod() : String
        {
            return this._interpolationMethod;
        }// end function

        public function set interpolationMethod(param1:String)
        {
            if (param1 != InterpolationMethod.LINEAR_RGB)
            {
            }
            if (param1 != InterpolationMethod.RGB)
            {
                Error.throwError(ArgumentError, 2008, "interpolationMethod");
            }
            this._interpolationMethod = param1;
            return;
        }// end function

    }
}
