using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UniversityStudentBLL
    {
        /// <summary>
        /// 学生登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool StuLogin(string admin, string password)
        {
            return DAL.StudentDAL.StuLogin(admin, password);
        }
        ///<summary>
		///学生登录验证
		/// </summary>
        public static bool Perstulogin(string admin, string password)
        {
            return DAL.PermissionDAL.Perstulogin(admin, password);
        }
        /// <summary>
        /// 根据类型获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobListByType(string type)
        {
            return DAL.JobDetailDAL.GetJobListByType(type);
        }
        /// <summary>
        /// 获取岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobList()
        {
            return DAL.JobDetailDAL.GetJobList();
        }
        /// <summary>
        /// 根据状态查看申请应聘工作岗位
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static List<Job_appliction_record> joblist_Applictions(byte state)
        {
            return DAL.Job_appliction_recordDAL.joblist_Applictions(state);
        }
        /// <summary>
        /// 添加一条申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static bool Addjob_Applictions(Job_appliction_record jobdel)
        {
            return DAL.Job_appliction_recordDAL.Addjob_Applictions(jobdel);
        }
        /// <summary>
        /// 修改学生密码
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeStuPwd(Student manager)
        {
            return DAL.StudentDAL.ChangeStuPwd(manager);
        }
        /// <summary>
        /// 判断学生密码是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool StuIsExist(string account,string pwd)
        {
            return DAL.StudentDAL.StuIsExist(account,pwd);
        }
        /// <summary>
        /// 修改学生手机号
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeStuNum(Student manager)
        {
            return DAL.StudentDAL.ChangeStuNum(manager);
        }
        /// <summary>
        /// 判断学生手机号是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool StuNumIsExist(string account)
        {
            return DAL.StudentDAL.StuNumIsExist(account);
        }
    }
}
