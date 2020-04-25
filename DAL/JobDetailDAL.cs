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
                new SqlParameter("@Id",jobdet.ID),
                new SqlParameter("@jname",jobdet.J_name),
                new SqlParameter("@jCategory",jobdet.J_Category),
                new SqlParameter("@jportray",jobdet.J_Portray),
                new SqlParameter("@jsalay",jobdet.J_Salary),
                new SqlParameter("@wokintime",jobdet.Working_time),
                new SqlParameter("@positon",jobdet.Position),
                new SqlParameter("@remarks",jobdet.Remarks),
                new SqlParameter("@settlement",jobdet.Settlement),
                new SqlParameter("@number",jobdet.Need_number),
                new SqlParameter("@jstate",jobdet.J_state)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("Addjob", CommandType.StoredProcedure, p));
            return i > 0;
        }
    }
}
