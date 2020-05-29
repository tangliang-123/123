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
        /// <summary>
        /// 审批通过操作
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static bool ChangeJobState(int Jobid, int state)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                 new SqlParameter("@JobID",Jobid),
                 new SqlParameter("@JobState",state)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ManangerChangeJobState", CommandType.StoredProcedure, p));

            return i > 0;
        }


        /// <summary>
        /// 根据jobID获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static JobDetail GetJob(string jobNumber)
        {
            SqlParameter[] p = {
                  new SqlParameter("@JobNumber",jobNumber)
            };
            SqlDataReader dr = SQLHelper.ExecuteReader("GetJob", CommandType.StoredProcedure, p);
            JobDetail order = new JobDetail();
            if (dr.Read())
            {
                JobDetail c = new JobDetail();
                c.ID = Convert.ToInt32(dr["JobID"]);
                c.J_LoginId = Convert.ToString(dr["M_Account"]);
                //c.Title = Convert.ToString(dr["Title"]);
                //c.Type = Convert.ToString(dr["Type"]);
                //c.Img = Convert.ToString(dr["Img"]);
                //c.Money = Convert.ToSingle(dr["Money"]);
                //c.Content = Convert.ToString(dr["Content"]);
                //c.PublishTime = Convert.ToDateTime(dr["PublishTime"]);
            }
            dr.Close();
            return order;
        }
        /// <summary>
        /// 根据类型获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobListByType(string type)
        {
            SqlParameter[] p = {
                  new SqlParameter("@Type",type)
            };

            SqlDataReader dr = SQLHelper.ExecuteReader("StudentGetJobListByType", CommandType.StoredProcedure, p);

            List<JobDetail> list = new List<JobDetail>();
            while (dr.Read())
            {
                JobDetail c = new JobDetail();
                c.ID = Convert.ToInt32(dr["JobID"]);
                c.J_LoginId = Convert.ToString(dr["M_Account"]);
                //c.Title = Convert.ToString(dr["Title"]);
                //c.Type = Convert.ToString(dr["Type"]);
                //c.JobState = Convert.ToInt32(dr["JobState"]);
                //c.Money = Convert.ToSingle(dr["Money"]);
                //c.Content = Convert.ToString(dr["Content"]);
                //c.PublishTime = Convert.ToDateTime(dr["PublishTime"]);
                list.Add(c);
            }
            return list;
        }
        /// <summary>
        /// 获取岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobList()
        {
            SqlDataReader dr = SQLHelper.ExecuteReader("StudentGetJobList", CommandType.StoredProcedure, null);

            List<JobDetail> list = new List<JobDetail>();
            while (dr.Read())
            {
                JobDetail c = new JobDetail();
                c.ID = Convert.ToInt32(dr["JobID"]);
                c.J_LoginId = Convert.ToString(dr["M_Account"]);
                //c.Title = Convert.ToString(dr["Title"]);
                //c.Type = Convert.ToString(dr["Type"]);
                //c.JobState = Convert.ToInt32(dr["JobState"]);
                //c.Money = Convert.ToSingle(dr["Money"]);
                //c.Content = Convert.ToString(dr["Content"]);
                //c.PublishTime = Convert.ToDateTime(dr["PublishTime"]);
                list.Add(c);
            }
            return list;

        }
        /// <summary>
        /// 根据jobID获岗位对象////////////////////////////////////////////////
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static JobDetail GetJobAppliction(string jobAppliction_recordState)
        {
            SqlParameter[] p = {
                  new SqlParameter("@JobNumber",jobAppliction_recordState)
            };
            SqlDataReader dr = SQLHelper.ExecuteReader("GetJobAppliction", CommandType.StoredProcedure, p);
            JobDetail order = new JobDetail();
            if (dr.Read())
            {
                JobDetail c = new JobDetail();
                c.ID = Convert.ToInt32(dr["JobID"]);
                c.J_LoginId = Convert.ToString(dr["M_Account"]);
                //c.Title = Convert.ToString(dr["Title"]);
                //c.Type = Convert.ToString(dr["Type"]);
                //c.Img = Convert.ToString(dr["Img"]);
                //c.Money = Convert.ToSingle(dr["Money"]);
                //c.Content = Convert.ToString(dr["Content"]);
                //c.PublishTime = Convert.ToDateTime(dr["PublishTime"]);

            }
            dr.Close();
            return order;
        }
        /// <summary>
        /// 根据状态获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobListState(string state)
        {
            SqlParameter[] p = {
                  new SqlParameter("@Type",state)
            };

            SqlDataReader dr = SQLHelper.ExecuteReader("GetJobListState", CommandType.StoredProcedure, p);

            List<JobDetail> list = new List<JobDetail>();
            while (dr.Read())
            {
                JobDetail c = new JobDetail();
                c.ID = Convert.ToInt32(dr["JobID"]);
                c.J_LoginId = Convert.ToString(dr["M_Account"]);
                //c.Title = Convert.ToString(dr["Title"]);
                //c.Type = Convert.ToString(dr["Type"]);
                //c.JobState = Convert.ToInt32(dr["JobState"]);
                //c.Money = Convert.ToSingle(dr["Money"]);
                //c.Content = Convert.ToString(dr["Content"]);
                //c.PublishTime = Convert.ToDateTime(dr["PublishTime"]);
                list.Add(c);
            }
            return list;
        }
        /// <summary>
        /// 根据时间获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobListTime(DateTime time)
        {
            SqlParameter[] p = {
                  new SqlParameter("@Type",time)
            };

            SqlDataReader dr = SQLHelper.ExecuteReader("GetJobLisTime", CommandType.StoredProcedure, p);

            List<JobDetail> list = new List<JobDetail>();
            while (dr.Read())
            {
                JobDetail c = new JobDetail();
                c.ID = Convert.ToInt32(dr["JobID"]);
                c.J_LoginId = Convert.ToString(dr["M_Account"]);
                //c.Title = Convert.ToString(dr["Title"]);
                //c.Type = Convert.ToString(dr["Type"]);
                //c.JobState = Convert.ToInt32(dr["JobState"]);
                //c.Money = Convert.ToSingle(dr["Money"]);
                //c.Content = Convert.ToString(dr["Content"]);
                //c.PublishTime = Convert.ToDateTime(dr["PublishTime"]);
                list.Add(c);
            }
            return list;
        }
    }
}
