package flash.display
{
    import __AS3__.vec.*;
    import flash.accessibility.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.text.*;
    import flash.ui.*;

    public class Stage extends DisplayObjectContainer
    {
        private static const kInvalidParamError:uint = 2004;

        public function Stage()
        {
            return;
        }// end function

        public function get frameRate() : Number;

        public function set frameRate(param1:Number) : void;

        public function invalidate() : void;

        public function get scaleMode() : String;

        public function set scaleMode(param1:String) : void;

        public function get align() : String;

        public function set align(param1:String) : void;

        public function get stageWidth() : int;

        public function set stageWidth(param1:int) : void;

        public function get stageHeight() : int;

        public function set stageHeight(param1:int) : void;

        public function get showDefaultContextMenu() : Boolean;

        public function set showDefaultContextMenu(param1:Boolean) : void;

        public function get focus() : InteractiveObject;

        public function set focus(param1:InteractiveObject) : void;

        public function get colorCorrection() : String;

        public function set colorCorrection(param1:String) : void;

        public function get colorCorrectionSupport() : String;

        public function isFocusInaccessible() : Boolean;

        public function get stageFocusRect() : Boolean;

        public function set stageFocusRect(param1:Boolean) : void;

        public function get quality() : String;

        public function set quality(param1:String) : void;

        public function get displayState() : String;

        public function set displayState(param1:String) : void;

        public function get fullScreenSourceRect() : Rectangle;

        public function set fullScreenSourceRect(param1:Rectangle) : void;

        public function get mouseLock() : Boolean;

        public function set mouseLock(param1:Boolean) : void;

        public function get stageVideos() : Vector.<StageVideo>;

        public function get stage3Ds() : Vector.<Stage3D>;

        public function get color() : uint;

        public function set color(param1:uint) : void;

        public function get fullScreenWidth() : uint;

        public function get fullScreenHeight() : uint;

        public function get wmodeGPU() : Boolean;

        public function get softKeyboardRect() : Rectangle;

        override public function set name(param1:String) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set mask(param1:DisplayObject) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set visible(param1:Boolean) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set x(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set y(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set z(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set scaleX(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set scaleY(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set scaleZ(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set rotation(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set rotationX(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set rotationY(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set rotationZ(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set alpha(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set cacheAsBitmap(param1:Boolean) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set opaqueBackground(param1:Object) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set scrollRect(param1:Rectangle) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set filters(param1:Array) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set blendMode(param1:String) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set transform(param1:Transform) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set accessibilityProperties(param1:AccessibilityProperties) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set scale9Grid(param1:Rectangle) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set tabEnabled(param1:Boolean) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set tabIndex(param1:int) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set focusRect(param1:Object) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set mouseEnabled(param1:Boolean) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function set accessibilityImplementation(param1:AccessibilityImplementation) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function addChild(param1:DisplayObject) : DisplayObject
        {
            this.requireOwnerPermissions();
            return super.addChild(param1);
        }// end function

        override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
        {
            this.requireOwnerPermissions();
            return super.addChildAt(param1, param2);
        }// end function

        override public function setChildIndex(param1:DisplayObject, param2:int) : void
        {
            this.requireOwnerPermissions();
            super.setChildIndex(param1, param2);
            return;
        }// end function

        override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
        {
            this.requireOwnerPermissions();
            super.addEventListener(param1, param2, param3, param4, param5);
            return;
        }// end function

        override public function dispatchEvent(event:Event) : Boolean
        {
            this.requireOwnerPermissions();
            return super.dispatchEvent(event);
        }// end function

        override public function hasEventListener(param1:String) : Boolean
        {
            this.requireOwnerPermissions();
            return super.hasEventListener(param1);
        }// end function

        override public function willTrigger(param1:String) : Boolean
        {
            this.requireOwnerPermissions();
            return super.willTrigger(param1);
        }// end function

        override public function get width() : Number
        {
            this.requireOwnerPermissions();
            return super.width;
        }// end function

        override public function set width(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function get height() : Number
        {
            this.requireOwnerPermissions();
            return super.height;
        }// end function

        override public function set height(param1:Number) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

        override public function get textSnapshot() : TextSnapshot
        {
            Error.throwError(IllegalOperationError, 2071);
            return null;
        }// end function

        override public function get mouseChildren() : Boolean
        {
            this.requireOwnerPermissions();
            return super.mouseChildren;
        }// end function

        override public function set mouseChildren(param1:Boolean) : void
        {
            this.requireOwnerPermissions();
            super.mouseChildren = param1;
            return;
        }// end function

        override public function get numChildren() : int
        {
            this.requireOwnerPermissions();
            return super.numChildren;
        }// end function

        override public function get tabChildren() : Boolean
        {
            this.requireOwnerPermissions();
            return super.tabChildren;
        }// end function

        override public function set tabChildren(param1:Boolean) : void
        {
            this.requireOwnerPermissions();
            super.tabChildren = param1;
            return;
        }// end function

        public function get allowsFullScreen() : Boolean;

        public function get allowsFullScreenInteractive() : Boolean;

        override public function removeChildAt(param1:int) : DisplayObject;

        override public function swapChildrenAt(param1:int, param2:int) : void;

        public function get contentsScaleFactor() : Number;

        public function get browserZoomFactor() : Number;

        private function requireOwnerPermissions() : void;

        public function get displayContextInfo() : String;

        public function get constructor()
        {
            return null;
        }// end function

        public function set constructor(param1)
        {
            return;
        }// end function

        override public function set contextMenu(param1:ContextMenu) : void
        {
            Error.throwError(IllegalOperationError, 2071);
            return;
        }// end function

    }
}
