using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project_sem_6_
{
    public partial class forgot_password : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Employee cs;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void change_password_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(Email.Text)) && !(string.IsNullOrEmpty(New_Password.Text)) && !(string.IsNullOrEmpty(Confirm_Password.Text)))
            {
                startcon();
                if (New_Password.Text.Equals(Confirm_Password.Text))
                {
                    cmd = new SqlCommand("update Employee_tbl set Emp_Password='" + Confirm_Password.Text + "' where Emp_Company_Email='" + Email.Text + "' ", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                }
                else
                {
                    string script = "alert('New Password and Confirm Password doesn't match');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
            else
            {
                string script = "alert('Enter proper Email,new password and confirm password');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
    }
}