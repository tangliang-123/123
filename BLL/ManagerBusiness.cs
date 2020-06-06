using Model;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;//
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    /// <summary>
    /// 商家业务层
    /// </summary>
    public class ManagerBusiness
    {
        /// <summary>
        /// 商家登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool ManagerLogin(string admin, string password)
        {
            return DAL.ManagerDAL.ManagerLogin(admin, password);
        }
        /// <summary>
        /// 商家登录验证
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool Permanlogin(string admin, string password)
        {
            return DAL.PermissionDAL.Permanlogin(admin, password);
        }
        //注册
        public static bool AddManager(Manager manager)
        {
            //判断账号是否存在？
            if (ManagerDAL.ManagerIsExist(manager.M_LoginId))
            {
                return false;
            }
            else
                return DAL.ManagerDAL.AddManager(manager);
        }

        /// <summary>
		/// 增，根据选择注册账号，传递实参
		/// </summary>
		/// <param name="manager"></param>
		/// <returns></returns>
        public static bool Permission_Add(string login, string pwd, string role, string date)
        {
            return DAL.PermissionDAL.Permission_Add(login, pwd, role, date);
        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="manager"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool Upadamima(Manager manager,string password)
        {
            //判断原密码是否正确
            if (DAL.ManagerDAL.Selectmima(manager) == password)
                return DAL.ManagerDAL.UpdataManager(manager);
            else
                return false;
        }

        /// <summary>
        /// 忘记密码，重置密码
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool wangjiMima(Manager manager)
        {
            return DAL.ManagerDAL.UpdataManager(manager);
        }

        /// <summary>
        /// 更新权限表
        /// </summary>
        /// <param name="permission"></param>
        /// <returns></returns>
        public static bool UpdateQuanxian(Permission permission)
        {
            return DAL.PermissionDAL.UpdateQuanxian(permission);
        }
        /// <summary>
        /// 向权限表添加数据
        /// </summary>
        /// <param name="permission"></param>
        /// <returns></returns>
        public static bool AddQuanxian(Permission permission)
        {
            return DAL.PermissionDAL.AddQuanxian(permission);
        }

        /// <summary>
        /// 添加助学岗位
        /// </summary>
        /// <param name="jobdel"></param>
        /// <returns></returns>
        public static bool AddJob(JobDetail jobdel)
        {
            return DAL.JobDetailDAL.AddJob(jobdel);
        }
        /// <summary>
        /// 修改手机号码
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool Updatenumber(Manager manager)
        {//不能改为与数据库相同的手机号手机号
            if (DAL.ManagerDAL.ManNumIsExist(manager.Number))
            {
                return false;
            }
            return DAL.ManagerDAL.Updatenumber(manager);
        }
        /// <summary>
        /// 注销账号
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static bool DeleteManager(Manager manager)
        {
            return DAL.ManagerDAL.DeleteManager(manager);
        }
        /// <summary>
        /// 显示账号
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static string returnlogid(Manager manager)
        {
            return DAL.ManagerDAL.selectzh(manager);
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
        /// 查询发布职位
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectJob(JobDetail jobDetail)
        {
            return DAL.JobDetailDAL.selectJob(jobDetail);
        }

        /// <summary>
        /// 删除职位
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool DropJob(JobDetail jobDetail)
        {
            return DAL.JobDetailDAL.DropJob(jobDetail);
        }
        /// <summary>
        /// 根据工作编号来获取工作对象
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static SqlDataReader GetJob(int OrderNumber)
        {
            return DAL.JobDetailDAL.GetJob(OrderNumber);
        }
        /// <summary>
        /// 修改岗位状态
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool updategwzk(JobDetail jobDetail)
        {
            return DAL.JobDetailDAL.updatejstate(jobDetail);
        }

        /// <summary>
        /// 修改岗位信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static bool updatejobxx(JobDetail jobDetail)
        {
            return DAL.JobDetailDAL.updatejobxx(jobDetail);
        }
        /// <summary>
        /// 获取申请应聘简历信息
        /// </summary>
        /// <param name="jobdel"></param>
        /// <returns></returns>
        public static List<Job_appliction_record> GetAppliction_Records()
        {
            return DAL.Job_appliction_recordDAL.GetAppliction_Records();
        }
        /// <summary>
        /// 申请应聘工作岗位状态操作
        /// </summary>
        /// <param name="jobdel"></param>
        /// <returns></returns>
        public static bool ChangeAppliction_recordState(int Jobid, byte state)
        {
            return DAL.Job_appliction_recordDAL.ChangeAppliction_recordState(Jobid, state);
        }
        /// <summary>
        /// 根据状态查看显示应聘工作岗位
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader joblist_Applictions(byte state, string mid)
        {
            return DAL.Job_appliction_recordDAL.joblist_Applictions(state, mid);
        }
        public static JobDetail GetJobAppliction(string obAppliction_recordState)
        {
            return DAL.JobDetailDAL.GetJobAppliction(obAppliction_recordState);
        }
        /// <summary>
        /// 根据名称获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static DataSet GetJobListByName(string name,string id)
        {
            return DAL.JobDetailDAL.GetJobListByName(name,id);
        }
        /// <summary>
        /// 根据学号显示学生信息
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static SqlDataReader GetStu(int stu)
        {
            return DAL.StudentDAL.GetStu(stu);
        }
        /// <summary>
        /// 获取全部岗位
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static SqlDataReader Job_name(string jobid)
        {
            return DAL.JobDetailDAL.Job_name(jobid);
        }
        /// <summary>
        /// 根据时间获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_time(DateTime time)
        {
            return DAL.Job_appliction_recordDAL.Job_appliction_time(time);
        }
        /// <summary>
        /// 根据时间降序排序申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_order_by_time(byte state, string mid)
        {
            return DAL.Job_appliction_recordDAL.Job_appliction_order_by_time(state, mid);
        }
        /// <summary>
        /// 根据时间升序排序申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_order_by_asctime(byte state, string mid)
        {
            return DAL.Job_appliction_recordDAL.Job_appliction_order_by_asctime(state, mid);
        }
        /// <summary>
        /// 根据岗位名称申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_name(string name, string mid, byte state)
        {

            return DAL.Job_appliction_recordDAL.Job_appliction_name(name, mid, state);
        }
        /// <summary>
        /// 根据根据应聘者姓名获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_stu_name(string name, string mid, byte state)
        {
            return DAL.Job_appliction_recordDAL.Job_appliction_stu_name(name, mid, state);
        }
        /// <summary>
        /// 根据根据应聘者手机号获取申请记录
        /// </summary>
        /// <param name="Jobid"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static SqlDataReader Job_appliction_stu_phone(string phone, string mid, byte state)
        {
            return DAL.Job_appliction_recordDAL.Job_appliction_stu_phone(phone, mid, state);
        }
        /// <summary>
        /// 根据ID查看商家的详细信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectJobByID(JobDetail jobDetail)
        {
            return DAL.JobDetailDAL.selectJobById(jobDetail);
        }

        /// <summary>
        /// 根据岗位状态来获取信息
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectJobByStata(JobDetail jobDetail)
        {
            return DAL.JobDetailDAL.selectJobByStata(jobDetail);
        }
    }
}
