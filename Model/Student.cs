using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
	public class Student
	{
		private string stuID;
		public string StuID
		{
			get { return stuID; }
			set { stuID = value; }
		}

		private string s_Password;
		public string S_Password
		{
			get { return s_Password; }
			set { s_Password = value; }
		}

		private string s_name;
		public string S_name
		{
			get { return s_name; }
			set { s_name = value; }
		}

		private string s_sex;
		public string S_sex
		{
			get { return s_sex; }
			set { s_sex = value; }
		}

		private string s_age;
		public string S_age
		{
			get { return s_age; }
			set { s_age = value; }
		}

		private bool s_Real_Name;
		public bool S_Real_Name
		{
			get { return s_Real_Name; }
			set { s_Real_Name = value; }
		}

		private string s_telnum;
		public string S_telnum
		{
			get { return s_telnum; }
			set { s_telnum = value; }
		}

		private string s_adress;
		public string S_adress
		{
			get { return s_adress; }
			set { s_adress = value; }
		}
	}
}
