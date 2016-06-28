package flash.net
{
    import flash.events.*;

    public class NetGroup extends EventDispatcher
    {
        private static const kClose:uint = 0;
        private static const kPost:uint = 344;
        private static const kSendToNearest:uint = 345;
        private static const kSendToNeighbor:uint = 346;
        private static const kGetReceiveMode:uint = 347;
        private static const kSetReceiveMode:uint = 348;
        private static const kGetEstimatedMemberCount:uint = 349;
        private static const kGetNeighborCount:uint = 350;
        private static const kGetLocalCoverageFrom:uint = 353;
        private static const kGetLocalCoverageTo:uint = 354;
        private static const kGetReplicationStrategy:uint = 355;
        private static const kSetReplicationStrategy:uint = 356;
        private static const kUpdateHaveBlocks:uint = 357;
        private static const kUpdateWantBlocks:uint = 358;
        private static const kWriteRequestedBlock:uint = 359;
        private static const kDenyRequestedBlock:uint = 360;
        private static const kAddNeighbor:uint = 361;
        private static const kAddMemberHint:uint = 362;

        public function NetGroup(param1:NetConnection, param2:String)
        {
            this.ctor(param1, param2);
            return;
        }// end function

        private function ctor(param1:NetConnection, param2:String) : void;

        private function onStatus(param1) : void
        {
            dispatchEvent(new NetStatusEvent("status", false, false, param1));
            return;
        }// end function

        public function close() : void
        {
            this.invoke(kClose);
            return;
        }// end function

        private function invoke(param1:uint, ... args);

        public function get replicationStrategy() : String
        {
            return this.invoke(kGetReplicationStrategy);
        }// end function

        public function set replicationStrategy(param1:String) : void
        {
            this.invoke(kSetReplicationStrategy, param1);
            return;
        }// end function

        public function addHaveObjects(param1:Number, param2:Number) : void
        {
            if (param1 >= 0)
            {
            }
            if (param1 <= 9007199254740992)
            {
            }
            if (param2 >= 0)
            {
            }
            if (param2 > 9007199254740992)
            {
                Error.throwError(RangeError, 2006);
            }
            else
            {
                this.invoke(kUpdateHaveBlocks, true, param1, param2);
            }
            return;
        }// end function

        public function removeHaveObjects(param1:Number, param2:Number) : void
        {
            if (param1 >= 0)
            {
            }
            if (param1 <= 9007199254740992)
            {
            }
            if (param2 >= 0)
            {
            }
            if (param2 > 9007199254740992)
            {
                Error.throwError(RangeError, 2006);
            }
            else
            {
                this.invoke(kUpdateHaveBlocks, false, param1, param2);
            }
            return;
        }// end function

        public function addWantObjects(param1:Number, param2:Number) : void
        {
            if (param1 >= 0)
            {
            }
            if (param1 <= 9007199254740992)
            {
            }
            if (param2 >= 0)
            {
            }
            if (param2 > 9007199254740992)
            {
                Error.throwError(RangeError, 2006);
            }
            else
            {
                this.invoke(kUpdateWantBlocks, true, param1, param2);
            }
            return;
        }// end function

        public function removeWantObjects(param1:Number, param2:Number) : void
        {
            if (param1 >= 0)
            {
            }
            if (param1 <= 9007199254740992)
            {
            }
            if (param2 >= 0)
            {
            }
            if (param2 > 9007199254740992)
            {
                Error.throwError(RangeError, 2006);
            }
            else
            {
                this.invoke(kUpdateWantBlocks, false, param1, param2);
            }
            return;
        }// end function

        public function writeRequestedObject(param1:int, param2:Object) : void
        {
            this.invoke(kWriteRequestedBlock, param1, param2);
            return;
        }// end function

        public function denyRequestedObject(param1:int) : void
        {
            this.invoke(kDenyRequestedBlock, param1);
            return;
        }// end function

        public function get estimatedMemberCount() : Number
        {
            return this.invoke(kGetEstimatedMemberCount);
        }// end function

        public function get neighborCount() : Number
        {
            return this.invoke(kGetNeighborCount);
        }// end function

        public function get receiveMode() : String
        {
            return this.invoke(kGetReceiveMode);
        }// end function

        public function set receiveMode(param1:String)
        {
            return this.invoke(kSetReceiveMode, param1);
        }// end function

        public function get info() : NetGroupInfo;

        public function convertPeerIDToGroupAddress(param1:String) : String;

        public function get localCoverageFrom() : String;

        public function get localCoverageTo() : String;

        public function post(param1:Object) : String
        {
            return this.invoke(kPost, param1);
        }// end function

        public function sendToNearest(param1:Object, param2:String) : String
        {
            return this.invoke(kSendToNearest, param1, param2, null, null);
        }// end function

        public function sendToNeighbor(param1:Object, param2:String) : String
        {
            return this.invoke(kSendToNeighbor, param1, param2);
        }// end function

        public function sendToAllNeighbors(param1:Object) : String
        {
            return this.invoke(kSendToNeighbor, param1, "allNeighbors");
        }// end function

        public function addNeighbor(param1:String) : Boolean
        {
            return this.invoke(kAddNeighbor, param1);
        }// end function

        public function addMemberHint(param1:String) : Boolean
        {
            return this.invoke(kAddMemberHint, param1);
        }// end function

    }
}
