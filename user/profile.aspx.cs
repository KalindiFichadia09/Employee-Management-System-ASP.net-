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
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Employee cs;
        SqlDataReader rd;
        int id;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            if (Session["username"] != null)
            {
                startcon();
                cmd = new SqlCommand("select * from Employee_tbl where Emp_Company_Email='" + Session["username"] + "'", con);
                cmd.ExecuteNonQuery();
                rd = cmd.ExecuteReader();

                if (rd.HasRows)
                {
                    // Read the data
                    while (rd.Read())
                    {
                        id = Convert.ToInt32(rd["Id"]);
                        ViewState["id"] = id;
                        lbl_emp_name.Text = rd["Emp_Full_Name"].ToString();
                        Emp_Image.Attributes["src"] = rd["Emp_Image"].ToString();
                        Emp_Full_Name.Text = rd["Emp_Full_Name"].ToString();
                        Emp_Father_Name.Text = rd["Emp_Father_Name"].ToString();
                        Emp_Mother_Name.Text = rd["Emp_Mother_Name"].ToString();
                        Emp_Gender.Text = rd["Emp_Gender"].ToString();
                        Emp_Date_of_Birth.Text = rd["Emp_Date_of_Birth"].ToString();
                        Emp_Adhar_Number.Text = rd["Emp_Adhar_Number"].ToString();
                        Emp_Blood_Group.Text = rd["Emp_Blood_Group"].ToString();
                        Emp_Age.Text = rd["Emp_Age"].ToString();
                        Emp_Mobile.Text = rd["Emp_Mobile"].ToString();
                        Emp_Email.Text = rd["Emp_Email"].ToString();
                        Emp_Password.Text = rd["Emp_Password"].ToString();

                        Emp_Employee_Id.Text = rd["Emp_Employee_Id"].ToString();
                        Emp_Department.Text = rd["Emp_Department"].ToString();
                        Emp_Year_of_Joining.Text = rd["Emp_Year_of_Joining"].ToString();
                        Emp_Company_Email.Text = rd["Emp_Company_Email"].ToString();
                        Emp_Job_Type.Text = rd["Emp_Job_Type"].ToString();

                        Emp_Address.Text = rd["Emp_Address"].ToString();
                        Emp_City.Text = rd["Emp_City"].ToString();
                        Emp_State.Text = rd["Emp_State"].ToString();
                        Emp_Country.Text = rd["Emp_Country"].ToString();
                        Emp_Pincode.Text = rd["Emp_Pincode"].ToString();
                        Emp_Emergency_no.Text = rd["Emp_Emergency_no"].ToString();

                        Emp_Account_Holder_Name.Text = rd["Emp_Account_Holder_Name"].ToString();
                        Emp_Bank_Name.Text = rd["Emp_Bank_Name"].ToString();
                        Emp_Account_no.Text = rd["Emp_Account_no"].ToString();
                        Emp_Bank_IFSC_Code.Text = rd["Emp_Bank_IFSC_Code"].ToString();
                        Emp_Bank_Code.Text = rd["Emp_Bank_Code"].ToString();
                        Emp_Branch_Name.Text = rd["Emp_Branch_Name"].ToString();

                    }

                    rd.Close();
                }
                else
                {
                    //Emp_Username.Text = "No data found.";
                }

                //fillgrid();
            }
            else
            {
                Response.Redirect("../login.aspx");
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            UpdatePanel1.Visible = true;
            filltext();
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
       
        void filltext()
        {
            ds = new DataSet();
            ds = cs.Employee_select(Convert.ToInt16(ViewState["id"]));
            Emp_Full_Name_U.Text = (ds.Tables[0].Rows[0][1]).ToString();
            Emp_Father_Name_U.Text = (ds.Tables[0].Rows[0][2]).ToString();
            Emp_Mother_Name_U.Text = (ds.Tables[0].Rows[0][3]).ToString();
            Emp_Gender_U.SelectedValue = (ds.Tables[0].Rows[0][4]).ToString();
            Emp_Date_of_Birth_U.Text = (ds.Tables[0].Rows[0][5]).ToString();
            Emp_Adhar_Number_U.Text = (ds.Tables[0].Rows[0][6]).ToString();
            Emp_Blood_Group_U.SelectedValue = (ds.Tables[0].Rows[0][7]).ToString();
            Emp_Age_U.Text = (ds.Tables[0].Rows[0][8]).ToString();
            Emp_Mobile_U.Text = (ds.Tables[0].Rows[0][9]).ToString();
            Emp_Email_U.Text = (ds.Tables[0].Rows[0][10]).ToString();
            Emp_Employee_Id_U.Text = (ds.Tables[0].Rows[0][12]).ToString();
            Emp_Department_U.SelectedValue = (ds.Tables[0].Rows[0][13]).ToString();
            Emp_Year_of_Joining_U.Text = (ds.Tables[0].Rows[0][14]).ToString();
            Emp_Company_Email_U.Text = (ds.Tables[0].Rows[0][15]).ToString();
            Emp_Job_Type_U.SelectedValue = (ds.Tables[0].Rows[0][16]).ToString();
            Emp_Password_U.Text = (ds.Tables[0].Rows[0][17]).ToString();
            Emp_Address_U.Text = (ds.Tables[0].Rows[0][18]).ToString();
            Emp_City_U.SelectedValue = (ds.Tables[0].Rows[0][19]).ToString();
            Emp_State_U.SelectedValue = (ds.Tables[0].Rows[0][20]).ToString();
            Emp_Country_U.SelectedValue = (ds.Tables[0].Rows[0][21]).ToString();
            Emp_Pincode_U.Text = (ds.Tables[0].Rows[0][22]).ToString();
            Emp_Emergency_no_U.Text = (ds.Tables[0].Rows[0][23]).ToString();
            Emp_Account_Holder_Name_U.Text = (ds.Tables[0].Rows[0][24]).ToString();
            Emp_Bank_Name_U.Text = (ds.Tables[0].Rows[0][25]).ToString();
            Emp_Account_no_U.Text = (ds.Tables[0].Rows[0][26]).ToString();
            Emp_Bank_IFSC_Code_U.Text = (ds.Tables[0].Rows[0][27]).ToString();
            Emp_Bank_Code_U.Text = (ds.Tables[0].Rows[0][28]).ToString();
            Emp_Branch_Name_U.Text = (ds.Tables[0].Rows[0][29]).ToString();
        }

        protected void btn_crud_Click(object sender, EventArgs e)
        {
            cs.Employee_Edit(Convert.ToInt16(ViewState["id"]), Emp_Full_Name_U.Text, Emp_Father_Name_U.Text, Emp_Mother_Name_U.Text, Emp_Gender_U.SelectedValue, Emp_Date_of_Birth_U.Text, Emp_Adhar_Number_U.Text, Emp_Blood_Group_U.SelectedValue, Emp_Age_U.Text, Emp_Mobile_U.Text, Emp_Email_U.Text, Emp_Employee_Id_U.Text, Emp_Department_U.Text, Emp_Year_of_Joining_U.Text, Emp_Company_Email_U.Text, Emp_Job_Type_U.SelectedValue, Emp_Password_U.Text, Emp_Address_U.Text, Emp_City_U.SelectedValue, Emp_State_U.SelectedValue, Emp_Country_U.Text, Emp_Pincode_U.Text, Emp_Emergency_no_U.Text, Emp_Account_Holder_Name_U.Text, Emp_Bank_Name_U.Text, Emp_Account_no_U.Text, Emp_Bank_IFSC_Code_U.Text, Emp_Bank_Code_U.Text, Emp_Branch_Name_U.Text);
            clear();
        }
    }
}