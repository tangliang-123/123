﻿using Model;//
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
    }
}
