using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL
{

	/// <summary>
	/// 权限表的登陆身份识别
	/// </summary>
	public class PermissionDAL
	{
		///<summary>
		///验证身份
		/// </summary>
		public static string IDcard(string admin, string password)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",admin),
				new SqlParameter("@Password",password)
			};
			string card = Convert.ToString(SQLHepler);
		}
	}
}
