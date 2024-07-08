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
    public partial class manage_holidays : System.Web.UI.Page
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
            GridView1.DataSource = cs.Holiday_filldata();
            GridView1.DataBind();
        }
        void clear()
        {
            H_Name.Text = "";
            H_Start_Date.Text = "";
            H_End_Date.Text = "";
        }
        void filltext()
        {
            ds = new DataSet();
            ds = cs.Holiday_select(Convert.ToInt16(ViewState["id"]));
            H_Name.Text = (ds.Tables[0].Rows[0][1]).ToString();
            H_Start_Date.Text = (ds.Tables[0].Rows[0][2]).ToString();
            H_End_Date.Text = (ds.Tables[0].Rows[0][3]).ToString();
        }
        
        protected void btn_addh_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
        }

        protected void Add_Holiday_Click(object sender, EventArgs e)
        {
            startcon();
            if (Add_Holiday.Text == "Add")
            {
                cs.Holiday_Add(H_Name.Text,H_Start_Date.Text,H_End_Date.Text);
                fillgrid();
                clear();
            }
            else
            {
                cs.Holiday_Edit(Convert.ToInt16(ViewState["id"]), H_Name.Text, H_Start_Date.Text, H_End_Date.Text);
                fillgrid();
                clear();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt16(e.CommandArgument);
            ViewState["id"] = id;
            if(e.CommandName== "cmd_edit")
            {
                UpdatePanel1.Visible = true;
                lbl_heading.Text = "Update";
                Add_Holiday.Text = "Update";
                filltext();
            }
            if (e.CommandName == "cmd_remove")
            {
                cs.Holiday_Remove(Convert.ToInt16(ViewState["id"]));
                fillgrid();
            }
        }
    }
}