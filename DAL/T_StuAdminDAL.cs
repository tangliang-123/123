using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    public class T_StuAdminDAL
    {
        /// <summary>
        /// 管理员登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool T_StuAdminLogin(string admin, string password)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",admin),
                new SqlParameter("@Password",password)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("T_StuAdminLogin", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account and M_Password=@Password";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;
        }
    }
}
