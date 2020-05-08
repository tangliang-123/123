using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{

	public class Permission
	{
		private int iD;
		public int ID
		{
			get { return iD; }
			set { iD = value; }
		}

		private string p_Account;
		public string P_Account
		{
			get { return p_Account; }
			set { p_Account = value; }
		}

		private string p_Password;
		public string P_Password
		{
			get { return p_Password; }
			set { p_Password = value; }
		}

		private string p_Role;
		public string P_Role
		{
			get { return p_Role; }
			set { p_Role = value; }
		}

		private string p_Lastlogin;
		public string P_Lastlogin
		{
			get { return p_Lastlogin; }
			set { p_Lastlogin = value; }
		}
	}
}
