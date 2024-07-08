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
    public partial class leave : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader rd;
        DataSet ds;
        Employee cs;
        string flnm,mail;
        //string L_Emp_Id;
        string L_Action = "Pending";

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        public void imageupload()
        {
            if (L_Document.HasFile)
            {
                flnm = "../image/" + L_Document.FileName;
                L_Document.SaveAs(Server.MapPath(flnm));
            }
        }
        void select_eid()
        {
            startcon();
            da = new SqlDataAdapter("select * from Employee_tbl where Emp_Company_Email='" + Session["username"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            string l_id = (ds.Tables[0].Rows[0][12]).ToString();
            ViewState["L_Emp_Id"] = l_id;
        }
        void clear()
        {
            L_Category.ClearSelection();
            L_Type.ClearSelection();
            L_Start_Date.Text = "";
            L_End_Date.Text = "";
            L_Remarks.Text = "";
        }

        void Leave_Approve(string L_Emp_Id)
        {
            cmd = new SqlCommand("select * from Leave_tbl where L_Emp_Id='" + L_Emp_Id + "' and L_Action='Approve'' ", con);
            cmd.ExecuteNonQuery();
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
                        ViewState["L_Emp_Id"] = rd["Emp_Employee_Id"].ToString();
                        rd.Close();
                    }
                }
                fillgrid();
            }
        }

        protected void btn_applyl_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
        }

        protected void btn_apply_Click(object sender, EventArgs e)
        {
            startcon();
            imageupload();
            cs.Apply_leave_insert(ViewState["L_Emp_Id"].ToString(), L_Type.Text, L_Category.Text, L_Start_Date.Text, L_End_Date.Text, L_Remarks.Text, flnm, L_Action);
            clear();
            fillgrid();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label actionLabel = (Label)e.Row.FindControl("Label9");
                if (actionLabel != null)
                {
                    string actionText = actionLabel.Text;

                    switch (actionText)
                    {
                        case "Approved":
                            actionLabel.CssClass = "btn btn-success";
                            break;
                        case "Pending":
                            actionLabel.CssClass = "btn btn-info";
                            break;
                        case "Decline":
                            actionLabel.CssClass = "btn btn-danger";
                            break;
                        default:
                            // Default CSS class or any other action if needed
                            break;
                    }
                }
            }
        }

        void fillgrid()
        {
            //select_eid();
            GridView1.DataSource = cs.Leave_select(ViewState["L_Emp_Id"].ToString());
            GridView1.DataBind();
        }

        
    }
}