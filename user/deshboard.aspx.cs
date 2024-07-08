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
    public partial class deshboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
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
                        Emp_Full_Name.Text = rd["Emp_Full_Name"].ToString();
                    }
                }
                else
                {
                    Emp_Full_Name.Text = "No data found.";
                }

            }
            else
            {
                Response.Redirect("../login.aspx");
            }
        }
    }
}