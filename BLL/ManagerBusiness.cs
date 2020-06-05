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
        public static bool UserLogin(string admin, string password)
        {
            return DAL.ManagerDAL.UserLogin(admin, password);
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
        public static JobDetail GetJob(string OrderNumber)
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

        public static JobDetail GetJobAppliction(string obAppliction_recordState)
        {
            return DAL.JobDetailDAL.GetJobAppliction(obAppliction_recordState);
        }
        /// <summary>
        /// 根据名称获岗位对象
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static DataSet GetJobListByName(string name)
        {
            return DAL.JobDetailDAL.GetJobListByName(name);
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
