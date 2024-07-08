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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Employee cs;
        string flnm;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                flnm = "../image/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(flnm));
                lblStatus.Text = "File uploaded successfully!";

            }
            else
            {
                lblStatus.Text = "Please select a file to upload.";
            }
        }

        protected void btnDisplayDateTime_Click(object sender, EventArgs e)
        {
            // Get the current date and time
            DateTime currentDate = DateTime.Now;

            // Display date, month, year, and time in corresponding labels
            lblDate.Text = currentDate.DayOfWeek.ToString();
            lblMonth.Text = currentDate.ToString("MMMM");
            lblYear.Text = currentDate.Year.ToString();
            lblTime.Text = currentDate.ToString("hh:mm tt");
        }
    }
}