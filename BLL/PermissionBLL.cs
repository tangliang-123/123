using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    /// <summary>
    /// 权限表BLL层
    /// </summary>
   public class PermissionBLL
    {
        /// <summary>
        ///  权限表返回账号的身份
        /// </summary>
        /// <param name="permission"></param>
        /// <returns></returns>
        public static string ReturnRole(Permission permission)
        {
            return DAL.PermissionDAL.ReturnRole(permission);
        }
    }
}
