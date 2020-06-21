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
        /// 忘记管理员密码
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool ChangeAdminPass(T_StuAdmin manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.T_Num),
                new SqlParameter("@Password",manager.T_Password)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangeAdminPass", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }

        /// <summary>
        /// 向管理员表添加一条记录
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        public static bool AddAdmin(T_StuAdmin student)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@StuID",student.T_Num),
                new SqlParameter("@password",student.T_Password)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("AddAdmin", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;

        }

        /// <summary>
        /// 统计，判断管理员账号是否存在
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static bool AdminIsExist(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("AdminIsExist", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;

        }

    }
}
