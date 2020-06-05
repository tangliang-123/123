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
		///学生登录验证
		/// </summary>
		public static bool Perstulogin(string admin, string password)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",admin),
				new SqlParameter("@Password",password)
			};
			int card = Convert.ToInt32(SQLHelper.ExecuteScalar("Perstulogin", CommandType.StoredProcedure, p)); ;
			return card>0;
		}
		///<summary>
		///商家登录验证
		/// </summary>
		public static bool Permanlogin(string admin, string password)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",admin),
				new SqlParameter("@Password",password)
			};
			int card = Convert.ToInt32(SQLHelper.ExecuteScalar("Permanlogin", CommandType.StoredProcedure, p)); ;
			return card > 0;
		}
		///<summary>
		///管理员登录验证
		/// </summary>
		public static bool Peradmlogin(string admin, string password)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",admin),
				new SqlParameter("@Password",password)
			};
			int card = Convert.ToInt32(SQLHelper.ExecuteScalar("Peradmlogin", CommandType.StoredProcedure, p)); ;
			return card > 0;
		}


	}
}
