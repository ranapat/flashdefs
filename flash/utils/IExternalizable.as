package flash.utils
{

    public interface IExternalizable
    {

        public function IExternalizable();

        function writeExternal(param1:IDataOutput) : void;

        function readExternal(param1:IDataInput) : void;

    }
}
