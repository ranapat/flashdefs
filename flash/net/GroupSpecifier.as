package flash.net
{
    import flash.utils.*;

    public class GroupSpecifier extends Object
    {
        private var m_routing:String;
        private var m_multicast:String;
        private var m_objectReplication:String;
        private var m_posting:String;
        private var m_publishAuthHash:String;
        private var m_postingAuthHash:String;
        private var m_ipMulticastAddresses:String;
        private var m_bootstrapPeers:String;
        private var m_openServerChannel:String;
        private var m_disablePeerToPeer:String;
        private var m_tag:String;
        private var m_unique:String;
        private var m_publishAuth:String;
        private var m_postingAuth:String;
        private var m_ipMulticastMemberUpdates:String;
        private var m_minGroupspecVersion:int;

        public function GroupSpecifier(param1:String)
        {
            if (param1)
            {
                this.m_tag = toOption(14, byteArrayToHex(stringToBytes(param1)));
            }
            else
            {
                throw new ArgumentError("Name can not be empty");
            }
            this.m_unique = "";
            this.routingEnabled = false;
            this.multicastEnabled = false;
            this.objectReplicationEnabled = false;
            this.postingEnabled = false;
            this.setPublishPassword(null);
            this.setPostingPassword(null);
            this.clearIPMulticastAddresses();
            this.clearBootstrapPeers();
            this.serverChannelEnabled = false;
            this.peerToPeerDisabled = false;
            this.ipMulticastMemberUpdatesEnabled = false;
            if (this.swfVersion >= 18)
            {
                this.m_minGroupspecVersion = 2;
            }
            else
            {
                this.m_minGroupspecVersion = 1;
            }
            return;
        }// end function

        public function makeUnique() : void
        {
            this.m_unique = toOption(14, GetCryptoRandomString(32));
            return;
        }// end function

        public function get routingEnabled() : Boolean
        {
            return this.m_routing != "";
        }// end function

        public function set routingEnabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_routing = "0100";
            }
            else
            {
                this.m_routing = "";
            }
            return;
        }// end function

        public function get multicastEnabled() : Boolean
        {
            return this.m_multicast != "";
        }// end function

        public function set multicastEnabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_multicast = "0101";
            }
            else
            {
                this.m_multicast = "";
            }
            return;
        }// end function

        public function get objectReplicationEnabled() : Boolean
        {
            return this.m_objectReplication != "";
        }// end function

        public function set objectReplicationEnabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_objectReplication = "0102";
            }
            else
            {
                this.m_objectReplication = "";
            }
            return;
        }// end function

        public function get postingEnabled() : Boolean
        {
            return this.m_posting != "";
        }// end function

        public function set postingEnabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_posting = "0103";
            }
            else
            {
                this.m_posting = "";
            }
            return;
        }// end function

        private function clearIPMulticastAddresses() : void
        {
            this.m_ipMulticastAddresses = "";
            return;
        }// end function

        private function clearBootstrapPeers() : void
        {
            this.m_bootstrapPeers = "";
            return;
        }// end function

        public function get peerToPeerDisabled() : Boolean
        {
            return this.m_disablePeerToPeer != "";
        }// end function

        public function set peerToPeerDisabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_disablePeerToPeer = "010d";
            }
            else
            {
                this.m_disablePeerToPeer = "";
            }
            return;
        }// end function

        public function get ipMulticastMemberUpdatesEnabled() : Boolean
        {
            return this.m_ipMulticastMemberUpdates != "";
        }// end function

        public function set ipMulticastMemberUpdatesEnabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_ipMulticastMemberUpdates = "011b";
            }
            else
            {
                this.m_ipMulticastMemberUpdates = "";
            }
            return;
        }// end function

        public function setPublishPassword(param1:String = null, param2:String = null) : void
        {
            var _loc_3:* = null;
            if (param1)
            {
                _loc_3 = stringToBytes(param1);
                _loc_3.position = 0;
                this.m_publishAuth = toOption(21, byteArrayToHex(_loc_3));
                this.m_publishAuthHash = toOption(5, this.SaltedSHA256(param2, _loc_3));
            }
            else
            {
                this.m_publishAuthHash = "";
                this.m_publishAuth = "";
            }
            return;
        }// end function

        public function setPostingPassword(param1:String = null, param2:String = null) : void
        {
            var _loc_3:* = null;
            if (param1)
            {
                _loc_3 = stringToBytes(param1);
                _loc_3.position = 0;
                this.m_postingAuth = toOption(23, byteArrayToHex(_loc_3));
                this.m_postingAuthHash = toOption(7, this.SaltedSHA256(param2, _loc_3));
            }
            else
            {
                this.m_postingAuthHash = "";
                this.m_postingAuth = "";
            }
            return;
        }// end function

        public function get serverChannelEnabled() : Boolean
        {
            return this.m_openServerChannel != "";
        }// end function

        public function set serverChannelEnabled(param1:Boolean) : void
        {
            if (param1)
            {
                this.m_openServerChannel = "010c";
            }
            else
            {
                this.m_openServerChannel = "";
            }
            return;
        }// end function

        public function addBootstrapPeer(param1:String) : void
        {
            this.m_bootstrapPeers = this.m_bootstrapPeers + toOption(11, param1);
            return;
        }// end function

        public function addIPMulticastAddress(param1:String, param2 = null, param3:String = null) : void
        {
            this.m_ipMulticastAddresses = this.m_ipMulticastAddresses + encodeIPMulticastAddress(param1, param2, param3);
            return;
        }// end function

        public function toString() : String
        {
            return this.groupspecWithAuthorizations();
        }// end function

        public function groupspecWithoutAuthorizations() : String
        {
            var _loc_1:* = "";
            var _loc_2:* = this.minGroupspecVersion;
            if (_loc_2 > 1)
            {
                _loc_1 = toOption(127, vlu(_loc_2));
            }
            return "G:" + _loc_1 + this.m_routing + this.m_multicast + this.m_objectReplication + this.m_posting + this.m_publishAuthHash + this.m_postingAuthHash + this.m_openServerChannel + this.m_disablePeerToPeer + this.m_tag + this.m_unique + this.m_ipMulticastMemberUpdates + "00" + this.groupspecExtras();
        }// end function

        private function groupspecExtras() : String
        {
            return this.m_ipMulticastAddresses + this.m_bootstrapPeers;
        }// end function

        public function groupspecWithAuthorizations() : String
        {
            return this.groupspecWithoutAuthorizations() + this.authorizations();
        }// end function

        public function authorizations() : String
        {
            return this.m_publishAuth + this.m_postingAuth;
        }// end function

        public function get minGroupspecVersion() : int
        {
            return this.m_minGroupspecVersion;
        }// end function

        public function set minGroupspecVersion(param1:int) : void
        {
            this.m_minGroupspecVersion = Math.max(param1, 1);
            return;
        }// end function

        private function get swfVersion() : int;

        public static function encodePostingAuthorization(param1:String) : String
        {
            return toOption(23, byteArrayToHex(stringToBytes(param1)));
        }// end function

        public static function encodePublishAuthorization(param1:String) : String
        {
            return toOption(21, byteArrayToHex(stringToBytes(param1)));
        }// end function

        public static function encodeIPMulticastAddressSpec(param1:String, param2 = null, param3:String = null) : String
        {
            return encodeIPMulticastAddress(param1, param2, param3);
        }// end function

        public static function encodeBootstrapPeerIDSpec(param1:String) : String
        {
            return toOption(11, param1);
        }// end function

        public static function get maxSupportedGroupspecVersion() : int
        {
            return 2;
        }// end function

        private static function SaltedSHA256(param1:String, param2:ByteArray) : String
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            if (param1)
            {
                _loc_3 = stringToBytes(param1);
                _loc_4 = byteArrayToHex(_loc_3);
                _loc_3.writeBytes(param2);
                _loc_3.position = 0;
                return _loc_4 + GroupSpecifier.SHA256(_loc_3);
            }
            return GroupSpecifier.SHA256(param2);
        }// end function

        private static function encodeIPMulticastAddress(param1:String, param2, param3:String) : String
        {
            var val:String;
            var address:* = param1;
            var port:* = param2;
            var source:* = param3;
            var is6:Boolean;
            try
            {
                val = inet_ptohex6(address, port);
                is6;
            }
            catch (e:Error)
            {
                val = inet_ptohex4(address, port);
            }
            if (source)
            {
                val = val + (is6 ? (inet_ptohex6(source, 0)) : (inet_ptohex4(source, 0))).substr(0, -4);
            }
            return toOption(10, val);
        }// end function

        private static function hexByte(param1:uint) : String
        {
            var _loc_2:* = null;
            if (param1 > 255)
            {
                throw new RangeError();
            }
            _loc_2 = param1.toString(16);
            if (_loc_2.length < 2)
            {
                _loc_2 = "0" + _loc_2;
            }
            return _loc_2;
        }// end function

        private static function vlu(param1:uint) : String
        {
            var _loc_3:* = 0;
            var _loc_2:* = "";
            do
            {
                
                _loc_3 = param1 & 127;
                if (_loc_2.length > 0)
                {
                    _loc_3 = _loc_3 | 128;
                }
                _loc_2 = hexByte(_loc_3) + _loc_2;
                param1 = param1 >> 7;
            }while (param1)
            return _loc_2;
        }// end function

        private static function toOption(param1:uint, param2:String) : String
        {
            var _loc_3:* = null;
            _loc_3 = vlu(param1) + param2;
            return vlu(_loc_3.length / 2) + _loc_3;
        }// end function

        private static function inet_ptohex4(param1:String, param2 = null) : String
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_6:* = null;
            var _loc_7:* = null;
            var _loc_8:* = null;
            var _loc_9:* = 0;
            if (param2 == null)
            {
                _loc_3 = /\[(\d+)\.(\d+)\.(\d+)\.(\d+)\]:(\d+)/;
                _loc_4 = /(\d+)\.(\d+)\.(\d+)\.(\d+):(\d+)/;
                _loc_5 = _loc_3.exec(param1);
                if (!_loc_5)
                {
                    _loc_5 = _loc_4.exec(param1);
                }
                if (_loc_5)
                {
                    return hexByte(_loc_5[1]) + hexByte(_loc_5[2]) + hexByte(_loc_5[3]) + hexByte(_loc_5[4]) + hexByte(_loc_5[5] / 256) + hexByte(_loc_5[5] & 255);
                }
                throw new ArgumentError("Invalid address");
            }
            else
            {
                _loc_6 = /\[(\d+)\.(\d+)\.(\d+)\.(\d+)\]/;
                _loc_7 = /(\d+)\.(\d+)\.(\d+)\.(\d+)/;
                _loc_9 = int(param2);
                _loc_8 = _loc_6.exec(param1);
                if (!_loc_8)
                {
                    _loc_8 = _loc_7.exec(param1);
                }
                if (_loc_8)
                {
                    return hexByte(_loc_8[1]) + hexByte(_loc_8[2]) + hexByte(_loc_8[3]) + hexByte(_loc_8[4]) + hexByte(_loc_9 / 256) + hexByte(_loc_9 & 255);
                }
                throw new ArgumentError("Invalid address");
            }
        }// end function

        private static function inet_ptohex6(param1:String, param2 = null) : String
        {
            var _loc_8:* = 0;
            var _loc_11:* = null;
            var _loc_12:* = 0;
            var _loc_13:* = 0;
            var _loc_15:* = null;
            var _loc_16:* = null;
            var _loc_17:* = 0;
            var _loc_3:* = /(::)|([:\[\]])|(\d+\.\d+\.\d+\.\d+)|([0-9a-fA-F]+)/g;
            var _loc_4:* = /(\d+)\.(\d+)\.(\d+)\.(\d+)/;
            var _loc_5:* = param1.match(_loc_3);
            var _loc_6:* = "";
            var _loc_7:* = "";
            var _loc_9:* = false;
            var _loc_10:* = false;
            var _loc_14:* = false;
            if (_loc_5 == null)
            {
                throw new ArgumentError();
            }
            _loc_8 = 0;
            while (_loc_8 < _loc_5.length)
            {
                
                _loc_15 = _loc_5[_loc_8];
                if (_loc_15 == "]")
                {
                    _loc_9 = true;
                }
                else if (_loc_15 == "::")
                {
                    if (_loc_10)
                    {
                        throw new RangeError();
                    }
                    _loc_10 = true;
                    _loc_14 = true;
                }
                else if (_loc_15 == ":")
                {
                    _loc_14 = true;
                }
                else if (_loc_15 != "[")
                {
                    if (_loc_9)
                    {
                        if (param2)
                        {
                            throw new ArgumentError();
                        }
                        param2 = _loc_15;
                    }
                    else
                    {
                        _loc_11 = _loc_4.exec(_loc_15);
                        if (_loc_11)
                        {
                            if (_loc_14)
                            {
                                if (!_loc_10)
                                {
                                }
                            }
                            if (_loc_6.length != 28)
                            {
                                throw new ArgumentError();
                            }
                            _loc_9 = true;
                            _loc_7 = _loc_7 + hexByte(_loc_11[1]) + hexByte(_loc_11[2]) + hexByte(_loc_11[3]) + hexByte(_loc_11[4]);
                        }
                        else
                        {
                            _loc_17 = parseInt(_loc_15, 16);
                            if (_loc_17 > 65535)
                            {
                                throw new RangeError();
                            }
                            _loc_16 = hexByte(_loc_17 / 256) + hexByte(_loc_17 & 255);
                            if (_loc_10)
                            {
                                _loc_7 = _loc_7 + _loc_16;
                            }
                            else
                            {
                                _loc_6 = _loc_6 + _loc_16;
                            }
                        }
                    }
                }
                _loc_8 = _loc_8 + 1;
            }
            if (!_loc_14)
            {
                throw new ArgumentError();
            }
            _loc_13 = _loc_6.length + _loc_7.length;
            if (_loc_13 > 32)
            {
                throw new RangeError();
            }
            while (_loc_13++ < 32)
            {
                
                _loc_6 = _loc_6 + "0";
            }
            if (param2 == null)
            {
                throw new ArgumentError();
            }
            _loc_12 = int(param2);
            if (_loc_12 >= 0)
            {
            }
            if (_loc_12 > 65535)
            {
                throw new RangeError();
            }
            _loc_7 = _loc_7 + hexByte(_loc_12 / 256) + hexByte(_loc_12 & 255);
            return _loc_6 + _loc_7;
        }// end function

        private static function byteArrayToHex(param1:ByteArray) : String
        {
            var _loc_3:* = 0;
            var _loc_2:* = "";
            _loc_3 = 0;
            while (_loc_3 < param1.length)
            {
                
                _loc_2 = _loc_2 + hexByte(param1[_loc_3]);
                _loc_3 = _loc_3 + 1;
            }
            return _loc_2;
        }// end function

        private static function stringToBytes(param1:String) : ByteArray
        {
            var _loc_2:* = new ByteArray();
            _loc_2.writeUTFBytes(param1);
            return _loc_2;
        }// end function

        private static function SHA256(param1:ByteArray) : String
        {
            return calcSHA256Digest(param1);
        }// end function

        private static function calcSHA256Digest(param1:ByteArray) : String;

        private static function GetCryptoRandomString(param1:uint) : String;

    }
}
