using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;//
using System.Data;

namespace BLL
{
    public class P_Permission
    {
        public static string Idcard(string admin, string password)
        {
            return DAL.Permission.IDcard(admin,password);
        }

        public static bool UserLogin(string admin, string password)
        {
            return DAL.ManagerDAL.UserLogin(admin, password);
        }
    }
}
