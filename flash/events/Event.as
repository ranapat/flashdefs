﻿package flash.events
{

    public class Event extends Object
    {
        public static const ACTIVATE:String = "activate";
        public static const ADDED:String = "added";
        public static const ADDED_TO_STAGE:String = "addedToStage";
        public static const BROWSER_ZOOM_CHANGE:String = "browserZoomChange";
        public static const CANCEL:String = "cancel";
        public static const CHANGE:String = "change";
        public static const CLEAR:String = "clear";
        public static const CLOSE:String = "close";
        public static const COMPLETE:String = "complete";
        public static const CONNECT:String = "connect";
        public static const COPY:String = "copy";
        public static const CUT:String = "cut";
        public static const DEACTIVATE:String = "deactivate";
        public static const ENTER_FRAME:String = "enterFrame";
        public static const FRAME_CONSTRUCTED:String = "frameConstructed";
        public static const EXIT_FRAME:String = "exitFrame";
        public static const FRAME_LABEL:String = "frameLabel";
        public static const ID3:String = "id3";
        public static const INIT:String = "init";
        public static const MOUSE_LEAVE:String = "mouseLeave";
        public static const OPEN:String = "open";
        public static const PASTE:String = "paste";
        public static const REMOVED:String = "removed";
        public static const REMOVED_FROM_STAGE:String = "removedFromStage";
        public static const RENDER:String = "render";
        public static const RESIZE:String = "resize";
        public static const SCROLL:String = "scroll";
        public static const TEXT_INTERACTION_MODE_CHANGE:String = "textInteractionModeChange";
        public static const SELECT:String = "select";
        public static const SELECT_ALL:String = "selectAll";
        public static const SOUND_COMPLETE:String = "soundComplete";
        public static const TAB_CHILDREN_CHANGE:String = "tabChildrenChange";
        public static const TAB_ENABLED_CHANGE:String = "tabEnabledChange";
        public static const TAB_INDEX_CHANGE:String = "tabIndexChange";
        public static const UNLOAD:String = "unload";
        public static const FULLSCREEN:String = "fullScreen";
        public static const CONTEXT3D_CREATE:String = "context3DCreate";
        public static const TEXTURE_READY:String = "textureReady";
        public static const VIDEO_FRAME:String = "videoFrame";
        public static const SUSPEND:String = "suspend";
        public static const CHANNEL_MESSAGE:String = "channelMessage";
        public static const CHANNEL_STATE:String = "channelState";
        public static const WORKER_STATE:String = "workerState";

        public function Event(param1:String, param2:Boolean = false, param3:Boolean = false)
        {
            this.ctor(param1, param2, param3);
            return;
        }// end function

        public function formatToString(param1:String, ... args) : String
        {
            var _loc_5:* = null;
            var _loc_6:* = undefined;
            args = "";
            args = args + ("[" + param1);
            var _loc_4:* = 0;
            while (_loc_4 < args.length)
            {
                
                _loc_5 = args[_loc_4];
                _loc_6 = this[_loc_5];
                if (_loc_6 is String)
                {
                    args = args + (" " + _loc_5 + "=\"" + _loc_6 + "\"");
                }
                else
                {
                    args = args + (" " + _loc_5 + "=" + _loc_6);
                }
                _loc_4 = _loc_4 + 1;
            }
            args = args + "]";
            return args;
        }// end function

        private function ctor(param1:String, param2:Boolean, param3:Boolean) : void;

        public function clone() : Event
        {
            return new Event(this.type, this.bubbles, this.cancelable);
        }// end function

        public function toString() : String
        {
            return this.formatToString("Event", "type", "bubbles", "cancelable", "eventPhase");
        }// end function

        public function get type() : String;

        public function get bubbles() : Boolean;

        public function get cancelable() : Boolean;

        public function get target() : Object;

        public function get currentTarget() : Object;

        public function get eventPhase() : uint;

        public function stopPropagation() : void;

        public function stopImmediatePropagation() : void;

        public function preventDefault() : void;

        public function isDefaultPrevented() : Boolean;

    }
}
