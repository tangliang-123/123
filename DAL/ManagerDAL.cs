using System;
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
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("MangerLogin", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account and M_Password=@Password";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
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
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ManagerZhuce", CommandType.StoredProcedure, p));
            //string sqlt = "insert into Manager(M_LoginId,M_Password) values(@Account,@Password)";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
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
        /// 返回一个密码的值
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>

        public static string Selectmima(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
           {
                new SqlParameter("@Acount",manager.M_LoginId)
           };
            SqlDataReader i = SQLHelper.ExecuteReader("Selectmima", CommandType.StoredProcedure, p);
            string m="";
            if(i.HasRows)
            {
                while (i.Read())
                {
                    m = i["M_Password"].ToString();
                }
            }
            
            return m;
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
             int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("Updatemima", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }

        /// <summary>
        /// 修改手机号码
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool Updatenumber(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.M_LoginId),
                new SqlParameter("@number",manager.Number)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("Upadenumber", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }

        /// <summary>
        /// 删除商家账号
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool DeleteManager(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.M_LoginId)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("DeleteManager", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 返回一个账号
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static string selectzh(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.M_LoginId)
            };

            SqlDataReader i = SQLHelper.ExecuteReader("returnZH", CommandType.StoredProcedure, p);
            string m = "";
            while(i.Read())
            {
                m = i["M_Loginid"].ToString();
            }
            return m;
        }

        /// <summary>
        /// 查询发布的职业
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static DataSet selectmanager(Manager manager)
        {
            SqlParameter[] p = new SqlParameter[] 
            {
                new SqlParameter("@Account",manager.M_LoginId)
            };
            string sql = "select * from Manager";

            DataSet ds = SQLHelper.ExecuteDataSet(sql, CommandType.Text,null);
            return ds;

        }
        /// <summary>
        /// 根据商家“账号”查看商家完整信息
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static Manager GetManager(string account)
        {

            SqlParameter[] p = {
                  new SqlParameter("@Account",account)
            };
            SqlDataReader dr = SQLHelper.ExecuteReader("GetManager", CommandType.StoredProcedure, p);

            Manager m = new Manager();
            if (dr.Read())
            {
                m.M_LoginId = Convert.ToString(dr["Account"]);
                m.M_Password = Convert.ToString(dr["Password"]);
            }
            dr.Close();
            return m;
        }

        /// <summary>
        /// 获取商家账号列表
        /// </summary>
        /// <returns></returns>
        public static List<Manager> GetManagerList()
        {
            SqlDataReader dr = SQLHelper.ExecuteReader("GetManagerList", CommandType.StoredProcedure, null);

            List<Manager> list = new List<Manager>();///
            while (dr.Read())
            {
                Manager n = new Manager();
                n.M_LoginId = Convert.ToString(dr["Account"]);
                n.M_Password = Convert.ToString(dr["Password"]);
                list.Add(n);
            }
            return list;
        }
        /// <summary>
        /// 获取所有商家信息
        /// </summary>
        /// <returns></returns>
        public static List<Manager> GetAllManagerList()
        {
            SqlDataReader dr = SQLHelper.ExecuteReader("GetAllManagerList", CommandType.StoredProcedure, null);

            List<Manager> list = new List<Manager>();///
            while (dr.Read())
            {
                Manager n = new Manager();
                n.M_LoginId = Convert.ToString(dr["M_LoginId"]);
                n.M_Password = Convert.ToString(dr["M_Password"]);
                n.Identification = Convert.ToString(dr["Identification"]);
                n.Real_Name = Convert.ToBoolean(dr["Real_Name"]);
                n.Grading = Convert.ToString(dr["Grading"]);
                n.M_Name = Convert.ToString(dr["M_Name"]);
                n.M_Address = Convert.ToString(dr["M_Address"]);
                n.M_Position = Convert.ToString(dr["M_Position"]);
                n.Sex = Convert.ToBoolean(dr["Sex"]);
                n.Nation = Convert.ToString(dr["Nation"]);
                n.Number = Convert.ToString(dr["number"]);
                list.Add(n);
            }
            return list;
        }



    }
}
