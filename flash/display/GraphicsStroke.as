package flash.display
{

    final public class GraphicsStroke extends Object implements IGraphicsStroke, IGraphicsData
    {
        public var thickness:Number;
        public var pixelHinting:Boolean;
        private var _caps:String;
        private var _joints:String;
        public var miterLimit:Number;
        private var _scaleMode:String;
        public var fill:IGraphicsFill;

        public function GraphicsStroke(param1:Number = NaN, param2:Boolean = false, param3:String = "normal", param4:String = "none", param5:String = "round", param6:Number = 3, param7:IGraphicsFill = null)
        {
            this.thickness = param1;
            this.pixelHinting = param2;
            this._caps = param4;
            this._joints = param5;
            this.miterLimit = param6;
            this._scaleMode = param3;
            this.fill = param7;
            if (this._scaleMode != LineScaleMode.NORMAL)
            {
            }
            if (this._scaleMode != LineScaleMode.NONE)
            {
            }
            if (this._scaleMode != LineScaleMode.VERTICAL)
            {
            }
            if (this._scaleMode != LineScaleMode.HORIZONTAL)
            {
                Error.throwError(ArgumentError, 2008, "scaleMode");
            }
            if (this._caps != CapsStyle.NONE)
            {
            }
            if (this._caps != CapsStyle.ROUND)
            {
            }
            if (this._caps != CapsStyle.SQUARE)
            {
                Error.throwError(ArgumentError, 2008, "caps");
            }
            if (this._joints != JointStyle.BEVEL)
            {
            }
            if (this._joints != JointStyle.MITER)
            {
            }
            if (this._joints != JointStyle.ROUND)
            {
                Error.throwError(ArgumentError, 2008, "joints");
            }
            return;
        }// end function

        public function get caps() : String
        {
            return this._caps;
        }// end function

        public function set caps(param1:String) : void
        {
            if (param1 != CapsStyle.NONE)
            {
            }
            if (param1 != CapsStyle.ROUND)
            {
            }
            if (param1 != CapsStyle.SQUARE)
            {
                Error.throwError(ArgumentError, 2008, "caps");
            }
            this._caps = param1;
            return;
        }// end function

        public function get joints() : String
        {
            return this._joints;
        }// end function

        public function set joints(param1:String)
        {
            if (param1 != JointStyle.BEVEL)
            {
            }
            if (param1 != JointStyle.MITER)
            {
            }
            if (param1 != JointStyle.ROUND)
            {
                Error.throwError(ArgumentError, 2008, "joints");
            }
            this._joints = param1;
            return;
        }// end function

        public function get scaleMode() : String
        {
            return this._scaleMode;
        }// end function

        public function set scaleMode(param1:String) : void
        {
            if (param1 != LineScaleMode.NORMAL)
            {
            }
            if (param1 != LineScaleMode.NONE)
            {
            }
            if (param1 != LineScaleMode.VERTICAL)
            {
            }
            if (param1 != LineScaleMode.HORIZONTAL)
            {
                Error.throwError(ArgumentError, 2008, "scaleMode");
            }
            this._scaleMode = param1;
            return;
        }// end function

    }
}
