package flash.display
{
    import __AS3__.vec.*;
    import flash.geom.*;

    final public class Graphics extends Object
    {

        public function Graphics()
        {
            return;
        }// end function

        public function clear() : void;

        public function beginFill(param1:uint, param2:Number = 1) : void;

        public function beginGradientFill(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0) : void;

        public function beginBitmapFill(param1:BitmapData, param2:Matrix = null, param3:Boolean = true, param4:Boolean = false) : void;

        public function beginShaderFill(param1:Shader, param2:Matrix = null) : void;

        public function lineGradientStyle(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0) : void;

        public function lineStyle(param1:Number = undefined, param2:uint = 0, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3) : void;

        public function drawRect(param1:Number, param2:Number, param3:Number, param4:Number) : void;

        public function drawRoundRect(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = undefined) : void;

        public function drawRoundRectComplex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void;

        public function drawCircle(param1:Number, param2:Number, param3:Number) : void
        {
            this.drawRoundRect(param1 - param3, param2 - param3, param3 * 2, param3 * 2, param3 * 2, param3 * 2);
            return;
        }// end function

        public function drawEllipse(param1:Number, param2:Number, param3:Number, param4:Number) : void
        {
            this.drawRoundRect(param1, param2, param3, param4, param3, param4);
            return;
        }// end function

        public function moveTo(param1:Number, param2:Number) : void;

        public function lineTo(param1:Number, param2:Number) : void;

        public function curveTo(param1:Number, param2:Number, param3:Number, param4:Number) : void;

        public function cubicCurveTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void;

        public function endFill() : void;

        public function copyFrom(param1:Graphics) : void;

        public function lineBitmapStyle(param1:BitmapData, param2:Matrix = null, param3:Boolean = true, param4:Boolean = false) : void;

        public function lineShaderStyle(param1:Shader, param2:Matrix = null) : void;

        public function drawPath(param1:Vector.<int>, param2:Vector.<Number>, param3:String = "evenOdd") : void;

        public function drawTriangles(param1:Vector.<Number>, param2:Vector.<int> = null, param3:Vector.<Number> = null, param4:String = "none") : void;

        private function drawPathObject(param1:IGraphicsPath) : void
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            if (param1 is GraphicsPath)
            {
                _loc_2 = GraphicsPath(param1);
                this.drawPath(_loc_2.commands, _loc_2.data, _loc_2.winding);
            }
            else if (param1 is GraphicsTrianglePath)
            {
                _loc_3 = GraphicsTrianglePath(param1);
                this.drawTriangles(_loc_3.vertices, _loc_3.indices, _loc_3.uvtData, _loc_3.culling);
            }
            return;
        }// end function

        private function beginFillObject(param1:IGraphicsFill) : void
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_5:* = null;
            if (param1 == null)
            {
                this.endFill();
            }
            else if (param1 is GraphicsEndFill)
            {
                this.endFill();
            }
            else if (param1 is GraphicsSolidFill)
            {
                _loc_2 = GraphicsSolidFill(param1);
                this.beginFill(_loc_2.color, _loc_2.alpha);
            }
            else if (param1 is GraphicsGradientFill)
            {
                _loc_3 = GraphicsGradientFill(param1);
                this.beginGradientFill(_loc_3.type, _loc_3.colors, _loc_3.alphas, _loc_3.ratios, _loc_3.matrix, _loc_3.spreadMethod, _loc_3.interpolationMethod, _loc_3.focalPointRatio);
            }
            else if (param1 is GraphicsBitmapFill)
            {
                _loc_4 = GraphicsBitmapFill(param1);
                this.beginBitmapFill(_loc_4.bitmapData, _loc_4.matrix, _loc_4.repeat, _loc_4.smooth);
            }
            else if (param1 is GraphicsShaderFill)
            {
                _loc_5 = GraphicsShaderFill(param1);
                this.beginShaderFill(_loc_5.shader, _loc_5.matrix);
            }
            return;
        }// end function

        private function beginStrokeObject(param1:IGraphicsStroke) : void
        {
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_6:* = null;
            var _loc_7:* = null;
            var _loc_2:* = null;
            var _loc_3:* = null;
            if (param1 != null)
            {
            }
            if (param1 is GraphicsStroke)
            {
                _loc_2 = param1 as GraphicsStroke;
            }
            if (_loc_2)
            {
            }
            if (_loc_2.fill)
            {
            }
            if (_loc_2.fill is IGraphicsFill)
            {
                _loc_3 = _loc_2.fill;
            }
            if (_loc_2 != null)
            {
            }
            if (_loc_3 == null)
            {
                this.lineStyle();
            }
            else if (_loc_3 is GraphicsSolidFill)
            {
                _loc_4 = GraphicsSolidFill(_loc_3);
                this.lineStyle(_loc_2.thickness, _loc_4.color, _loc_4.alpha, _loc_2.pixelHinting, _loc_2.scaleMode, _loc_2.caps, _loc_2.joints, _loc_2.miterLimit);
            }
            else if (_loc_3 is GraphicsGradientFill)
            {
                _loc_5 = GraphicsGradientFill(_loc_3);
                this.lineStyle(_loc_2.thickness, 0, 1, _loc_2.pixelHinting, _loc_2.scaleMode, _loc_2.caps, _loc_2.joints, _loc_2.miterLimit);
                this.lineGradientStyle(_loc_5.type, _loc_5.colors, _loc_5.alphas, _loc_5.ratios, _loc_5.matrix, _loc_5.spreadMethod, _loc_5.interpolationMethod, _loc_5.focalPointRatio);
            }
            else if (_loc_3 is GraphicsBitmapFill)
            {
                _loc_6 = GraphicsBitmapFill(_loc_3);
                this.lineStyle(_loc_2.thickness, 0, 1, _loc_2.pixelHinting, _loc_2.scaleMode, _loc_2.caps, _loc_2.joints, _loc_2.miterLimit);
                this.lineBitmapStyle(_loc_6.bitmapData, _loc_6.matrix, _loc_6.repeat, _loc_6.smooth);
            }
            else if (_loc_3 is GraphicsShaderFill)
            {
                _loc_7 = GraphicsShaderFill(_loc_3);
                this.lineStyle(_loc_2.thickness, 0, 1, _loc_2.pixelHinting, _loc_2.scaleMode, _loc_2.caps, _loc_2.joints, _loc_2.miterLimit);
                this.lineShaderStyle(_loc_7.shader, _loc_7.matrix);
            }
            return;
        }// end function

        public function drawGraphicsData(param1:Vector.<IGraphicsData>) : void
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_6:* = null;
            if (param1 == null)
            {
                return;
            }
            var _loc_2:* = 0;
            while (_loc_2 < param1.length)
            {
                
                _loc_3 = param1[_loc_2];
                if (_loc_3 is IGraphicsPath)
                {
                    _loc_4 = IGraphicsPath(_loc_3);
                    this.drawPathObject(_loc_4);
                }
                else if (_loc_3 is IGraphicsFill)
                {
                    _loc_5 = IGraphicsFill(_loc_3);
                    this.beginFillObject(_loc_5);
                }
                else if (_loc_3 is IGraphicsStroke)
                {
                    _loc_6 = IGraphicsStroke(_loc_3);
                    this.beginStrokeObject(_loc_6);
                }
                _loc_2 = _loc_2 + 1;
            }
            return;
        }// end function

        private function nativeGetGraphicsData(param1:Vector.<IGraphicsData>, param2:Boolean) : void;

        public function readGraphicsData(param1:Boolean = true) : Vector.<IGraphicsData>
        {
            var _loc_2:* = new Vector.<IGraphicsData>;
            this.nativeGetGraphicsData(_loc_2, param1);
            return _loc_2;
        }// end function

    }
}
