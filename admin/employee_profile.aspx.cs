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
    public partial class employee_profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
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
            startcon();
            cmd = new SqlCommand("select * from Employee_tbl where Id='" + Request.QueryString["Id"] + "'", con);
            cmd.ExecuteNonQuery();
            rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                // Read the data
                while (rd.Read())
                {
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
            }
            else
            {
                //Emp_Username.Text = "No data found.";
            }
        }
    }
}