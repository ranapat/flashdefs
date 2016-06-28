package flash.display
{
    import flash.accessibility.*;
    import flash.events.*;
    import flash.geom.*;

    public class DisplayObject extends EventDispatcher implements IBitmapDrawable
    {

        public function DisplayObject()
        {
            return;
        }// end function

        public function get root() : DisplayObject;

        public function get stage() : Stage;

        public function get name() : String;

        public function set name(param1:String) : void;

        public function get parent() : DisplayObjectContainer;

        public function get mask() : DisplayObject;

        public function set mask(param1:DisplayObject) : void;

        public function get visible() : Boolean;

        public function set visible(param1:Boolean) : void;

        public function get x() : Number;

        public function set x(param1:Number) : void;

        public function get y() : Number;

        public function set y(param1:Number) : void;

        public function get z() : Number;

        public function set z(param1:Number) : void;

        public function get scaleX() : Number;

        public function set scaleX(param1:Number) : void;

        public function get scaleY() : Number;

        public function set scaleY(param1:Number) : void;

        public function get scaleZ() : Number;

        public function set scaleZ(param1:Number) : void;

        public function get mouseX() : Number;

        public function get mouseY() : Number;

        public function get rotation() : Number;

        public function set rotation(param1:Number) : void;

        public function get rotationX() : Number;

        public function set rotationX(param1:Number) : void;

        public function get rotationY() : Number;

        public function set rotationY(param1:Number) : void;

        public function get rotationZ() : Number;

        public function set rotationZ(param1:Number) : void;

        public function get alpha() : Number;

        public function set alpha(param1:Number) : void;

        public function get width() : Number;

        public function set width(param1:Number) : void;

        public function get height() : Number;

        public function set height(param1:Number) : void;

        public function get cacheAsBitmap() : Boolean;

        public function set cacheAsBitmap(param1:Boolean) : void;

        public function get opaqueBackground() : Object;

        public function set opaqueBackground(param1:Object) : void;

        public function get scrollRect() : Rectangle;

        public function set scrollRect(param1:Rectangle) : void;

        public function get filters() : Array;

        public function set filters(param1:Array) : void;

        public function get blendMode() : String;

        public function set blendMode(param1:String) : void;

        public function get transform() : Transform;

        public function set transform(param1:Transform) : void;

        public function get scale9Grid() : Rectangle;

        public function set scale9Grid(param1:Rectangle) : void;

        public function globalToLocal(param1:Point) : Point;

        public function localToGlobal(param1:Point) : Point;

        public function getBounds(param1:DisplayObject) : Rectangle;

        public function getRect(param1:DisplayObject) : Rectangle;

        public function get loaderInfo() : LoaderInfo;

        public function hitTestObject(param1:DisplayObject) : Boolean
        {
            return this._hitTest(false, 0, 0, false, param1);
        }// end function

        public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
        {
            return this._hitTest(true, param1, param2, param3, null);
        }// end function

        private function _hitTest(param1:Boolean, param2:Number, param3:Number, param4:Boolean, param5:DisplayObject) : Boolean;

        public function get accessibilityProperties() : AccessibilityProperties;

        public function set accessibilityProperties(param1:AccessibilityProperties) : void;

        public function globalToLocal3D(param1:Point) : Vector3D;

        public function local3DToGlobal(param1:Vector3D) : Point;

        public function set blendShader(param1:Shader) : void;

        public function get metaData() : Object;

        public function set metaData(param1:Object) : void;

    }
}
