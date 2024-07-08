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
    public partial class manage_employee : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Employee cs;
        //string flnm;
        string filepath;
        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        void imgupload()
        {
            if (Emp_Image.HasFile)
            {
                string flnm = "../image/" + Emp_Image.FileName;
                ViewState["img"] = flnm;
                Emp_Image.SaveAs(Server.MapPath(flnm));
            }
        }
        void clear()
        {
            Emp_Full_Name.Text = "";
            Emp_Father_Name.Text = "";
            Emp_Mother_Name.Text = "";
            //Emp_Gender.SelectedValue = "";
            Emp_Date_of_Birth.Text = "";
            Emp_Adhar_Number.Text = "";
            //Emp_Blood_Group.SelectedValue = "";
            Emp_Age.Text = "";
            Emp_Mobile.Text = "";
            Emp_Email.Text = "";
            Emp_Employee_Id.Text = "";
            //Emp_Department.SelectedValue = "";
            Emp_Year_of_Joining.Text = "";
            Emp_Company_Email.Text = "";
            //Emp_Job_Type.SelectedValue = "";
            Emp_Password.Text = "";
            Emp_Address.Text = "";
            Emp_Pincode.Text = "";
            Emp_Emergency_no.Text = "";
            Emp_Account_Holder_Name.Text = "";
            Emp_Bank_Name.Text = "";
            Emp_Account_no.Text = "";
            Emp_Bank_IFSC_Code.Text = "";
            Emp_Bank_Code.Text = "";
            Emp_Branch_Name.Text = "";
        }
        void fillgrid()
        {
            con = cs.getcon();
            GridView1.DataSource = cs.Employee_filldata();
            GridView1.DataBind();
        }
        void filltext()
        {
            ds = new DataSet();
            ds = cs.Employee_select(Convert.ToInt16(ViewState["id"]));
            Emp_Full_Name.Text = (ds.Tables[0].Rows[0][1]).ToString();
            Emp_Father_Name.Text = (ds.Tables[0].Rows[0][2]).ToString();
            Emp_Mother_Name.Text = (ds.Tables[0].Rows[0][3]).ToString();
            Emp_Gender.SelectedValue = (ds.Tables[0].Rows[0][4]).ToString();
            Emp_Date_of_Birth.Text = (ds.Tables[0].Rows[0][5]).ToString();
            Emp_Adhar_Number.Text = (ds.Tables[0].Rows[0][6]).ToString();
            Emp_Blood_Group.SelectedValue = (ds.Tables[0].Rows[0][7]).ToString();
            Emp_Age.Text = (ds.Tables[0].Rows[0][8]).ToString();
            Emp_Mobile.Text = (ds.Tables[0].Rows[0][9]).ToString();
            Emp_Email.Text = (ds.Tables[0].Rows[0][10]).ToString();
            Emp_Employee_Id.Text = (ds.Tables[0].Rows[0][12]).ToString();
            Emp_Department.SelectedValue = (ds.Tables[0].Rows[0][13]).ToString();
            Emp_Year_of_Joining.Text = (ds.Tables[0].Rows[0][14]).ToString();
            Emp_Company_Email.Text = (ds.Tables[0].Rows[0][15]).ToString();
            Emp_Job_Type.SelectedValue = (ds.Tables[0].Rows[0][16]).ToString();
            Emp_Password.Text = (ds.Tables[0].Rows[0][17]).ToString();
            Emp_Address.Text = (ds.Tables[0].Rows[0][18]).ToString();
            Emp_City.SelectedValue = (ds.Tables[0].Rows[0][19]).ToString();
            Emp_State.SelectedValue = (ds.Tables[0].Rows[0][20]).ToString();
            Emp_Country.SelectedValue = (ds.Tables[0].Rows[0][21]).ToString();
            Emp_Pincode.Text = (ds.Tables[0].Rows[0][22]).ToString();
            Emp_Emergency_no.Text = (ds.Tables[0].Rows[0][23]).ToString();
            Emp_Account_Holder_Name.Text = (ds.Tables[0].Rows[0][24]).ToString();
            Emp_Bank_Name.Text = (ds.Tables[0].Rows[0][25]).ToString();
            Emp_Account_no.Text = (ds.Tables[0].Rows[0][26]).ToString();
            Emp_Bank_IFSC_Code.Text = (ds.Tables[0].Rows[0][27]).ToString();
            Emp_Bank_Code.Text = (ds.Tables[0].Rows[0][28]).ToString();
            Emp_Branch_Name.Text = (ds.Tables[0].Rows[0][29]).ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            startcon();
            fillgrid();
        }

        protected void btn_adde_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
        }

        protected void btn_crud_Click(object sender, EventArgs e)
        {
            startcon();
            
            if (btn_crud.Text == "Add")
            {
                imgupload();
                cs.Employee_Add(Emp_Full_Name.Text, Emp_Father_Name.Text, Emp_Mother_Name.Text, Emp_Gender.SelectedValue, Emp_Date_of_Birth.Text, Emp_Adhar_Number.Text, Emp_Blood_Group.SelectedValue, Emp_Age.Text, Emp_Mobile.Text, Emp_Email.Text, ViewState["img"].ToString(), Emp_Employee_Id.Text, Emp_Department.SelectedValue, Emp_Year_of_Joining.Text, Emp_Company_Email.Text, Emp_Job_Type.SelectedValue, Emp_Password.Text, Emp_Address.Text, Emp_City.SelectedValue, Emp_State.SelectedValue, Emp_Country.Text, Emp_Pincode.Text, Emp_Emergency_no.Text, Emp_Account_Holder_Name.Text, Emp_Bank_Name.Text, Emp_Account_no.Text, Emp_Bank_IFSC_Code.Text, Emp_Bank_Code.Text, Emp_Branch_Name.Text);
                fillgrid();
                clear();
            }
            else
            {
                cs.Employee_Edit(Convert.ToInt16(ViewState["id"]), Emp_Full_Name.Text, Emp_Father_Name.Text, Emp_Mother_Name.Text, Emp_Gender.SelectedValue, Emp_Date_of_Birth.Text, Emp_Adhar_Number.Text, Emp_Blood_Group.SelectedValue, Emp_Age.Text, Emp_Mobile.Text, Emp_Email.Text, Emp_Employee_Id.Text, Emp_Department.SelectedValue, Emp_Year_of_Joining.Text, Emp_Company_Email.Text, Emp_Job_Type.SelectedValue, Emp_Password.Text, Emp_Address.Text, Emp_City.SelectedValue, Emp_State.SelectedValue, Emp_Country.Text, Emp_Pincode.Text, Emp_Emergency_no.Text, Emp_Account_Holder_Name.Text, Emp_Bank_Name.Text, Emp_Account_no.Text, Emp_Bank_IFSC_Code.Text, Emp_Bank_Code.Text, Emp_Branch_Name.Text);
                fillgrid();
                clear();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            ViewState["id"] = id;
            if (e.CommandName == "btn_view")
            {
                Response.Redirect("employee_profile.aspx?Id=" + ViewState["id"]);
                // Response.Redirect("to_fetch_queystring.aspx?name=" + TextBox1.Text + " " + TextBox2.Text);
            }
            if (e.CommandName == "btn_edit")
            {
                UpdatePanel1.Visible = true;
                lbl_heading.Text = "Update";
                btn_crud.Text = "Update";
                filltext();
            }
            if (e.CommandName == "btn_remove")
            {
                cs.Employee_Remove(Convert.ToInt32(ViewState["id"]));
                fillgrid();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            imgupload();
        }
    }
}