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
        {
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
    }
}
