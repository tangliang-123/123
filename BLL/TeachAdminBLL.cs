using Model;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;//
using System.Data;

namespace BLL
{
    public class TeachAdminBLL
    {
        /// <summary>
        /// 管理员登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool T_StuAdminLogin(string admin, string password)
        {
            return DAL.T_StuAdminDAL.T_StuAdminLogin(admin, password);
        }
        ///<summary>
		///管理员登录验证
		/// </summary>
        public static bool Peradmlogin(string admin, string password)
        {
            return DAL.PermissionDAL.Peradmlogin(admin, password);
        }

        /// <summary>
        /// 根据商家“账号”查看商家完整信息
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static Manager GetManager(string account)
        {
            return DAL.ManagerDAL.GetManager(account);
        }
        /// <summary>
        /// 获取商家账号列表
        /// </summary>
        /// <returns></returns>
        public static List<Manager> GetManagerList()
        {
            return DAL.ManagerDAL.GetManagerList();
        }
        /// <summary>
        /// 获取所有商家列表
        /// </summary>
        /// <returns></returns>
        public static List<Manager> GetAllManagerList()
        {
            return DAL.ManagerDAL.GetAllManagerList();
        }
        /// <summary>
        /// 审批通过操作
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static bool ChangeJobState(int Jobid, int state)
        {
            return DAL.JobDetailDAL.ChangeJobState(Jobid, state);
        }
        /// <summary>
        /// 根据状态获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobListState(string state )
        {
            return DAL.JobDetailDAL.GetJobListState(state);
        }
        /// <summary>
        /// 根据时间获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobListTime(DateTime time)
        {
            return DAL.JobDetailDAL.GetJobListTime(time);
        }
        /// <summary>
        /// 查询所有商家信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectmanager(Manager manager)
        {
            return DAL.ManagerDAL.selectmanager(manager);
        }

        /// <summary>
        /// 忘记密码
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool wangjiMima(T_StuAdmin manager)
        {
            return DAL.T_StuAdminDAL.ChangeAdminPass(manager);
        }

        /// <summary>
        /// 向学生表添加一条记录
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool AddAdmin(T_StuAdmin manager)
        {
            //判断账号是否存在？
            if (DAL.T_StuAdminDAL.AdminIsExist(manager.T_Num))
            {
                return false;
            }
            else
                return DAL.T_StuAdminDAL.AddAdmin(manager);
        }
        /// <summary>
        /// 查询所有岗位信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static List<JobDetail> GetJobList()
        {
            return DAL.JobDetailDAL.GetJobList();
        }
        /// <summary>
        /// 删除选中的岗位
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool DeleteJob(int jobID)
        {
            return DAL.JobDetailDAL.DeleteJob(jobID);
            //return false;
        }
        /// <summary>
        /// 删除选中的商家
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool DeleteManager(Manager manager)
        {
            return DAL.ManagerDAL.DeleteManager(manager);
        }
        /// <summary>
        /// 获取所有学生信息
        /// </summary>
        /// <returns></returns>
        public static List<Student> GetAllStuList()
        {
            return DAL.StudentDAL.GetAllStuList();
        }
        /// <summary>
        /// 删除选中的学生账号
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool DeleteStudent(string id)
        {
            return DAL.StudentDAL.DeleteStudent(id);
        }
        /// <summary>
        /// 修改管理员密码
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeAdminPwd(T_StuAdmin manager)
        {
            if (DAL.T_StuAdminDAL.AdminIsExist(manager.T_Num, manager.T_Password))
            {
                return false;
            }
            return DAL.T_StuAdminDAL.ChangeAdminPwd(manager);
        }
        /// <summary>
        /// 判断管理员密码是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool AdminIsExist(string account, string pwd)
        {
            return DAL.T_StuAdminDAL.AdminIsExist(account, pwd);
        }
        /// <summary>
        /// 修改权限表管理员密码
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangePerminssionPwd(Permission manager)
        {
            return DAL.PermissionDAL.ChangePerminssionPwd(manager);
        }
        /// <summary>
        /// 根据ID查看商家的详细信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectMannagerById(Manager manager)
        {
            return DAL.ManagerDAL.selectMannagerById(manager);
        }
        /// <summary>
        /// 根据ID查看学生的详细信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectStuById(Student student)
        {
            return DAL.StudentDAL.selectStuById(student);
        }
        /// <summary>
        /// 修改商家信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool UpdateManager(Manager manager)
        {
            return DAL.ManagerDAL.UpdateManager(manager);
        }
        /// <summary>
        /// 修改学生信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool UpdateStudent(Student student)
        {
            return DAL.StudentDAL.UpdateStudent(student);
        }
        /// <summary>
        /// 注销管理员账号
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool DeleteAdmin(string login)
        {
            return DAL.T_StuAdminDAL.DeleteAdmin(login);
        }
        /// <summary>
        /// 注销权限表管理员账号
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool DeletePerssion(string login)
        {
            return DAL.PermissionDAL.DeletePerssion(login);
        }
    }
}
