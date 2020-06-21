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
        public static SqlDataReader joblist_Applictions(byte state,string mid)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@state",state),
                new SqlParameter("@mid",mid)
            };
           return  SQLHelper.ExecuteReader("joblist_Applictions", CommandType.StoredProcedure, p);
            //List<Job_appliction_record> list = new List<Job_appliction_record>();
            //while (dr.Read())
            //{
            //    Job_appliction_record n = new Job_appliction_record();
            //    n.PostID = Convert.ToInt32(dr["PostID"]);
            //    n.StuID = Convert.ToString(dr["StuID"]);
            //    n.Application_time = Convert.ToDateTime(dr["Application_time"]);
            //    n.Application_status = Convert.ToByte(dr["Application_status"]);
            //    n.Stu_Resume = Convert.ToString(dr["Stu_Resume"]);
            //    list.Add(n);

            //}

            //return list;
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
        /// <summary>
        /// 根据时间获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_time(DateTime time)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@time",time)
                };
            return SQLHelper.ExecuteReader("Job_appliction_time", CommandType.StoredProcedure, p);
        }
        /// <summary>
        /// 根据时间获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_order_by_time()
        {

            return SQLHelper.ExecuteReader("Job_order_by_time", CommandType.StoredProcedure, null);
        }
        /// <summary>
        /// 根据时间降序排序申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_order_by_time(byte state,string mid)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@state",state),
                    new SqlParameter("@mid",mid)
                };
            return SQLHelper.ExecuteReader("Job_appliction_order_by_time", CommandType.StoredProcedure, p);
        }
        /// <summary>
        /// 根据时间升序排序申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_order_by_asctime(byte state, string mid)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@state",state),
                    new SqlParameter("@mid",mid)
                };
            return SQLHelper.ExecuteReader("Job_appliction_order_by_asctime", CommandType.StoredProcedure, p);
        }
        /// <summary>
        /// 根据岗位名称申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_name(string name, string mid,byte state)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@name",name),
                    new SqlParameter("@mid",mid),
                    new SqlParameter("@state",state)
                };
            return SQLHelper.ExecuteReader("Job_appliction_name", CommandType.StoredProcedure, p);
        }
        /// <summary>
        /// 根据根据应聘者姓名获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_stu_name(string name, string mid, byte state)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@name",name),
                    new SqlParameter("@mid",mid),
                    new SqlParameter("@state",state)
                };
            return SQLHelper.ExecuteReader("Job_appliction_stu_name", CommandType.StoredProcedure, p);
        }
        /// <summary>
        /// 根据应聘者手机号获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_stu_phone(string phone, string mid, byte state)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@phone",phone),
                    new SqlParameter("@mid",mid),
                    new SqlParameter("@state",state)
                };
            return SQLHelper.ExecuteReader("Job_appliction_stu_phone", CommandType.StoredProcedure, p);
        }
        /// <summary>
        /// 修改申请应聘工作岗位状态
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static bool UpdateAppliction_recordState(int Jobid,string stuid, byte state)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                 new SqlParameter("@JobID",Jobid),
                 new SqlParameter("@JobState",state),
                 new SqlParameter("@stuid",stuid)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("UpdateAppliction_recordState", CommandType.StoredProcedure, p));

            return i > 0;
        }
    }
}
