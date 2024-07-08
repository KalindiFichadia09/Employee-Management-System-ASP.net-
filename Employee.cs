using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace project_sem_6_
{
    public class Employee
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public SqlConnection getcon()
        {
            string s = ConfigurationManager.ConnectionStrings["Employee_Management_db"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();
            return con;
        }

        //Department CRUD
        public void Department_Add(string Dept_Name)
        {
            cmd = new SqlCommand("insert into Department_tbl(Dept_Name) values('" + Dept_Name + "')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet Department_Filldata()
        {
            da = new SqlDataAdapter("select * from Department_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet Department_Select(int id)
        {
            da = new SqlDataAdapter("select * from Department_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void Department_Edit(int id,string Dept_Name)
        {
            cmd = new SqlCommand("update Department_tbl set Dept_Name='" + Dept_Name + "' where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }
        public void Department_Remove(int id)
        {
            cmd = new SqlCommand("delete from Department_tbl where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }

        //Employee CRUD
        public void Employee_Add(string Emp_Full_Name, string Emp_Father_Name, string Emp_Mother_Name, string Emp_Gender, string Emp_Date_of_Birth, string Emp_Adhar_Number, string Emp_Blood_Group, string Emp_Age, string Emp_Mobile, string Emp_Email, string Emp_Image, string Emp_Employee_Id, string Emp_Department, string Emp_Year_of_Joining, string Emp_Company_Email, string Emp_Job_Type, string Emp_Password, string Emp_Address, string Emp_City, string Emp_State, string Emp_Country, string Emp_Pincode, string Emp_Emergency_no, string Emp_Account_Holder_Name, string Emp_Bank_Name, string Emp_Account_no, string Emp_Bank_IFSC_Code, string Emp_Bank_Code, string Emp_Branch_Name)
        {
            cmd = new SqlCommand("insert into Employee_tbl(Emp_Full_Name,Emp_Father_Name,Emp_Mother_Name,Emp_Gender,Emp_Date_of_Birth,Emp_Adhar_Number,Emp_Blood_Group,Emp_Age,Emp_Mobile,Emp_Email,Emp_Image,Emp_Employee_Id,Emp_Department,Emp_Year_of_Joining,Emp_Company_Email,Emp_Job_Type,Emp_Password,Emp_Address,Emp_City,Emp_State,Emp_Country,Emp_Pincode,Emp_Emergency_no,Emp_Account_Holder_Name,Emp_Bank_Name,Emp_Account_no,Emp_Bank_IFSC_Code,Emp_Bank_Code,Emp_Branch_Name) values('" + Emp_Full_Name + "','" + Emp_Father_Name + "','" + Emp_Mother_Name + "','" + Emp_Gender + "','" + Emp_Date_of_Birth + "','" + Emp_Adhar_Number + "','" + Emp_Blood_Group + "','" + Emp_Age + "','" + Emp_Mobile + "','" + Emp_Email + "','" + Emp_Image + "','" + Emp_Employee_Id + "','" + Emp_Department + "','" + Emp_Year_of_Joining + "','" + Emp_Company_Email + "','" + Emp_Job_Type + "','" + Emp_Password + "','" + Emp_Address + "','" + Emp_City + "','" + Emp_State + "','" + Emp_Country + "','" + Emp_Pincode + "','" + Emp_Emergency_no + "','" + Emp_Account_Holder_Name + "','" + Emp_Bank_Name + "','" + Emp_Account_no + "','" + Emp_Bank_IFSC_Code + "','" + Emp_Bank_Code + "','" + Emp_Branch_Name + "')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet Employee_filldata()
        {
            da = new SqlDataAdapter("select * from Employee_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet Employee_select(int id)
        {
            da = new SqlDataAdapter("select * from Employee_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void Employee_Edit(int id, string Emp_Full_Name, string Emp_Father_Name, string Emp_Mother_Name, string Emp_Gender, string Emp_Date_of_Birth, string Emp_Adhar_Number, string Emp_Blood_Group, string Emp_Age, string Emp_Mobile, string Emp_Email, string Emp_Employee_Id, string Emp_Department, string Emp_Year_of_Joining, string Emp_Company_Email, string Emp_Job_Type, string Emp_Password, string Emp_Address, string Emp_City, string Emp_State, string Emp_Country, string Emp_Pincode, string Emp_Emergency_no, string Emp_Account_Holder_Name, string Emp_Bank_Name, string Emp_Account_no, string Emp_Bank_IFSC_Code, string Emp_Bank_Code, string Emp_Branch_Name)
        {
            cmd = new SqlCommand("update Employee_tbl set Emp_Full_Name='" + Emp_Full_Name + "',Emp_Father_Name='" + Emp_Father_Name + "',Emp_Mother_Name='" + Emp_Mother_Name + "',Emp_Gender='" + Emp_Gender + "',Emp_Date_of_Birth='" + Emp_Date_of_Birth + "',Emp_Adhar_Number='" + Emp_Adhar_Number + "',Emp_Blood_Group='" + Emp_Blood_Group + "',Emp_Age='" + Emp_Age + "',Emp_Mobile='" + Emp_Mobile + "',Emp_Email='" + Emp_Email + "',Emp_Employee_Id='" + Emp_Employee_Id + "',Emp_Department='" + Emp_Department + "',Emp_Year_of_Joining='" + Emp_Year_of_Joining + "',Emp_Company_Email='" + Emp_Company_Email + "',Emp_Job_Type='" + Emp_Job_Type + "',Emp_Password='" + Emp_Password + "',Emp_Address='" + Emp_Address + "',Emp_City='" + Emp_City + "',Emp_State='" + Emp_State + "',Emp_Country='" + Emp_Country + "',Emp_Pincode='" + Emp_Pincode + "',Emp_Emergency_no='" + Emp_Emergency_no + "',Emp_Account_Holder_Name='" + Emp_Account_Holder_Name + "',Emp_Bank_Name='" + Emp_Bank_Name + "',Emp_Account_no='" + Emp_Account_no + "',Emp_Bank_IFSC_Code='" + Emp_Bank_IFSC_Code + "',Emp_Bank_Code='" + Emp_Bank_Code + "',Emp_Branch_Name='" + Emp_Branch_Name + "' where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }
        public void Employee_Remove(int id)
        {
            cmd = new SqlCommand("delete from Employee_tbl where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        //leave crud

        public void Apply_leave_insert(string L_Emp_Id,string L_Type,string L_Category,string L_Start_Date,string L_End_Date,string L_Remarks,string L_Document,string L_Action)
        {
            cmd = new SqlCommand("insert into Leave_tbl(L_Emp_Id,L_Type,L_Category,L_Start_Date,L_End_Date,L_Remarks,L_Document,L_Action) values('" + L_Emp_Id + "','" + L_Type + "','" + L_Category + "','" + L_Start_Date + "','" + L_End_Date + "','" + L_Remarks + "','" + L_Document + "','" + L_Action + "')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet Leave_filldata()
        {
            da = new SqlDataAdapter("select * from Leave_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet Leave_select(string L_Emp_Id)
        {
            da = new SqlDataAdapter("select * from Leave_tbl where L_Emp_Id='" + L_Emp_Id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet Leave_select_admin(int Id)
        {
            da = new SqlDataAdapter("select * from Leave_tbl where Id='" + Id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //Holiday CRUD
        public void Holiday_Add(String H_Name,String H_Start_Date,String H_End_Date)
        {
            cmd = new SqlCommand("insert into Holiday_tbl(H_Name,H_Start_Date,H_End_Date) values('" + H_Name + "','" + H_Start_Date + "','" + H_End_Date + "')", con);
            cmd.ExecuteNonQuery();
        }
        public void Holiday_Edit(int id, string H_Name, string H_Start_Date, string H_End_Date)
        {
            cmd = new SqlCommand("update Holiday_tbl set H_Name='" + H_Name + "',H_Start_Date='" + H_Start_Date + "',H_End_Date='" + H_End_Date + "' where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }
        public void Holiday_Remove(int id)
        {
            cmd = new SqlCommand("delete from Holiday_tbl where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet Holiday_filldata()
        {
            da = new SqlDataAdapter("select * from Holiday_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet Holiday_select(int id)
        {
            da = new SqlDataAdapter("select * from Holiday_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //Task CRUD
        public void Task_Add(String T_Emp_Email, String T_Description, String T_End_By)
        {
            cmd = new SqlCommand("insert into Task_tbl(T_Emp_Email,T_Description,T_End_By) values('" + T_Emp_Email + "','" + T_Description + "','" + T_End_By + "')", con);
            cmd.ExecuteNonQuery();
        }
        public void Task_Edit(int id, string T_Emp_Email, string T_Description, string T_End_By)
        {
            cmd = new SqlCommand("update Task_tbl set T_Emp_Email='" + T_Emp_Email + "',T_Description='" + T_Description + "',T_End_By='" + T_End_By + "' where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }
        public void Task_Remove(int id)
        {
            cmd = new SqlCommand("delete from Task_tbl where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet Task_filldata()
        {
            da = new SqlDataAdapter("select * from Task_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet Task_select(int id)
        {
            da = new SqlDataAdapter("select * from Task_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //salary slip CRUD
    }
}