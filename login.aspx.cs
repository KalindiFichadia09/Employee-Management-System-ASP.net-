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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Employee cs;
        int i;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(Username.Text)) && !(string.IsNullOrEmpty(Password.Text)))
            {
                startcon();
                if (Username.Text == "admin" && Password.Text == "admin123")
                {
                    Session["username"] = Username.Text;
                    Response.Redirect("admin/deshboard.aspx");
                }
                else
                {
                    cmd = new SqlCommand("select count(*) from Employee_tbl where Emp_Company_Email='" + Username.Text + "' and Emp_Password='" + Password.Text + "' ", con);
                    i = Convert.ToInt32(cmd.ExecuteScalar());
                    if (i > 0)
                    {
                        Session["username"] = Username.Text;
                        Response.Redirect("user/deshboard.aspx");
                    }
                    else
                    {
                        string script = "alert('Invalid Username and Password');";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                        //Response.Write("Enter Valid username and password");
                    }
                }
            }
            else
            {
                string script = "alert('Enter proper username and password');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                //Response.Write("Enter proper username and password");
            }
        }
    }
}