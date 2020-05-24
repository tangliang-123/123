using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    /// <summary>
    /// 数据表 JobDetile的各种操作（各种增删改查）访问类
    /// </summary>
    public class JobDetailDAL
    {

        /// <summary>
        /// 添加一个工作记录
        /// </summary>
        /// <param name="jobdet"></param>
        /// <returns></returns>
         public static bool AddJob(JobDetail jobdet)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",jobdet.J_LoginId),
                new SqlParameter("@jname",jobdet.J_name),
                new SqlParameter("@jCategory",jobdet.J_Category),
                new SqlParameter("@jportray",jobdet.J_Portray),
                new SqlParameter("@jsalary",jobdet.J_Salary),
                new SqlParameter("@wokintime",jobdet.Working_time),
                new SqlParameter("@position",jobdet.Position),
                new SqlParameter("@remarks",jobdet.Remarks),
                new SqlParameter("@settlement",jobdet.Settlement),
                new SqlParameter("@number",jobdet.Need_number),
                new SqlParameter("@release_time",jobdet.To_release_time)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("Addjob", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 查询发布的职业
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectJob(JobDetail jobDetail)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",jobDetail.J_LoginId)
            };
            string sql = "select * from JobDetail where J_LoginId=@Account";

            DataSet ds = SQLHelper.ExecuteDataSet(sql, CommandType.Text,p);
            return ds;

        }
        /// <summary>
        /// 删除职位
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool DropJob(JobDetail jobDetail)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",jobDetail.J_LoginId),
                new SqlParameter("@Id",jobDetail.ID)
            };

            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("DropJob", CommandType.StoredProcedure, p));
            return i > 0;
        }


        /// <summary>
        /// 修改工位状态
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool updatejstate(JobDetail jobDetail)
        {
            SqlParameter[] p = new SqlParameter[]
           {
                new SqlParameter("@Jstat",jobDetail.J_state),
                new SqlParameter("@ID",jobDetail.ID)
           };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("updateJobstat", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 修改信息
        /// </summary>
        /// <param name="jobdet"></param>
        /// <returns></returns>
        public static bool updatejobxx(JobDetail jobdet)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                
                new SqlParameter("@jname",jobdet.J_name),
                new SqlParameter("@jCategory",jobdet.J_Category),
                new SqlParameter("@jportray",jobdet.J_Portray),
                new SqlParameter("@jsalary",jobdet.J_Salary),
                new SqlParameter("@wokintime",jobdet.Working_time),
                new SqlParameter("@position",jobdet.Position),
                new SqlParameter("@remarks",jobdet.Remarks),
                new SqlParameter("@settlement",jobdet.Settlement),
                new SqlParameter("@number",jobdet.Need_number),
                new SqlParameter("@release_time",jobdet.To_release_time),
                new SqlParameter("@id",jobdet.ID),
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("updatejobxx", CommandType.StoredProcedure, p));
            return i > 0;
        }
    }
}
