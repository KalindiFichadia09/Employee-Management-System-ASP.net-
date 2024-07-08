using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project_sem_6_.admin
{
    public partial class manage_departments : System.Web.UI.Page
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
        void clear()
        {
            Dept_Name.Text = "";
        }
        void fillgrid()
        {
            GridView1.DataSource = cs.Department_Filldata();
            GridView1.DataBind();
        }
        void filltext()
        {
            ds = new DataSet();
            ds = cs.Department_Select(Convert.ToInt16(ViewState["id"]));
            Dept_Name.Text = (ds.Tables[0].Rows[0][1]).ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
            fillgrid();
        }

        protected void btn_addc_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
        }

        protected void Add_Dept_Click(object sender, EventArgs e)
        {
            startcon();
            if (Add_Dept.Text == "Add")
            {
                cs.Department_Add(Dept_Name.Text);
                fillgrid();
                clear();
            }
            else
            {
                cs.Department_Edit(Convert.ToInt16(ViewState["id"]),Dept_Name.Text);
                fillgrid();
                clear();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt16(e.CommandArgument);
            ViewState["id"] = id;
            if(e.CommandName=="cmd_edit")
            {
                UpdatePanel1.Visible = true;
                Add_Dept.Text = "Update";
                lbl_heading.Text = "Update";
                filltext();
            }
            if (e.CommandName == "cmd_remove")
            {
                cs.Department_Remove(Convert.ToInt16(ViewState["id"]));
                fillgrid();
            }
        }
    }
}