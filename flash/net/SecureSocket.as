package flash.net
{
    import flash.security.*;
    import flash.utils.*;

    public class SecureSocket extends Socket
    {
        private static const SSL_OK:uint = 0;
        private static const SSL_NOT_AVAILABLE:uint = 1;
        private static const SSL_NO_CONNECTION:uint = 2;
        private static const SSL_HANDSHAKE_FAILED:uint = 3;
        private static const SSL_API_FAILURE:uint = 4;
        private static const SSL_CERT_EXPIRED:uint = 5;
        private static const SSL_CERT_PRINCIPAL_MISMATCH:uint = 6;
        private static const SSL_CERT_UNTRUSTED_SIGNERS:uint = 7;
        private static const SSL_CERT_REVOKED:uint = 8;
        private static const SSL_CERT_INVALID:uint = 9;
        private static const SSL_CERT_INVALID_CHAIN:uint = 10;
        private static const SSL_CERT_NOT_YET_VALID:uint = 11;
        private static const SSL_CERT_API_ERROR:uint = 12;

        public function SecureSocket()
        {
            return;
        }// end function

        override public function connect(param1:String, param2:int) : void
        {
            super.connect(param1, param2);
            return;
        }// end function

        public function get serverCertificateStatus() : String
        {
            if (this.getConnectionResultSet())
            {
                return this.connectionResultToCertStatus(this.getConnectionResult());
            }
            return CertificateStatus.UNKNOWN;
        }// end function

        public function get serverCertificate() : X509Certificate;

        public function addBinaryChainBuildingCertificate(param1:ByteArray, param2:Boolean) : void;

        private function getConnectionResultSet() : Boolean;

        private function getConnectionResult() : uint;

        private function connectionResultToCertStatus(param1:uint) : String
        {
            switch(param1)
            {
                case SSL_OK:
                {
                    return CertificateStatus.TRUSTED;
                }
                case SSL_NOT_AVAILABLE:
                case SSL_NO_CONNECTION:
                case SSL_HANDSHAKE_FAILED:
                case SSL_API_FAILURE:
                case SSL_CERT_API_ERROR:
                {
                    return CertificateStatus.INVALID;
                }
                case SSL_CERT_EXPIRED:
                {
                    return CertificateStatus.EXPIRED;
                }
                case SSL_CERT_NOT_YET_VALID:
                {
                    return CertificateStatus.NOT_YET_VALID;
                }
                case SSL_CERT_PRINCIPAL_MISMATCH:
                {
                    return CertificateStatus.PRINCIPAL_MISMATCH;
                }
                case SSL_CERT_UNTRUSTED_SIGNERS:
                {
                    return CertificateStatus.UNTRUSTED_SIGNERS;
                }
                case SSL_CERT_REVOKED:
                {
                    return CertificateStatus.REVOKED;
                }
                case SSL_CERT_INVALID:
                {
                    return CertificateStatus.INVALID;
                }
                case SSL_CERT_INVALID_CHAIN:
                {
                    return CertificateStatus.INVALID_CHAIN;
                }
                default:
                {
                    break;
                }
            }
            return CertificateStatus.INVALID;
        }// end function

        public static function get isSupported() : Boolean;

    }
}
