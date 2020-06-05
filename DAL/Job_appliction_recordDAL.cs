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
   public class Job_appliction_recordDAL
    {
        /// <summary>
        /// 获取申请应聘简历信息
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static List<Job_appliction_record> GetAppliction_Records()
        {
            SqlDataReader dr = SQLHelper.ExecuteReader("GetAppliction_Records",CommandType.StoredProcedure,null);
            List<Job_appliction_record> list = new List<Job_appliction_record>();
            while (dr.Read())
            {
                Job_appliction_record n = new Job_appliction_record();
                n.PostID = Convert.ToInt32(dr["PostID"]);
                n.StuID = Convert.ToString(dr["StuID"]);
                n.Application_time = Convert.ToDateTime(dr["Application_time"]);
                n.Application_status = Convert.ToByte(dr["Application_status"]);
                n.Stu_Resume = Convert.ToString(dr["Stu_Resume"]);
                list.Add(n);
               
            }

            return list;
        }
        /// <summary>
        /// 申请应聘工作岗位状态操作
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static bool ChangeAppliction_recordState(int Jobid, byte state)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                 new SqlParameter("@JobID",Jobid),
                 new SqlParameter("@JobState",state)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangeAppliction_recordState", CommandType.StoredProcedure, p));

            return i > 0;
        }
        /// <summary>
        /// 根据状态查看申请应聘工作岗位
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static List<Job_appliction_record> joblist_Applictions(byte state)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@state",state)
            };
            SqlDataReader dr = SQLHelper.ExecuteReader("joblist_Applictions", CommandType.StoredProcedure, p);
            List<Job_appliction_record> list = new List<Job_appliction_record>();
            while (dr.Read())
            {
                Job_appliction_record n = new Job_appliction_record();
                n.PostID = Convert.ToInt32(dr["PostID"]);
                n.StuID = Convert.ToString(dr["StuID"]);
                n.Application_time = Convert.ToDateTime(dr["Application_time"]);
                n.Application_status = Convert.ToByte(dr["Application_status"]);
                n.Stu_Resume = Convert.ToString(dr["Stu_Resume"]);
                list.Add(n);

            }

            return list;
        }
        /// <summary>
        /// 添加一条申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static bool Addjob_Applictions(Job_appliction_record job)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",job.ID),
                new SqlParameter("@jname",job.PostID),
                new SqlParameter("@jCategory",job.StuID),
                new SqlParameter("@jportray",job.Application_time),
                new SqlParameter("@jsalary",job.Application_status),
                new SqlParameter("@wokintime",job.Stu_Resume)
                
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("Addjob_Applictions", CommandType.StoredProcedure, p));
            return i > 0;
        }
    }
}
