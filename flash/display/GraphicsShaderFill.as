package flash.display
{
    import flash.geom.*;

    final public class GraphicsShaderFill extends Object implements IGraphicsFill, IGraphicsData
    {
        public var shader:Shader;
        public var matrix:Matrix;

        public function GraphicsShaderFill(param1:Shader = null, param2:Matrix = null)
        {
            this.shader = param1;
            this.matrix = param2;
            return;
        }// end function

    }
}
