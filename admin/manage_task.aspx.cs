using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace project_sem_6_.admin
{
    public partial class manage_task : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader rd;
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
            GridView1.DataSource = cs.Task_filldata();
            GridView1.DataBind();
        }
        void clear()
        {
            T_Emp_Email.ClearSelection();
            T_Description.Text = "";
            T_End_By.Text = "";
        }
        void filltext()
        {
            ds = new DataSet();
            ds = cs.Task_select(Convert.ToInt16(ViewState["id"]));
            T_Emp_Email.Text = (ds.Tables[0].Rows[0][1]).ToString();
            T_Description.Text = (ds.Tables[0].Rows[0][2]).ToString();
            T_End_By.Text = (ds.Tables[0].Rows[0][3]).ToString();
        }

        protected void btn_addt_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt16(e.CommandArgument);
            ViewState["id"] = id;
            if (e.CommandName == "cmd_edit")
            {
                UpdatePanel1.Visible = true;
                lbl_heading.Text = "Update";
                Add_Task.Text = "Update";
                filltext();
            }
            if (e.CommandName == "cmd_remove")
            {
                cs.Task_Remove(Convert.ToInt16(ViewState["id"]));
                fillgrid();
            }
        }

        protected void Add_Task_Click(object sender, EventArgs e)
        {
            startcon();
            if (Add_Task.Text == "Add")
            {
                cs.Task_Add(T_Emp_Email.Text, T_Description.Text, T_End_By.Text);
                fillgrid();
                clear();
            }
            else
            {
                cs.Task_Edit(Convert.ToInt16(ViewState["id"]), T_Emp_Email.Text, T_Description.Text, T_End_By.Text);
                fillgrid();
                clear();
            }
        }
    }
}