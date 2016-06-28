package flash.display3D
{
    import __AS3__.vec.*;
    import flash.display.*;
    import flash.display3D.textures.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;

    final public class Context3D extends EventDispatcher
    {

        public function Context3D()
        {
            return;
        }// end function

        public function get driverInfo() : String;

        public function dispose(param1:Boolean = true) : void;

        public function get enableErrorChecking() : Boolean;

        public function set enableErrorChecking(param1:Boolean) : void;

        public function configureBackBuffer(param1:int, param2:int, param3:int, param4:Boolean = true, param5:Boolean = false, param6:Boolean = false) : void;

        public function clear(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 1, param6:uint = 0, param7:uint = 4.29497e+009) : void;

        public function drawTriangles(param1:IndexBuffer3D, param2:int = 0, param3:int = -1) : void;

        public function present() : void;

        public function setProgram(param1:Program3D) : void;

        public function setProgramConstantsFromVector(param1:String, param2:int, param3:Vector.<Number>, param4:int = -1) : void;

        public function setProgramConstantsFromMatrix(param1:String, param2:int, param3:Matrix3D, param4:Boolean = false) : void;

        public function setProgramConstantsFromByteArray(param1:String, param2:int, param3:int, param4:ByteArray, param5:uint) : void;

        public function setVertexBufferAt(param1:int, param2:VertexBuffer3D, param3:int = 0, param4:String = "float4") : void;

        public function setBlendFactors(param1:String, param2:String) : void;

        public function setColorMask(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean) : void;

        public function setDepthTest(param1:Boolean, param2:String) : void;

        public function setTextureAt(param1:int, param2:TextureBase) : void
        {
            if (param2 == null)
            {
                this.setTextureInternal(param1, null);
            }
            else if (param2 is Texture)
            {
                this.setTextureInternal(param1, param2 as Texture);
            }
            else if (param2 is CubeTexture)
            {
                this.setCubeTextureInternal(param1, param2 as CubeTexture);
            }
            else if (param2 is RectangleTexture)
            {
                this.setRectangleTextureInternal(param1, param2 as RectangleTexture);
            }
            else if (param2 is VideoTexture)
            {
                this.setVideoTextureInternal(param1, param2 as VideoTexture);
            }
            return;
        }// end function

        public function setRenderToTexture(param1:TextureBase, param2:Boolean = false, param3:int = 0, param4:int = 0, param5:int = 0) : void
        {
            var _loc_6:* = 0;
            if (param1 is Texture)
            {
                _loc_6 = 1;
            }
            else if (param1 is CubeTexture)
            {
                _loc_6 = 2;
            }
            else if (param1 is RectangleTexture)
            {
                _loc_6 = 3;
            }
            else if (param1 != null)
            {
                throw new ArgumentError("texture argument not derived from TextureBase (can be Texture, CubeTexture, or if supported, RectangleTexture)");
            }
            this.setRenderToTextureInternal(param1, _loc_6, param2, param3, param4, param5);
            return;
        }// end function

        public function setRenderToBackBuffer() : void;

        private function setRenderToTextureInternal(param1:TextureBase, param2:int, param3:Boolean, param4:int, param5:int, param6:int) : void;

        public function setCulling(param1:String) : void;

        public function setStencilActions(param1:String = "frontAndBack", param2:String = "always", param3:String = "keep", param4:String = "keep", param5:String = "keep") : void;

        public function setStencilReferenceValue(param1:uint, param2:uint = 255, param3:uint = 255) : void;

        public function setScissorRectangle(param1:Rectangle) : void;

        public function createVertexBuffer(param1:int, param2:int, param3:String = "staticDraw") : VertexBuffer3D;

        public function createIndexBuffer(param1:int, param2:String = "staticDraw") : IndexBuffer3D;

        public function createTexture(param1:int, param2:int, param3:String, param4:Boolean, param5:int = 0) : Texture;

        public function createCubeTexture(param1:int, param2:String, param3:Boolean, param4:int = 0) : CubeTexture;

        public function createRectangleTexture(param1:int, param2:int, param3:String, param4:Boolean) : RectangleTexture;

        public function createVideoTexture() : VideoTexture;

        public function createProgram() : Program3D;

        public function drawToBitmapData(param1:BitmapData) : void;

        public function setSamplerStateAt(param1:int, param2:String, param3:String, param4:String) : void;

        public function get profile() : String;

        private function setTextureInternal(param1:int, param2:Texture) : void;

        private function setCubeTextureInternal(param1:int, param2:CubeTexture) : void;

        private function setRectangleTextureInternal(param1:int, param2:RectangleTexture) : void;

        private function setVideoTextureInternal(param1:int, param2:VideoTexture) : void;

        public function get backBufferWidth() : int;

        public function get backBufferHeight() : int;

        public function get maxBackBufferWidth() : int;

        public function set maxBackBufferWidth(param1:int) : void;

        public function get maxBackBufferHeight() : int;

        public function set maxBackBufferHeight(param1:int) : void;

        public static function get supportsVideoTexture() : Boolean;

    }
}
