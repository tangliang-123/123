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
        /// <summary>
        /// 修改管理员密码
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeAdminPwd(T_StuAdmin manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.T_Num),
                new SqlParameter("@Password",manager.T_Password)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangeAdminPwd", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }
        /// <summary>
        /// 统计，判断学生密码是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool AdminIsExist(string account, string pwd)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account),
                new SqlParameter("@Password",pwd)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("AdminIsExist", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;

        }
        /// <summary>
        /// 注销管理员账号
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool DeleteAdmin(string login)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",login)
                
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("DeleteAdmin", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }
    }
}
