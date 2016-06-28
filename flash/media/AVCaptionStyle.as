package flash.media
{

    public class AVCaptionStyle extends Object
    {
        private var m_font:String;
        private var m_fontColor:String;
        private var m_fontEdge:String;
        private var m_edgeColor:String;
        private var m_backgroundColor:String;
        private var m_fillColor:String;
        private var m_fontOpacity:String;
        private var m_backgroundOpacity:String;
        private var m_fillOpacity:String;
        private var m_size:String;
        private var m_bottomInset:String;
        public static const DEFAULT:String = "default";
        public static const MONOSPACE_WITH_SERIFS:String = "monospaced_with_serifs";
        public static const PROPORTIONAL_WITH_SERIFS:String = "proportional_with_serifs";
        public static const MONOSPACED_WITHOUT_SERIFS:String = "monospaced_without_serifs";
        public static const PROPORTIONAL_WITHOUT_SERIFS:String = "proportional_without_serifs";
        public static const CASUAL:String = "casual";
        public static const CURSIVE:String = "cursive";
        public static const SMALL_CAPITALS:String = "small_capitals";
        public static const BLACK:String = "black";
        public static const GRAY:String = "gray";
        public static const WHITE:String = "white";
        public static const BRIGHT_WHITE:String = "bright_white";
        public static const DARK_RED:String = "dark_red";
        public static const RED:String = "red";
        public static const BRIGHT_RED:String = "bright_red";
        public static const DARK_GREEN:String = "dark_green";
        public static const GREEN:String = "green";
        public static const BRIGHT_GREEN:String = "bright_green";
        public static const DARK_BLUE:String = "dark_blue";
        public static const BLUE:String = "blue";
        public static const BRIGHT_BLUE:String = "bright_blue";
        public static const DARK_YELLOW:String = "dark_yellow";
        public static const YELLOW:String = "yellow";
        public static const BRIGHT_YELLOW:String = "bright_yellow";
        public static const DARK_MAGENTA:String = "dark_magenta";
        public static const MAGENTA:String = "magenta";
        public static const BRIGHT_MAGENTA:String = "bright_magenta";
        public static const DARK_CYAN:String = "dark_cyan";
        public static const CYAN:String = "cyan";
        public static const BRIGHT_CYAN:String = "bright_cyan";
        public static const NONE:String = "none";
        public static const RAISED:String = "raised";
        public static const DEPRESSED:String = "depressed";
        public static const UNIFORM:String = "uniform";
        public static const LEFT_DROP_SHADOW:String = "drop_shadow_left";
        public static const RIGHT_DROP_SHADOW:String = "drop_shadow_right";
        public static const SMALL:String = "small";
        public static const MEDIUM:String = "medium";
        public static const LARGE:String = "large";

        public function AVCaptionStyle()
        {
            this.m_font = "";
            this.m_fontColor = "";
            this.m_fontEdge = "";
            this.m_edgeColor = "";
            this.m_backgroundColor = "";
            this.m_fillColor = "";
            this.m_fontOpacity = "";
            this.m_backgroundOpacity = "";
            this.m_fillOpacity = "";
            this.m_size = "";
            this.m_bottomInset = "0";
            return;
        }// end function

        public function get font() : String
        {
            return this.m_font;
        }// end function

        public function set font(param1:String) : void
        {
            this.m_font = param1;
            return;
        }// end function

        public function get fontColor() : String
        {
            return this.m_fontColor;
        }// end function

        public function set fontColor(param1:String) : void
        {
            this.m_fontColor = param1;
            return;
        }// end function

        public function get fontEdge() : String
        {
            return this.m_fontEdge;
        }// end function

        public function set fontEdge(param1:String) : void
        {
            this.m_fontEdge = param1;
            return;
        }// end function

        public function get edgeColor() : String
        {
            return this.m_edgeColor;
        }// end function

        public function set edgeColor(param1:String) : void
        {
            this.m_edgeColor = param1;
            return;
        }// end function

        public function get backgroundColor() : String
        {
            return this.m_backgroundColor;
        }// end function

        public function set backgroundColor(param1:String)
        {
            this.m_backgroundColor = param1;
            return;
        }// end function

        public function get fillColor() : String
        {
            return this.m_fillColor;
        }// end function

        public function set fillColor(param1:String)
        {
            this.m_fillColor = param1;
            return;
        }// end function

        public function get fontOpacity() : String
        {
            return this.m_fontOpacity;
        }// end function

        public function set fontOpacity(param1:String) : void
        {
            this.m_fontOpacity = param1;
            return;
        }// end function

        public function get backgroundOpacity() : String
        {
            return this.m_backgroundOpacity;
        }// end function

        public function set backgroundOpacity(param1:String) : void
        {
            this.m_backgroundOpacity = param1;
            return;
        }// end function

        public function get fillOpacity() : String
        {
            return this.m_fillOpacity;
        }// end function

        public function set fillOpacity(param1:String) : void
        {
            this.m_fillOpacity = param1;
            return;
        }// end function

        public function get size() : String
        {
            return this.m_size;
        }// end function

        public function set size(param1:String) : void
        {
            this.m_size = param1;
            return;
        }// end function

        public function get bottomInset() : String
        {
            return this.m_bottomInset;
        }// end function

        public function set bottomInset(param1:String) : void
        {
            this.m_bottomInset = param1;
            return;
        }// end function

    }
}
