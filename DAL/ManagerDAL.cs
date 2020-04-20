﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL
{


    /// <summary>
    /// Manager数据访问类
    /// </summary>
    public class ManagerDAL
    {
        /// <summary>
        /// 商家登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool ManagerLogin(string admin, string password)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",admin),
                new SqlParameter("@Password",password)
            };
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar("MangerLogin", CommandType.StoredProcedure, p));
            string sqltext = "select count(*) from Manager where M_LoginId=@Account and M_Password=@Password";
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;
        }
        /// <summary>
        /// 增，注册商家账号，传递实参
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool AddManager(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.M_LoginId),
                new SqlParameter("@Password",manager.M_Password)
            };
           // int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("AddManager", CommandType.StoredProcedure, p));
            string sqlt = "insert into Manager(M_LoginId,M_Password) values(@Account,@Password)";
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }

        /// <summary>
        /// 统计，判断商家账号是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ManagerIsExist(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account)

            };
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerIsExist", CommandType.StoredProcedure, p));
            string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;
            
        }

        /// <summary>
        /// 判断密码是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static string Pdmima(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.M_LoginId)

            };
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar("ManagerIsExist", CommandType.StoredProcedure, p));
            string sqltext = "select M_Password from Manager where M_LoginId=@Account";
            string tr = SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p).ToString();
            return tr;
        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool UpdataManager(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.M_LoginId),
                new SqlParameter("@Password",manager.M_Password)
            };
            // int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("AddManager", CommandType.StoredProcedure, p));
            string sqlt = "update Manager set M_Password=@Password from Manager where M_LoginId=@Account";
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }
    }
}
