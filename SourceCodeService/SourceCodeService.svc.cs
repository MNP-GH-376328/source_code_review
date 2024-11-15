using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;


namespace SourceCodeService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "SourceCodeService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select SourceCodeService.svc or SourceCodeService.svc.cs at the Solution Explorer and start debugging.
    public class SourceCodeService : ISourceCodeService
    {
        public void DoWork()
        {
        }

        Helper.Oracle.OracleHelper OraHelp;
        DataTable dT = new DataTable();
        DataSet dS = new DataSet();
        string result;
        string sql, sql1;



        public DataSet SourceCodeSelect(string flag, string PageVal, string parval1 = "", string parval2 = "")
        {
            try
            {
                OraHelp = new Helper.Oracle.OracleHelper();


                OracleParameter[] param = new OracleParameter[5];
                param[0] = new OracleParameter("p_flag", OracleType.VarChar, 30);
                param[0].Value = flag;

                param[1] = new OracleParameter("p_pageval", OracleType.VarChar, 50);
                param[1].Value = PageVal;

                param[2] = new OracleParameter("p_parval1", OracleType.VarChar, 4000);
                param[2].Value = parval1;

                param[3] = new OracleParameter("p_parval2", OracleType.VarChar, 4000);
                param[3].Value = parval2;

                param[4] = new OracleParameter("qry_result", OracleType.Cursor);
                param[4].Direction = ParameterDirection.Output;

                dS = OraHelp.ExecuteDataSet("proc_sourcecode_select_data", param);
            }
            catch (Exception ex)
            {
                result = ex.Message;
                dS = null;
            }
            return dS;
        }


        public string SourceCodeConfirm(string flag, string PageVal, string parval1 = "", string parval2 = "", string parval3 = "")
        {
            try
            {
                OraHelp = new Helper.Oracle.OracleHelper();
                OracleParameter[] param = new OracleParameter[6];
                param[0] = new OracleParameter("p_flag", OracleType.VarChar, 50);
                param[0].Value = flag;

                param[1] = new OracleParameter("p_pageval", OracleType.VarChar, 4000);
                param[1].Value = PageVal;

                param[2] = new OracleParameter("p_parval1", OracleType.VarChar, 4000);
                param[2].Value = parval1;

                param[3] = new OracleParameter("p_parval2", OracleType.VarChar, 4000);
                param[3].Value = parval2;

                param[4] = new OracleParameter("p_parval3", OracleType.VarChar, 4000);
                param[4].Value = parval3;

                param[5] = new OracleParameter("p_OutMsg", OracleType.VarChar, 4000);
                param[5].Direction = ParameterDirection.InputOutput;
                OraHelp.ExecuteNonQuery("proc_sourcecode_confirm_data", param);
                result = Convert.ToString(param[5].Value);

            }
            catch (Exception ex)
            {
                result = ex.Message;
            }
            return result;

        }

        public string SourceCodeDocUpload(string flag, string Param, byte[] upload_file)
        {
            try
            {
                OraHelp = new Helper.Oracle.OracleHelper();
                OracleParameter[] param = new OracleParameter[3];
                param[0] = new OracleParameter("p_Flag", OracleType.VarChar, 50);
                param[0].Value = flag;




                param[1] = new OracleParameter("p_Param", OracleType.VarChar, 4000);
                param[1].Value = Param;




                param[2] = new OracleParameter("p_OutData", OracleType.VarChar, 4000);
                param[2].Direction = ParameterDirection.InputOutput;





                OraHelp.ExecuteNonQuery("proc_SourceCode_DocUpload", param);




                result = Convert.ToString(param[2].Value);
                OracleParameter[] parm2 = new OracleParameter[1];
                parm2[0] = new OracleParameter();
                parm2[0].ParameterName = "SBP";
                parm2[0].OracleType = OracleType.Blob;
                parm2[0].Direction = ParameterDirection.Input;
                parm2[0].Value = upload_file;
                OraHelp.ExecuteNonQuery(result, parm2);
                result = "Successfully Uploaded";
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }
            return result;
        }




      

    }
}
