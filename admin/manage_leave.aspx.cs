using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;


namespace project_sem_6_.admin
{
    public partial class manage_leave : System.Web.UI.Page
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

        void fillgrid()
        {
            GridView1.DataSource = cs.Leave_filldata();
            GridView1.DataBind();
        }
        void filltext()
        {
            ds = new DataSet();
            ds = cs.Leave_select_admin(Convert.ToInt16(ViewState["id"]));
            Emp_Id.Text = (ds.Tables[0].Rows[0][1]).ToString();
            Leave_Type.Text = (ds.Tables[0].Rows[0][2]).ToString();
            Leave_Category.Text = (ds.Tables[0].Rows[0][3]).ToString();
            Leave_Start_Date.Text = (ds.Tables[0].Rows[0][4]).ToString();
            Leave_End_Date.Text = (ds.Tables[0].Rows[0][5]).ToString();
            Leave_Remark.Text = (ds.Tables[0].Rows[0][6]).ToString();
            Leave_Action.Text = (ds.Tables[0].Rows[0][8]).ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
            fillgrid();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt16(e.CommandArgument);
            ViewState["id"] = id;
            if (e.CommandName == "cmd_action")
            {
                UpdatePanel1.Visible = true;
                filltext();
            }
        }

        protected void btn_approve_Click(object sender, EventArgs e)
        {
            string l_action = "Approved";
            cmd = new SqlCommand("update Leave_tbl set L_Action = '" + l_action + "' where Id='" + ViewState["id"] + "' ", con);
            cmd.ExecuteNonQuery();
            fillgrid();
        }

        protected void btn_decline_Click(object sender, EventArgs e)
        {
            string l_action = "Decline";
            cmd = new SqlCommand("update Leave_tbl set L_Action = '" + l_action + "' where Id='" + ViewState["id"] + "' ", con);
            cmd.ExecuteNonQuery();
            fillgrid();
        }
    }
}