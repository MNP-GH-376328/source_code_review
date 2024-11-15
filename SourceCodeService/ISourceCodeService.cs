using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SourceCodeService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ISourceCodeService" in both code and config file together.
    [ServiceContract]
    public interface ISourceCodeService
    {
        [OperationContract]
        DataSet SourceCodeSelect(string flag, string PageVal, string parval1 = "", string parval2 = "");

        [OperationContract]
        string SourceCodeConfirm(string flag, string PageVal, string parval1 = "", string parval2 = "", string parval3 = "");

        [OperationContract]
        string SourceCodeDocUpload(string flag, string Param, byte[] upload_file);

    }
}
