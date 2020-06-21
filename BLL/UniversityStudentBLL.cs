using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

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
        public static bool ChangeStuPwd(Student manager, string password)
        {
            if (DAL.StudentDAL.StuIsExist(manager) == password)
            {
                return DAL.StudentDAL.ChangeStuPwd(manager);
            }
            else
                return false;

        }

        /// <summary>
        /// 忘记密码
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool wangjiMima(Student manager)
        {
            return DAL.StudentDAL.ChangeStuPwd(manager);
        }

        /// <summary>
        /// 修改学生手机号
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeStuNum(Student manager)
        {
            if (DAL.StudentDAL.StuNumIsExist(manager.S_telnum))
            {
                return false;
            }
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

        /// <summary>
        /// 获得个人信息
        /// </summary>
        /// <param name="stu"></param>
        /// <returns></returns>
        public static SqlDataReader GetStu(int stu)
        {
            return DAL.StudentDAL.GetStu(stu);
        }

        /// <summary>
        /// 获得简历信息
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public static SqlDataReader GeResume(Resume resume)
        {
            return DAL.StudentDAL.GetResume(resume);
        }

        /// <summary>
        /// 修改学生个人信息
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        public static bool ChangeStuMsg(Student student)
        {
            return DAL.StudentDAL.ChangeStuMsg(student);
        }

        /// <summary>
        /// 修改学生的简历信息
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public static bool ChangeResume(Resume resume)
        {
            return DAL.StudentDAL.ChangeResume(resume);
        }

        /// <summary>
        /// 判断简历信息是否存在
        /// </summary>
        /// <param name="Stuid"></param>
        /// <returns></returns>
        public static bool ResumeIsExist(string Stuid)
        {
            return DAL.StudentDAL.ResumeIsExist(Stuid);
        }

        /// <summary>
        /// 向简历表添加一条信息
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public static bool AddResume(Resume resume)
        {
            return DAL.StudentDAL.AddResume(resume);
        }
        /// <summary>
        /// 查找所有商家发布的职业
        /// </summary>
        /// <returns></returns>
        public static SqlDataReader selectAllJob(int state)
        {
            return DAL.JobDetailDAL.selectAllJob(state);
        }

        /// <summary>
        /// 向学生表添加一条记录
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool AddStudent(Student manager)
        {
            //判断账号是否存在？
            if (DAL.StudentDAL.StuNumIsExist(manager.StuID))
            {
                return false;
            }
            else
                return DAL.StudentDAL.AddStudent(manager);
        }

        /// <summary>
        ///查找自己申请的岗位兼职
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static SqlDataReader selectMywork(Student manager)
        {
            return DAL.StudentDAL.selectMywork(manager);
        }
        /// <summary>
        /// 查询报名和录取的人数
        /// </summary>
        /// <param name="job"></param>
        /// <returns></returns>
        public static int selectNum(Job_appliction_record job)
        {
            return DAL.Job_appliction_recordDAL.selectNum(job);
        }

        /// <summary>
        /// 判断学生是否重复报名
        /// </summary>
        /// <param name="job"></param>
        /// <returns></returns>
        public static bool gwISExist(Job_appliction_record job)
        {
            return DAL.Job_appliction_recordDAL.gwISExist(job);
        }

    }
}
