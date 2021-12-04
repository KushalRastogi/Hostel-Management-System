using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Btech_Project_2021
{
    public partial class create_warden : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Kushal"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               
            }
        }
       
        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(btnsave.Text=="Submit")
            {
                string FN = DateTime.Now.Ticks.ToString() + Path.GetFileName(fuimng.PostedFile.FileName);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_warden",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action","Insert");
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@phoneno", txtno.Text);
                cmd.Parameters.AddWithValue("@salary", txtsalary.Text);
                cmd.Parameters.AddWithValue("@gender", rblgender.SelectedValue );
                cmd.Parameters.AddWithValue("@hostel", rblhostel.SelectedValue);
                cmd.Parameters.AddWithValue("@img", FN);
                cmd.ExecuteNonQuery();
                con.Close();
                fuimng.SaveAs(Server.MapPath("Warden Login" + "\\" + "wardenimg" + "\\" + FN));
            }
        }
    }
}