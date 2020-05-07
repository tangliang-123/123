﻿using Model;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;//


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

        public static bool Updatenumber(Manager manager)
        {
            return DAL.ManagerDAL.Updatenumber(manager);
        }

        public static bool DeleteManager(Manager manager)
        {
            return DAL.ManagerDAL.DeleteManager(manager);
        }

        public static string returnlogid(Manager manager)
        {
            return DAL.ManagerDAL.selectzh(manager);
        }
    }
}
