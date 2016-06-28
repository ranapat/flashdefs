package flash.ui
{

    final public class ContextMenuBuiltInItems extends Object
    {
        private var _save:Boolean = true;
        private var _zoom:Boolean = true;
        private var _quality:Boolean = true;
        private var _play:Boolean = true;
        private var _loop:Boolean = true;
        private var _rewind:Boolean = true;
        private var _forwardAndBack:Boolean = true;
        private var _print:Boolean = true;

        public function ContextMenuBuiltInItems()
        {
            return;
        }// end function

        public function get save() : Boolean
        {
            return this._save;
        }// end function

        public function set save(param1:Boolean) : void
        {
            this._save = param1;
            return;
        }// end function

        public function get zoom() : Boolean
        {
            return this._zoom;
        }// end function

        public function set zoom(param1:Boolean) : void
        {
            this._zoom = param1;
            return;
        }// end function

        public function get quality() : Boolean
        {
            return this._quality;
        }// end function

        public function set quality(param1:Boolean) : void
        {
            this._quality = param1;
            return;
        }// end function

        public function get play() : Boolean
        {
            return this._play;
        }// end function

        public function set play(param1:Boolean) : void
        {
            this._play = param1;
            return;
        }// end function

        public function get loop() : Boolean
        {
            return this._loop;
        }// end function

        public function set loop(param1:Boolean) : void
        {
            this._loop = param1;
            return;
        }// end function

        public function get rewind() : Boolean
        {
            return this._rewind;
        }// end function

        public function set rewind(param1:Boolean) : void
        {
            this._rewind = param1;
            return;
        }// end function

        public function get forwardAndBack() : Boolean
        {
            return this._forwardAndBack;
        }// end function

        public function set forwardAndBack(param1:Boolean) : void
        {
            this._forwardAndBack = param1;
            return;
        }// end function

        public function get print() : Boolean
        {
            return this._print;
        }// end function

        public function set print(param1:Boolean) : void
        {
            this._print = param1;
            return;
        }// end function

        public function clone() : ContextMenuBuiltInItems
        {
            var _loc_1:* = new ContextMenuBuiltInItems();
            _loc_1.save = this.save;
            _loc_1.zoom = this.zoom;
            _loc_1.quality = this.quality;
            _loc_1.play = this.play;
            _loc_1.loop = this.loop;
            _loc_1.rewind = this.rewind;
            _loc_1.forwardAndBack = this.forwardAndBack;
            _loc_1.print = this.print;
            return _loc_1;
        }// end function

    }
}
