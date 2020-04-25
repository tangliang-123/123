using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{

	public class Manager
	{
		private string m_LoginId;
		public string M_LoginId
		{
			get { return m_LoginId; }
			set { m_LoginId = value; }
		}

		private string m_Password;
		public string M_Password
		{
			get { return m_Password; }
			set { m_Password = value; }
		}

		private string identification;
		public string Identification
		{
			get { return identification; }
			set { identification = value; }
		}

		private byte[] businesss_license;
		public byte[] Businesss_license
		{
			get { return businesss_license; }
			set { businesss_license = value; }
		}

		private bool real_Name;
		public bool Real_Name
		{
			get { return real_Name; }
			set { real_Name = value; }
		}

		private string grading;
		public string Grading
		{
			get { return grading; }
			set { grading = value; }
		}

		private string m_Name;
		public string M_Name
		{
			get { return m_Name; }
			set { m_Name = value; }
		}

		private string m_Address;
		public string M_Address
		{
			get { return m_Address; }
			set { m_Address = value; }
		}

		private string m_Position;
		public string M_Position
		{
			get { return m_Position; }
			set { m_Position = value; }
		}

		private bool sex;
		public bool Sex
		{
			get { return sex; }
			set { sex = value; }
		}

		private string nation;
		public string Nation
		{
			get { return nation; }
			set { nation = value; }
		}

		private string number;
		public string Number
		{
			get { return number; }
			set { number = value; }
		}
	}
}
