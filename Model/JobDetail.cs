using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{

	public class JobDetail
	{
		private int iD;
		public int ID
		{
			get { return iD; }
			set { iD = value; }
		}

		private string j_LoginId;
		public string J_LoginId
		{
			get { return j_LoginId; }
			set { j_LoginId = value; }
		}

		private string j_name;
		public string J_name
		{
			get { return j_name; }
			set { j_name = value; }
		}

		private string j_Category;
		public string J_Category
		{
			get { return j_Category; }
			set { j_Category = value; }
		}

		private string j_Portray;
		public string J_Portray
		{
			get { return j_Portray; }
			set { j_Portray = value; }
		}

		private string j_Salary;
		public string J_Salary
		{
			get { return j_Salary; }
			set { j_Salary = value; }
		}

		private string working_time;
		public string Working_time
		{
			get { return working_time; }
			set { working_time = value; }
		}

		private string position;
		public string Position
		{
			get { return position; }
			set { position = value; }
		}

		private string remarks;
		public string Remarks
		{
			get { return remarks; }
			set { remarks = value; }
		}

		private string settlement;
		public string Settlement
		{
			get { return settlement; }
			set { settlement = value; }
		}

		private int need_number;
		public int Need_number
		{
			get { return need_number; }
			set { need_number = value; }
		}

		private int j_state;
		public int J_state
		{
			get { return j_state; }
			set { j_state = value; }
		}

		private DateTime to_release_time;
		public DateTime To_release_time
		{
			get { return to_release_time; }
			set { to_release_time = value; }
		}

		private int safety_Grade;
		public int Safety_Grade
		{
			get { return safety_Grade; }
			set { safety_Grade = value; }
		}
	}
}
