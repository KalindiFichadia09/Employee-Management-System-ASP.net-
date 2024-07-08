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
    public partial class manage_payroll : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader rd;
        DataSet ds;
        Employee cs;
        string mail;

        void startcon()
        {
            con = new SqlConnection();
            cs = new Employee();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            startcon();
        }

        protected void give_payroll_Click(object sender, EventArgs e)
        {
            string empId = P_Emp_Id.SelectedValue.ToString();
            //ViewState["eId"] = empId;
            int month = int.Parse(P_Month.SelectedValue);
            int year = int.Parse(P_Year.Text);

            decimal totalWorkingHours = GetTotalWorkingHours(empId, month, year);

            decimal payAmount = CalculatePayAmount(totalWorkingHours);

            InsertPayrollData(empId, month, year, totalWorkingHours, payAmount);
        }

        private decimal GetTotalWorkingHours(string empId, int month, int year)
        {
            decimal totalWorkingHours = 0;
            try
            {
                //using (SqlConnection con = new SqlConnection(connectionString))
                //{
                    string query = "SELECT SUM(CountHour) AS TotalWorkingHours " +
                                   "FROM Working_Hour_tbl " +
                                   "WHERE W_EmpID = @EmpId " +
                                   "AND MONTH(ClockInTime) = @Month " +
                                   "AND YEAR(ClockInTime) = @Year";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@EmpId", empId);
                        cmd.Parameters.AddWithValue("@Month", month);
                        cmd.Parameters.AddWithValue("@Year", year);
                        con.Open();
                        object result = cmd.ExecuteScalar();
                        if (result != null && result != DBNull.Value)
                        {
                            totalWorkingHours = Convert.ToDecimal(result);
                        }
                    }
                //}
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Console.WriteLine("Error: " + ex.Message);
            }
            return totalWorkingHours;
            //startcon();
            //decimal totalWorkingHours = 0;
            //cmd = new SqlCommand("SELECT SUM(CountHour) AS TotalWorkingHours FROM Working_Hour_tbl WHERE W_EmpId = '" + empId + "' AND MONTH(ClockInTime) = '" + month + "' AND YEAR(ClockInTime) = '" + year + "' ", con);
            ////cmd.ExecuteNonQuery();
            //object result = cmd.ExecuteScalar();

            //if (result != null && result != DBNull.Value)
            //{
            //    totalWorkingHours = Convert.ToDecimal(result);
            //}

            //// If no result is found, return 0
            //return totalWorkingHours;
        }

        private decimal CalculatePayAmount(decimal totalWorkingHours)
        {
            decimal hourlyRate = 1000.0m;
            decimal payAmount = totalWorkingHours * hourlyRate;
            return payAmount;
        }

        private void InsertPayrollData(string empId, int month, int year, decimal totalWorkingHours, decimal payAmount)
        {
            startcon();
            cmd = new SqlCommand("insert into Payroll_tbl(P_Emp_Id,P_Month,P_Year,P_TotalWorkingHours,P_PayAmount) values('" + empId + "','" + month + "','" + year + "','" + totalWorkingHours + "','" + payAmount + "')", con);
            cmd.ExecuteNonQuery();
        }

    }

}
