using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace project_sem_6_.user
{
    public partial class user : System.Web.UI.MasterPage
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlDataReader rd;
        Employee cs;


        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                startcon();
                cmd = new SqlCommand("select * from Employee_tbl where Emp_Company_Email='" + Session["username"] + "'", con);
                cmd.ExecuteNonQuery();
                rd = cmd.ExecuteReader();

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        Emp_Username.Text = rd["Emp_Full_Name"].ToString();
                        ViewState["empID"] = rd["Emp_Employee_Id"].ToString();
                    }
                }
                else
                {
                    Emp_Username.Text = "No data found.";
                }
                rd.Close();
            }
            else
            {
                Response.Redirect("../login.aspx");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["ClockInTime"] != null)
            {
                string empeml = Session["username"].ToString();
                DateTime clockInTime = (DateTime)Session["ClockInTime"];

                cmd = new SqlCommand("update Working_Hour_tbl set ClockOutTime='" + DateTime.Now + "' where W_EmpId='" + ViewState["empID"] + "' AND ClockOutTime IS NULL ", con);
                cmd.ExecuteNonQuery();

                // Calculate the difference between clock-in and clock-out time and store it in the CountHour column
                TimeSpan duration = DateTime.Now - clockInTime;
                double countHour = duration.TotalHours;
                cmd = new SqlCommand("UPDATE Working_Hour_tbl SET CountHour = '" + countHour + "' WHERE W_EmpId='" + ViewState["empID"] + "' AND ClockOutTime ='" + DateTime.Now + "' ", con);
                cmd.ExecuteNonQuery();

                //Session.Remove("LoggedInEmployeeId");
                Session.Remove("ClockInTime");
            }



            Session.Abandon();
            Response.Redirect("../login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
    }
}