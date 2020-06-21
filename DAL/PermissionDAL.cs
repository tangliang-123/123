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

		/// <summary>
		/// 更新权限表
		/// </summary>
		/// <param name="permission"></param>
		/// <returns></returns>
		public static bool UpdateQuanxian(Permission permission)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",permission.P_Account),
				new SqlParameter("@Password",permission.P_Password),
				new SqlParameter("@Post",permission.P_Role)
			};
			int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("Updatepermission", CommandType.StoredProcedure, p));
			//string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
			//int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
			return i > 0;
		}

		/// <summary>
		/// 向权限表添加数据
		/// </summary>
		/// <param name="permission"></param>
		/// <returns></returns>
		public static bool AddQuanxian(Permission permission)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",permission.P_Account),
				new SqlParameter("@Password",permission.P_Password),
				new SqlParameter("@Post",permission.P_Role)
			};
			int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("AddQuanxian", CommandType.StoredProcedure, p));
			return i > 0;
		}
		/// <summary>
		/// 增，根据选择注册账号，传递实参
		/// </summary>
		/// <param name="manager"></param>
		/// <returns></returns>
		public static bool Permission_Add(string login, string pwd, string role, string date)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@P_Account",login),
				new SqlParameter("@P_Password",pwd),
				new SqlParameter("@P_Role",role),
				new SqlParameter("@P_Lastlogin",date)

			};
			int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("Permission_Add", CommandType.StoredProcedure, p));
			//string sqlt = "insert into Manager(M_LoginId,M_Password) values(@Account,@Password)";
			//int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
			return i > 0;
		}
		/// <summary>
		/// 修改权限表管理员密码
		/// </summary>
		/// <param name = "account" ></ param >
		/// < returns ></ returns >
		public static bool ChangePerminssionPwd(Permission manager)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",manager.P_Account),
				new SqlParameter("@Password",manager.P_Password)
			};
			int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangePerminssionPwd", CommandType.StoredProcedure, p));
			//string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
			//int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
			return i > 0;
		}
		/// <summary>
		/// 注销权限表管理员账号
		/// </summary>
		/// <param name = "account" ></ param >
		/// < returns ></ returns >
		public static bool DeletePerssion(string login)
		{
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",login)

			};
			int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("DeletePerssion", CommandType.StoredProcedure, p));
			//string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
			//int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
			return i > 0;
		}
		/// <summary>
		/// 权限表返回账号的身份
		/// </summary>
		/// <param name="permission"></param>
		/// <returns></returns>
		public static string ReturnRole(Permission permission)
		{
			string role = "";
			SqlParameter[] p = new SqlParameter[]
			{
				new SqlParameter("@Account",permission.P_Account)
			};
			SqlDataReader i = SQLHelper.ExecuteReader("ReturnRole", CommandType.StoredProcedure, p);
			while (i.Read())
				role = i["P_Role"].ToString();
			return role;
		}
	}
}
