using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
	public class Resume
	{
		private int stu_J_ID;
		public int Stu_J_ID
		{
			get { return stu_J_ID; }
			set { stu_J_ID = value; }
		}

		private string stuID;
		public string StuID
		{
			get { return stuID; }
			set { stuID = value; }
		}

		private string s_name;
		public string S_name
		{
			get { return s_name; }
			set { s_name = value; }
		}

		private string s_Sex;
		public string S_Sex
		{
			get { return s_Sex; }
			set { s_Sex = value; }
		}

		private string s_age;
		public string S_age
		{
			get { return s_age; }
			set { s_age = value; }
		}

		private string s_number;
		public string S_number
		{
			get { return s_number; }
			set { s_number = value; }
		}

		private string adress;
		public string Adress
		{
			get { return adress; }
			set { adress = value; }
		}

		private string minzu;
		public string Minzu
		{
			get { return minzu; }
			set { minzu = value; }
		}

		private string p_status;
		public string P_status
		{
			get { return p_status; }
			set { p_status = value; }
		}

		private string major;
		public string Major
		{
			get { return major; }
			set { major = value; }
		}

		private string p_description;
		public string P_description
		{
			get { return p_description; }
			set { p_description = value; }
		}
	}
}
