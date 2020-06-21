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
    public class StudentDAL
    {
        /// <summary>
        /// 学生登录
        /// </summary>
        /// <param name="account"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public static bool StuLogin(string admin, string password)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",admin),
                new SqlParameter("@Password",password)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("StuLogin", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account and M_Password=@Password";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;
        }
        /// <summary>
        /// 修改学生密码
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeStuPwd(Student manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.StuID),
                new SqlParameter("@Password",manager.S_Password)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangeStuPwd", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));
            return i > 0;
        }
        /// <summary>
        /// 统计，判断学生密码是否存在
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static string StuIsExist(Student student)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",student.StuID),

            };
            SqlDataReader i = SQLHelper.ExecuteReader("StuIsExist", CommandType.StoredProcedure, p);
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            string m = "";
            while (i.Read())
            {
                m = i["S_Password"].ToString();
            }
            return m;

        }
        /// <summary>
        /// 修改学生手机号
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static bool ChangeStuNum(Student manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",manager.StuID),
                new SqlParameter("@telnum",manager.S_telnum)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteReader("ChangeStuNum", CommandType.StoredProcedure, p));
            //string sqlt = "Update Manager set M_Password=@Password where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery(sqlt, CommandType.Text, p));

            return i > 0;
        }

        /// <summary>
        /// 向学生表添加一条记录
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        public static bool AddStudent(Student student)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@StuID",student.StuID),
                new SqlParameter("@password",student.S_Password)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("AddStudent", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;

        }
        /// <summary>
        /// 统计，判断学生手机号是否存在
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static bool StuNumIsExist(string account)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@Account",account)

            };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("StuNumIsExist", CommandType.StoredProcedure, p));
            //string sqltext = "select count(*) from Manager where M_LoginId=@Account";
            //int i = Convert.ToInt32(SQLHelper.ExecuteScalar(sqltext, CommandType.Text, p));
            return i > 0;

        }
        /// <summary>
        /// 根据学生学号显示学生信息
        /// </summary>
        /// <param name = "account" ></ param >
        /// < returns ></ returns >
        public static SqlDataReader GetStu(int stu)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@stu",stu)
                };

            return SQLHelper.ExecuteReader("GetStu", CommandType.StoredProcedure, p);
        }

        /// <summary>
        /// 获取所有学生信息
        /// </summary>
        /// <returns></returns>
        public static List<Student> GetAllStuList()
        {
            SqlDataReader dr = SQLHelper.ExecuteReader("GetAllStuList", CommandType.StoredProcedure, null);

            List<Student> list = new List<Student>();///
            while (dr.Read())
            {
                Student n = new Student();
                n.StuID = Convert.ToString(dr["StuID"]);
                n.S_Password = Convert.ToString(dr["S_Password"]);
                n.S_name = Convert.ToString(dr["S_name"]);
                n.S_telnum = Convert.ToString(dr["S_telnum"]);
                n.S_adress = Convert.ToString(dr["S_Address"]);
                n.S_sex = Convert.ToString(dr["S_Sex"]);
                n.S_Real_Name = Convert.ToBoolean(dr["S_Real_Name"]);
                list.Add(n);
            }
            return list;
        }
        /// <summary>
        /// 删除选中学生账号
        /// </summary>
        /// <returns></returns>
        public static bool DeleteStudent(string student)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@stu",student)
                };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("DeleteStudent", CommandType.StoredProcedure, p));
            return i > 0;
        }
        /// <summary>
        /// 详细信息，通过id来查
        /// </summary>
        /// <param name="jobDetail"></param>
        /// <returns></returns>
        public static DataSet selectStuById(Student student)
        {
            SqlParameter[] p = {
                  new SqlParameter("@ID",student.StuID)
            };
            DataSet i = SQLHelper.ExecuteDataSet("selectStuById", CommandType.StoredProcedure, p);
            return i;
        }

        /// <summary>
        /// 修改学生信息
        /// </summary>
        /// <param name="jobdet"></param>
        /// <returns></returns>
        public static bool UpdateStudent(Student student)
        {
            SqlParameter[] p = new SqlParameter[]
            {

            new SqlParameter("@jname",student.S_Password),
                new SqlParameter("@jCategory", student.S_name),
                new SqlParameter("@jportray",student.S_Real_Name),
                new SqlParameter("@jsalary", student.S_telnum),
                new SqlParameter("@wokintime", student.S_adress),
                new SqlParameter("@positio", student.S_sex),
                new SqlParameter("@id",student.StuID)
            };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("UpdateStudent", CommandType.StoredProcedure, p));
            return i > 0;
        }
        /// <summary>
        /// 根据学生的学号获得学生的简历信息
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public static SqlDataReader GetResume(Resume resume)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@StuID",resume.StuID)
                };
            return SQLHelper.ExecuteReader("GetResume", CommandType.StoredProcedure, p);
        }

        /// <summary>
        /// 修改学生表中的个人信息
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        public static bool ChangeStuMsg(Student student)
        {
            SqlParameter[] p = new SqlParameter[]
                {
                    new SqlParameter("@Sname",student.S_name),
                    new SqlParameter("@Sex",student.S_sex),
                    new SqlParameter("@age",student.S_age),
                    new SqlParameter("@telnum",student.S_telnum),
                    new SqlParameter("@adress",student.S_adress),
                    new SqlParameter("@Stuid",student.StuID)
                };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangeStuMsg", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 修改简历表中的学生简历信息
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public static bool ChangeResume(Resume resume)
        {
            SqlParameter[] p = new SqlParameter[]
               {
                    new SqlParameter("@name",resume.S_name),
                    new SqlParameter("@Sex",resume.S_Sex),
                    new SqlParameter("@age",resume.S_age),
                    new SqlParameter("@number",resume.S_number),
                    new SqlParameter("@adress",resume.Adress),
                    new SqlParameter("@minzu",resume.Minzu),
                    new SqlParameter("@status",resume.P_status),
                    new SqlParameter("@major",resume.Major),
                    new SqlParameter("@description",resume.P_description),
                    new SqlParameter("@StuId",resume.StuID)
               };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("ChangeResume", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 判断简历信息是否存在
        /// </summary>
        /// <param name="Stuid"></param>
        /// <returns></returns>
        public static bool ResumeIsExist(string Stuid)
        {
            SqlParameter[] p = new SqlParameter[]
               {
                    new SqlParameter("@StuID",Stuid)
               };
            int i = Convert.ToInt32(SQLHelper.ExecuteScalar("ResumeIsExist", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 向简历表添加一条记录
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public static bool AddResume(Resume resume)
        {
            SqlParameter[] p = new SqlParameter[]
               {
                    new SqlParameter("@name",resume.S_name),
                    new SqlParameter("@Sex",resume.S_Sex),
                    new SqlParameter("@age",resume.S_age),
                    new SqlParameter("@number",resume.S_number),
                    new SqlParameter("@adress",resume.Adress),
                    new SqlParameter("@minzu",resume.Minzu),
                    new SqlParameter("@status",resume.P_status),
                    new SqlParameter("@major",resume.Major),
                    new SqlParameter("@description",resume.P_description),
                    new SqlParameter("@StuId",resume.StuID)
               };
            int i = Convert.ToInt32(SQLHelper.ExecuteNonQuery("AddResume", CommandType.StoredProcedure, p));
            return i > 0;
        }

        /// <summary>
        /// 查找自己申请的岗位兼职
        /// </summary>
        /// <param name="manager"></param>
        /// <returns></returns>
        public static SqlDataReader selectMywork(Student manager)
        {
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@StuID",manager.StuID),
            };
            SqlDataReader i = SQLHelper.ExecuteReader("selectMywork", CommandType.StoredProcedure, p);
            return i;

        }
    }
}

