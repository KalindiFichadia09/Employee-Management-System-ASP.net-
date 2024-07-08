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
    public partial class holiday : System.Web.UI.Page
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
            startcon();
            fillgrid();
        }
        void fillgrid()
        {
            GridView1.DataSource = cs.Holiday_filldata();
            GridView1.DataBind();
        }
    }
}