using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project_sem_6_.user
{
    public partial class working_hour : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader rd;
        DataSet ds;
        Employee cs;
        string mail;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
            if (Session["username"] != null)
            {
                mail = Session["username"].ToString();
                cmd = new SqlCommand("select * from Employee_tbl where Emp_Company_Email='" + Session["username"] + "'", con);
                cmd.ExecuteNonQuery();
                rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    if (rd.Read())
                    {
                        ViewState["W_EmpId"] = rd["Emp_Employee_Id"].ToString();
                        rd.Close();
                    }
                }
            }
            if (Session["username"] == null)
            {
                // Automatically clock out if the user was clocked in
                if (ViewState["W_EmpId"] != null)
                {
                    RecordClockOut();
                }
            }
            fillgrid();
        }
        DataSet filldata()
        {
            da = new SqlDataAdapter("select * from Working_hour_tbl where W_EmpId='" + ViewState["W_EmpId"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void fillgrid()
        {
            GridView1.DataSource = filldata();
            GridView1.DataBind();
        }

        protected void btnClockIn_Click(object sender, EventArgs e)
        {
            RecordClockIn();
        }

        protected void btnClockOut_Click(object sender, EventArgs e)
        {
            RecordClockOut();
        }

        private void RecordClockIn()
        {
            Session["ClockInTime"] = DateTime.Now;
            cmd = new SqlCommand("insert into Working_Hour_tbl (W_EmpId, ClockInTime) VALUES ('" + ViewState["W_EmpId"] + "', '" + Session["ClockInTime"] + "')", con);
            cmd.ExecuteNonQuery();
        }

        private void RecordClockOut()
        {
            TimeSpan duration = DateTime.Now - Convert.ToDateTime(Session["ClockInTime"]);
            double countHour = duration.TotalHours;

            cmd = new SqlCommand("update Working_Hour_tbl set ClockOutTime='" + DateTime.Now + "', CountHour='" + countHour + "' where W_EmpId='" + ViewState["W_EmpId"] + "' AND ClockOutTime IS NULL ", con);
            cmd.ExecuteNonQuery();
        }
    }
}