using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{

	public class Job_appliction_record
	{
		private int iD;
		public int ID
		{
			get { return iD; }
			set { iD = value; }



		}

		private int postID;
		public int PostID
		{
			get { return postID; }
			set { postID = value; }
		}

		private string stuID;
		public string StuID
		{
			get { return stuID; }
			set { stuID = value; }
		}

		private DateTime application_time;
		public DateTime Application_time
		{
			get { return application_time; }
			set { application_time = value; }
		}

		private byte application_status;
		public byte Application_status
		{
			get { return application_status; }
			set { application_status = value; }
		}

		private string stu_Resume;
		public string Stu_Resume
		{
			get { return stu_Resume; }
			set { stu_Resume = value; }
		}
	}
}
